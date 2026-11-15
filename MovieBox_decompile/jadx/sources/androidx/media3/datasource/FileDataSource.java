package androidx.media3.datasource;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import w1.h;
import w1.n;

public final class FileDataSource extends w1.a {

    private RandomAccessFile f10384e;

    private Uri f10385f;

    private long f10386g;

    private boolean f10387h;

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

    public static final class a implements androidx.media3.datasource.a.InterfaceC0085a {

        private n f10388a;

        @Override
        public FileDataSource createDataSource() {
            FileDataSource fileDataSource = new FileDataSource();
            n nVar = this.f10388a;
            if (nVar != null) {
                fileDataSource.c(nVar);
            }
            return fileDataSource;
        }
    }

    public FileDataSource() {
        super(false);
    }

    private static RandomAccessFile h(Uri uri) throws FileDataSourceException {
        try {
            return new RandomAccessFile((String) androidx.media3.common.util.a.e(uri.getPath()), CampaignEx.JSON_KEY_AD_R);
        } catch (FileNotFoundException e10) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new FileDataSourceException(e10, ((e10.getCause() instanceof ErrnoException) && ((ErrnoException) e10.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            throw new FileDataSourceException(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e10, 1004);
        } catch (SecurityException e11) {
            throw new FileDataSourceException(e11, 2006);
        } catch (RuntimeException e12) {
            throw new FileDataSourceException(e12, 2000);
        }
    }

    @Override
    public long a(h hVar) throws FileDataSourceException {
        Uri uri = hVar.f74097a;
        this.f10385f = uri;
        f(hVar);
        RandomAccessFile randomAccessFileH = h(uri);
        this.f10384e = randomAccessFileH;
        try {
            randomAccessFileH.seek(hVar.f74103g);
            long length = hVar.f74104h;
            if (length == -1) {
                length = this.f10384e.length() - hVar.f74103g;
            }
            this.f10386g = length;
            if (length < 0) {
                throw new FileDataSourceException(null, null, 2008);
            }
            this.f10387h = true;
            g(hVar);
            return this.f10386g;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }

    @Override
    public void close() {
        this.f10385f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f10384e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f10384e = null;
                if (this.f10387h) {
                    this.f10387h = false;
                    e();
                }
            } catch (IOException e10) {
                throw new FileDataSourceException(e10, 2000);
            }
        } catch (Throwable th2) {
            this.f10384e = null;
            if (this.f10387h) {
                this.f10387h = false;
                e();
            }
            throw th2;
        }
    }

    @Override
    public Uri getUri() {
        return this.f10385f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws FileDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f10386g == 0) {
            return -1;
        }
        try {
            int i12 = ((RandomAccessFile) a1.i(this.f10384e)).read(bArr, i10, (int) Math.min(this.f10386g, i11));
            if (i12 > 0) {
                this.f10386g -= (long) i12;
                d(i12);
            }
            return i12;
        } catch (IOException e10) {
            throw new FileDataSourceException(e10, 2000);
        }
    }
}
