package org.libtorrent4j;

import org.libtorrent4j.swig.error_code;

public final class ErrorCode {
    private boolean isError;
    private String message;
    private int value;

    public ErrorCode(error_code error_codeVar) {
        assign(error_codeVar);
    }

    public void assign(error_code error_codeVar) {
        this.value = error_codeVar.value();
        this.message = error_codeVar.message();
        this.isError = error_codeVar.to_bool();
    }

    public String getMessage() {
        return this.message;
    }

    public int getValue() {
        return this.value;
    }

    public boolean isError() {
        return this.isError;
    }
}
