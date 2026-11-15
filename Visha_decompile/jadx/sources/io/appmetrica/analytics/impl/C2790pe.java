package io.appmetrica.analytics.impl;

import android.content.Context;
import defpackage.g1a;
import io.appmetrica.analytics.coreutils.internal.io.FileUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.util.Locale;
import java.util.UUID;

public final class C2790pe {
    public final Context a;
    public final Ln b;
    public final Mn c;

    public C2790pe(Context context) {
        this(context, new Ln(), new Mn());
    }

    public final String a(String str) {
        try {
            this.c.getClass();
            if (!Mn.a(str)) {
                this.b.getClass();
                str = g1a.N(UUID.randomUUID().toString(), "-", "", false, 4, null).toLowerCase(Locale.US);
            }
            File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, "uuid.dat");
            if (fileFromSdkStorage != null && str != null) {
                Qa.a(str, new FileOutputStream(fileFromSdkStorage));
            }
            return str;
        } catch (Throwable unused) {
            return null;
        }
    }

    public C2790pe(Context context, Ln ln, Mn mn) {
        this.a = context;
        this.b = ln;
        this.c = mn;
    }

    public final void a() {
        File fileFromAppStorage;
        File fileFromSdkStorage = FileUtils.getFileFromSdkStorage(this.a, "uuid.dat");
        if (fileFromSdkStorage == null || fileFromSdkStorage.exists() || (fileFromAppStorage = FileUtils.getFileFromAppStorage(this.a, "uuid.dat")) == null || !fileFromAppStorage.exists()) {
            return;
        }
        FileUtils.copyToNullable(fileFromAppStorage, fileFromSdkStorage);
    }
}
