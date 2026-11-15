package com.google.android.exoplayer2;

public final class ExoTimeoutException extends RuntimeException {
    public static final int TIMEOUT_OPERATION_DETACH_SURFACE = 3;
    public static final int TIMEOUT_OPERATION_RELEASE = 1;
    public static final int TIMEOUT_OPERATION_SET_FOREGROUND_MODE = 2;
    public static final int TIMEOUT_OPERATION_UNDEFINED = 0;
    public final int timeoutOperation;

    public ExoTimeoutException(int i10) {
        super(getErrorMessage(i10));
        this.timeoutOperation = i10;
    }

    private static String getErrorMessage(int i10) {
        if (i10 == 1) {
            return "Player release timed out.";
        }
        if (i10 != 2) {
            return i10 != 3 ? "Undefined timeout." : "Detaching surface timed out.";
        }
        return "Setting foreground mode timed out.";
    }
}
