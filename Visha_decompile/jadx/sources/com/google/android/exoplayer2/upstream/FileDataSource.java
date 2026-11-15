package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.DoNotInline;
import androidx.annotation.Nullable;
import defpackage.blb;
import defpackage.u5b;
import defpackage.u90;
import defpackage.zi;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class FileDataSource extends u90 {
    public RandomAccessFile e;
    public Uri f;
    public long g;
    public boolean h;

    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(Throwable th, int i) {
            super(th, i);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th, int i) {
            super(str, th, i);
        }
    }

    public static final class a {
        @DoNotInline
        public static boolean b(@Nullable Throwable th) {
            return (th instanceof ErrnoException) && ((ErrnoException) th).errno == OsConstants.EACCES;
        }
    }

    public static final class b implements com.google.android.exoplayer2.upstream.a.InterfaceC0084a {
        public u5b a;

        @Override
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            u5b u5bVar = this.a;
            if (u5bVar != null) {
                fileDataSource.b(u5bVar);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    public static RandomAccessFile g(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) zi.e(uri.getPath()), "r");
        } catch (FileNotFoundException e) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e, (blb.a < 21 || !a.b(e.getCause())) ? 2005 : 2006);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e, 1004);
        } catch (SecurityException e2) {
            throw new FileDataSourceException(e2, 2006);
        } catch (RuntimeException e3) {
            throw new FileDataSourceException(e3, 2000);
        }
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.b bVar) throws FileDataSourceException {
        Uri uri = bVar.a;
        this.f = uri;
        e(bVar);
        RandomAccessFile randomAccessFileG = g(uri);
        this.e = randomAccessFileG;
        try {
            randomAccessFileG.seek(bVar.g);
            long length = bVar.h;
            if (length == -1) {
                length = this.e.length() - bVar.g;
            }
            this.g = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.h = true;
            f(bVar);
            return this.g;
        } catch (IOException e) {
            throw new FileDataSourceException(e, 2000);
        }
    }

    @Override
    public void close() {
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
                    d();
                }
            } catch (IOException e) {
                throw new FileDataSourceException(e, 2000);
            }
        } catch (Throwable th) {
            this.e = null;
            if (this.h) {
                this.h = false;
                d();
            }
            throw th;
        }
    }

    @Override
    public Uri getUri() {
        return this.f;
    }

    @Override
    public int read(byte[] bArr, int i, int i2) throws FileDataSourceException {
        if (i2 == 0) {
            return 0;
        }
        if (this.g == 0) {
            return -1;
        }
        try {
            int i3 = ((RandomAccessFile) blb.j(this.e)).read(bArr, i, (int) Math.min(this.g, i2));
            if (i3 > 0) {
                this.g -= (long) i3;
                c(i3);
            }
            return i3;
        } catch (IOException e) {
            throw new FileDataSourceException(e, 2000);
        }
    }
}
