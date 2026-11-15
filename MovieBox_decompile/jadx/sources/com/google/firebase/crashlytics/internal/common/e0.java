package com.google.firebase.crashlytics.internal.common;

import com.google.firebase.crashlytics.internal.model.CrashlyticsReport;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.zip.GZIPOutputStream;

class e0 implements j0 {

    private final File f30344a;

    private final String f30345b;

    private final String f30346c;

    e0(String str, String str2, File file) {
        this.f30345b = str;
        this.f30346c = str2;
        this.f30344a = file;
    }

    /* JADX WARN: Code duplicated, block: B:51:0x0057 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    private byte[] c() {
        byte[] bArr = new byte[8192];
        try {
            InputStream stream = getStream();
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
                    if (stream == null) {
                        gZIPOutputStream.close();
                        byteArrayOutputStream.close();
                        if (stream != null) {
                            stream.close();
                        }
                        return null;
                    }
                    while (true) {
                        try {
                            int i10 = stream.read(bArr);
                            if (i10 <= 0) {
                                gZIPOutputStream.finish();
                                byte[] byteArray = byteArrayOutputStream.toByteArray();
                                gZIPOutputStream.close();
                                byteArrayOutputStream.close();
                                stream.close();
                                return byteArray;
                            }
                            gZIPOutputStream.write(bArr, 0, i10);
                        } catch (Throwable th2) {
                            try {
                                gZIPOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Throwable th4) {
                            th.addSuppressed(th4);
                        }
                        throw th;
                    }
                } catch (Throwable th5) {
                    byteArrayOutputStream.close();
                    throw th5;
                }
            } catch (Throwable th6) {
                if (stream != null) {
                    try {
                        stream.close();
                    } catch (Throwable th7) {
                        th6.addSuppressed(th7);
                    }
                }
                throw th6;
            }
            if (stream != null) {
                stream.close();
            }
            throw th6;
        } catch (IOException unused) {
            return null;
        }
    }

    @Override
    public CrashlyticsReport.d.b a() {
        byte[] bArrC = c();
        if (bArrC != null) {
            return CrashlyticsReport.d.b.a().b(bArrC).c(this.f30345b).a();
        }
        return null;
    }

    @Override
    public String b() {
        return this.f30346c;
    }

    @Override
    public InputStream getStream() {
        if (this.f30344a.exists() && this.f30344a.isFile()) {
            try {
                return new FileInputStream(this.f30344a);
            } catch (FileNotFoundException unused) {
            }
        }
        return null;
    }
}
