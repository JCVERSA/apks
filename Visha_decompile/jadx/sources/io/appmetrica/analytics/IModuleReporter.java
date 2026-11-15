package io.appmetrica.analytics;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public interface IModuleReporter {
    void reportAdRevenue(@NonNull AdRevenue adRevenue, boolean z);

    void reportEvent(@NonNull ModuleEvent moduleEvent);

    void sendEventsBuffer();

    void setSessionExtra(@NonNull String str, @Nullable byte[] bArr);
}
