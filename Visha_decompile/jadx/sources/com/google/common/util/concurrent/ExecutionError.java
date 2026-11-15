package com.google.common.util.concurrent;

public class ExecutionError extends Error {
    private static final long serialVersionUID = 0;

    @Deprecated
    public ExecutionError() {
    }

    @Deprecated
    public ExecutionError(String str) {
        super(str);
    }

    public ExecutionError(String str, Error error) {
        super(str, error);
    }

    public ExecutionError(Error error) {
        super(error);
    }
}
