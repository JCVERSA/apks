package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.impl.A5;
import io.appmetrica.analytics.impl.C2427b0;
import io.appmetrica.analytics.impl.C2450bn;
import java.util.HashMap;
import java.util.Map;

public class ReporterConfig {

    @NonNull
    public final Map<String, Object> additionalConfig;

    @NonNull
    public final String apiKey;
    public final Map<String, String> appEnvironment;

    @Nullable
    public final Boolean dataSendingEnabled;

    @Nullable
    public final Integer dispatchPeriodSeconds;

    @Nullable
    public final Boolean logs;

    @Nullable
    public final Integer maxReportsCount;

    @Nullable
    public final Integer maxReportsInDatabaseCount;

    @Nullable
    public final Integer sessionTimeout;

    @Nullable
    public final String userProfileID;

    public static class Builder {
        private static final C2450bn l = new C2450bn(new C2427b0());
        private final A5 a;
        private final String b;
        private Integer c;
        private Boolean d;
        private Boolean e;
        private Integer f;
        private String g;
        private Integer h;
        private Integer i;
        private final HashMap j;
        private final HashMap k;

        public Builder(String str, int i) {
            this(str);
        }

        @NonNull
        public ReporterConfig build() {
            return new ReporterConfig(this, 0);
        }

        @NonNull
        public Builder withAdditionalConfig(@NonNull String str, @Nullable Object obj) {
            this.k.put(str, obj);
            return this;
        }

        @NonNull
        public Builder withAppEnvironmentValue(String str, String str2) {
            this.j.put(str, str2);
            return this;
        }

        @NonNull
        public Builder withDataSendingEnabled(boolean z) {
            this.e = Boolean.valueOf(z);
            return this;
        }

        @NonNull
        public Builder withDispatchPeriodSeconds(int i) {
            this.h = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withLogs() {
            this.d = Boolean.TRUE;
            return this;
        }

        @NonNull
        public Builder withMaxReportsCount(int i) {
            this.i = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withMaxReportsInDatabaseCount(int i) {
            this.f = Integer.valueOf(this.a.a(i));
            return this;
        }

        @NonNull
        public Builder withSessionTimeout(int i) {
            this.c = Integer.valueOf(i);
            return this;
        }

        @NonNull
        public Builder withUserProfileID(@Nullable String str) {
            this.g = str;
            return this;
        }

        private Builder(String str) {
            this.j = new HashMap();
            this.k = new HashMap();
            l.a(str);
            this.a = new A5(str);
            this.b = str;
        }
    }

    public ReporterConfig(Builder builder, int i) {
        this(builder);
    }

    @NonNull
    public static Builder newConfigBuilder(@NonNull String str) {
        return new Builder(str, 0);
    }

    private ReporterConfig(Builder builder) {
        this.apiKey = builder.b;
        this.sessionTimeout = builder.c;
        this.logs = builder.d;
        this.dataSendingEnabled = builder.e;
        this.maxReportsInDatabaseCount = builder.f;
        this.userProfileID = builder.g;
        this.dispatchPeriodSeconds = builder.h;
        this.maxReportsCount = builder.i;
        this.appEnvironment = CollectionUtils.unmodifiableSameOrderMapCopy(builder.j);
        this.additionalConfig = CollectionUtils.unmodifiableSameOrderMapCopy(builder.k);
    }
}
