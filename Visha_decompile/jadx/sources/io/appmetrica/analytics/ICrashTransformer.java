package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface ICrashTransformer {
    @Nullable
    Throwable process(@NonNull Throwable th);
}
