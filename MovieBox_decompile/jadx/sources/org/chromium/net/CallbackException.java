package org.chromium.net;

public abstract class CallbackException extends CronetException {
    protected CallbackException(String str, Throwable th2) {
        super(str, th2);
    }
}
