package com.google.android.exoplayer2.upstream;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.p0;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class AssetDataSource extends f {

    private final AssetManager f26456e;

    private Uri f26457f;

    private InputStream f26458g;

    private long f26459h;

    private boolean f26460i;

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
        this.f26456e = context.getAssets();
    }

    @Override
    public long a(n nVar) throws AssetDataSourceException {
        try {
            Uri uri = nVar.f26665a;
            this.f26457f = uri;
            String strSubstring = (String) com.google.android.exoplayer2.util.a.e(uri.getPath());
            if (strSubstring.startsWith("/android_asset/")) {
                strSubstring = strSubstring.substring(15);
            } else if (strSubstring.startsWith("/")) {
                strSubstring = strSubstring.substring(1);
            }
            j(nVar);
            InputStream inputStreamOpen = this.f26456e.open(strSubstring, 1);
            this.f26458g = inputStreamOpen;
            if (inputStreamOpen.skip(nVar.f26671g) < nVar.f26671g) {
                throw new AssetDataSourceException(null, 2008);
            }
            long j10 = nVar.f26672h;
            if (j10 != -1) {
                this.f26459h = j10;
            } else {
                long jAvailable = this.f26458g.available();
                this.f26459h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.f26459h = -1L;
                }
            }
            this.f26460i = true;
            k(nVar);
            return this.f26459h;
        } catch (AssetDataSourceException e10) {
            throw e10;
        } catch (IOException e11) {
            throw new AssetDataSourceException(e11, e11 instanceof FileNotFoundException ? 2005 : 2000);
        }
    }

    @Override
    public void close() {
        this.f26457f = null;
        try {
            try {
                InputStream inputStream = this.f26458g;
                if (inputStream != null) {
                    inputStream.close();
                }
                this.f26458g = null;
                if (this.f26460i) {
                    this.f26460i = false;
                    i();
                }
            } catch (IOException e10) {
                throw new AssetDataSourceException(e10, 2000);
            }
        } catch (Throwable th2) {
            this.f26458g = null;
            if (this.f26460i) {
                this.f26460i = false;
                i();
            }
            throw th2;
        }
    }

    @Override
    public Uri getUri() {
        return this.f26457f;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws AssetDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        long j10 = this.f26459h;
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
        int i12 = ((InputStream) p0.j(this.f26458g)).read(bArr, i10, i11);
        if (i12 == -1) {
            return -1;
        }
        long j11 = this.f26459h;
        if (j11 != -1) {
            this.f26459h = j11 - ((long) i12);
        }
        h(i12);
        return i12;
    }
}
