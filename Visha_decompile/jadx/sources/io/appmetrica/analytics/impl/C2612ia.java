package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.dv3;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;

public final class C2612ia implements Yn {
    public final Context a;
    public final String b;

    public C2612ia(Context context, String str) {
        this.a = context;
        this.b = str;
    }

    @Override
    public final String a() {
        try {
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, this.b);
            if (fileFromSdkStorage == null) {
                return null;
            }
            fileFromSdkStorage.exists();
            File fileFromAppStorage = FileUtils.getFileFromAppStorage(this.a, this.b);
            if (fileFromAppStorage != null) {
                FileUtils.copyToNullable(fileFromAppStorage, fileFromSdkStorage);
            }
            return dv3.d(fileFromSdkStorage, null, 1, null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override
    public final void a(String str) {
        try {
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, this.b);
            if (fileFromSdkStorage != null) {
                dv3.g(fileFromSdkStorage, str, null, 2, null);
            }
        } catch (Throwable unused) {
        }
    }
}
