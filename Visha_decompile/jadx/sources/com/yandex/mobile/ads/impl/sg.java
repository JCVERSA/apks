package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class sg extends jk {
    private final AssetManager e;

    @Nullable
    private Uri f;

    @Nullable
    private InputStream g;
    private long h;
    private boolean i;

    public static final class a extends uv {
        public a(@Nullable IOException iOException, int i) {
            super(iOException, i);
        }
    }

    public sg(Context context) {
        super(false);
        this.e = context.getAssets();
    }

    @Override
    public final long a(xv xvVar) throws a {
        try {
            Uri uri = xvVar.a;
            this.f = uri;
            String path = uri.getPath();
            path.getClass();
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            b(xvVar);
            InputStream inputStreamOpen = this.e.open(path, 1);
            this.g = inputStreamOpen;
            if (inputStreamOpen.skip(xvVar.f) < xvVar.f) {
                throw new a(null, 2008);
            }
            long j = xvVar.g;
            if (j != -1) {
                this.h = j;
            } else {
                long jAvailable = this.g.available();
                this.h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.h = -1L;
                }
            }
            this.i = true;
            c(xvVar);
            return this.h;
        } catch (a e) {
            throw e;
        } catch (IOException e2) {
            throw new a(e2, e2 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override
    public final void close() throws a {
        this.f = null;
        try {
            try {
                InputStream inputStream = this.g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.g = null;
                if (this.i) {
                    this.i = false;
                    e();
                }
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        } catch (Throwable th) {
            this.g = null;
            if (this.i) {
                this.i = false;
                e();
            }
            throw th;
        }
    }

    @Override
    @Nullable
    public final Uri getUri() {
        return this.f;
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws a {
        if (i2 == 0) {
            return 0;
        }
        long j = this.h;
        if (j == 0) {
            return -1;
        }
        if (j != -1) {
            try {
                i2 = (int) Math.min(j, i2);
            } catch (IOException e) {
                throw new a(e, 2000);
            }
        }
        InputStream inputStream = this.g;
        int i3 = f92.a;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        long j2 = this.h;
        if (j2 != -1) {
            this.h = j2 - ((long) i4);
        }
        c(i4);
        return i4;
    }
}
