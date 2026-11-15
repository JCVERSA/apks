package org.proninyaroslav.libretorrent.core.exception;

public class FreeSpaceException extends Exception {
    public FreeSpaceException() {
    }

    public FreeSpaceException(String str) {
        super(str);
    }

    public FreeSpaceException(Exception exc) {
        super(exc.getMessage());
        super.setStackTrace(exc.getStackTrace());
    }
}
