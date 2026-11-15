package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.resources.R$drawable;
import androidx.collection.x0;
import androidx.collection.y0;
import java.lang.ref.WeakReference;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

public final class b0 {

    private static b0 f1643i;

    private WeakHashMap f1645a;

    private x0 f1646b;

    private y0 f1647c;

    private final WeakHashMap f1648d = new WeakHashMap(0);

    private TypedValue f1649e;

    private boolean f1650f;

    private f f1651g;

    private static final PorterDuff.Mode f1642h = PorterDuff.Mode.SRC_IN;

    private static final c f1644j = new c(6);

    static class a implements e {
        a() {
        }

        @Override
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.appcompat.graphics.drawable.a.m(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("AsldcInflateDelegate", "Exception while inflating <animated-selector>", e10);
                return null;
            }
        }
    }

    private static class b implements e {
        b() {
        }

        @Override
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.c.b(context, context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("AvdcInflateDelegate", "Exception while inflating <animated-vector>", e10);
                return null;
            }
        }
    }

    private static class c extends androidx.collection.z {
        public c(int i10) {
            super(i10);
        }

        private static int b(int i10, PorterDuff.Mode mode) {
            return ((i10 + 31) * 31) + mode.hashCode();
        }

        PorterDuffColorFilter c(int i10, PorterDuff.Mode mode) {
            return (PorterDuffColorFilter) get(Integer.valueOf(b(i10, mode)));
        }

        PorterDuffColorFilter d(int i10, PorterDuff.Mode mode, PorterDuffColorFilter porterDuffColorFilter) {
            return (PorterDuffColorFilter) put(Integer.valueOf(b(i10, mode)), porterDuffColorFilter);
        }
    }

    static class d implements e {
        d() {
        }

        @Override
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            String classAttribute = attributeSet.getClassAttribute();
            if (classAttribute != null) {
                try {
                    Drawable drawable = (Drawable) d.class.getClassLoader().loadClass(classAttribute).asSubclass(Drawable.class).getDeclaredConstructor(null).newInstance(null);
                    h.a.c(drawable, context.getResources(), xmlPullParser, attributeSet, theme);
                    return drawable;
                } catch (Exception e10) {
                    Log.e("DrawableDelegate", "Exception while inflating <drawable>", e10);
                }
            }
            return null;
        }
    }

    private interface e {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    public interface f {
        Drawable a(b0 b0Var, Context context, int i10);

        ColorStateList b(Context context, int i10);

        boolean c(Context context, int i10, Drawable drawable);

        PorterDuff.Mode d(int i10);

        boolean e(Context context, int i10, Drawable drawable);
    }

    private static class g implements e {
        g() {
        }

        @Override
        public Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) {
            try {
                return androidx.vectordrawable.graphics.drawable.h.c(context.getResources(), xmlPullParser, attributeSet, theme);
            } catch (Exception e10) {
                Log.e("VdcInflateDelegate", "Exception while inflating <vector>", e10);
                return null;
            }
        }
    }

    private void a(String str, e eVar) {
        if (this.f1646b == null) {
            this.f1646b = new x0();
        }
        this.f1646b.put(str, eVar);
    }

    private synchronized boolean b(Context context, long j10, Drawable drawable) {
        try {
            Drawable.ConstantState constantState = drawable.getConstantState();
            if (constantState == null) {
                return false;
            }
            androidx.collection.x xVar = (androidx.collection.x) this.f1648d.get(context);
            if (xVar == null) {
                xVar = new androidx.collection.x();
                this.f1648d.put(context, xVar);
            }
            xVar.k(j10, new WeakReference(constantState));
            return true;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    private void c(Context context, int i10, ColorStateList colorStateList) {
        if (this.f1645a == null) {
            this.f1645a = new WeakHashMap();
        }
        y0 y0Var = (y0) this.f1645a.get(context);
        if (y0Var == null) {
            y0Var = new y0();
            this.f1645a.put(context, y0Var);
        }
        y0Var.a(i10, colorStateList);
    }

    private void d(Context context) {
        if (this.f1650f) {
            return;
        }
        this.f1650f = true;
        Drawable drawableJ = j(context, R$drawable.abc_vector_test);
        if (drawableJ == null || !q(drawableJ)) {
            this.f1650f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
    }

    private static long e(TypedValue typedValue) {
        return (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
    }

    private Drawable f(Context context, int i10) {
        if (this.f1649e == null) {
            this.f1649e = new TypedValue();
        }
        TypedValue typedValue = this.f1649e;
        context.getResources().getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        f fVar = this.f1651g;
        Drawable drawableA = fVar == null ? null : fVar.a(this, context, i10);
        if (drawableA != null) {
            drawableA.setChangingConfigurations(typedValue.changingConfigurations);
            b(context, jE, drawableA);
        }
        return drawableA;
    }

    private static PorterDuffColorFilter g(ColorStateList colorStateList, PorterDuff.Mode mode, int[] iArr) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return l(colorStateList.getColorForState(iArr, 0), mode);
    }

    public static synchronized b0 h() {
        try {
            if (f1643i == null) {
                b0 b0Var = new b0();
                f1643i = b0Var;
                p(b0Var);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f1643i;
    }

    private synchronized Drawable i(Context context, long j10) {
        androidx.collection.x xVar = (androidx.collection.x) this.f1648d.get(context);
        if (xVar == null) {
            return null;
        }
        WeakReference weakReference = (WeakReference) xVar.e(j10);
        if (weakReference != null) {
            Drawable.ConstantState constantState = (Drawable.ConstantState) weakReference.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            xVar.l(j10);
        }
        return null;
    }

    public static synchronized PorterDuffColorFilter l(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterC;
        c cVar = f1644j;
        porterDuffColorFilterC = cVar.c(i10, mode);
        if (porterDuffColorFilterC == null) {
            porterDuffColorFilterC = new PorterDuffColorFilter(i10, mode);
            cVar.d(i10, mode, porterDuffColorFilterC);
        }
        return porterDuffColorFilterC;
    }

    private ColorStateList n(Context context, int i10) {
        y0 y0Var;
        WeakHashMap weakHashMap = this.f1645a;
        if (weakHashMap == null || (y0Var = (y0) weakHashMap.get(context)) == null) {
            return null;
        }
        return (ColorStateList) y0Var.g(i10);
    }

    private static void p(b0 b0Var) {
        if (Build.VERSION.SDK_INT < 24) {
            b0Var.a("vector", new g());
            b0Var.a("animated-vector", new b());
            b0Var.a("animated-selector", new a());
            b0Var.a("drawable", new d());
        }
    }

    private static boolean q(Drawable drawable) {
        return (drawable instanceof androidx.vectordrawable.graphics.drawable.h) || "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName());
    }

    private Drawable r(Context context, int i10) {
        int next;
        x0 x0Var = this.f1646b;
        if (x0Var == null || x0Var.isEmpty()) {
            return null;
        }
        y0 y0Var = this.f1647c;
        if (y0Var != null) {
            String str = (String) y0Var.g(i10);
            if ("appcompat_skip_skip".equals(str) || (str != null && this.f1646b.get(str) == null)) {
                return null;
            }
        } else {
            this.f1647c = new y0();
        }
        if (this.f1649e == null) {
            this.f1649e = new TypedValue();
        }
        TypedValue typedValue = this.f1649e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long jE = e(typedValue);
        Drawable drawableI = i(context, jE);
        if (drawableI != null) {
            return drawableI;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1647c.a(i10, name);
                e eVar = (e) this.f1646b.get(name);
                if (eVar != null) {
                    drawableI = eVar.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableI != null) {
                    drawableI.setChangingConfigurations(typedValue.changingConfigurations);
                    b(context, jE, drawableI);
                }
            } catch (Exception e10) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e10);
            }
        }
        if (drawableI == null) {
            this.f1647c.a(i10, "appcompat_skip_skip");
        }
        return drawableI;
    }

    private Drawable v(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList colorStateListM = m(context, i10);
        if (colorStateListM != null) {
            Drawable drawableR = a1.a.r(drawable.mutate());
            a1.a.o(drawableR, colorStateListM);
            PorterDuff.Mode modeO = o(i10);
            if (modeO == null) {
                return drawableR;
            }
            a1.a.p(drawableR, modeO);
            return drawableR;
        }
        f fVar = this.f1651g;
        if ((fVar == null || !fVar.e(context, i10, drawable)) && !x(context, i10, drawable) && z10) {
            return null;
        }
        return drawable;
    }

    static void w(Drawable drawable, h0 h0Var, int[] iArr) {
        int[] state = drawable.getState();
        if (drawable.mutate() == drawable) {
            if ((drawable instanceof LayerDrawable) && drawable.isStateful()) {
                drawable.setState(new int[0]);
                drawable.setState(state);
            }
            boolean z10 = h0Var.f1728d;
            if (z10 || h0Var.f1727c) {
                drawable.setColorFilter(g(z10 ? h0Var.f1725a : null, h0Var.f1727c ? h0Var.f1726b : f1642h, iArr));
            } else {
                drawable.clearColorFilter();
            }
            if (Build.VERSION.SDK_INT <= 23) {
                drawable.invalidateSelf();
            }
        }
    }

    public synchronized Drawable j(Context context, int i10) {
        return k(context, i10, false);
    }

    synchronized Drawable k(Context context, int i10, boolean z10) {
        Drawable drawableR;
        try {
            d(context);
            drawableR = r(context, i10);
            if (drawableR == null) {
                drawableR = f(context, i10);
            }
            if (drawableR == null) {
                drawableR = androidx.core.content.b.getDrawable(context, i10);
            }
            if (drawableR != null) {
                drawableR = v(context, i10, z10, drawableR);
            }
            if (drawableR != null) {
                y.b(drawableR);
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return drawableR;
    }

    synchronized ColorStateList m(Context context, int i10) {
        ColorStateList colorStateListN;
        colorStateListN = n(context, i10);
        if (colorStateListN == null) {
            f fVar = this.f1651g;
            colorStateListN = fVar == null ? null : fVar.b(context, i10);
            if (colorStateListN != null) {
                c(context, i10, colorStateListN);
            }
        }
        return colorStateListN;
    }

    PorterDuff.Mode o(int i10) {
        f fVar = this.f1651g;
        if (fVar == null) {
            return null;
        }
        return fVar.d(i10);
    }

    public synchronized void s(Context context) {
        androidx.collection.x xVar = (androidx.collection.x) this.f1648d.get(context);
        if (xVar != null) {
            xVar.b();
        }
    }

    synchronized Drawable t(Context context, t0 t0Var, int i10) {
        try {
            Drawable drawableR = r(context, i10);
            if (drawableR == null) {
                drawableR = t0Var.a(i10);
            }
            if (drawableR == null) {
                return null;
            }
            return v(context, i10, false, drawableR);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void u(f fVar) {
        this.f1651g = fVar;
    }

    boolean x(Context context, int i10, Drawable drawable) {
        f fVar = this.f1651g;
        return fVar != null && fVar.c(context, i10, drawable);
    }
}
