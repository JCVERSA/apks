package org.schabi.newpipe.extractor.exceptions;

public class AccountTerminatedException extends ContentNotAvailableException {
    private Reason reason;

    public enum Reason {
        UNKNOWN,
        VIOLATION
    }

    public AccountTerminatedException(String str) {
        super(str);
        this.reason = Reason.UNKNOWN;
    }

    public Reason getReason() {
        return this.reason;
    }

    public AccountTerminatedException(String str, Reason reason) {
        super(str);
        Reason reason2 = Reason.UNKNOWN;
        this.reason = reason;
    }

    public AccountTerminatedException(String str, Throwable th) {
        super(str, th);
        this.reason = Reason.UNKNOWN;
    }
}
