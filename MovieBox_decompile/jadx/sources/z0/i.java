package z0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Build;
import android.os.CancellationSignal;
import android.os.Handler;
import androidx.collection.z;
import java.util.List;

public abstract class i {

    private static final o f76474a;

    private static final z f76475b;

    public static class a extends androidx.core.provider.k.c {

        private y0.h.e f76476a;

        public a(y0.h.e eVar) {
            this.f76476a = eVar;
        }

        @Override
        public void a(int i10) {
            y0.h.e eVar = this.f76476a;
            if (eVar != null) {
                eVar.f(i10);
            }
        }

        @Override
        public void b(Typeface typeface) {
            y0.h.e eVar = this.f76476a;
            if (eVar != null) {
                eVar.g(typeface);
            }
        }
    }

    static {
        e4.a.a("TypefaceCompat static init");
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            f76474a = new n();
        } else if (i10 >= 28) {
            f76474a = new m();
        } else if (i10 >= 26) {
            f76474a = new l();
        } else if (i10 < 24 || !k.k()) {
            f76474a = new j();
        } else {
            f76474a = new k();
        }
        f76475b = new z(16);
        e4.a.b();
    }

    public static Typeface a(Context context, Typeface typeface, int i10) {
        if (context != null) {
            return Typeface.create(typeface, i10);
        }
        throw new IllegalArgumentException("Context cannot be null");
    }

    public static Typeface b(Context context, CancellationSignal cancellationSignal, androidx.core.provider.k.b[] bVarArr, int i10) {
        e4.a.a("TypefaceCompat.createFromFontInfo");
        try {
            return f76474a.b(context, cancellationSignal, bVarArr, i10);
        } finally {
            e4.a.b();
        }
    }

    public static Typeface c(Context context, CancellationSignal cancellationSignal, List list, int i10) {
        e4.a.a("TypefaceCompat.createFromFontInfoWithFallback");
        try {
            return f76474a.c(context, cancellationSignal, list, i10);
        } finally {
            e4.a.b();
        }
    }

    public static Typeface d(Context context, y0.e.b bVar, Resources resources, int i10, String str, int i11, int i12, y0.h.e eVar, Handler handler, boolean z10) {
        Typeface typefaceA;
        if (bVar instanceof y0.e.C0945e) {
            y0.e.C0945e c0945e = (y0.e.C0945e) bVar;
            Typeface typefaceH = h(c0945e.d());
            if (typefaceH != null) {
                if (eVar != null) {
                    eVar.d(typefaceH, handler);
                }
                return typefaceH;
            }
            typefaceA = androidx.core.provider.k.c(context, c0945e.a() != null ? h.a(new Object[]{c0945e.c(), c0945e.a()}) : h.a(new Object[]{c0945e.c()}), i12, !z10 ? eVar != null : c0945e.b() != 0, z10 ? c0945e.e() : -1, y0.h.e.e(handler), new a(eVar));
        } else {
            typefaceA = f76474a.a(context, (y0.e.c) bVar, resources, i12);
            if (eVar != null) {
                if (typefaceA != null) {
                    eVar.d(typefaceA, handler);
                } else {
                    eVar.c(-3, handler);
                }
            }
        }
        if (typefaceA != null) {
            f76475b.put(f(resources, i10, str, i11, i12), typefaceA);
        }
        return typefaceA;
    }

    public static Typeface e(Context context, Resources resources, int i10, String str, int i11, int i12) {
        Typeface typefaceE = f76474a.e(context, resources, i10, str, i12);
        if (typefaceE != null) {
            f76475b.put(f(resources, i10, str, i11, i12), typefaceE);
        }
        return typefaceE;
    }

    private static String f(Resources resources, int i10, String str, int i11, int i12) {
        return resources.getResourcePackageName(i10) + '-' + str + '-' + i11 + '-' + i10 + '-' + i12;
    }

    public static Typeface g(Resources resources, int i10, String str, int i11, int i12) {
        return (Typeface) f76475b.get(f(resources, i10, str, i11, i12));
    }

    private static Typeface h(String str) {
        if (str == null || str.isEmpty()) {
            return null;
        }
        Typeface typefaceCreate = Typeface.create(str, 0);
        Typeface typefaceCreate2 = Typeface.create(Typeface.DEFAULT, 0);
        if (typefaceCreate == null || typefaceCreate.equals(typefaceCreate2)) {
            return null;
        }
        return typefaceCreate;
    }
}
