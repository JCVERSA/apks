package com.yandex.mobile.ads.impl;

import android.net.Uri;
import androidx.annotation.Nullable;
import com.yandex.mobile.ads.impl.mh1;
import com.yandex.mobile.ads.impl.tv;
import java.io.IOException;

public final class mh1 implements tv {
    public static final mh1 a = new mh1();

    static {
        new tv.a() {
            @Override
            public final tv a() {
                return mh1.e();
            }
        };
    }

    private mh1() {
    }

    public static mh1 e() {
        return new mh1();
    }

    @Override
    public final void a(d72 d72Var) {
    }

    @Override
    public final void close() {
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return null;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) {
        throw new UnsupportedOperationException();
    }

    @Override
    public final long a(xv xvVar) throws IOException {
        throw new IOException("PlaceholderDataSource cannot be opened");
    }
}
