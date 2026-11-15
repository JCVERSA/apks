package com.transsion.audiotagger.audio.exceptions;

import java.io.IOException;

public class UnableToCreateFileException extends IOException {
    public UnableToCreateFileException(String str) {
        super(str);
    }
}
