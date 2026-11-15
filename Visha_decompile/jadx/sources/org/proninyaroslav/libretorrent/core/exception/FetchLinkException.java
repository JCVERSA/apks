package org.proninyaroslav.libretorrent.core.exception;

public class FetchLinkException extends Exception {
    public FetchLinkException() {
    }

    public FetchLinkException(String str) {
        super(str);
    }

    public FetchLinkException(Exception exc) {
        super(exc);
    }
}
