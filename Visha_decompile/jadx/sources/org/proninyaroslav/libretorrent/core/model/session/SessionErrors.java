package org.proninyaroslav.libretorrent.core.model.session;

import androidx.annotation.NonNull;
import org.libtorrent4j.ErrorCode;

class SessionErrors {
    private static final Error[] errors = {new Error(11, "Try again"), new Error(22, "Invalid argument")};

    public static class Error {
        int errCode;
        String errMsg;

        public Error(int i, String str) {
            this.errCode = i;
            this.errMsg = str;
        }
    }

    public static String getErrorMsg(ErrorCode errorCode) {
        if (errorCode == null) {
            return "";
        }
        return errorCode.getMessage() + ", code " + errorCode.getValue();
    }

    public static boolean isNonCritical(@NonNull ErrorCode errorCode) {
        if (!errorCode.isError()) {
            return true;
        }
        for (Error error : errors) {
            if (errorCode.getValue() == error.errCode && error.errMsg.equalsIgnoreCase(errorCode.getMessage())) {
                return true;
            }
        }
        return false;
    }
}
