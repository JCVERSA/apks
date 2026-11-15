package org.jsoup;

public final class SerializationException extends RuntimeException {
    public SerializationException() {
    }

    public SerializationException(String str) {
        super(str);
    }

    public SerializationException(Throwable th2) {
        super(th2);
    }

    public SerializationException(String str, Throwable th2) {
        super(str, th2);
    }
}
