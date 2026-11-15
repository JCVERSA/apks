package com.noober.background;

import android.app.Application;
import android.content.ContentProvider;
import android.content.ContentValues;
import android.database.Cursor;
import android.net.Uri;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

public class BackgroundContentProvider extends ContentProvider {
    @Override
    public int delete(@NonNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }

    @Override
    @Nullable
    public String getType(@NonNull Uri uri) {
        return null;
    }

    @Override
    @Nullable
    public Uri insert(@NonNull Uri uri, @Nullable ContentValues contentValues) {
        return null;
    }

    @Override
    public boolean onCreate() {
        if (getContext() == null || !(getContext() instanceof Application) || !BLAutoInjectController.isEnableAutoInject()) {
            return true;
        }
        BackgroundLibrary.inject(getContext());
        ((Application) getContext()).registerActivityLifecycleCallbacks(new BLActivityLifecycleRegister());
        return true;
    }

    @Override
    @Nullable
    public Cursor query(@NonNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        return null;
    }

    @Override
    public int update(@NonNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        return 0;
    }
}
