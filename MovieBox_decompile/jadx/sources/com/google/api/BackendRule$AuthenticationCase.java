package com.google.api;

public enum BackendRule$AuthenticationCase {
    JWT_AUDIENCE(7),
    DISABLE_AUTH(8),
    AUTHENTICATION_NOT_SET(0);

    private final int value;

    BackendRule$AuthenticationCase(int i10) {
        this.value = i10;
    }

    public static BackendRule$AuthenticationCase forNumber(int i10) {
        if (i10 == 0) {
            return AUTHENTICATION_NOT_SET;
        }
        if (i10 == 7) {
            return JWT_AUDIENCE;
        }
        if (i10 != 8) {
            return null;
        }
        return DISABLE_AUTH;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static BackendRule$AuthenticationCase valueOf(int i10) {
        return forNumber(i10);
    }
}
