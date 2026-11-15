package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

class f implements j0 {

    private final byte[] f30347a;

    private final String f30348b;

    private final String f30349c;

    f(String str, String str2, byte[] bArr) {
        this.f30348b = str;
        this.f30349c = str2;
        this.f30347a = bArr;
    }

    private byte[] c() {
        if (d()) {
            return null;
        }
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    gZIPOutputStream.write(this.f30347a);
                    gZIPOutputStream.finish();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    gZIPOutputStream.close();
                    byteArrayOutputStream.close();
                    return byteArray;
                } catch (Throwable th2) {
                    try {
                        gZIPOutputStream.close();
                    } catch (Throwable th3) {
                        th2.addSuppressed(th3);
                    }
                    throw th2;
                }
            } catch (Throwable th4) {
                try {
                    byteArrayOutputStream.close();
                } catch (Throwable th5) {
                    th4.addSuppressed(th5);
                }
                throw th4;
            }
        } catch (IOException unused) {
            return null;
        }
    }

    private boolean d() {
        byte[] bArr = this.f30347a;
        return bArr == null || bArr.length == 0;
    }

    @Override
    public CrashlyticsReport.d.b a() {
        byte[] bArrC = c();
        if (bArrC == null) {
            return null;
        }
        return CrashlyticsReport.d.b.a().b(bArrC).c(this.f30348b).a();
    }

    @Override
    public String b() {
        return this.f30349c;
    }

    @Override
    public InputStream getStream() {
        if (d()) {
            return null;
        }
        return new ByteArrayInputStream(this.f30347a);
    }
}
