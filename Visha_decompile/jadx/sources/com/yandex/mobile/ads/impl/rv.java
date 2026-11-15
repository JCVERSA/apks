package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.util.Base64;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.io.IOException;
import java.net.URLDecoder;

public final class rv extends jk {

    @Nullable
    private xv e;

    @Nullable
    private byte[] f;
    private int g;
    private int h;

    public rv() {
        super(false);
    }

    @Override
    public final long a(xv xvVar) throws IOException {
        b(xvVar);
        this.e = xvVar;
        Uri uri = xvVar.a;
        String scheme = uri.getScheme();
        hg.a("Unsupported scheme: " + scheme, "data".equals(scheme));
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int i = f92.a;
        String[] strArrSplit = schemeSpecificPart.split(StringUtils.COMMA, -1);
        if (strArrSplit.length != 2) {
            throw eg1.a("Unexpected URI format: " + uri, (IllegalArgumentException) null);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e) {
                throw eg1.a("Error while parsing Base64 encoded string: " + str, e);
            }
        } else {
            this.f = f92.c(URLDecoder.decode(str, lo.a.name()));
        }
        long j = xvVar.f;
        byte[] bArr = this.f;
        if (j > bArr.length) {
            this.f = null;
            throw new uv(2008);
        }
        int i2 = (int) j;
        this.g = i2;
        int length = bArr.length - i2;
        this.h = length;
        long j2 = xvVar.g;
        if (j2 != -1) {
            this.h = (int) Math.min(length, j2);
        }
        c(xvVar);
        long j3 = xvVar.g;
        return j3 != -1 ? j3 : this.h;
    }

    @Override
    public final void close() {
        if (this.f != null) {
            this.f = null;
            e();
        }
        this.e = null;
    }

    @Override
    @Nullable
    public final Uri getUri() {
        xv xvVar = this.e;
        if (xvVar != null) {
            return xvVar.a;
        }
        return null;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) {
        if (i2 == 0) {
            return 0;
        }
        int i3 = this.h;
        if (i3 == 0) {
            return -1;
        }
        int iMin = Math.min(i2, i3);
        byte[] bArr2 = this.f;
        int i4 = f92.a;
        System.arraycopy(bArr2, this.g, bArr, i, iMin);
        this.g += iMin;
        this.h -= iMin;
        c(iMin);
        return iMin;
    }
}
