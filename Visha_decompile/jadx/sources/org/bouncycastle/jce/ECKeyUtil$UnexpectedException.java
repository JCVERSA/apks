package org.bouncycastle.jce;

class ECKeyUtil$UnexpectedException extends RuntimeException {
    private Throwable cause;

    public ECKeyUtil$UnexpectedException(Throwable th) {
        super(th.toString());
        this.cause = th;
    }

    @Override
    public Throwable getCause() {
        return this.cause;
    }
}
