package com.transsion.widgetsmotionlibrary;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import androidx.core.app.NotificationCompat;
import com.transsion.livecaption.constant.ICode;
import com.transsion.widgetsmotionlibrary.b;
import defpackage.dmb;
import defpackage.f43;
import defpackage.i81;
import defpackage.jv9;
import defpackage.kb7;
import defpackage.kv9;
import defpackage.m97;
import defpackage.r97;
import defpackage.y45;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class b {
    public static final a f = new a(null);
    public static final m97 g = new m97();
    public jv9 a;
    public jv9 b;
    public ObjectAnimator c;
    public ObjectAnimator d;
    public final WeakHashMap e = new WeakHashMap();

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final boolean a(Context context) {
            y45.j(context, "context");
            Object systemService = context.getSystemService("accessibility");
            y45.h(systemService, "null cannot be cast to non-null type android.view.accessibility.AccessibilityManager");
            AccessibilityManager accessibilityManager = (AccessibilityManager) systemService;
            return accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
        }

        public a() {
        }
    }

    public static final class c {
        public final float a;
        public final int b;
        public final long c;
        public final long d;
        public final PathInterpolator e;
        public final int f;
        public final com.transsion.widgetsmotionlibrary.a g;
        public final float h;
        public final float i;
        public final float j;
        public final float k;

        public c(float f, int i, long j, long j2, PathInterpolator pathInterpolator, int i2, com.transsion.widgetsmotionlibrary.a aVar, float f2, float f3, float f4, float f5) {
            y45.j(pathInterpolator, "pressColorInterpolator");
            y45.j(aVar, "resolvedMaskCornerRadii");
            this.a = f;
            this.b = i;
            this.c = j;
            this.d = j2;
            this.e = pathInterpolator;
            this.f = i2;
            this.g = aVar;
            this.h = f2;
            this.i = f3;
            this.j = f4;
            this.k = f5;
        }

        public final int a() {
            return this.b;
        }

        public final float b() {
            return this.k;
        }

        public final float c() {
            return this.h;
        }

        public final float d() {
            return this.j;
        }

        public final float e() {
            return this.i;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof c)) {
                return false;
            }
            c cVar = (c) obj;
            return Float.compare(this.a, cVar.a) == 0 && this.b == cVar.b && this.c == cVar.c && this.d == cVar.d && y45.e(this.e, cVar.e) && this.f == cVar.f && y45.e(this.g, cVar.g) && Float.compare(this.h, cVar.h) == 0 && Float.compare(this.i, cVar.i) == 0 && Float.compare(this.j, cVar.j) == 0 && Float.compare(this.k, cVar.k) == 0;
        }

        public final PathInterpolator f() {
            return this.e;
        }

        public final long g() {
            return this.c;
        }

        public final int h() {
            return this.f;
        }

        public int hashCode() {
            return (((((((((((((((((((Float.hashCode(this.a) * 31) + Integer.hashCode(this.b)) * 31) + Long.hashCode(this.c)) * 31) + Long.hashCode(this.d)) * 31) + this.e.hashCode()) * 31) + Integer.hashCode(this.f)) * 31) + this.g.hashCode()) * 31) + Float.hashCode(this.h)) * 31) + Float.hashCode(this.i)) * 31) + Float.hashCode(this.j)) * 31) + Float.hashCode(this.k);
        }

        public final long i() {
            return this.d;
        }

        public final com.transsion.widgetsmotionlibrary.a j() {
            return this.g;
        }

        public final float k() {
            return this.a;
        }

        public String toString() {
            return "PressTouchContext(scaleFactor=" + this.a + ", maskColor=" + this.b + ", pressDuration=" + this.c + ", releaseDuration=" + this.d + ", pressColorInterpolator=" + this.e + ", pressStyle=" + this.f + ", resolvedMaskCornerRadii=" + this.g + ", maskInsetLeft=" + this.h + ", maskInsetTop=" + this.i + ", maskInsetRight=" + this.j + ", maskInsetBottom=" + this.k + ")";
        }
    }

    public static void B(b bVar, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        bVar.A(view, z);
    }

    public static void D(b bVar, View view, float f2, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        bVar.C(view, f2, z);
    }

    public static void F(b bVar, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        bVar.E(view, z);
    }

    public static void f(b bVar, View view, float f2, int i, long j, long j2, PathInterpolator pathInterpolator, int i2, ViewGroup viewGroup, float f3, boolean z, float f4, float f5, float f6, float f7, com.transsion.widgetsmotionlibrary.a aVar, View.OnTouchListener onTouchListener, int i3, Object obj) {
        bVar.e(view, (i3 & 2) != 0 ? 1.0f : f2, (i3 & 4) != 0 ? -1442840576 : i, (i3 & 8) != 0 ? 200L : j, (i3 & 16) == 0 ? j2 : 200L, (i3 & 32) != 0 ? g : pathInterpolator, (i3 & 64) != 0 ? 0 : i2, (i3 & 128) != 0 ? null : viewGroup, (i3 & 256) != 0 ? 0.0f : f3, (i3 & 512) != 0 ? true : z, (i3 & 1024) != 0 ? 0.0f : f4, (i3 & 2048) != 0 ? 0.0f : f5, (i3 & 4096) != 0 ? 0.0f : f6, (i3 & 8192) != 0 ? 0.0f : f7, (i3 & 16384) != 0 ? null : aVar, (i3 & 32768) != 0 ? null : onTouchListener);
    }

    public static final boolean g(b bVar, c cVar, View view, MotionEvent motionEvent) {
        y45.j(bVar, "this$0");
        y45.j(cVar, "$pressTouchContext");
        y45.i(view, "v");
        y45.i(motionEvent, NotificationCompat.CATEGORY_EVENT);
        return bVar.n(view, view, motionEvent, cVar, null);
    }

    public static final boolean h(b bVar, ViewGroup viewGroup, c cVar, View.OnTouchListener onTouchListener, View view, MotionEvent motionEvent) {
        y45.j(bVar, "this$0");
        y45.j(cVar, "$pressTouchContext");
        View view2 = viewGroup != null ? viewGroup : view;
        y45.i(view2, "viewGroup ?: v");
        y45.i(view, "v");
        y45.i(motionEvent, NotificationCompat.CATEGORY_EVENT);
        return bVar.n(view2, view, motionEvent, cVar, onTouchListener);
    }

    public static void r(b bVar, View view, long j, PathInterpolator pathInterpolator, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 200;
        }
        if ((i & 4) != 0) {
            pathInterpolator = g;
        }
        bVar.q(view, j, pathInterpolator);
    }

    public static void x(b bVar, View view, int i, long j, PathInterpolator pathInterpolator, com.transsion.widgetsmotionlibrary.a aVar, float f2, float f3, float f4, float f5, int i2, Object obj) {
        bVar.w(view, i, (i2 & 4) != 0 ? 200L : j, (i2 & 8) != 0 ? g : pathInterpolator, (i2 & 16) != 0 ? new com.transsion.widgetsmotionlibrary.a(0.0f, 0.0f, 0.0f, 0.0f, 15, null) : aVar, (i2 & 32) != 0 ? 0.0f : f2, (i2 & 64) != 0 ? 0.0f : f3, (i2 & 128) != 0 ? 0.0f : f4, (i2 & 256) != 0 ? 0.0f : f5);
    }

    public static void z(b bVar, View view, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        bVar.y(view, z);
    }

    public final void A(View view, boolean z) {
        s(view);
        if (z) {
            i();
        }
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 1.0f);
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.setInterpolator(g);
        objectAnimatorOfFloat.start();
        this.d = objectAnimatorOfFloat;
    }

    public final void C(View view, float f2, boolean z) {
        y45.j(view, "view");
        s(view);
        i();
        kv9 kv9Var = new kv9(f2);
        kv9Var.i(z ? 250.0f : r97.a.a(dmb.a(view)));
        kv9Var.g(z ? 0.99f : 1.0f);
        jv9 jv9Var = new jv9(view, f43.q, f2);
        jv9Var.z(kv9Var);
        jv9Var.p();
        this.a = jv9Var;
        jv9 jv9Var2 = new jv9(view, f43.r, f2);
        jv9Var2.z(kv9Var);
        jv9Var2.p();
        this.b = jv9Var2;
    }

    public final void E(View view, boolean z) {
        y45.j(view, "view");
        s(view);
        i();
        kv9 kv9Var = new kv9(1.0f);
        kv9Var.i(z ? 250.0f : r97.a.a(dmb.a(view)));
        kv9Var.g(z ? 0.5f : 1.0f);
        jv9 jv9Var = new jv9(view, f43.q, 1.0f);
        jv9Var.z(kv9Var);
        jv9Var.p();
        this.a = jv9Var;
        jv9 jv9Var2 = new jv9(view, f43.r, 1.0f);
        jv9Var2.z(kv9Var);
        jv9Var2.p();
        this.b = jv9Var2;
    }

    public final void c(View view, int i, long j, PathInterpolator pathInterpolator, com.transsion.widgetsmotionlibrary.a aVar, float f2, float f3, float f4, float f5) {
        Drawable insetDrawable;
        C0271b c0271bS = s(view);
        int i2 = R.id.os_motion_l2_press_bg_filter_listener;
        Object tag = view.getTag(i2);
        GradientDrawable gradientDrawable = tag instanceof GradientDrawable ? (GradientDrawable) tag : null;
        if (gradientDrawable == null) {
            gradientDrawable = new GradientDrawable();
            gradientDrawable.setShape(0);
            view.setTag(i2, gradientDrawable);
        }
        GradientDrawable gradientDrawable2 = gradientDrawable;
        gradientDrawable2.setColor(i | (-16777216));
        if (aVar.a()) {
            gradientDrawable2.setCornerRadii(aVar.b());
        } else {
            gradientDrawable2.setCornerRadii(null);
        }
        view.setTag(i2, gradientDrawable2);
        if (f2 > 0.0f || f3 > 0.0f || f4 > 0.0f || f5 > 0.0f) {
            insetDrawable = gradientDrawable2;
            insetDrawable = new InsetDrawable((Drawable) gradientDrawable2, (int) f2, (int) f3, (int) f4, (int) f5);
        }
        insetDrawable = gradientDrawable2;
        c0271bS.f(insetDrawable);
        view.setForeground(insetDrawable);
        int iAlpha = Color.alpha(i);
        ObjectAnimator objectAnimator = this.c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(insetDrawable, "alpha", 0, iAlpha);
        objectAnimatorOfInt.setDuration(j);
        objectAnimatorOfInt.setInterpolator(pathInterpolator);
        objectAnimatorOfInt.start();
        this.c = objectAnimatorOfInt;
    }

    public final void d(View view, float f2, int i, long j, long j2, PathInterpolator pathInterpolator, int i2, ViewGroup viewGroup, float f3, boolean z) {
        y45.j(view, "view");
        y45.j(pathInterpolator, "pressColorInterpolator");
        f(this, view, f2, i, j, j2, pathInterpolator, i2, viewGroup, f3, z, 0.0f, 0.0f, 0.0f, 0.0f, null, null, 64512, null);
    }

    public final void e(View view, float f2, int i, long j, long j2, PathInterpolator pathInterpolator, int i2, ViewGroup viewGroup, float f3, boolean z, float f4, float f5, float f6, float f7, com.transsion.widgetsmotionlibrary.a aVar, final View.OnTouchListener onTouchListener) {
        final ViewGroup viewGroup2;
        final b bVar;
        y45.j(view, "view");
        y45.j(pathInterpolator, "pressColorInterpolator");
        com.transsion.widgetsmotionlibrary.a aVarA = aVar == null ? com.transsion.widgetsmotionlibrary.a.e.a(f3) : aVar;
        if ((i2 == 1 || i2 == 2) && z) {
            kb7.c(view, null);
        }
        a aVar2 = f;
        Context context = view.getContext();
        y45.i(context, "view.context");
        if (aVar2.a(context)) {
            if (onTouchListener != null) {
                view.setOnTouchListener(onTouchListener);
            }
            Log.v("OSMotionL2PressEffectHelper", "apply: isAccessibilityEnabled = true");
            return;
        }
        final c cVar = new c(f2, i, j, j2, pathInterpolator, i2, aVarA, f4, f5, f6, f7);
        if (viewGroup != null) {
            viewGroup2 = viewGroup;
            bVar = this;
            viewGroup2.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return b.g(this.b, cVar, view2, motionEvent);
                }
            });
        } else {
            viewGroup2 = viewGroup;
            bVar = this;
        }
        view.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return b.h(this.b, viewGroup2, cVar, onTouchListener, view2, motionEvent);
            }
        });
    }

    public final void i() {
        jv9 jv9Var = this.a;
        if (jv9Var != null) {
            jv9Var.c();
        }
        jv9 jv9Var2 = this.b;
        if (jv9Var2 != null) {
            jv9Var2.c();
        }
        j();
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public final void j() {
        ObjectAnimator objectAnimator = this.c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
    }

    public final void k() {
        i();
        Set setEntrySet = this.e.entrySet();
        y45.i(setEntrySet, "pressStates.entries");
        for (Map.Entry entry : i81.b1(setEntrySet)) {
            y45.i(entry, "(view, state)");
            View view = (View) entry.getKey();
            C0271b c0271b = (C0271b) entry.getValue();
            y45.i(view, "view");
            y45.i(c0271b, ICode.CALL.CALL_KEY_STATE);
            u(view, c0271b);
        }
        this.e.clear();
        m();
    }

    public final void l(View view) {
        y45.j(view, "view");
        i();
        C0271b c0271b = (C0271b) this.e.remove(view);
        if (c0271b != null) {
            u(view, c0271b);
        }
        m();
    }

    public final void m() {
        this.a = null;
        this.b = null;
        this.c = null;
        this.d = null;
    }

    public final boolean n(View view, View view2, MotionEvent motionEvent, c cVar, View.OnTouchListener onTouchListener) {
        o(view, motionEvent.getAction(), cVar);
        if (onTouchListener != null) {
            return onTouchListener.onTouch(view2, motionEvent);
        }
        return false;
    }

    public final void o(View view, int i, c cVar) {
        if (i == 0) {
            int iH = cVar.h();
            if (iH == 0) {
                D(this, view, cVar.k() == 1.0f ? dmb.c(dmb.a(view)) : cVar.k(), false, 4, null);
                return;
            }
            if (iH == 1) {
                c(view, cVar.a(), cVar.g(), cVar.f(), cVar.j(), cVar.c(), cVar.e(), cVar.d(), cVar.b());
                return;
            }
            if (iH == 2) {
                D(this, view, cVar.k() == 1.0f ? dmb.c(dmb.a(view)) : cVar.k(), false, 4, null);
                c(view, cVar.a(), cVar.g(), cVar.f(), cVar.j(), cVar.c(), cVar.e(), cVar.d(), cVar.b());
                return;
            } else {
                if (iH == 3) {
                    C(view, cVar.k() == 1.0f ? dmb.b(dmb.a(view)) : cVar.k(), true);
                    return;
                }
                if (iH == 4) {
                    z(this, view, false, 2, null);
                    return;
                } else {
                    if (iH != 5) {
                        return;
                    }
                    D(this, view, cVar.k() == 1.0f ? dmb.c(dmb.a(view)) : cVar.k(), false, 4, null);
                    y(view, false);
                    return;
                }
            }
        }
        if (i == 1 || i == 3) {
            int iH2 = cVar.h();
            if (iH2 == 0) {
                F(this, view, false, 2, null);
                return;
            }
            if (iH2 == 1) {
                t(view, cVar.i(), cVar.f());
                return;
            }
            if (iH2 == 2) {
                F(this, view, false, 2, null);
                t(view, cVar.i(), cVar.f());
            } else {
                if (iH2 == 3) {
                    E(view, true);
                    return;
                }
                if (iH2 == 4) {
                    B(this, view, false, 2, null);
                } else {
                    if (iH2 != 5) {
                        return;
                    }
                    F(this, view, false, 2, null);
                    A(view, false);
                }
            }
        }
    }

    public final void p(View view) {
        y45.j(view, "view");
        r(this, view, 0L, null, 6, null);
    }

    public final void q(View view, long j, PathInterpolator pathInterpolator) {
        y45.j(view, "view");
        y45.j(pathInterpolator, "interpolator");
        t(view, j, pathInterpolator);
    }

    public final C0271b s(View view) {
        WeakHashMap weakHashMap = this.e;
        Object c0271b = weakHashMap.get(view);
        if (c0271b == null) {
            c0271b = new C0271b(view.getScaleX(), view.getScaleY(), view.getAlpha(), view.getForeground(), null, 16, null);
            weakHashMap.put(view, c0271b);
        }
        return (C0271b) c0271b;
    }

    public final void t(View view, long j, PathInterpolator pathInterpolator) {
        Drawable foreground = view.getForeground();
        if (foreground == null) {
            return;
        }
        ObjectAnimator objectAnimator = this.c;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfInt = ObjectAnimator.ofInt(foreground, "alpha", foreground.getAlpha(), 0);
        objectAnimatorOfInt.setDuration(j);
        objectAnimatorOfInt.setInterpolator(pathInterpolator);
        objectAnimatorOfInt.start();
        this.c = objectAnimatorOfInt;
    }

    public final void u(View view, C0271b c0271b) {
        if (c0271b.c() != null && view.getForeground() == c0271b.c()) {
            view.setForeground(c0271b.b());
        }
        view.setScaleX(c0271b.d());
        view.setScaleY(c0271b.e());
        view.setAlpha(c0271b.a());
    }

    public final void v(View view, int i, long j, PathInterpolator pathInterpolator, com.transsion.widgetsmotionlibrary.a aVar) {
        y45.j(view, "view");
        y45.j(pathInterpolator, "interpolator");
        y45.j(aVar, "cornerRadii");
        x(this, view, i, j, pathInterpolator, aVar, 0.0f, 0.0f, 0.0f, 0.0f, 480, null);
    }

    public final void w(View view, int i, long j, PathInterpolator pathInterpolator, com.transsion.widgetsmotionlibrary.a aVar, float f2, float f3, float f4, float f5) {
        y45.j(view, "view");
        y45.j(pathInterpolator, "interpolator");
        y45.j(aVar, "cornerRadii");
        c(view, i, j, pathInterpolator, aVar, f2, f3, f4, f5);
    }

    public final void y(View view, boolean z) {
        s(view);
        if (z) {
            i();
        }
        ObjectAnimator objectAnimator = this.d;
        if (objectAnimator != null) {
            objectAnimator.cancel();
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", view.getAlpha(), 0.2f);
        objectAnimatorOfFloat.setDuration(200L);
        objectAnimatorOfFloat.setInterpolator(g);
        objectAnimatorOfFloat.start();
        this.d = objectAnimatorOfFloat;
    }

    public static final class C0271b {
        public final float a;
        public final float b;
        public final float c;
        public final Drawable d;
        public Drawable e;

        public C0271b(float f, float f2, float f3, Drawable drawable, Drawable drawable2) {
            this.a = f;
            this.b = f2;
            this.c = f3;
            this.d = drawable;
            this.e = drawable2;
        }

        public final float a() {
            return this.c;
        }

        public final Drawable b() {
            return this.d;
        }

        public final Drawable c() {
            return this.e;
        }

        public final float d() {
            return this.a;
        }

        public final float e() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0271b)) {
                return false;
            }
            C0271b c0271b = (C0271b) obj;
            return Float.compare(this.a, c0271b.a) == 0 && Float.compare(this.b, c0271b.b) == 0 && Float.compare(this.c, c0271b.c) == 0 && y45.e(this.d, c0271b.d) && y45.e(this.e, c0271b.e);
        }

        public final void f(Drawable drawable) {
            this.e = drawable;
        }

        public int hashCode() {
            int iHashCode = ((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Float.hashCode(this.c)) * 31;
            Drawable drawable = this.d;
            int iHashCode2 = (iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31;
            Drawable drawable2 = this.e;
            return iHashCode2 + (drawable2 != null ? drawable2.hashCode() : 0);
        }

        public String toString() {
            return "PressState(scaleX=" + this.a + ", scaleY=" + this.b + ", alpha=" + this.c + ", foreground=" + this.d + ", mask=" + this.e + ")";
        }

        public C0271b(float f, float f2, float f3, Drawable drawable, Drawable drawable2, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(f, f2, f3, drawable, (i & 16) != 0 ? null : drawable2);
        }
    }
}
