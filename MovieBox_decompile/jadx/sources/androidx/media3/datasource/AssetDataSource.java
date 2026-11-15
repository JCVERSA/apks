package androidx.media3.datasource;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import androidx.media3.common.util.a1;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import w1.h;

public final class AssetDataSource extends w1.a {

    private final AssetManager f10373e;

    private Uri f10374f;

    private InputStream f10375g;

    private long f10376h;

    private boolean f10377i;

    public static final class AssetDataSourceException extends DataSourceException {
        @Deprecated
        public AssetDataSourceException(IOException iOException) {
            super(iOException, 2000);
        }

        public AssetDataSourceException(@Nullable Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public AssetDataSource(Context context) {
        super(false);
        this.f10373e = context.getAssets();
    }

    @Override
    public long a(h hVar) throws AssetDataSourceException {
        try {
            Uri uri = hVar.f74097a;
            this.f10374f = uri;
            String strSubstring = (String) androidx.media3.common.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            f(hVar);
            InputStream inputStreamOpen = this.f10373e.open(strSubstring, 1);
            this.f10375g = inputStreamOpen;
            if (inputStreamOpen.skip(hVar.f74103g) < hVar.f74103g) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j10 = hVar.f74104h;
            if (j10 != -1) {
                this.f10376h = j10;
            } else {
                long jAvailable = this.f10375g.available();
                this.f10376h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f10376h = -1L;
                }
            }
            this.f10377i = true;
            g(hVar);
            return this.f10376h;
        } catch (AssetDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new AssetDataSourceException(e11, e11 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override
    public void close() {
        this.f10374f = null;
        try {
            try {
                InputStream inputStream = this.f10375g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f10375g = null;
                if (this.f10377i) {
                    this.f10377i = false;
                    e();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        } catch (Throwable th2) {
            this.f10375g = null;
            if (this.f10377i) {
                this.f10377i = false;
                e();
            }
            throw th2;
        }
    }

    @Override
    public Uri getUri() {
        return this.f10374f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws AssetDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f10376h;
        if (j10 == 0) {
            return -1;
        }
        if (j10 != -1) {
            try {
                i11 = (int) Math.min(j10, i11);
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        }
        int i12 = ((InputStream) a1.i(this.f10375g)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f10376h;
        if (j11 != -1) {
            this.f10376h = j11 - ((long) i12);
        }
        d(i12);
        return i12;
    }
}
