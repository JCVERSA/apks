package com.transsion.audiotagger.audio.exceptions;

public class ModifyVetoException extends Exception {
    public ModifyVetoException() {
    }

    public ModifyVetoException(String str) {
        super(str);
    }

    public ModifyVetoException(String str, Throwable th) {
        super(str, th);
    }

    public ModifyVetoException(Throwable th) {
        super(th);
    }
}
