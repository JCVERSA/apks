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
    private static final boolean S;
    private static final List T;
    private static final Executor U;
    private Canvas A;
    private Rect B;
    private RectF C;
    private Paint D;
    private Rect E;
    private Rect F;
    private RectF G;
    private RectF H;
    private Matrix I;
    private Matrix J;
    private boolean K;
    private AsyncUpdates L;
    private final ValueAnimator.AnimatorUpdateListener M;
    private final Semaphore N;
    private Handler O;
    private Runnable P;
    private final Runnable Q;
    private float R;

    private h f17050a;

    private final x4.i f17051b;

    private boolean f17052c;

    private boolean f17053d;

    private boolean f17054e;

    private OnVisibleAction f17055f;

    private final ArrayList f17056g;

    private q4.b f17057h;

    private String f17058i;

    private q4.a f17059j;

    private Map f17060k;

    String f17061l;

    com.airbnb.lottie.a f17062m;

    private final k0 f17063n;

    private boolean f17064o;

    private boolean f17065p;

    private com.airbnb.lottie.model.layer.b f17066q;

    private int f17067r;

    private boolean f17068s;

    private boolean f17069t;

    private boolean f17070u;

    private boolean f17071v;

    private RenderMode f17072w;

    private boolean f17073x;

    private final Matrix f17074y;

    private Bitmap f17075z;

    private enum OnVisibleAction {
        NONE,
        PLAY,
        RESUME
    }

    interface a {
        void a(h hVar);
    }

    static {
        S = Build.VERSION.SDK_INT <= 25;
        T = Arrays.asList("reduced motion", "reduced_motion", "reduced-motion", "reducedmotion");
        U = new ThreadPoolExecutor(0, 2, 35L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new x4.g());
    }

    public LottieDrawable() {
        x4.i iVar = new x4.i();
        this.f17051b = iVar;
        this.f17052c = true;
        this.f17053d = false;
        this.f17054e = false;
        this.f17055f = OnVisibleAction.NONE;
        this.f17056g = new ArrayList();
        this.f17063n = new k0();
        this.f17064o = false;
        this.f17065p = true;
        this.f17067r = 255;
        this.f17071v = false;
        this.f17072w = RenderMode.AUTOMATIC;
        this.f17073x = false;
        this.f17074y = new Matrix();
        this.K = false;
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f17109a.p0(valueAnimator);
            }
        };
        this.M = animatorUpdateListener;
        this.N = new Semaphore(1);
        this.Q = new Runnable() {
            @Override
            public final void run() {
                this.f17112a.r0();
            }
        };
        this.R = -3.4028235E38f;
        iVar.addUpdateListener(animatorUpdateListener);
    }

    private void A() {
        h hVar = this.f17050a;
        if (hVar == null) {
            return;
        }
        this.f17073x = this.f17072w.useSoftwareRendering(Build.VERSION.SDK_INT, hVar.q(), hVar.m());
    }

    public void A0(int i10, int i11, h hVar) {
        i1(i10, i11);
    }

    private boolean A1() {
        h hVar = this.f17050a;
        if (hVar == null) {
            return false;
        }
        float f10 = this.R;
        float fL = this.f17051b.l();
        this.R = fL;
        return Math.abs(fL - f10) * hVar.d() >= 50.0f;
    }

    private void B(Rect rect, RectF rectF) {
        rectF.set(rect.left, rect.top, rect.right, rect.bottom);
    }

    public void B0(float f10, float f11, h hVar) {
        l1(f10, f11);
    }

    private void C(RectF rectF, Rect rect) {
        rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
    }

    public void C0(int i10, h hVar) {
        m1(i10);
    }

    public void D0(String str, h hVar) {
        n1(str);
    }

    private void E(Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        h hVar = this.f17050a;
        if (bVar == null || hVar == null) {
            return;
        }
        this.f17074y.reset();
        Rect bounds = getBounds();
        if (!bounds.isEmpty()) {
            this.f17074y.preScale(bounds.width() / hVar.b().width(), bounds.height() / hVar.b().height());
            this.f17074y.preTranslate(bounds.left, bounds.top);
        }
        bVar.h(canvas, this.f17074y, this.f17067r);
    }

    public void E0(float f10, h hVar) {
        o1(f10);
    }

    public void F0(float f10, h hVar) {
        r1(f10);
    }

    private void H(int i10, int i11) {
        Bitmap bitmap = this.f17075z;
        if (bitmap == null || bitmap.getWidth() < i10 || this.f17075z.getHeight() < i11) {
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(i10, i11, Bitmap.Config.ARGB_8888);
            this.f17075z = bitmapCreateBitmap;
            this.A.setBitmap(bitmapCreateBitmap);
            this.K = true;
            return;
        }
        if (this.f17075z.getWidth() > i10 || this.f17075z.getHeight() > i11) {
            Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(this.f17075z, 0, 0, i10, i11);
            this.f17075z = bitmapCreateBitmap2;
            this.A.setBitmap(bitmapCreateBitmap2);
            this.K = true;
        }
    }

    private void I() {
        if (this.A != null) {
            return;
        }
        this.A = new Canvas();
        this.H = new RectF();
        this.I = new Matrix();
        this.J = new Matrix();
        this.B = new Rect();
        this.C = new RectF();
        this.D = new n4.a();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new RectF();
    }

    private void N0(Canvas canvas, com.airbnb.lottie.model.layer.b bVar) {
        if (this.f17050a == null || bVar == null) {
            return;
        }
        I();
        canvas.getMatrix(this.I);
        canvas.getClipBounds(this.B);
        B(this.B, this.C);
        this.I.mapRect(this.C);
        C(this.C, this.B);
        if (this.f17065p) {
            this.H.set(0.0f, 0.0f, getIntrinsicWidth(), getIntrinsicHeight());
        } else {
            bVar.f(this.H, null, false);
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
            this.f17074y.set(this.I);
            this.f17074y.preScale(fWidth, fHeight);
            Matrix matrix = this.f17074y;
            RectF rectF2 = this.H;
            matrix.postTranslate(-rectF2.left, -rectF2.top);
            this.f17075z.eraseColor(0);
            bVar.h(this.A, this.f17074y, this.f17067r);
            this.I.invert(this.J);
            this.J.mapRect(this.G, this.H);
            C(this.G, this.F);
        }
        this.E.set(0, 0, iCeil, iCeil2);
        canvas.drawBitmap(this.f17075z, this.E, this.F, this.D);
    }

    private Context P() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    private q4.a Q() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f17059j == null) {
            q4.a aVar = new q4.a(getCallback(), this.f17062m);
            this.f17059j = aVar;
            String str = this.f17061l;
            if (str != null) {
                aVar.c(str);
            }
        }
        return this.f17059j;
    }

    private void R0(RectF rectF, float f10, float f11) {
        rectF.set(rectF.left * f10, rectF.top * f11, rectF.right * f10, rectF.bottom * f11);
    }

    private q4.b S() {
        q4.b bVar = this.f17057h;
        if (bVar != null && !bVar.b(P())) {
            this.f17057h = null;
        }
        if (this.f17057h == null) {
            this.f17057h = new q4.b(getCallback(), this.f17058i, null, this.f17050a.j());
        }
        return this.f17057h;
    }

    private r4.g W() {
        Iterator it = T.iterator();
        r4.g gVarL = null;
        while (it.hasNext()) {
            gVarL = this.f17050a.l((String) it.next());
            if (gVarL != null) {
                break;
            }
        }
        return gVarL;
    }

    private boolean j0() {
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

    public void o0(r4.d dVar, Object obj, y4.c cVar, h hVar) {
        v(dVar, obj, cVar);
    }

    public void p0(ValueAnimator valueAnimator) {
        if (K()) {
            invalidateSelf();
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        if (bVar != null) {
            bVar.M(this.f17051b.l());
        }
    }

    public void q0() {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    public void r0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        if (bVar == null) {
            return;
        }
        try {
            this.N.acquire();
            bVar.M(this.f17051b.l());
            if (S && this.K) {
                if (this.O == null) {
                    this.O = new Handler(Looper.getMainLooper());
                    this.P = new Runnable() {
                        @Override
                        public final void run() {
                            this.f17086a.q0();
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

    public void s0(h hVar) {
        H0();
    }

    public void t0(h hVar) {
        P0();
    }

    public void u0(int i10, h hVar) {
        a1(i10);
    }

    public void v0(String str, h hVar) {
        g1(str);
    }

    private boolean w() {
        return this.f17052c || this.f17053d;
    }

    public void w0(int i10, h hVar) {
        f1(i10);
    }

    private void x() {
        h hVar = this.f17050a;
        if (hVar == null) {
            return;
        }
        com.airbnb.lottie.model.layer.b bVar = new com.airbnb.lottie.model.layer.b(this, w4.v.a(hVar), hVar.k(), hVar);
        this.f17066q = bVar;
        if (this.f17069t) {
            bVar.K(true);
        }
        this.f17066q.S(this.f17065p);
    }

    public void x0(float f10, h hVar) {
        h1(f10);
    }

    public void y0(String str, h hVar) {
        j1(str);
    }

    public void z0(String str, String str2, boolean z10, h hVar) {
        k1(str, str2, z10);
    }

    public Bitmap B1(String str, Bitmap bitmap) {
        q4.b bVarS = S();
        if (bVarS == null) {
            x4.f.c("Cannot update bitmap. Most likely the drawable is not added to a View which prevents Lottie from getting a Context.");
            return null;
        }
        Bitmap bitmapE = bVarS.e(str, bitmap);
        invalidateSelf();
        return bitmapE;
    }

    public boolean C1() {
        return this.f17060k == null && this.f17050a.c().p() > 0;
    }

    public void D() {
    }

    public void F(LottieFeatureFlag lottieFeatureFlag, boolean z10) {
        boolean zA = this.f17063n.a(lottieFeatureFlag, z10);
        if (this.f17050a == null || !zA) {
            return;
        }
        x();
    }

    public void G() {
        this.f17056g.clear();
        this.f17051b.k();
        if (isVisible()) {
            return;
        }
        this.f17055f = OnVisibleAction.NONE;
    }

    public void G0() {
        this.f17056g.clear();
        this.f17051b.s();
        if (isVisible()) {
            return;
        }
        this.f17055f = OnVisibleAction.NONE;
    }

    public void H0() {
        if (this.f17066q == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17131a.s0(hVar);
                }
            });
            return;
        }
        A();
        if (w() || c0() == 0) {
            if (isVisible()) {
                this.f17051b.t();
                this.f17055f = OnVisibleAction.NONE;
            } else {
                this.f17055f = OnVisibleAction.PLAY;
            }
        }
        if (w()) {
            return;
        }
        r4.g gVarW = W();
        if (gVarW != null) {
            a1((int) gVarW.f70838b);
        } else {
            a1((int) (e0() < 0.0f ? Y() : X()));
        }
        this.f17051b.k();
        if (isVisible()) {
            return;
        }
        this.f17055f = OnVisibleAction.NONE;
    }

    public void I0() {
        this.f17051b.removeAllListeners();
    }

    public AsyncUpdates J() {
        AsyncUpdates asyncUpdates = this.L;
        return asyncUpdates != null ? asyncUpdates : d.d();
    }

    public void J0() {
        this.f17051b.removeAllUpdateListeners();
        this.f17051b.addUpdateListener(this.M);
    }

    public boolean K() {
        return J() == AsyncUpdates.ENABLED;
    }

    public void K0(Animator.AnimatorListener animatorListener) {
        this.f17051b.removeListener(animatorListener);
    }

    public Bitmap L(String str) {
        q4.b bVarS = S();
        if (bVarS != null) {
            return bVarS.a(str);
        }
        return null;
    }

    public void L0(Animator.AnimatorPauseListener animatorPauseListener) {
        this.f17051b.removePauseListener(animatorPauseListener);
    }

    public boolean M() {
        return this.f17071v;
    }

    public void M0(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17051b.removeUpdateListener(animatorUpdateListener);
    }

    public boolean N() {
        return this.f17065p;
    }

    public h O() {
        return this.f17050a;
    }

    public List O0(r4.d dVar) {
        if (this.f17066q == null) {
            x4.f.c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f17066q.c(dVar, 0, arrayList, new r4.d(new String[0]));
        return arrayList;
    }

    public void P0() {
        if (this.f17066q == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17087a.t0(hVar);
                }
            });
            return;
        }
        A();
        if (w() || c0() == 0) {
            if (isVisible()) {
                this.f17051b.x();
                this.f17055f = OnVisibleAction.NONE;
            } else {
                this.f17055f = OnVisibleAction.RESUME;
            }
        }
        if (w()) {
            return;
        }
        a1((int) (e0() < 0.0f ? Y() : X()));
        this.f17051b.k();
        if (isVisible()) {
            return;
        }
        this.f17055f = OnVisibleAction.NONE;
    }

    public void Q0() {
        this.f17051b.y();
    }

    public int R() {
        return (int) this.f17051b.m();
    }

    public void S0(boolean z10) {
        this.f17070u = z10;
    }

    public String T() {
        return this.f17058i;
    }

    public void T0(AsyncUpdates asyncUpdates) {
        this.L = asyncUpdates;
    }

    public l0 U(String str) {
        h hVar = this.f17050a;
        if (hVar == null) {
            return null;
        }
        return (l0) hVar.j().get(str);
    }

    public void U0(boolean z10) {
        if (z10 != this.f17071v) {
            this.f17071v = z10;
            invalidateSelf();
        }
    }

    public boolean V() {
        return this.f17064o;
    }

    public void V0(boolean z10) {
        if (z10 != this.f17065p) {
            this.f17065p = z10;
            com.airbnb.lottie.model.layer.b bVar = this.f17066q;
            if (bVar != null) {
                bVar.S(z10);
            }
            invalidateSelf();
        }
    }

    public boolean W0(h hVar) {
        if (this.f17050a == hVar) {
            return false;
        }
        this.K = true;
        z();
        this.f17050a = hVar;
        x();
        this.f17051b.z(hVar);
        r1(this.f17051b.getAnimatedFraction());
        Iterator it = new ArrayList(this.f17056g).iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (aVar != null) {
                aVar.a(hVar);
            }
            it.remove();
        }
        this.f17056g.clear();
        hVar.v(this.f17068s);
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
        return this.f17051b.o();
    }

    public void X0(String str) {
        this.f17061l = str;
        q4.a aVarQ = Q();
        if (aVarQ != null) {
            aVarQ.c(str);
        }
    }

    public float Y() {
        return this.f17051b.p();
    }

    public void Y0(com.airbnb.lottie.a aVar) {
        this.f17062m = aVar;
        q4.a aVar2 = this.f17059j;
        if (aVar2 != null) {
            aVar2.d(aVar);
        }
    }

    public PerformanceTracker Z() {
        h hVar = this.f17050a;
        if (hVar != null) {
            return hVar.n();
        }
        return null;
    }

    public void Z0(Map map) {
        if (map == this.f17060k) {
            return;
        }
        this.f17060k = map;
        invalidateSelf();
    }

    public float a0() {
        return this.f17051b.l();
    }

    public void a1(final int i10) {
        if (this.f17050a == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17345a.u0(i10, hVar);
                }
            });
        } else {
            this.f17051b.A(i10);
        }
    }

    public RenderMode b0() {
        return this.f17073x ? RenderMode.SOFTWARE : RenderMode.HARDWARE;
    }

    public void b1(boolean z10) {
        this.f17053d = z10;
    }

    public int c0() {
        return this.f17051b.getRepeatCount();
    }

    public void c1(b bVar) {
        q4.b bVar2 = this.f17057h;
        if (bVar2 != null) {
            bVar2.d(bVar);
        }
    }

    public int d0() {
        return this.f17051b.getRepeatMode();
    }

    public void d1(String str) {
        this.f17058i = str;
    }

    @Override
    public void draw(Canvas canvas) {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        if (bVar == null) {
            return;
        }
        boolean zK = K();
        if (zK) {
            try {
                this.N.acquire();
            } catch (InterruptedException unused) {
                if (d.g()) {
                    d.c("Drawable#draw");
                }
                if (!zK) {
                    return;
                }
                this.N.release();
                if (bVar.P() == this.f17051b.l()) {
                    return;
                }
            } catch (Throwable th2) {
                if (d.g()) {
                    d.c("Drawable#draw");
                }
                if (zK) {
                    this.N.release();
                    if (bVar.P() != this.f17051b.l()) {
                        U.execute(this.Q);
                    }
                }
                throw th2;
            }
        }
        if (d.g()) {
            d.b("Drawable#draw");
        }
        if (zK && A1()) {
            r1(this.f17051b.l());
        }
        if (this.f17054e) {
            try {
                if (this.f17073x) {
                    N0(canvas, bVar);
                } else {
                    E(canvas);
                }
            } catch (Throwable th3) {
                x4.f.b("Lottie crashed in draw!", th3);
            }
        } else if (this.f17073x) {
            N0(canvas, bVar);
        } else {
            E(canvas);
        }
        this.K = false;
        if (d.g()) {
            d.c("Drawable#draw");
        }
        if (zK) {
            this.N.release();
            if (bVar.P() == this.f17051b.l()) {
                return;
            }
            U.execute(this.Q);
        }
    }

    public float e0() {
        return this.f17051b.q();
    }

    public void e1(boolean z10) {
        this.f17064o = z10;
    }

    public t0 f0() {
        return null;
    }

    public void f1(final int i10) {
        if (this.f17050a == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17353a.w0(i10, hVar);
                }
            });
        } else {
            this.f17051b.B(i10 + 0.99f);
        }
    }

    public Typeface g0(r4.b bVar) {
        Map map = this.f17060k;
        if (map != null) {
            String strA = bVar.a();
            if (map.containsKey(strA)) {
                return (Typeface) map.get(strA);
            }
            String strB = bVar.b();
            if (map.containsKey(strB)) {
                return (Typeface) map.get(strB);
            }
            String str = bVar.a() + "-" + bVar.c();
            if (map.containsKey(str)) {
                return (Typeface) map.get(str);
            }
        }
        q4.a aVarQ = Q();
        if (aVarQ != null) {
            return aVarQ.b(bVar);
        }
        return null;
    }

    public void g1(final String str) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17103a.v0(str, hVar2);
                }
            });
            return;
        }
        r4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            f1((int) (gVarL.f70838b + gVarL.f70839c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    @Override
    public int getAlpha() {
        return this.f17067r;
    }

    @Override
    public int getIntrinsicHeight() {
        h hVar = this.f17050a;
        if (hVar == null) {
            return -1;
        }
        return hVar.b().height();
    }

    @Override
    public int getIntrinsicWidth() {
        h hVar = this.f17050a;
        if (hVar == null) {
            return -1;
        }
        return hVar.b().width();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    public boolean h0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        return bVar != null && bVar.Q();
    }

    public void h1(final float f10) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17361a.x0(f10, hVar2);
                }
            });
        } else {
            this.f17051b.B(x4.k.i(hVar.p(), this.f17050a.f(), f10));
        }
    }

    public boolean i0() {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        return bVar != null && bVar.R();
    }

    public void i1(final int i10, final int i11) {
        if (this.f17050a == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17350a.A0(i10, i11, hVar);
                }
            });
        } else {
            this.f17051b.C(i10, i11 + 0.99f);
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

    public void j1(final String str) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17343a.y0(str, hVar2);
                }
            });
            return;
        }
        r4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            int i10 = (int) gVarL.f70838b;
            i1(i10, ((int) gVarL.f70839c) + i10);
        } else {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
    }

    public boolean k0() {
        x4.i iVar = this.f17051b;
        if (iVar == null) {
            return false;
        }
        return iVar.isRunning();
    }

    public void k1(final String str, final String str2, final boolean z10) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17089a.z0(str, str2, z10, hVar2);
                }
            });
            return;
        }
        r4.g gVarL = hVar.l(str);
        if (gVarL == null) {
            throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
        }
        int i10 = (int) gVarL.f70838b;
        r4.g gVarL2 = this.f17050a.l(str2);
        if (gVarL2 != null) {
            i1(i10, (int) (gVarL2.f70838b + (z10 ? 1.0f : 0.0f)));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str2 + ".");
    }

    boolean l0() {
        if (isVisible()) {
            return this.f17051b.isRunning();
        }
        OnVisibleAction onVisibleAction = this.f17055f;
        return onVisibleAction == OnVisibleAction.PLAY || onVisibleAction == OnVisibleAction.RESUME;
    }

    public void l1(final float f10, final float f11) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17347a.B0(f10, f11, hVar2);
                }
            });
        } else {
            i1((int) x4.k.i(hVar.p(), this.f17050a.f(), f10), (int) x4.k.i(this.f17050a.p(), this.f17050a.f(), f11));
        }
    }

    public boolean m0() {
        return this.f17070u;
    }

    public void m1(final int i10) {
        if (this.f17050a == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17355a.C0(i10, hVar);
                }
            });
        } else {
            this.f17051b.D(i10);
        }
    }

    public boolean n0(LottieFeatureFlag lottieFeatureFlag) {
        return this.f17063n.b(lottieFeatureFlag);
    }

    public void n1(final String str) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17107a.D0(str, hVar2);
                }
            });
            return;
        }
        r4.g gVarL = hVar.l(str);
        if (gVarL != null) {
            m1((int) gVarL.f70838b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    public void o1(final float f10) {
        h hVar = this.f17050a;
        if (hVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar2) {
                    this.f17135a.E0(f10, hVar2);
                }
            });
        } else {
            m1((int) x4.k.i(hVar.p(), this.f17050a.f(), f10));
        }
    }

    public void p1(boolean z10) {
        if (this.f17069t == z10) {
            return;
        }
        this.f17069t = z10;
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        if (bVar != null) {
            bVar.K(z10);
        }
    }

    public void q1(boolean z10) {
        this.f17068s = z10;
        h hVar = this.f17050a;
        if (hVar != null) {
            hVar.v(z10);
        }
    }

    public void r1(final float f10) {
        if (this.f17050a == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17139a.F0(f10, hVar);
                }
            });
            return;
        }
        if (d.g()) {
            d.b("Drawable#setProgress");
        }
        this.f17051b.A(this.f17050a.h(f10));
        if (d.g()) {
            d.c("Drawable#setProgress");
        }
    }

    public void s(Animator.AnimatorListener animatorListener) {
        this.f17051b.addListener(animatorListener);
    }

    public void s1(RenderMode renderMode) {
        this.f17072w = renderMode;
        A();
    }

    @Override
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.scheduleDrawable(this, runnable, j10);
    }

    @Override
    public void setAlpha(int i10) {
        this.f17067r = i10;
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        x4.f.c("Use addColorFilter instead.");
    }

    @Override
    public boolean setVisible(boolean z10, boolean z11) {
        boolean zIsVisible = isVisible();
        boolean visible = super.setVisible(z10, z11);
        if (z10) {
            OnVisibleAction onVisibleAction = this.f17055f;
            if (onVisibleAction == OnVisibleAction.PLAY) {
                H0();
            } else if (onVisibleAction == OnVisibleAction.RESUME) {
                P0();
            }
        } else if (this.f17051b.isRunning()) {
            G0();
            this.f17055f = OnVisibleAction.RESUME;
        } else if (zIsVisible) {
            this.f17055f = OnVisibleAction.NONE;
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
        this.f17051b.addPauseListener(animatorPauseListener);
    }

    public void t1(int i10) {
        this.f17051b.setRepeatCount(i10);
    }

    public void u(ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        this.f17051b.addUpdateListener(animatorUpdateListener);
    }

    public void u1(int i10) {
        this.f17051b.setRepeatMode(i10);
    }

    @Override
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback == null) {
            return;
        }
        callback.unscheduleDrawable(this, runnable);
    }

    public void v(final r4.d dVar, final Object obj, final y4.c cVar) {
        com.airbnb.lottie.model.layer.b bVar = this.f17066q;
        if (bVar == null) {
            this.f17056g.add(new a() {
                @Override
                public final void a(h hVar) {
                    this.f17357a.o0(dVar, obj, cVar, hVar);
                }
            });
            return;
        }
        boolean zIsEmpty = true;
        if (dVar == r4.d.f70832c) {
            bVar.d(obj, cVar);
        } else if (dVar.d() != null) {
            dVar.d().d(obj, cVar);
        } else {
            List listO0 = O0(dVar);
            for (int i10 = 0; i10 < listO0.size(); i10++) {
                ((r4.d) listO0.get(i10)).d().d(obj, cVar);
            }
            zIsEmpty = true ^ listO0.isEmpty();
        }
        if (zIsEmpty) {
            invalidateSelf();
            if (obj == p0.E) {
                r1(a0());
            }
        }
    }

    public void v1(boolean z10) {
        this.f17054e = z10;
    }

    public void w1(float f10) {
        this.f17051b.E(f10);
    }

    public void x1(Boolean bool) {
        this.f17052c = bool.booleanValue();
    }

    public void y() {
        this.f17056g.clear();
        this.f17051b.cancel();
        if (isVisible()) {
            return;
        }
        this.f17055f = OnVisibleAction.NONE;
    }

    public void y1(t0 t0Var) {
    }

    public void z() {
        if (this.f17051b.isRunning()) {
            this.f17051b.cancel();
            if (!isVisible()) {
                this.f17055f = OnVisibleAction.NONE;
            }
        }
        this.f17050a = null;
        this.f17066q = null;
        this.f17057h = null;
        this.R = -3.4028235E38f;
        this.f17051b.j();
        invalidateSelf();
    }

    public void z1(boolean z10) {
        this.f17051b.F(z10);
    }
}
