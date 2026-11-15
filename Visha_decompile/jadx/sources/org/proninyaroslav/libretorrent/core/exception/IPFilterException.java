package org.proninyaroslav.libretorrent.core.exception;

public class IPFilterException extends Exception {
    public IPFilterException() {
    }

    public IPFilterException(String str) {
        super(str);
    }

    public IPFilterException(Exception exc) {
        super(exc);
    }
}
