package io.appmetrica.analytics.network.impl;

import defpackage.c74;
import defpackage.ly0;
import defpackage.zfb;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

public abstract class e {
    public static byte[] a(int i, c74 c74Var) {
        try {
            InputStream inputStream = (InputStream) c74Var.invoke();
            if (inputStream != null) {
                try {
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    try {
                        try {
                            byte[] bArr = new byte[8192];
                            int i2 = 0;
                            while (true) {
                                int i3 = inputStream.read(bArr);
                                if (-1 == i3 || i2 > i) {
                                    break;
                                    break;
                                }
                                if (i3 > 0) {
                                    byteArrayOutputStream.write(bArr, 0, i3);
                                    i2 += i3;
                                }
                            }
                            byte[] byteArray = byteArrayOutputStream.toByteArray();
                            ly0.a(byteArrayOutputStream, null);
                            ly0.a(inputStream, null);
                            return byteArray;
                        } catch (Throwable unused) {
                            zfb zfbVar = zfb.a;
                            ly0.a(byteArrayOutputStream, null);
                            ly0.a(inputStream, null);
                            return new byte[0];
                        }
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            ly0.a(byteArrayOutputStream, th);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        ly0.a(inputStream, th3);
                        throw th4;
                    }
                }
            }
        } catch (Throwable unused2) {
        }
        return new byte[0];
    }

    public static final Map a(Map map) {
        return Collections.unmodifiableMap(new HashMap(map));
    }
}
