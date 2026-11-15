package com.transsion.audiotagger.audio.exceptions;

import java.io.IOException;

public class UnableToRenameFileException extends IOException {
    public UnableToRenameFileException(String str) {
        super(str);
    }
}
