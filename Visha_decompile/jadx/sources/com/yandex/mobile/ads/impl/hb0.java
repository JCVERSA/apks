package com.yandex.mobile.ads.impl;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class hb0 extends jk {

    @Nullable
    private RandomAccessFile e;

    @Nullable
    private Uri f;
    private long g;
    private boolean h;

    @RequiresApi(21)
    public static final class a {
        @DoNotInline
        public static boolean a(@Nullable Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    public static final class b implements tv.a {
        @Override
        public final tv a() {
            return new hb0();
        }
    }

    public static class c extends uv {
        public c(int i, @Nullable String str, @Nullable FileNotFoundException fileNotFoundException) {
            super(i, str, fileNotFoundException);
        }

        public c(Exception exc, int i) {
            super(exc, i);
        }
    }

    public hb0() {
        super(false);
    }

    @Override
    public final long a(xv xvVar) throws c {
        Uri uri = xvVar.a;
        this.f = uri;
        b(xvVar);
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.e = randomAccessFile;
            try {
                randomAccessFile.seek(xvVar.f);
                long length = xvVar.g;
                if (length == -1) {
                    length = this.e.length() - xvVar.f;
                }
                this.g = length;
                if (length < 0) {
                    throw new c(2008, null, null);
                }
                this.h = true;
                c(xvVar);
                return this.g;
            } catch (IOException e) {
                throw new c(e, 2000);
            }
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new c(e2, (f92.a < 21 || !a.a(e2.getCause())) ? 2005 : 2006);
            }
            throw new c(1004, "uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=" + uri.getPath() + ",query=" + uri.getQuery() + ",fragment=" + uri.getFragment(), e2);
        } catch (SecurityException e3) {
            throw new c(e3, 2006);
        } catch (RuntimeException e4) {
            throw new c(e4, 2000);
        }
    }

    @Override
    public final void close() throws c {
        this.f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.e = null;
                if (this.h) {
                    this.h = false;
                    e();
                }
            } catch (IOException e) {
                throw new c(e, 2000);
            }
        } catch (Throwable th) {
            this.e = null;
            if (this.h) {
                this.h = false;
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
    public final int read(byte[] bArr, int i, int i2) throws c {
        if (i2 == 0) {
            return 0;
        }
        long j = this.g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.e;
            int i3 = f92.a;
            int i4 = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (i4 > 0) {
                this.g -= (long) i4;
                c(i4);
            }
            return i4;
        } catch (IOException e) {
            throw new c(e, 2000);
        }
    }
}
