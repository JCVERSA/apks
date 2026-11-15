package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Objects;

public final class StartupParamsItem {
    private final String a;
    private final StartupParamsItemStatus b;
    private final String c;

    public StartupParamsItem(@Nullable String str, @NonNull StartupParamsItemStatus startupParamsItemStatus, @Nullable String str2) {
        this.a = str;
        this.b = startupParamsItemStatus;
        this.c = str2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || StartupParamsItem.class != obj.getClass()) {
            return false;
        }
        StartupParamsItem startupParamsItem = (StartupParamsItem) obj;
        return Objects.equals(this.a, startupParamsItem.a) && this.b == startupParamsItem.b && Objects.equals(this.c, startupParamsItem.c);
    }

    @Nullable
    public String getErrorDetails() {
        return this.c;
    }

    @Nullable
    public String getId() {
        return this.a;
    }

    @NonNull
    public StartupParamsItemStatus getStatus() {
        return this.b;
    }

    public int hashCode() {
        return Objects.hash(this.a, this.b, this.c);
    }

    @NonNull
    public String toString() {
        return "StartupParamsItem{id='" + this.a + "', status=" + this.b + ", errorDetails='" + this.c + "'}";
    }
}
