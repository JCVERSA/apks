package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class ModuleEvent {
    private final int a;
    private final String b;
    private final String c;
    private final int d;
    private final List e;
    private final List f;
    private final List g;

    public static class Builder {
        private final int a;
        private String b;
        private String c;
        private int d;
        private HashMap e;
        private HashMap f;
        private HashMap g;

        public Builder(int i, int i2) {
            this(i);
        }

        public ModuleEvent build() {
            return new ModuleEvent(this, 0);
        }

        public Builder withAttributes(@Nullable Map<String, Object> map) {
            if (map != null) {
                this.g = new HashMap(map);
            }
            return this;
        }

        public Builder withEnvironment(@Nullable Map<String, Object> map) {
            if (map != null) {
                this.e = new HashMap(map);
            }
            return this;
        }

        public Builder withExtras(@Nullable Map<String, byte[]> map) {
            if (map != null) {
                this.f = new HashMap(map);
            }
            return this;
        }

        public Builder withName(@Nullable String str) {
            this.b = str;
            return this;
        }

        public Builder withServiceDataReporterType(int i) {
            this.d = i;
            return this;
        }

        public Builder withValue(@Nullable String str) {
            this.c = str;
            return this;
        }

        private Builder(int i) {
            this.d = 1;
            this.a = i;
        }
    }

    public ModuleEvent(Builder builder, int i) {
        this(builder);
    }

    public static Builder newBuilder(int i) {
        return new Builder(i, 0);
    }

    @Nullable
    public Map<String, Object> getAttributes() {
        return CollectionUtils.getMapFromListOrNull(this.g);
    }

    @Nullable
    public Map<String, Object> getEnvironment() {
        return CollectionUtils.getMapFromListOrNull(this.e);
    }

    @Nullable
    public Map<String, byte[]> getExtras() {
        return CollectionUtils.getMapFromListOrNull(this.f);
    }

    @Nullable
    public String getName() {
        return this.b;
    }

    public int getServiceDataReporterType() {
        return this.d;
    }

    public int getType() {
        return this.a;
    }

    @Nullable
    public String getValue() {
        return this.c;
    }

    @NonNull
    public String toString() {
        return "ModuleEvent{type=" + this.a + ", name='" + this.b + "', value='" + this.c + "', serviceDataReporterType=" + this.d + ", environment=" + this.e + ", extras=" + this.f + ", attributes=" + this.g + '}';
    }

    private ModuleEvent(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.d = builder.d;
        this.e = CollectionUtils.getListFromMap(builder.e);
        this.f = CollectionUtils.getListFromMap(builder.f);
        this.g = CollectionUtils.getListFromMap(builder.g);
    }
}
