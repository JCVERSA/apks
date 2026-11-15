package defpackage;

import android.content.Context;
import androidx.exifinterface.media.ExifInterface;
import com.google.android.gms.internal.ads.e0;
import java.util.concurrent.atomic.AtomicReference;

public final class sse extends tte {
    public static final ute j = new ute();
    public final Context i;

    public sse(e0 e0Var, String str, String str2, ooe ooeVar, int i, int i2, Context context) {
        super(e0Var, "xk+cC76rWJdSYf+hRQiAzQoNCf+H79UmYEblYPD4lvbXwBM+eG3Fjmce/aN8ufoO", "ZEsSNRGfbw0bqbaxAG92NStcWABOsDFkwqfauk+C3EM=", ooeVar, i, 29);
        this.i = context;
    }

    @Override
    public final void a() {
        this.e.n0(ExifInterface.LONGITUDE_EAST);
        Context context = this.i;
        AtomicReference atomicReferenceA = j.a(context.getPackageName());
        if (atomicReferenceA.get() == null) {
            synchronized (atomicReferenceA) {
                try {
                    if (atomicReferenceA.get() == null) {
                        atomicReferenceA.set((String) this.f.invoke(null, context));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        String str = (String) atomicReferenceA.get();
        ooe ooeVar = this.e;
        synchronized (ooeVar) {
            ooeVar.n0(vpe.a(str.getBytes(), true));
        }
    }
}
