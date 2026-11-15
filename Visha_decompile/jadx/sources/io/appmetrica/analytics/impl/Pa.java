package io.appmetrica.analytics.impl;

import android.app.Activity;
import android.location.Location;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.AnrListener;
import io.appmetrica.analytics.ExternalAttribution;
import java.util.List;

public interface Pa extends Ka, Nc {
    void a(@Nullable Activity activity);

    void a(@Nullable Location location);

    void a(@NonNull AnrListener anrListener);

    void a(@NonNull ExternalAttribution externalAttribution);

    void a(@NonNull Cdo cdo);

    void a(@NonNull EnumC2750o enumC2750o);

    @Override
    void a(@NonNull String str);

    void a(String str, String str2);

    void a(@NonNull String str, boolean z);

    void a(boolean z);

    void b(@Nullable Activity activity);

    void b(@NonNull String str);

    @Override
    void b(@NonNull String str, @Nullable String str2);

    void b(boolean z);

    @Override
    boolean b();

    void c();

    List<String> f();
}
