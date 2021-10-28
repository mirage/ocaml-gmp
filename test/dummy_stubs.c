#include <caml/mlvalues.h>
#include <stdio.h>
#include <gmp.h>

value caml_compute(value unit) {
    mpz_t n;
    mpz_init(n);
    mpz_set_str(n,"100", 10);
    mpz_mul(n,n,n);

    printf("MPZ: ");
    mpz_out_str(stdout, 10, n);
    printf("\n");
    
    mpz_clear(n);

    return unit;
}
