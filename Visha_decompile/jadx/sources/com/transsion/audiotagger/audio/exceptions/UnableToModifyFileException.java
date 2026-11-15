package com.transsion.audiotagger.audio.exceptions;

import java.io.IOException;

public class UnableToModifyFileException extends IOException {
    public UnableToModifyFileException(String str) {
        super(str);
    }
}
