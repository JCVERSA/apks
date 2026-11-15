package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import com.google.logging.type.LogSeverity;
import java.io.File;
import java.io.InputStream;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

abstract class o {

    private ConcurrentHashMap f76493a = new ConcurrentHashMap();

    class a implements b {
        a() {
        }

        @Override
        public int b(androidx.core.provider.k.b bVar) {
            return bVar.e();
        }

        @Override
        public boolean a(androidx.core.provider.k.b bVar) {
            return bVar.f();
        }
    }

    private interface b {
        boolean a(Object obj);

        int b(Object obj);
    }

    o() {
    }

    private static Object f(Object[] objArr, int i10, b bVar) {
        return g(objArr, (i10 & 1) == 0 ? 400 : LogSeverity.ALERT_VALUE, (i10 & 2) != 0, bVar);
    }

    private static Object g(Object[] objArr, int i10, boolean z10, b bVar) {
        Object obj = null;
        int i11 = Integer.MAX_VALUE;
        for (Object obj2 : objArr) {
            int iAbs = (Math.abs(bVar.b(obj2) - i10) * 2) + (bVar.a(obj2) == z10 ? 0 : 1);
            if (obj == null || i11 > iAbs) {
                obj = obj2;
                i11 = iAbs;
            }
        }
        return obj;
    }

    public abstract Typeface a(Context context, y0.e.c cVar, Resources resources, int i10);

    public abstract Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i10);

    public Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        throw new IllegalStateException("createFromFontInfoWithFallback must only be called on API 29+");
    }

    protected Typeface d(Context context, InputStream inputStream) {
        File fileE = p.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (p.d(fileE, inputStream)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    public Typeface e(Context context, Resources resources, int i10, String str, int i11) {
        File fileE = p.e(context);
        if (fileE == null) {
            return null;
        }
        try {
            if (p.c(fileE, resources, i10)) {
                return Typeface.createFromFile(fileE.getPath());
            }
            return null;
        } catch (RuntimeException unused) {
            return null;
        } finally {
            fileE.delete();
        }
    }

    protected androidx.core.provider.k.b h(androidx.core.provider.k.b[] bVarArr, int i10) {
        return (androidx.core.provider.k.b) f(bVarArr, i10, new a());
    }
}
