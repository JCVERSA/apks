package com.google.api;

import com.google.protobuf.y;

public enum BackendRule$PathTranslation implements y.c {
    PATH_TRANSLATION_UNSPECIFIED(0),
    CONSTANT_ADDRESS(1),
    APPEND_PATH_TO_ADDRESS(2),
    UNRECOGNIZED(-1);

    public static final int APPEND_PATH_TO_ADDRESS_VALUE = 2;
    public static final int CONSTANT_ADDRESS_VALUE = 1;
    public static final int PATH_TRANSLATION_UNSPECIFIED_VALUE = 0;
    private static final y.d internalValueMap = new y.d() {
        @Override
        public BackendRule$PathTranslation findValueByNumber(int i10) {
            return BackendRule$PathTranslation.forNumber(i10);
        }
    };
    private final int value;

    private static final class b implements y.e {

        static final y.e f29367a = new b();

        private b() {
        }

        @Override
        public boolean isInRange(int i10) {
            return BackendRule$PathTranslation.forNumber(i10) != null;
        }
    }

    BackendRule$PathTranslation(int i10) {
        this.value = i10;
    }

    public static BackendRule$PathTranslation forNumber(int i10) {
        if (i10 == 0) {
            return PATH_TRANSLATION_UNSPECIFIED;
        }
        if (i10 == 1) {
            return CONSTANT_ADDRESS;
        }
        if (i10 != 2) {
            return null;
        }
        return APPEND_PATH_TO_ADDRESS;
    }

    public static y.d internalGetValueMap() {
        return internalValueMap;
    }

    public static y.e internalGetVerifier() {
        return b.f29367a;
    }

    @Override
    public final int getNumber() {
        if (this != UNRECOGNIZED) {
            return this.value;
        }
        throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
    }

    @Deprecated
    public static BackendRule$PathTranslation valueOf(int i10) {
        return forNumber(i10);
    }
}
