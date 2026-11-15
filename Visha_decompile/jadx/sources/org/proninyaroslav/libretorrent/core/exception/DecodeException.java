package org.proninyaroslav.libretorrent.core.exception;

public class DecodeException extends Exception {
    public DecodeException() {
    }

    public DecodeException(String str) {
        super(str);
    }

    public DecodeException(Exception exc) {
        super(exc.getMessage());
        super.setStackTrace(exc.getStackTrace());
    }
}
