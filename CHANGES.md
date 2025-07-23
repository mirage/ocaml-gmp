## 6.3.0

- Upgrade to GMP 6.3.0 and add a patch for GCC 15 (@dinosaure, #25)
- Fix the CI (@dinosaure, #26)

## 6.2.1-5

- Fix the cross-compilation for `aarch64` (@dinosaure, @shym, #22)
- Fix the compilation on OpenBSD (@kit-ty-kate, #22)

## 6.2.1-4

- Build system: when used in a monorepo, do not invoke `opam` to figure out the
  level of parallelism. Instead, use `sysctl` to obtain the number of cores and
  provide `1` as a default value. (@RyanGibb, #18)

## 6.2.1-3

- CI: test cross-compilation with ocaml-solo5 instead of ocaml-freestanding
  (@TheLortex, #16)
- Use sed -i -e to fix compilation on FreeBSD (@hannesm, #15)

## 6.2.1-2

- Fix cross-compilation (@TheLortex, #12)
- Fix MacOS build (@TheLortex, #11)

## 6.2.1

Initial release
