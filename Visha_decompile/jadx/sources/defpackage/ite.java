package defpackage;

import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.internal.ads.e0;

public final class ite extends tte {
    public static volatile String i;
    public static final Object j = new Object();

    public ite(e0 e0Var, String str, String str2, ooe ooeVar, int i2, int i3) {
        super(e0Var, "6gGfGGcmx1E9KiSWvrEfwVv6XPnvjiNvbpksNPDa7IjVt7AgYM1vgnt6WUCH3zMa", "LIwJJPdWSBNAREBH7yVN3RT/pyZ0gZIKN23H3vO2NIc=", ooeVar, i2, 1);
    }

    @Override
    public final void a() {
        this.e.z0(ExifInterface.LONGITUDE_EAST);
        if (i == null) {
            synchronized (j) {
                try {
                    if (i == null) {
                        i = (String) this.f.invoke(null, null);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.z0(i);
        }
    }
}
