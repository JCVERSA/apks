package org.chromium.net;

public abstract class CallbackException extends CronetException {
    public CallbackException(String str, Throwable th) {
        super(str, th);
    }
}
