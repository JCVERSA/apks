package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.net.Uri;
import androidx.core.content.FileProvider;
import defpackage.dv3;
import defpackage.y45;
import java.io.File;

public final class ml0 {
    private final Context a;
    private final jl0 b;

    public ml0(Context context, jl0 jl0Var) {
        y45.j(context, "context");
        y45.j(jl0Var, "fileProvider");
        this.a = context;
        this.b = jl0Var;
    }

    public final ll0 a(String str) {
        y45.j(str, "reportText");
        try {
            File fileA = this.b.a();
            File parentFile = fileA.getParentFile();
            long freeSpace = parentFile != null ? parentFile.getFreeSpace() : 0L;
            byte[] bytes = str.getBytes(defpackage.qv0.b);
            y45.i(bytes, "getBytes(...)");
            if (bytes.length >= freeSpace) {
                return new ll0.a("Not enough space error");
            }
            dv3.e(fileA, bytes);
            Uri uriForFile = FileProvider.getUriForFile(this.a, this.a.getPackageName() + ".monetization.ads.inspector.fileprovider", fileA);
            y45.g(uriForFile);
            return new ll0.c(uriForFile);
        } catch (Exception unused) {
            sp0.c(new Object[0]);
            return new ll0.a("Failed to save report");
        }
    }
}
