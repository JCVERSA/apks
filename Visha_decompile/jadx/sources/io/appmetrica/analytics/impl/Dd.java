package io.appmetrica.analytics.impl;

import defpackage.oo0;
import io.appmetrica.analytics.coreapi.internal.backport.Function;
import io.appmetrica.analytics.coreutils.internal.io.Base64Utils;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;

public final class Dd implements Function {
    public final Ed a;
    public final Cd b;

    public Dd(Ed ed, Cd cd) {
        this.a = ed;
        this.b = cd;
    }

    @Override
    public final String apply(File file) {
        byte[] bArrC;
        FileInputStream fileInputStream;
        try {
            String absolutePath = file.getAbsolutePath();
            if (absolutePath != null) {
                try {
                    fileInputStream = new FileInputStream(new File(absolutePath));
                    try {
                        bArrC = oo0.c(fileInputStream);
                        In.a((Closeable) fileInputStream);
                    } catch (Throwable unused) {
                        In.a((Closeable) fileInputStream);
                        bArrC = null;
                    }
                } catch (Throwable unused2) {
                    fileInputStream = null;
                }
            } else {
                bArrC = null;
            }
            if (bArrC == null) {
                return null;
            }
            if (bArrC.length == 0) {
                bArrC = null;
            }
            if (bArrC != null) {
                return Base64Utils.compressBase64(MessageNano.toByteArray(this.b.fromModel(new Fd(bArrC, this.a))));
            }
            return null;
        } catch (Throwable unused3) {
            return null;
        }
    }
}
