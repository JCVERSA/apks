package defpackage;

import android.content.Context;
import android.content.res.AssetManager;
import android.net.Uri;
import com.google.android.gms.internal.ads.zzfv;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public final class z3i extends p4i {
    public final AssetManager e;
    public Uri f;
    public InputStream g;
    public long h;
    public boolean i;

    public z3i(Context context) {
        super(false);
        this.e = context.getAssets();
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzfv {
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
                throw new zzfv(e, 2000);
            }
        }
        InputStream inputStream = this.g;
        int i3 = kfh.a;
        int i4 = inputStream.read(bArr, i, i2);
        if (i4 == -1) {
            return -1;
        }
        long j2 = this.h;
        if (j2 != -1) {
            this.h = j2 - ((long) i4);
        }
        zzg(i4);
        return i4;
    }

    @Override
    public final long j(cfi cfiVar) throws zzfv {
        try {
            Uri uri = cfiVar.a;
            this.f = uri;
            String path = uri.getPath();
            if (path == null) {
                throw null;
            }
            if (path.startsWith("/android_asset/")) {
                path = path.substring(15);
            } else if (path.startsWith("/")) {
                path = path.substring(1);
            }
            l(cfiVar);
            InputStream inputStreamOpen = this.e.open(path, 1);
            this.g = inputStreamOpen;
            long j = cfiVar.e;
            if (inputStreamOpen.skip(j) < j) {
                throw new zzfv(null, 2008);
            }
            long j2 = cfiVar.f;
            if (j2 != -1) {
                this.h = j2;
            } else {
                long jAvailable = this.g.available();
                this.h = jAvailable;
                if (jAvailable == 2147483647L) {
                    this.h = -1L;
                }
            }
            this.i = true;
            m(cfiVar);
            return this.h;
        } catch (zzfv e) {
            throw e;
        } catch (IOException e2) {
            throw new zzfv(e2, true != (e2 instanceof FileNotFoundException) ? 2000 : 2005);
        }
    }

    @Override
    public final Uri zzc() {
        return this.f;
    }

    @Override
    public final void zzd() {
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
                    k();
                }
            } catch (IOException e) {
                throw new zzfv(e, 2000);
            }
        } catch (Throwable th) {
            this.g = null;
            if (this.i) {
                this.i = false;
                k();
            }
            throw th;
        }
    }
}
