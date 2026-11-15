package org.chromium.net;

public abstract class QuicException extends NetworkException {
    protected QuicException(String str, Throwable th2) {
        super(str, th2);
    }

    public abstract int getQuicDetailedErrorCode();
}
