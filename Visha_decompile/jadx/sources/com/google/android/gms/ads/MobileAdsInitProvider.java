package com.google.android.gms.ads;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzeu;

public class MobileAdsInitProvider extends ContentProvider {
    public final zzeu b = new zzeu();

    @Override
    public void attachInfo(@NonNull Context context, @NonNull ProviderInfo providerInfo) {
        this.b.attachInfo(context, providerInfo);
    }

    @Override
    public int delete(@NonNull Uri uri, @NonNull String str, @NonNull String[] strArr) {
        return 0;
    }

    @Override
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override
    @Nullable
    public Uri insert(@NonNull Uri uri, @NonNull ContentValues contentValues) {
        return null;
    }

    @Override
    public boolean onCreate() {
        return false;
    }

    @Override
    @Nullable
    public Cursor query(@NonNull Uri uri, @NonNull String[] strArr, @NonNull String str, @NonNull String[] strArr2, @NonNull String str2) {
        return null;
    }

    @Override
    public int update(@NonNull Uri uri, @NonNull ContentValues contentValues, @NonNull String str, @NonNull String[] strArr) {
        return 0;
    }
}
