package org.proninyaroslav.libretorrent.core.exception;

public class FileAlreadyExistsException extends Exception {
    public FileAlreadyExistsException() {
    }

    public FileAlreadyExistsException(String str) {
        super(str);
    }
}
