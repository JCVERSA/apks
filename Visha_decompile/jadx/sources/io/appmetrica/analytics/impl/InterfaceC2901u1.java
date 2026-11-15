package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import androidx.annotation.NonNull;

public interface InterfaceC2901u1 {
    void a(Intent intent);

    void a(Intent intent, int i);

    void a(Intent intent, int i, int i2);

    void a(@NonNull InterfaceC2876t1 interfaceC2876t1);

    void b(Intent intent);

    void c(Intent intent);

    void onConfigurationChanged(Configuration configuration);

    void onCreate();

    void onDestroy();

    void pauseUserSession(@NonNull Bundle bundle);

    void reportData(int i, Bundle bundle);

    void resumeUserSession(@NonNull Bundle bundle);
}
