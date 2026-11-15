package com.google.android.gms.ads;

import androidx.annotation.NonNull;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

public final class AdValue {
    public final int a;
    public final String b;
    public final long c;

    @Retention(RetentionPolicy.SOURCE)
    public @interface PrecisionType {
        public static final int ESTIMATED = 1;
        public static final int PRECISE = 3;
        public static final int PUBLISHER_PROVIDED = 2;
        public static final int UNKNOWN = 0;
    }

    public AdValue(int i, String str, long j) {
        this.a = i;
        this.b = str;
        this.c = j;
    }

    @NonNull
    public static AdValue zza(int i, @NonNull String str, long j) {
        return new AdValue(i, str, j);
    }

    @NonNull
    public String getCurrencyCode() {
        return this.b;
    }

    public int getPrecisionType() {
        return this.a;
    }

    public long getValueMicros() {
        return this.c;
    }
}
