package com.airbnb.lottie;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageView;
import com.airbnb.lottie.configurations.reducemotion.ReducedMotionMode;
import com.airbnb.lottie.model.layer.b;
import com.alibaba.android.arouter.utils.Consts;
import defpackage.bha;
import defpackage.ct5;
import defpackage.hu5;
import defpackage.it5;
import defpackage.iu5;
import defpackage.lt5;
import defpackage.mq5;
import defpackage.ni5;
import defpackage.q24;
import defpackage.r24;
import defpackage.s24;
import defpackage.t16;
import defpackage.tf5;
import defpackage.tx4;
import defpackage.ur5;
import defpackage.vi5;
import defpackage.wx4;
import defpackage.xp6;
import defpackage.yh5;
import defpackage.zs5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {
    public static final boolean S = false;
    public static final List T = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
    public static final Executor U = new ThreadPoolExecutor(0, 2, 35, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new lt5());
    public Canvas A;
    public Rect B;
    public RectF C;
    public Paint D;
    public Rect E;
    public Rect F;
    public RectF G;
    public RectF H;
    public Matrix I;
    public Matrix J;
    public boolean K;
    public AsyncUpdates L;
    public final ValueAnimator.AnimatorUpdateListener M;
    public final Semaphore N;
    public Handler O;
    public Runnable P;
    public final Runnable Q;
    public float R;
    public ur5 b;
    public final hu5 c;
    public boolean d;
    public boolean e;
    public boolean f;
    public OnVisibleAction g;
    public final ArrayList h;
    public wx4 i;
    public String j;
    public s24 k;
    public Map l;
    public String m;
    public final zs5 n;
    public boolean o;
    public boolean p;
    public b q;
    public int r;
    public boolean s;
    public boolean t;
    public boolean u;
    public boolean v;
    public RenderMode w;
    public boolean x;
    public final Matrix y;
    public Bitmap z;

    public enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    public interface a {
        void a(ur5 ur5Var);
    }

    public LottieDrawable() {
        hu5 hu5Var = new hu5();
        this.c = hu5Var;
        this.d = true;
        this.e = false;
        this.f = false;
        this.g = OnVisibleAction.NONE;
        this.h = new ArrayList();
        this.n = new zs5();
        this.o = false;
        this.p = true;
        this.r = 255;
        this.v = false;
        this.w = RenderMode.AUTOMATIC;
        this.x = false;
        this.y = new Matrix();
        this.K = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.p0(valueAnimator);
            }
        };
        this.M = animatorUpdateListener;
        this.N = new Semaphore(1);
        this.Q = new Runnable() {
            @Override
            public final void run() {
                this.b.r0();
            }
        };
        this.R = -3.4028235E38f;
        hu5Var.addUpdateListener(animatorUpdateListener);
    }

    public final void A() {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return;
        }
        this.x = this.w.useSoftwareRendering(Build.VERSION.SDK_INT, ur5Var.q(), ur5Var.m());
    }

    public final void A0(int i, int i2, ur5 ur5Var) {
        i1(i, i2);
    }

    public Bitmap A1(String str, Bitmap bitmap) {
        wx4 wx4VarS = S();
        if (wx4VarS == null) {
            mq5.c("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapE = wx4VarS.e(str, bitmap);
        invalidateSelf();
        return bitmapE;
    }

    public final void B(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public final void B0(float f, float f2, ur5 ur5Var) {
        l1(f, f2);
    }

    public boolean B1() {
        return this.l == null && this.b.c().size() > 0;
    }

    public final void C(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public final void C0(int i, ur5 ur5Var) {
        m1(i);
    }

    public void D() {
    }

    public final void D0(String str, ur5 ur5Var) {
        n1(str);
    }

    public final void E(Canvas canvas) {
        b bVar = this.q;
        ur5 ur5Var = this.b;
        if (bVar == null || ur5Var == null) {
            return;
        }
        this.y.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.y.preScale(bounds.width() / ur5Var.b().width(), bounds.height() / ur5Var.b().height());
            this.y.preTranslate(bounds.left, bounds.top);
        }
        bVar.d(canvas, this.y, this.r);
    }

    public final void E0(float f, ur5 ur5Var) {
        o1(f);
    }

    public void F(LottieFeatureFlag lottieFeatureFlag, boolean z) {
        boolean zA = this.n.a(lottieFeatureFlag, z);
        if (this.b == null || !zA) {
            return;
        }
        x();
    }

    public final void F0(float f, ur5 ur5Var) {
        r1(f);
    }

    public void G() {
        this.h.clear();
        this.c.j();
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public void G0() {
        this.h.clear();
        this.c.r();
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public final void H(int i, int i2) {
        Bitmap bitmap = this.z;
        if (bitmap == null || bitmap.getWidth() < i || this.z.getHeight() < i2) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i, i2, Bitmap.Config.ARGB_8888);
            this.z = bitmapCreateBitmap;
            this.A.setBitmap(bitmapCreateBitmap);
            this.K = true;
            return;
        }
        if (this.z.getWidth() > i || this.z.getHeight() > i2) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.z, 0, 0, i, i2);
            this.z = bitmapCreateBitmap2;
            this.A.setBitmap(bitmapCreateBitmap2);
            this.K = true;
        }
    }

    public void H0() {
        if (this.q == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.s0(ur5Var);
                }
            });
            return;
        }
        A();
        if (w(P()) || c0() == 0) {
            if (isVisible()) {
                this.c.s();
                this.g = OnVisibleAction.NONE;
            } else {
                this.g = OnVisibleAction.PLAY;
            }
        }
        if (w(P())) {
            return;
        }
        t16 t16VarW = W();
        if (t16VarW != null) {
            a1((int) t16VarW.b);
        } else {
            a1((int) (e0() < 0.0f ? Y() : X()));
        }
        this.c.j();
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public final void I() {
        if (this.A != null) {
            return;
        }
        this.A = new Canvas();
        this.H = new RectF();
        this.I = new Matrix();
        this.J = new Matrix();
        this.B = new Rect();
        this.C = new RectF();
        this.D = new ni5();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
    }

    public void I0() {
        this.c.removeAllListeners();
    }

    public AsyncUpdates J() {
        AsyncUpdates asyncUpdates = this.L;
        return asyncUpdates != null ? asyncUpdates : yh5.d();
    }

    public void J0() {
        this.c.removeAllUpdateListeners();
        this.c.addUpdateListener(this.M);
    }

    public boolean K() {
        return J() == AsyncUpdates.ENABLED;
    }

    public void K0(Animator.AnimatorListener animatorListener) {
        this.c.removeListener(animatorListener);
    }

    public Bitmap L(String str) {
        wx4 wx4VarS = S();
        if (wx4VarS != null) {
            return wx4VarS.a(str);
        }
        return null;
    }

    public void L0(Animator.AnimatorPauseListener animatorPauseListener) {
        this.c.removePauseListener(animatorPauseListener);
    }

    public boolean M() {
        return this.v;
    }

    public void M0(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.c.removeUpdateListener(animatorUpdateListener);
    }

    public boolean N() {
        return this.p;
    }

    public final void N0(Canvas canvas, b bVar) {
        if (this.b == null || bVar == null) {
            return;
        }
        I();
        canvas.getMatrix(this.I);
        canvas.getClipBounds(this.B);
        B(this.B, this.C);
        this.I.mapRect(this.C);
        C(this.C, this.B);
        if (this.p) {
            this.H.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            bVar.a(this.H, null, false);
        }
        this.I.mapRect(this.H);
        Rect bounds = getBounds();
        float fWidth = bounds.width() / getIntrinsicWidth();
        float fHeight = bounds.height() / getIntrinsicHeight();
        R0(this.H, fWidth, fHeight);
        if (!j0()) {
            RectF rectF = this.H;
            Rect rect = this.B;
            rectF.intersect(rect.left, rect.top, rect.right, rect.bottom);
        }
        int iCeil = (int) Math.ceil(this.H.width());
        int iCeil2 = (int) Math.ceil(this.H.height());
        if (iCeil <= 0 || iCeil2 <= 0) {
            return;
        }
        H(iCeil, iCeil2);
        if (this.K) {
            this.y.set(this.I);
            this.y.preScale(fWidth, fHeight);
            Matrix matrix = this.y;
            RectF rectF2 = this.H;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.z.eraseColor(0);
            bVar.d(this.A, this.y, this.r);
            this.I.invert(this.J);
            this.J.mapRect(this.G, this.H);
            C(this.G, this.F);
        }
        this.E.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.z, this.E, this.F, this.D);
    }

    public ur5 O() {
        return this.b;
    }

    public List O0(tf5 tf5Var) {
        if (this.q == null) {
            mq5.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.q.c(tf5Var, 0, arrayList, new tf5(new String[0]));
        return arrayList;
    }

    public final Context P() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    public void P0() {
        if (this.q == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.t0(ur5Var);
                }
            });
            return;
        }
        A();
        if (w(P()) || c0() == 0) {
            if (isVisible()) {
                this.c.w();
                this.g = OnVisibleAction.NONE;
            } else {
                this.g = OnVisibleAction.RESUME;
            }
        }
        if (w(P())) {
            return;
        }
        a1((int) (e0() < 0.0f ? Y() : X()));
        this.c.j();
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public final s24 Q() {
        if (getCallback() == null) {
            return null;
        }
        if (this.k == null) {
            s24 s24Var = new s24(getCallback(), null);
            this.k = s24Var;
            String str = this.m;
            if (str != null) {
                s24Var.c(str);
            }
        }
        return this.k;
    }

    public void Q0() {
        this.c.x();
    }

    public int R() {
        return (int) this.c.l();
    }

    public final void R0(RectF rectF, float f, float f2) {
        rectF.set(rectF.left * f, rectF.top * f2, rectF.right * f, rectF.bottom * f2);
    }

    public final wx4 S() {
        wx4 wx4Var = this.i;
        if (wx4Var != null && !wx4Var.b(P())) {
            this.i = null;
        }
        if (this.i == null) {
            this.i = new wx4(getCallback(), this.j, null, this.b.j());
        }
        return this.i;
    }

    public void S0(boolean z) {
        this.u = z;
    }

    public String T() {
        return this.j;
    }

    public void T0(AsyncUpdates asyncUpdates) {
        this.L = asyncUpdates;
    }

    public ct5 U(String str) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return null;
        }
        return (ct5) ur5Var.j().get(str);
    }

    public void U0(boolean z) {
        if (z != this.v) {
            this.v = z;
            invalidateSelf();
        }
    }

    public boolean V() {
        return this.o;
    }

    public void V0(boolean z) {
        if (z != this.p) {
            this.p = z;
            b bVar = this.q;
            if (bVar != null) {
                bVar.S(z);
            }
            invalidateSelf();
        }
    }

    public t16 W() {
        Iterator it = T.iterator();
        t16 t16VarL = null;
        while (it.hasNext()) {
            t16VarL = this.b.l((String) it.next());
            if (t16VarL != null) {
                break;
            }
        }
        return t16VarL;
    }

    public boolean W0(ur5 ur5Var) {
        if (this.b == ur5Var) {
            return false;
        }
        this.K = true;
        z();
        this.b = ur5Var;
        x();
        this.c.y(ur5Var);
        r1(this.c.getAnimatedFraction());
        Iterator it = new ArrayList(this.h).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.a(ur5Var);
            }
            it.remove();
        }
        this.h.clear();
        ur5Var.v(this.s);
        A();
        Drawable.Callback callback = getCallback();
        if (callback instanceof ImageView) {
            ImageView imageView = (ImageView) callback;
            imageView.setImageDrawable(null);
            imageView.setImageDrawable(this);
        }
        return true;
    }

    public float X() {
        return this.c.n();
    }

    public void X0(String str) {
        this.m = str;
        s24 s24VarQ = Q();
        if (s24VarQ != null) {
            s24VarQ.c(str);
        }
    }

    public float Y() {
        return this.c.o();
    }

    public void Y0(r24 r24Var) {
        s24 s24Var = this.k;
        if (s24Var != null) {
            s24Var.d(r24Var);
        }
    }

    public PerformanceTracker Z() {
        ur5 ur5Var = this.b;
        if (ur5Var != null) {
            return ur5Var.n();
        }
        return null;
    }

    public void Z0(Map map) {
        if (map == this.l) {
            return;
        }
        this.l = map;
        invalidateSelf();
    }

    public float a0() {
        return this.c.k();
    }

    public void a1(final int i) {
        if (this.b == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.u0(i, ur5Var);
                }
            });
        } else {
            this.c.z(i);
        }
    }

    public RenderMode b0() {
        return this.x ? RenderMode.SOFTWARE : RenderMode.HARDWARE;
    }

    public void b1(boolean z) {
        this.e = z;
    }

    public int c0() {
        return this.c.getRepeatCount();
    }

    public void c1(tx4 tx4Var) {
        wx4 wx4Var = this.i;
        if (wx4Var != null) {
            wx4Var.d(tx4Var);
        }
    }

    public int d0() {
        return this.c.getRepeatMode();
    }

    public void d1(String str) {
        this.j = str;
    }

    @Override
    public void draw(Canvas canvas) {
        b bVar = this.q;
        if (bVar == null) {
            return;
        }
        boolean zK = K();
        if (zK) {
            try {
                this.N.acquire();
            } catch (InterruptedException unused) {
                if (yh5.h()) {
                    yh5.c("Drawable#draw");
                }
                if (!zK) {
                    return;
                }
                this.N.release();
                if (bVar.P() == this.c.k()) {
                    return;
                }
            } catch (Throwable th) {
                if (yh5.h()) {
                    yh5.c("Drawable#draw");
                }
                if (zK) {
                    this.N.release();
                    if (bVar.P() != this.c.k()) {
                        U.execute(this.Q);
                    }
                }
                throw th;
            }
        }
        if (yh5.h()) {
            yh5.b("Drawable#draw");
        }
        if (zK && z1()) {
            r1(this.c.k());
        }
        if (this.f) {
            try {
                if (this.x) {
                    N0(canvas, bVar);
                } else {
                    E(canvas);
                }
            } catch (Throwable th2) {
                mq5.b("Lottie crashed in draw!", th2);
            }
        } else if (this.x) {
            N0(canvas, bVar);
        } else {
            E(canvas);
        }
        this.K = false;
        if (yh5.h()) {
            yh5.c("Drawable#draw");
        }
        if (zK) {
            this.N.release();
            if (bVar.P() == this.c.k()) {
                return;
            }
            U.execute(this.Q);
        }
    }

    public float e0() {
        return this.c.p();
    }

    public void e1(boolean z) {
        this.o = z;
    }

    public bha f0() {
        return null;
    }

    public void f1(final int i) {
        if (this.b == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.w0(i, ur5Var);
                }
            });
        } else {
            this.c.A(i + 0.99f);
        }
    }

    public Typeface g0(q24 q24Var) {
        Map map = this.l;
        if (map != null) {
            String strA = q24Var.a();
            if (map.containsKey(strA)) {
                return (Typeface) map.get(strA);
            }
            String strB = q24Var.b();
            if (map.containsKey(strB)) {
                return (Typeface) map.get(strB);
            }
            String str = q24Var.a() + "-" + q24Var.c();
            if (map.containsKey(str)) {
                return (Typeface) map.get(str);
            }
        }
        s24 s24VarQ = Q();
        if (s24VarQ != null) {
            return s24VarQ.b(q24Var);
        }
        return null;
    }

    public void g1(final String str) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.v0(str, ur5Var2);
                }
            });
            return;
        }
        t16 t16VarL = ur5Var.l(str);
        if (t16VarL != null) {
            f1((int) (t16VarL.b + t16VarL.c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + Consts.DOT);
    }

    @Override
    public int getAlpha() {
        return this.r;
    }

    @Override
    public int getIntrinsicHeight() {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return -1;
        }
        return ur5Var.b().height();
    }

    @Override
    public int getIntrinsicWidth() {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return -1;
        }
        return ur5Var.b().width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public boolean h0() {
        b bVar = this.q;
        return bVar != null && bVar.Q();
    }

    public void h1(final float f) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.x0(f, ur5Var2);
                }
            });
        } else {
            this.c.A(xp6.i(ur5Var.p(), this.b.f(), f));
        }
    }

    public boolean i0() {
        b bVar = this.q;
        return bVar != null && bVar.R();
    }

    public void i1(final int i, final int i2) {
        if (this.b == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.A0(i, i2, ur5Var);
                }
            });
        } else {
            this.c.B(i, i2 + 0.99f);
        }
    }

    @Override
    public void invalidateDrawable(Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.invalidateDrawable(this);
    }

    @Override
    public void invalidateSelf() {
        Drawable.Callback callback;
        if (this.K) {
            return;
        }
        this.K = true;
        if ((!S || Looper.getMainLooper() == Looper.myLooper()) && (callback = getCallback()) != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override
    public boolean isRunning() {
        return k0();
    }

    public final boolean j0() {
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof View)) {
            return false;
        }
        ViewParent parent = ((View) callback).getParent();
        if (parent instanceof ViewGroup) {
            return !((ViewGroup) parent).getClipChildren();
        }
        return false;
    }

    public void j1(final String str) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.y0(str, ur5Var2);
                }
            });
            return;
        }
        t16 t16VarL = ur5Var.l(str);
        if (t16VarL != null) {
            int i = (int) t16VarL.b;
            i1(i, ((int) t16VarL.c) + i);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + Consts.DOT);
        }
    }

    public boolean k0() {
        hu5 hu5Var = this.c;
        if (hu5Var == null) {
            return false;
        }
        return hu5Var.isRunning();
    }

    public void k1(final String str, final String str2, final boolean z) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.z0(str, str2, z, ur5Var2);
                }
            });
            return;
        }
        t16 t16VarL = ur5Var.l(str);
        if (t16VarL == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + Consts.DOT);
        }
        int i = (int) t16VarL.b;
        t16 t16VarL2 = this.b.l(str2);
        if (t16VarL2 != null) {
            i1(i, (int) (t16VarL2.b + (z ? 1.0f : 0.0f)));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str2 + Consts.DOT);
    }

    public boolean l0() {
        if (isVisible()) {
            return this.c.isRunning();
        }
        OnVisibleAction onVisibleAction = this.g;
        return onVisibleAction == OnVisibleAction.PLAY || onVisibleAction == OnVisibleAction.RESUME;
    }

    public void l1(final float f, final float f2) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.B0(f, f2, ur5Var2);
                }
            });
        } else {
            i1((int) xp6.i(ur5Var.p(), this.b.f(), f), (int) xp6.i(this.b.p(), this.b.f(), f2));
        }
    }

    public boolean m0() {
        return this.u;
    }

    public void m1(final int i) {
        if (this.b == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.C0(i, ur5Var);
                }
            });
        } else {
            this.c.C(i);
        }
    }

    public boolean n0(LottieFeatureFlag lottieFeatureFlag) {
        return this.n.b(lottieFeatureFlag);
    }

    public void n1(final String str) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.D0(str, ur5Var2);
                }
            });
            return;
        }
        t16 t16VarL = ur5Var.l(str);
        if (t16VarL != null) {
            m1((int) t16VarL.b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + Consts.DOT);
    }

    public final void o0(tf5 tf5Var, Object obj, iu5 iu5Var, ur5 ur5Var) {
        v(tf5Var, obj, iu5Var);
    }

    public void o1(final float f) {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var2) {
                    this.a.E0(f, ur5Var2);
                }
            });
        } else {
            m1((int) xp6.i(ur5Var.p(), this.b.f(), f));
        }
    }

    public final void p0(ValueAnimator valueAnimator) {
        if (K()) {
            invalidateSelf();
            return;
        }
        b bVar = this.q;
        if (bVar != null) {
            bVar.M(this.c.k());
        }
    }

    public void p1(boolean z) {
        if (this.t == z) {
            return;
        }
        this.t = z;
        b bVar = this.q;
        if (bVar != null) {
            bVar.K(z);
        }
    }

    public final void q0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public void q1(boolean z) {
        this.s = z;
        ur5 ur5Var = this.b;
        if (ur5Var != null) {
            ur5Var.v(z);
        }
    }

    public final void r0() {
        b bVar = this.q;
        if (bVar == null) {
            return;
        }
        try {
            this.N.acquire();
            bVar.M(this.c.k());
            if (S && this.K) {
                if (this.O == null) {
                    this.O = new Handler(Looper.getMainLooper());
                    this.P = new Runnable() {
                        @Override
                        public final void run() {
                            this.b.q0();
                        }
                    };
                }
                this.O.post(this.P);
            }
        } catch (InterruptedException unused) {
        } finally {
            this.N.release();
        }
    }

    public void r1(final float f) {
        if (this.b == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.F0(f, ur5Var);
                }
            });
            return;
        }
        if (yh5.h()) {
            yh5.b("Drawable#setProgress");
        }
        this.c.z(this.b.h(f));
        if (yh5.h()) {
            yh5.c("Drawable#setProgress");
        }
    }

    public void s(Animator.AnimatorListener animatorListener) {
        this.c.addListener(animatorListener);
    }

    public final void s0(ur5 ur5Var) {
        H0();
    }

    public void s1(RenderMode renderMode) {
        this.w = renderMode;
        A();
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j);
    }

    @Override
    public void setAlpha(int i) {
        this.r = i;
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        mq5.c("Use addColorFilter instead.");
    }

    @Override
    public boolean setVisible(boolean z, boolean z2) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z, z2);
        if (z) {
            OnVisibleAction onVisibleAction = this.g;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                H0();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                P0();
            }
        } else if (this.c.isRunning()) {
            G0();
            this.g = OnVisibleAction.RESUME;
        } else if (zIsVisible) {
            this.g = OnVisibleAction.NONE;
        }
        return visible;
    }

    @Override
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && ((View) callback).isInEditMode()) {
            return;
        }
        H0();
    }

    @Override
    public void stop() {
        G();
    }

    public void t(Animator.AnimatorPauseListener animatorPauseListener) {
        this.c.addPauseListener(animatorPauseListener);
    }

    public final void t0(ur5 ur5Var) {
        P0();
    }

    public void t1(int i) {
        this.c.setRepeatCount(i);
    }

    public void u(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.c.addUpdateListener(animatorUpdateListener);
    }

    public final void u0(int i, ur5 ur5Var) {
        a1(i);
    }

    public void u1(int i) {
        this.c.setRepeatMode(i);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v(final tf5 tf5Var, final Object obj, final iu5 iu5Var) {
        b bVar = this.q;
        if (bVar == null) {
            this.h.add(new a() {
                @Override
                public final void a(ur5 ur5Var) {
                    this.a.o0(tf5Var, obj, iu5Var, ur5Var);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (tf5Var == tf5.c) {
            bVar.h(obj, iu5Var);
        } else if (tf5Var.d() != null) {
            tf5Var.d().h(obj, iu5Var);
        } else {
            List listO0 = O0(tf5Var);
            for (int i = 0; i < listO0.size(); i++) {
                ((tf5) listO0.get(i)).d().h(obj, iu5Var);
            }
            zIsEmpty = true ^ listO0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == it5.E) {
                r1(a0());
            }
        }
    }

    public final void v0(String str, ur5 ur5Var) {
        g1(str);
    }

    public void v1(boolean z) {
        this.f = z;
    }

    public boolean w(Context context) {
        if (this.e) {
            return true;
        }
        return this.d && yh5.f().a(context) == ReducedMotionMode.STANDARD_MOTION;
    }

    public final void w0(int i, ur5 ur5Var) {
        f1(i);
    }

    public void w1(float f) {
        this.c.E(f);
    }

    public final void x() {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return;
        }
        b bVar = new b(this, vi5.a(ur5Var), ur5Var.k(), ur5Var);
        this.q = bVar;
        if (this.t) {
            bVar.K(true);
        }
        this.q.S(this.p);
    }

    public final void x0(float f, ur5 ur5Var) {
        h1(f);
    }

    public void x1(bha bhaVar) {
    }

    public void y() {
        this.h.clear();
        this.c.cancel();
        if (isVisible()) {
            return;
        }
        this.g = OnVisibleAction.NONE;
    }

    public final void y0(String str, ur5 ur5Var) {
        j1(str);
    }

    public void y1(boolean z) {
        this.c.F(z);
    }

    public void z() {
        if (this.c.isRunning()) {
            this.c.cancel();
            if (!isVisible()) {
                this.g = OnVisibleAction.NONE;
            }
        }
        this.b = null;
        this.q = null;
        this.i = null;
        this.R = -3.4028235E38f;
        this.c.i();
        invalidateSelf();
    }

    public final void z0(String str, String str2, boolean z, ur5 ur5Var) {
        k1(str, str2, z);
    }

    public final boolean z1() {
        ur5 ur5Var = this.b;
        if (ur5Var == null) {
            return false;
        }
        float f = this.R;
        float fK = this.c.k();
        this.R = fK;
        return Math.abs(fK - f) * ur5Var.d() >= 50.0f;
    }
}
