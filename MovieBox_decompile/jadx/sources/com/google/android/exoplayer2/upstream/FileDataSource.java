package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class FileDataSource extends f {

    private RandomAccessFile f26467e;

    private Uri f26468f;

    private long f26469g;

    private boolean f26470h;

    public static class FileDataSourceException extends DataSourceException {
        @Deprecated
        public FileDataSourceException(Exception exc) {
            super(exc, 2000);
        }

        @Deprecated
        public FileDataSourceException(String str, IOException iOException) {
            super(str, iOException, 2000);
        }

        public FileDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }

        public FileDataSourceException(@Nullable String str, @Nullable Throwable th2, int i10) {
            super(str, th2, i10);
        }
    }

    private static final class a {
        public static boolean b(@Nullable Throwable th2) {
            return (th2 instanceof ErrnoException) && ((ErrnoException) th2).errno == OsConstants.EACCES;
        }
    }

    public static final class b implements k.a {

        private k0 f26471a;

        @Override
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            k0 k0Var = this.f26471a;
            if (k0Var != null) {
                fileDataSource.e(k0Var);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile l(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) com.google.android.exoplayer2.util.a.e(uri.getPath()), CampaignEx.JSON_KEY_AD_R);
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e10, (p0.f26854a < 21 || !a.b(e10.getCause())) ? 2005 : 2006);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new FileDataSourceException(e11, 2006);
        } catch (RuntimeException e12) {
            throw new FileDataSourceException(e12, 2000);
        }
    }

    @Override
    public long a(n nVar) throws FileDataSourceException {
        Uri uri = nVar.f26665a;
        this.f26468f = uri;
        j(nVar);
        RandomAccessFile randomAccessFileL = l(uri);
        this.f26467e = randomAccessFileL;
        try {
            randomAccessFileL.seek(nVar.f26671g);
            long length = nVar.f26672h;
            if (length == -1) {
                length = this.f26467e.length() - nVar.f26671g;
            }
            this.f26469g = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.f26470h = true;
            k(nVar);
            return this.f26469g;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }

    @Override
    public void close() {
        this.f26468f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f26467e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f26467e = null;
                if (this.f26470h) {
                    this.f26470h = false;
                    i();
                }
            } catch (IOException e10) {
                throw new FileDataSourceException(e10, 2000);
            }
        } catch (Throwable th2) {
            this.f26467e = null;
            if (this.f26470h) {
                this.f26470h = false;
                i();
            }
            throw th2;
        }
    }

    @Override
    public Uri getUri() {
        return this.f26468f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws FileDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f26469g == 0) {
            return -1;
        }
        try {
            int i12 = ((RandomAccessFile) p0.j(this.f26467e)).read(bArr, i10, (int) Math.min(this.f26469g, i11));
            if (i12 > 0) {
                this.f26469g -= (long) i12;
                h(i12);
            }
            return i12;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }
}
