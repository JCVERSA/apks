package com.google.api;

public enum Distribution$BucketOptions$OptionsCase {
    LINEAR_BUCKETS(1),
    EXPONENTIAL_BUCKETS(2),
    EXPLICIT_BUCKETS(3),
    OPTIONS_NOT_SET(0);

    private final int value;

    Distribution$BucketOptions$OptionsCase(int i10) {
        this.value = i10;
    }

    public static Distribution$BucketOptions$OptionsCase forNumber(int i10) {
        if (i10 == 0) {
            return OPTIONS_NOT_SET;
        }
        if (i10 == 1) {
            return LINEAR_BUCKETS;
        }
        if (i10 == 2) {
            return EXPONENTIAL_BUCKETS;
        }
        if (i10 != 3) {
            return null;
        }
        return EXPLICIT_BUCKETS;
    }

    public int getNumber() {
        return this.value;
    }

    @Deprecated
    public static Distribution$BucketOptions$OptionsCase valueOf(int i10) {
        return forNumber(i10);
    }
}
