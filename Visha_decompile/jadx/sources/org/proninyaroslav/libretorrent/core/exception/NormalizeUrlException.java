package org.proninyaroslav.libretorrent.core.exception;

public class NormalizeUrlException extends Exception {
    public NormalizeUrlException(String str, Exception exc) {
        super(str);
        initCause(exc);
    }

    public NormalizeUrlException(String str) {
        super(str);
    }
}
