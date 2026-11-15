package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class AppMetricaLibraryAdapterConfig {

    @Nullable
    public final Boolean advIdentifiersTracking;

    public static class Builder {
        private Boolean a;

        @NonNull
        public AppMetricaLibraryAdapterConfig build() {
            return new AppMetricaLibraryAdapterConfig(this, 0);
        }

        @NonNull
        public Builder withAdvIdentifiersTracking(boolean z) {
            this.a = Boolean.valueOf(z);
            return this;
        }
    }

    public AppMetricaLibraryAdapterConfig(Builder builder, int i) {
        this(builder);
    }

    public static Builder newConfigBuilder() {
        return new Builder();
    }

    @NonNull
    public String toString() {
        return "AppMetricaLibraryAdapterConfig{advIdentifiersTracking=" + this.advIdentifiersTracking + '}';
    }

    private AppMetricaLibraryAdapterConfig(Builder builder) {
        this.advIdentifiersTracking = builder.a;
    }
}
