package y0;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParserException;

public abstract class h {

    private static final ThreadLocal f76055a = new ThreadLocal();

    private static final WeakHashMap f76056b = new WeakHashMap(0);

    private static final Object f76057c = new Object();

    static class a {
        static Drawable a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        static Drawable b(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    static class b {
        static ColorStateList a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    private static class c {

        final ColorStateList f76058a;

        final Configuration f76059b;

        final int f76060c;

        c(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f76058a = colorStateList;
            this.f76059b = configuration;
            this.f76060c = theme == null ? 0 : theme.hashCode();
        }
    }

    private static final class d {

        final Resources f76061a;

        final Resources.Theme f76062b;

        d(Resources resources, Resources.Theme theme) {
            this.f76061a = resources;
            this.f76062b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || d.class != obj.getClass()) {
                return false;
            }
            d dVar = (d) obj;
            return this.f76061a.equals(dVar.f76061a) && androidx.core.util.d.a(this.f76062b, dVar.f76062b);
        }

        public int hashCode() {
            return androidx.core.util.d.b(this.f76061a, this.f76062b);
        }
    }

    public static abstract class e {
        public static Handler e(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void c(final int i10, Handler handler) {
            e(handler).post(new Runnable() {
                @Override
                public final void run() {
                    this.f76068a.f(i10);
                }
            });
        }

        public final void d(final Typeface typeface, Handler handler) {
            e(handler).post(new Runnable() {
                @Override
                public final void run() {
                    this.f76066a.g(typeface);
                }
            });
        }

        public abstract void f(int i10);

        public abstract void g(Typeface typeface);
    }

    public static final class f {

        static class a {

            private static final Object f76063a = new Object();

            private static Method f76064b;

            private static boolean f76065c;

            static void a(Resources.Theme theme) {
                synchronized (f76063a) {
                    if (!f76065c) {
                        try {
                            Method declaredMethod = Resources.Theme.class.getDeclaredMethod("rebase", null);
                            f76064b = declaredMethod;
                            declaredMethod.setAccessible(true);
                        } catch (NoSuchMethodException unused) {
                        }
                        f76065c = true;
                    }
                    Method method = f76064b;
                    if (method != null) {
                        try {
                            method.invoke(theme, null);
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                            f76064b = null;
                        }
                    }
                }
            }
        }

        static class b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            if (Build.VERSION.SDK_INT >= 29) {
                b.a(theme);
            } else {
                a.a(theme);
            }
        }
    }

    private static void a(d dVar, int i10, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f76057c) {
            try {
                WeakHashMap weakHashMap = f76056b;
                SparseArray sparseArray = (SparseArray) weakHashMap.get(dVar);
                if (sparseArray == null) {
                    sparseArray = new SparseArray();
                    weakHashMap.put(dVar, sparseArray);
                }
                sparseArray.append(i10, new c(colorStateList, dVar.f76061a.getConfiguration(), theme));
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x003c, code lost:
    
        if (r2.f76060c == r5.hashCode()) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static ColorStateList b(d dVar, int i10) {
        c cVar;
        synchronized (f76057c) {
            try {
                SparseArray sparseArray = (SparseArray) f76056b.get(dVar);
                if (sparseArray != null && sparseArray.size() > 0 && (cVar = (c) sparseArray.get(i10)) != null) {
                    if (cVar.f76059b.equals(dVar.f76061a.getConfiguration())) {
                        Resources.Theme theme = dVar.f76062b;
                        if (theme != null || cVar.f76060c != 0) {
                            if (theme != null) {
                            }
                        }
                        return cVar.f76058a;
                    }
                    sparseArray.remove(i10);
                }
                return null;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static Typeface c(Context context, int i10) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, true);
    }

    public static ColorStateList d(Resources resources, int i10, Resources.Theme theme) {
        d dVar = new d(resources, theme);
        ColorStateList colorStateListB = b(dVar, i10);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListK = k(resources, i10, theme);
        if (colorStateListK == null) {
            return b.a(resources, i10, theme);
        }
        a(dVar, i10, colorStateListK, theme);
        return colorStateListK;
    }

    public static Drawable e(Resources resources, int i10, Resources.Theme theme) {
        return a.a(resources, i10, theme);
    }

    public static Drawable f(Resources resources, int i10, int i11, Resources.Theme theme) {
        return a.b(resources, i10, i11, theme);
    }

    public static Typeface g(Context context, int i10) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface h(Context context, int i10, TypedValue typedValue, int i11, e eVar) {
        if (context.isRestricted()) {
            return null;
        }
        return m(context, i10, typedValue, i11, eVar, null, true, false);
    }

    public static void i(Context context, int i10, e eVar, Handler handler) {
        androidx.core.util.i.g(eVar);
        if (context.isRestricted()) {
            eVar.c(-4, handler);
        } else {
            m(context, i10, new TypedValue(), 0, eVar, handler, false, false);
        }
    }

    private static TypedValue j() {
        ThreadLocal threadLocal = f76055a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList k(Resources resources, int i10, Resources.Theme theme) {
        if (l(resources, i10)) {
            return null;
        }
        try {
            return y0.c.a(resources, resources.getXml(i10), theme);
        } catch (Exception e10) {
            Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e10);
            return null;
        }
    }

    private static boolean l(Resources resources, int i10) {
        TypedValue typedValueJ = j();
        resources.getValue(i10, typedValueJ, true);
        int i11 = typedValueJ.type;
        return i11 >= 28 && i11 <= 31;
    }

    private static Typeface m(Context context, int i10, TypedValue typedValue, int i11, e eVar, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface typefaceN = n(context, resources, typedValue, i10, i11, eVar, handler, z10, z11);
        if (typefaceN != null || eVar != null || z11) {
            return typefaceN;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
    }

    /* JADX WARN: Code duplicated, block: B:45:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    private static Typeface n(Context context, Resources resources, TypedValue typedValue, int i10, int i11, e eVar, Handler handler, boolean z10, boolean z11) {
        CharSequence charSequence = typedValue.string;
        if (charSequence == null) {
            throw new Resources.NotFoundException("Resource \"" + resources.getResourceName(i10) + "\" (" + Integer.toHexString(i10) + ") is not a Font: " + typedValue);
        }
        String string = charSequence.toString();
        int i12 = 0;
        if (!string.startsWith("res/")) {
            if (eVar != null) {
                eVar.c(-3, handler);
            }
            return null;
        }
        Typeface typefaceG = z0.i.g(resources, i10, string, typedValue.assetCookie, i11);
        if (typefaceG != null) {
            if (eVar != null) {
                eVar.d(typefaceG, handler);
            }
            return typefaceG;
        }
        if (z11) {
            return null;
        }
        try {
            try {
                if (!string.toLowerCase().endsWith(".xml")) {
                    Typeface typefaceE = z0.i.e(context, resources, i10, string, typedValue.assetCookie, i11);
                    if (eVar != null) {
                        if (typefaceE != null) {
                            eVar.d(typefaceE, handler);
                        } else {
                            eVar.c(-3, handler);
                        }
                    }
                    return typefaceE;
                }
                y0.e.b bVarB = y0.e.b(resources.getXml(i10), resources);
                if (bVarB != null) {
                    return z0.i.d(context, bVarB, resources, i10, string, typedValue.assetCookie, i11, eVar, handler, z10);
                }
                Log.e("ResourcesCompat", "Failed to find font-family tag");
                if (eVar != null) {
                    eVar.c(-3, handler);
                }
                return null;
            } catch (IOException e10) {
                e = e10;
                Log.e("ResourcesCompat", "Failed to read xml resource " + string, e);
                if (eVar != null) {
                    return null;
                }
                eVar.c(i12, handler);
                return null;
            } catch (XmlPullParserException e11) {
                e = e11;
                Log.e("ResourcesCompat", "Failed to parse xml resource " + string, e);
                if (eVar != null) {
                    return null;
                }
                eVar.c(i12, handler);
                return null;
            }
        } catch (IOException e12) {
            e = e12;
            i12 = -3;
        } catch (XmlPullParserException e13) {
            e = e13;
            i12 = -3;
        }
    }
}
