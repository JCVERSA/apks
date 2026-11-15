package io.appmetrica.analytics.plugins;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class StackTraceItem {
    private final String a;
    private final String b;
    private final Integer c;
    private final Integer d;
    private final String e;

    public static class Builder {
        private String a;
        private String b;
        private Integer c;
        private Integer d;
        private String e;

        @NonNull
        public StackTraceItem build() {
            return new StackTraceItem(this.a, this.b, this.c, this.d, this.e, 0);
        }

        @NonNull
        public Builder withClassName(@Nullable String str) {
            this.a = str;
            return this;
        }

        @NonNull
        public Builder withColumn(@Nullable Integer num) {
            this.d = num;
            return this;
        }

        @NonNull
        public Builder withFileName(@Nullable String str) {
            this.b = str;
            return this;
        }

        @NonNull
        public Builder withLine(@Nullable Integer num) {
            this.c = num;
            return this;
        }

        @NonNull
        public Builder withMethodName(@Nullable String str) {
            this.e = str;
            return this;
        }
    }

    public StackTraceItem(String str, String str2, Integer num, Integer num2, String str3, int i) {
        this(str, str2, num, num2, str3);
    }

    @Nullable
    public String getClassName() {
        return this.a;
    }

    @Nullable
    public Integer getColumn() {
        return this.d;
    }

    @Nullable
    public String getFileName() {
        return this.b;
    }

    @Nullable
    public Integer getLine() {
        return this.c;
    }

    @Nullable
    public String getMethodName() {
        return this.e;
    }

    private StackTraceItem(String str, String str2, Integer num, Integer num2, String str3) {
        this.a = str;
        this.b = str2;
        this.c = num;
        this.d = num2;
        this.e = str3;
    }
}
