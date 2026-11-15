package org.brotli.dec;

class BrotliRuntimeException extends RuntimeException {
    BrotliRuntimeException(String str) {
        super(str);
    }

    BrotliRuntimeException(String str, Throwable th2) {
        super(str, th2);
    }
}
