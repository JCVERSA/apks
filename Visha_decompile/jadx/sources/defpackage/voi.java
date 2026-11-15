package defpackage;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzgs;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

public final class voi extends p4i {
    public RandomAccessFile e;
    public Uri f;
    public long g;
    public boolean h;

    public voi() {
        super(false);
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzgs {
        if (i2 == 0) {
            return 0;
        }
        long j = this.g;
        if (j == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.e;
            int i3 = kfh.a;
            int i4 = randomAccessFile.read(bArr, i, (int) Math.min(j, i2));
            if (i4 > 0) {
                this.g -= (long) i4;
                zzg(i4);
            }
            return i4;
        } catch (IOException e) {
            throw new zzgs(e, 2000);
        }
    }

    @Override
    public final long j(cfi cfiVar) throws zzgs {
        Uri uri = cfiVar.a;
        this.f = uri;
        l(cfiVar);
        try {
            String path = uri.getPath();
            if (path == null) {
                throw null;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.e = randomAccessFile;
            try {
                long j = cfiVar.e;
                randomAccessFile.seek(j);
                long length = cfiVar.f;
                if (length == -1) {
                    length = this.e.length() - j;
                }
                this.g = length;
                if (length < 0) {
                    throw new zzgs(null, null, 2008);
                }
                this.h = true;
                m(cfiVar);
                return this.g;
            } catch (IOException e) {
                throw new zzgs(e, 2000);
            }
        } catch (FileNotFoundException e2) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new zzgs(e2, ((e2.getCause() instanceof ErrnoException) && ((ErrnoException) e2.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005);
            }
            throw new zzgs(String.format("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=%s,query=%s,fragment=%s", uri.getPath(), uri.getQuery(), uri.getFragment()), e2, 1004);
        } catch (SecurityException e3) {
            throw new zzgs(e3, 2006);
        } catch (RuntimeException e4) {
            throw new zzgs(e4, 2000);
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
                RandomAccessFile randomAccessFile = this.e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.e = null;
                if (this.h) {
                    this.h = false;
                    k();
                }
            } catch (IOException e) {
                throw new zzgs(e, 2000);
            }
        } catch (Throwable th) {
            this.e = null;
            if (this.h) {
                this.h = false;
                k();
            }
            throw th;
        }
    }
}
