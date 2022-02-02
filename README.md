### Crates that don't pass Miri (sorted by downloads)

| Crate | Cause | Status |
| ----- | ----- | ----- |
| smallvec-1.8.0 | Pointer invalidation via `&mut` usage | https://github.com/servo/rust-smallvec/pull/277 |
| block-buffer-0.10.0 | `&mut -> & -> &mut` | |
| crossbeam-utils-0.8.6 | Miri defect | https://github.com/rust-lang/miri/issues/1717 |
| scopeguard-1.1.0 | `&mut array[index]` invalidation | |
| bytes-1.1.0 | Pointer invalidation via Box creation | https://github.com/tokio-rs/bytes/pull/523 |
| semver-1.0.4| int-to-pointer cast | https://github.com/rust-lang/unsafe-code-guidelines/issues/291
| slab-0.4.5 | `as_mut_ptr` invalidation | |
| arrayvec-0.7.2 | `as_mut_ptr` invalidation | |
| http-0.2.6 | `mem::uninitialized` | https://github.com/hyperium/http/pull/428 |
| half-1.8.2 | `&mut -> & -> &mut` | |
| crossbeam-epoch-0.9.5 | int-to-pointer cast | |
| crossbeam-deque-0.7.4 | Type validation failed in `crossbeam-epoch` | |
| prost-0.9.0 | `bytes` | See above |
| pegtraph-0.6.0 | `as_mut_ptr` invalidation | |
| rayon-1.9.1 | int-to-pointer cast | https://github.com/rayon-rs/rayon/pull/907 |
| bumpalo-3.9.1  | Many int-to-pointer casts | |
| lexical-core-0.8.1 | Please don't use this many macros to write unsafe code | |
