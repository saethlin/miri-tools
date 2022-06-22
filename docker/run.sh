exec 2>&1

while read crate;
do
    cd /root # ensure that we don't remove the current directory
    rm -rf /root/build # clean out anything from an old build (probably)
    if cargo download --extract --output=/root/build $crate
    then
        cd /root/build
        cargo +nightly update --color=always
        cargo +nightly test -Zbuild-std --target=x86_64-unknown-linux-gnu --no-run --color=always
        /usr/bin/time -v timeout $TEST_TIMEOUT cargo +nightly test -Zbuild-std --target=x86_64-unknown-linux-gnu --color=always --no-fail-fast
        cat Cargo.lock
        echo $TEST_END_DELIMITER
    fi
done < /dev/stdin
