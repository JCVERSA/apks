package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.zfb;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;

public final class C2636ja {
    public volatile Boolean a;

    public final void a(Context context) {
        if (this.a == null) {
            synchronized (this) {
                try {
                    if (this.a == null) {
                        boolean z = false;
                        try {
                            File fileFromAppStorage = FileUtils.getFileFromAppStorage(context, "uuid.dat");
                            boolean zExists = fileFromAppStorage != null ? fileFromAppStorage.exists() : false;
                            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(context, "uuid.dat");
                            boolean zExists2 = fileFromSdkStorage != null ? fileFromSdkStorage.exists() : false;
                            if (zExists || zExists2) {
                                z = true;
                            }
                        } catch (Throwable unused) {
                        }
                        this.a = Boolean.valueOf(z);
                    }
                    zfb zfbVar = zfb.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
