package com.amazonaws.services.s3.internal;

import java.util.regex.Pattern;

public enum BucketNameUtils {
    ;

    private static final Pattern IP_ADDRESS_PATTERN = Pattern.compile("(\\d+\\.){3}\\d+");
    private static final int MAX_BUCKET_NAME_LENGTH = 63;
    private static final int MIN_BUCKET_NAME_LENGTH = 3;

    private static boolean exception(boolean z10, String str) {
        if (z10) {
            throw new IllegalArgumentException(str);
        }
        return false;
    }

    public static boolean isDNSBucketName(String str) {
        return isValidV2BucketName(str);
    }

    public static boolean isValidV2BucketName(String str) {
        return isValidV2BucketName(str, false);
    }

    public static void validateBucketName(String str) {
        isValidV2BucketName(str, true);
    }

    private static boolean isValidV2BucketName(String str, boolean z10) {
        if (str == null) {
            return exception(z10, "Bucket name cannot be null");
        }
        if (str.length() < 3 || str.length() > MAX_BUCKET_NAME_LENGTH) {
            return exception(z10, "Bucket name should be between 3 and 63 characters long");
        }
        if (IP_ADDRESS_PATTERN.matcher(str).matches()) {
            return exception(z10, "Bucket name must not be formatted as an IP Address");
        }
        int i10 = 0;
        char c10 = 0;
        while (i10 < str.length()) {
            char cCharAt = str.charAt(i10);
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                return exception(z10, "Bucket name should not contain uppercase characters");
            }
            if (cCharAt == ' ' || cCharAt == '\t' || cCharAt == '\r' || cCharAt == '\n') {
                return exception(z10, "Bucket name should not contain white space");
            }
            if (cCharAt == '.') {
                if (c10 == 0) {
                    return exception(z10, "Bucket name should not begin with a period");
                }
                if (c10 == '.') {
                    return exception(z10, "Bucket name should not contain two adjacent periods");
                }
                if (c10 == '-') {
                    return exception(z10, "Bucket name should not contain dashes next to periods");
                }
            } else if (cCharAt == '-') {
                if (c10 == '.') {
                    return exception(z10, "Bucket name should not contain dashes next to periods");
                }
                if (c10 == 0) {
                    return exception(z10, "Bucket name should not begin with a '-'");
                }
            } else if (cCharAt < '0' || ((cCharAt > '9' && cCharAt < 'a') || cCharAt > 'z')) {
                return exception(z10, "Bucket name should not contain '" + cCharAt + "'");
            }
            i10++;
            c10 = cCharAt;
        }
        if (c10 == '.' || c10 == '-') {
            return exception(z10, "Bucket name should not end with '-' or '.'");
        }
        return !str.contains(".");
    }
}
