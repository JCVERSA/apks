package g;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageDecoder;
import com.davemorrissey.labs.subscaleview.decoder.SkiaImageRegionDecoder;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZImageViewer;

public final class d extends View {

    public static final List<Integer> f805q0 = Arrays.asList(0, 90, 180, 270, -1);

    public static final List<Integer> f806r0 = Arrays.asList(1, 2, 3);

    public static final List<Integer> f807s0 = Arrays.asList(2, 1);

    public static final List<Integer> f808t0 = Arrays.asList(1, 2, 3);

    public static final List<Integer> f809u0 = Arrays.asList(2, 1, 3, 4);

    public static Bitmap.Config f810v0;
    public PointF A;
    public Float B;
    public PointF C;
    public PointF D;
    public int E;
    public int F;
    public int G;
    public boolean H;
    public boolean I;
    public boolean J;
    public int K;
    public GestureDetector L;
    public GestureDetector M;
    public h.d N;
    public final ReentrantReadWriteLock O;
    public h.b<? extends h.c> P;
    public h.b<? extends h.d> Q;
    public PointF R;
    public float S;
    public final float T;
    public float U;
    public boolean V;
    public PointF W;

    public Bitmap f811a;

    public PointF f812a0;

    public boolean f813b;

    public PointF f814b0;

    public boolean f815c;

    public c f816c0;

    public g.a f817d;

    public boolean f818d0;

    public int f819e;

    public boolean f820e0;

    public LinkedHashMap f821f;

    public g f822f0;

    public int f823g;

    public View.OnLongClickListener f824g0;

    public float f825h;

    public final Handler f826h0;

    public float f827i;

    public Paint f828i0;

    public int f829j;

    public Paint f830j0;

    public int f831k;

    public i f832k0;

    public int f833l;

    public Matrix f834l0;

    public int f835m;

    public RectF f836m0;

    public int f837n;

    public final float[] f838n0;

    public Executor f839o;

    public final float[] f840o0;

    public boolean f841p;

    public final float f842p0;

    public boolean f843q;

    public boolean f844r;

    public boolean f845s;

    public float f846t;

    public int f847u;

    public int f848v;

    public float f849w;

    public float f850x;

    public PointF f851y;

    public PointF f852z;

    public class a extends GestureDetector.SimpleOnGestureListener {

        public final Context f853a;

        public a(Context context) {
            this.f853a = context;
        }

        @Override
        public final boolean onDoubleTap(MotionEvent motionEvent) {
            d dVar = d.this;
            if (!dVar.f844r || !dVar.f818d0 || dVar.f851y == null) {
                return onDoubleTapEvent(motionEvent);
            }
            d.a(dVar, this.f853a);
            PointF pointF = null;
            if (!dVar.f845s) {
                PointF pointF2 = new PointF(motionEvent.getX(), motionEvent.getY());
                float f2 = pointF2.x;
                float f3 = pointF2.y;
                PointF pointF3 = new PointF();
                PointF pointF4 = dVar.f851y;
                if (pointF4 != null) {
                    float f4 = f2 - pointF4.x;
                    float f5 = dVar.f849w;
                    pointF3.set(f4 / f5, (f3 - pointF4.y) / f5);
                    pointF = pointF3;
                }
                dVar.i(pointF, new PointF(motionEvent.getX(), motionEvent.getY()));
                return true;
            }
            dVar.R = new PointF(motionEvent.getX(), motionEvent.getY());
            PointF pointF5 = dVar.f851y;
            dVar.f852z = new PointF(pointF5.x, pointF5.y);
            dVar.f850x = dVar.f849w;
            dVar.J = true;
            dVar.H = true;
            dVar.U = -1.0f;
            PointF pointF6 = dVar.R;
            float f6 = pointF6.x;
            float f7 = pointF6.y;
            PointF pointF7 = new PointF();
            PointF pointF8 = dVar.f851y;
            if (pointF8 != null) {
                float f8 = f6 - pointF8.x;
                float f9 = dVar.f849w;
                pointF7.set(f8 / f9, (f7 - pointF8.y) / f9);
                pointF = pointF7;
            }
            dVar.f812a0 = pointF;
            dVar.f814b0 = new PointF(motionEvent.getX(), motionEvent.getY());
            PointF pointF9 = dVar.f812a0;
            dVar.W = new PointF(pointF9.x, pointF9.y);
            dVar.V = false;
            return false;
        }

        @Override
        public final boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f2, float f3) {
            d dVar = d.this;
            if (!dVar.f843q || !dVar.f818d0 || dVar.f851y == null || motionEvent == null || motionEvent2 == null || ((Math.abs(motionEvent.getX() - motionEvent2.getX()) <= 50.0f && Math.abs(motionEvent.getY() - motionEvent2.getY()) <= 50.0f) || ((Math.abs(f2) <= 500.0f && Math.abs(f3) <= 500.0f) || dVar.H))) {
                return super.onFling(motionEvent, motionEvent2, f2, f3);
            }
            PointF pointF = dVar.f851y;
            PointF pointF2 = new PointF((f2 * 0.25f) + pointF.x, (f3 * 0.25f) + pointF.y);
            C0015d c0015d = dVar.new C0015d(new PointF(((dVar.getWidth() / 2) - pointF2.x) / dVar.f849w, ((dVar.getHeight() / 2) - pointF2.y) / dVar.f849w));
            if (!d.f807s0.contains(1)) {
                throw new IllegalArgumentException("Unknown easing type: 1");
            }
            c0015d.f871e = 1;
            c0015d.f874h = false;
            c0015d.f872f = 3;
            c0015d.a();
            return true;
        }

        @Override
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            d.this.performClick();
            return true;
        }
    }

    public class b extends GestureDetector.SimpleOnGestureListener {
        public b() {
        }

        @Override
        public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            d.this.performClick();
            return true;
        }
    }

    public static class c {

        public float f856a;

        public float f857b;

        public PointF f858c;

        public PointF f859d;

        public PointF f860e;

        public PointF f861f;

        public long f862g = 500;

        public boolean f863h = true;

        public int f864i = 2;

        public int f865j = 1;

        public long f866k = System.currentTimeMillis();
    }

    public static class e extends AsyncTask<Void, Void, Integer> {

        public final WeakReference<d> f876a;

        public final WeakReference<Context> f877b;

        public final WeakReference<h.b<? extends h.c>> f878c;

        public final g.a f879d;

        public final boolean f880e = false;

        public Bitmap f881f;

        public Exception f882g;

        public e(d dVar, Context context, h.b bVar, g.a aVar) {
            this.f876a = new WeakReference<>(dVar);
            this.f877b = new WeakReference<>(context);
            this.f878c = new WeakReference<>(bVar);
            this.f879d = aVar;
        }

        @Override
        public final Integer doInBackground(Void[] voidArr) {
            g.a aVar = this.f879d;
            try {
                Context context = this.f877b.get();
                h.b<? extends h.c> bVar = this.f878c.get();
                d dVar = this.f876a.get();
                if (context != null && bVar != null && dVar != null) {
                    List<Integer> list = d.f805q0;
                    this.f881f = bVar.a().a(context, aVar);
                    return Integer.valueOf(d.d(dVar, context, aVar));
                }
            } catch (Exception e2) {
                this.f882g = e2;
            } catch (OutOfMemoryError e3) {
                this.f882g = new RuntimeException(e3);
            }
            return null;
        }

        @Override
        public final void onPostExecute(Integer num) {
            g gVar;
            Integer num2 = num;
            d dVar = this.f876a.get();
            if (dVar != null) {
                Bitmap bitmap = this.f881f;
                if (bitmap == null || num2 == null) {
                    Exception exc = this.f882g;
                    if (exc == null || (gVar = dVar.f822f0) == null || this.f880e) {
                        return;
                    }
                    ((ZImageViewer) gVar).c(dVar, exc);
                    return;
                }
                if (!this.f880e) {
                    dVar.q(bitmap, num2.intValue());
                    return;
                }
                synchronized (dVar) {
                    if (dVar.f811a == null && !dVar.f820e0) {
                        dVar.f811a = bitmap;
                        dVar.f813b = true;
                        if (dVar.h()) {
                            dVar.invalidate();
                            dVar.requestLayout();
                        }
                        return;
                    }
                    bitmap.recycle();
                }
            }
        }
    }

    public static class f extends AsyncTask<Void, Void, int[]> {

        public final WeakReference<d> f883a;

        public final WeakReference<Context> f884b;

        public final WeakReference<h.b<? extends h.d>> f885c;

        public final g.a f886d;

        public h.d f887e;

        public f(d dVar, Context context, h.b<? extends h.d> bVar, g.a aVar) {
            this.f883a = new WeakReference<>(dVar);
            this.f884b = new WeakReference<>(context);
            this.f885c = new WeakReference<>(bVar);
            this.f886d = aVar;
        }

        @Override
        public final int[] doInBackground(Void[] voidArr) {
            try {
                Context context = this.f884b.get();
                h.b<? extends h.d> bVar = this.f885c.get();
                d dVar = this.f883a.get();
                if (context == null || bVar == null || dVar == null) {
                    return null;
                }
                List<Integer> list = d.f805q0;
                h.d dVarA = bVar.a();
                this.f887e = dVarA;
                dVarA.d(context, this.f886d);
                return null;
            } catch (Exception unused) {
                return null;
            }
        }

        @Override
        public final void onPostExecute(int[] iArr) {
            h.d dVar;
            d dVar2 = this.f883a.get();
            if (dVar2 == null || (dVar = this.f887e) == null) {
                return;
            }
            synchronized (dVar2) {
                dVar2.N = dVar;
                dVar2.setEnabled(true);
            }
        }
    }

    public interface g {
    }

    public interface h {
    }

    public static class i {

        public float f888a;

        public final PointF f889b;

        public i(float f2, PointF pointF) {
            this.f888a = f2;
            this.f889b = pointF;
        }
    }

    public static class j {

        public Rect f890a;

        public int f891b;

        public Bitmap f892c;

        public boolean f893d;

        public boolean f894e;

        public Rect f895f;

        public Rect f896g;
    }

    public static class k extends AsyncTask<Void, Void, Bitmap> {

        public final WeakReference<d> f897a;

        public final WeakReference<h.d> f898b;

        public final WeakReference<j> f899c;

        public Exception f900d;

        public k(d dVar, h.d dVar2, j jVar) {
            this.f897a = new WeakReference<>(dVar);
            this.f898b = new WeakReference<>(dVar2);
            this.f899c = new WeakReference<>(jVar);
            jVar.f893d = true;
        }

        /* JADX WARN: Code duplicated, block: B:22:0x006d A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:23:0x006f A[Catch: OutOfMemoryError -> 0x0072, Exception -> 0x007b, TRY_LEAVE, TryCatch #3 {Exception -> 0x007b, OutOfMemoryError -> 0x0072, blocks: (B:3:0x0002, B:7:0x0021, B:9:0x0029, B:11:0x002d, B:15:0x0050, B:18:0x005a, B:20:0x0063, B:21:0x006c, B:23:0x006f), top: B:32:0x0002 }] */
        @Override
        public final Bitmap doInBackground(Void[] voidArr) {
            try {
                d dVar = this.f897a.get();
                h.d dVar2 = this.f898b.get();
                j jVar = this.f899c.get();
                if (dVar2 != null && jVar != null && dVar != null) {
                    ReentrantReadWriteLock reentrantReadWriteLock = dVar.O;
                    if (dVar2.b() && jVar.f894e) {
                        List<Integer> list = d.f805q0;
                        a0.b.a(jVar.f890a);
                        reentrantReadWriteLock.readLock().lock();
                        try {
                            if (dVar2.b()) {
                                d.e(dVar, jVar.f890a, jVar.f896g);
                                return dVar2.c(jVar.f891b, jVar.f896g);
                            }
                            jVar.f893d = false;
                        } finally {
                            dVar.O.readLock().unlock();
                        }
                    } else if (jVar != null) {
                        jVar.f893d = false;
                    }
                } else if (jVar != null) {
                    jVar.f893d = false;
                }
            } catch (Exception e2) {
                this.f900d = e2;
            } catch (OutOfMemoryError e3) {
                this.f900d = new RuntimeException(e3);
            }
            return null;
        }

        @Override
        public final void onPostExecute(Bitmap bitmap) {
            Bitmap bitmap2;
            Bitmap bitmap3 = bitmap;
            d dVar = this.f897a.get();
            j jVar = this.f899c.get();
            if (dVar == null || jVar == null) {
                return;
            }
            if (bitmap3 == null) {
                Exception exc = this.f900d;
                if (exc == null || dVar.f822f0 == null) {
                    return;
                }
                ZApp.j("Failed to load tile: " + exc.getMessage());
                return;
            }
            jVar.f892c = bitmap3;
            jVar.f893d = false;
            synchronized (dVar) {
                dVar.h();
                dVar.g();
                if (dVar.o() && (bitmap2 = dVar.f811a) != null) {
                    if (!dVar.f815c) {
                        bitmap2.recycle();
                    }
                    dVar.f811a = null;
                    dVar.f813b = false;
                    dVar.f815c = false;
                }
                dVar.invalidate();
            }
        }
    }

    public static class l extends AsyncTask<Void, Void, int[]> {

        public final WeakReference<d> f901a;

        public final WeakReference<Context> f902b;

        public final WeakReference<h.b<? extends h.d>> f903c;

        public final g.a f904d;

        public h.d f905e;

        public Exception f906f;

        public l(d dVar, Context context, h.b<? extends h.d> bVar, g.a aVar) {
            this.f901a = new WeakReference<>(dVar);
            this.f902b = new WeakReference<>(context);
            this.f903c = new WeakReference<>(bVar);
            this.f904d = aVar;
        }

        @Override
        public final int[] doInBackground(Void[] voidArr) {
            g.a aVar = this.f904d;
            try {
                Context context = this.f902b.get();
                h.b<? extends h.d> bVar = this.f903c.get();
                d dVar = this.f901a.get();
                if (context != null && bVar != null && dVar != null) {
                    int iD = d.d(dVar, context, aVar);
                    h.d dVarA = bVar.a();
                    this.f905e = dVarA;
                    Point pointD = dVarA.d(context, aVar);
                    return new int[]{pointD.x, pointD.y, iD};
                }
            } catch (Exception e2) {
                this.f906f = e2;
            }
            return null;
        }

        @Override
        public final void onPostExecute(int[] iArr) {
            g gVar;
            int i2;
            int i3;
            int i4;
            int[] iArr2 = iArr;
            d dVar = this.f901a.get();
            if (dVar != null) {
                h.d dVar2 = this.f905e;
                if (dVar2 == null || iArr2 == null || iArr2.length != 3) {
                    Exception exc = this.f906f;
                    if (exc == null || (gVar = dVar.f822f0) == null) {
                        return;
                    }
                    ((ZImageViewer) gVar).c(dVar, exc);
                    return;
                }
                int i5 = iArr2[0];
                int i6 = iArr2[1];
                int i7 = iArr2[2];
                synchronized (dVar) {
                    int i8 = dVar.E;
                    if (i8 > 0 && (i4 = dVar.F) > 0 && (i8 != i5 || i4 != i6)) {
                        dVar.t(false);
                        Bitmap bitmap = dVar.f811a;
                        if (bitmap != null) {
                            if (!dVar.f815c) {
                                bitmap.recycle();
                            }
                            dVar.f811a = null;
                            dVar.f813b = false;
                            dVar.f815c = false;
                        }
                    }
                    dVar.N = dVar2;
                    dVar.E = i5;
                    dVar.F = i6;
                    dVar.G = i7;
                    dVar.h();
                    if (!dVar.g() && (i2 = dVar.f835m) > 0 && i2 != Integer.MAX_VALUE && (i3 = dVar.f837n) > 0 && i3 != Integer.MAX_VALUE && dVar.getWidth() > 0 && dVar.getHeight() > 0) {
                        dVar.m(new Point(dVar.f835m, dVar.f837n));
                    }
                    dVar.invalidate();
                    dVar.requestLayout();
                }
            }
        }
    }

    public d(Context context) {
        super(context, null);
        this.f823g = 0;
        this.f825h = 2.0f;
        this.f827i = p();
        this.f829j = -1;
        this.f831k = 1;
        this.f833l = 1;
        this.f835m = Integer.MAX_VALUE;
        this.f837n = Integer.MAX_VALUE;
        this.f839o = AsyncTask.THREAD_POOL_EXECUTOR;
        this.f841p = true;
        this.f843q = true;
        this.f844r = true;
        this.f845s = true;
        this.f846t = 1.0f;
        this.f847u = 1;
        this.f848v = 500;
        this.O = new ReentrantReadWriteLock(true);
        this.P = new h.a(SkiaImageDecoder.class);
        this.Q = new h.a(SkiaImageRegionDecoder.class);
        this.f838n0 = new float[8];
        this.f840o0 = new float[8];
        this.f842p0 = getResources().getDisplayMetrics().density;
        setMinimumDpi(160);
        setDoubleTapZoomDpi(160);
        setMinimumTileDpi(320);
        setGestureDetector(context);
        this.f826h0 = new Handler(new g.c(this));
        this.T = TypedValue.applyDimension(1, 20.0f, context.getResources().getDisplayMetrics());
    }

    public static void a(d dVar, Context context) {
        dVar.setGestureDetector(context);
    }

    public static void b(d dVar, View.OnLongClickListener onLongClickListener) {
        super.setOnLongClickListener(onLongClickListener);
    }

    public static void c(d dVar) {
        super.setOnLongClickListener(null);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0042 A[DONT_GENERATE, PHI: r0 r1
      0x0042: PHI (r0v5 int) = (r0v0 int), (r0v6 int) binds: [B:20:0x0040, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]
      0x0042: PHI (r1v5 android.database.Cursor) = (r1v4 android.database.Cursor), (r1v6 android.database.Cursor) binds: [B:20:0x0040, B:14:0x0036] A[DONT_GENERATE, DONT_INLINE]] */
    public static int d(d dVar, Context context, g.a aVar) {
        q0.d dVar2;
        int iG = 0;
        if (aVar.f798a != null) {
            Cursor cursorQuery = null;
            try {
                cursorQuery = context.getContentResolver().query(aVar.f798a, new String[]{"orientation"}, null, null, null);
                if (cursorQuery != null && cursorQuery.moveToFirst()) {
                    int i2 = cursorQuery.getInt(0);
                    if (f805q0.contains(Integer.valueOf(i2)) && i2 != -1) {
                        iG = i2;
                    }
                }
            } catch (Exception unused) {
            } finally {
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
            }
        } else {
            ParcelFileDescriptor parcelFileDescriptor = aVar.f800c;
            String str = aVar.f799b;
            if (str != null || parcelFileDescriptor != null) {
                try {
                    if (parcelFileDescriptor != null) {
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 24) {
                            n0.e.o(parcelFileDescriptor);
                            int i4 = q0.d.f1377b;
                            FileDescriptor fileDescriptor = parcelFileDescriptor.getFileDescriptor();
                            dVar2 = i3 < 28 ? new q0.d(new FileInputStream(fileDescriptor)) : new q0.d(fileDescriptor);
                        }
                    } else {
                        dVar2 = new q0.d(str);
                    }
                    iG = q0.e.g(dVar2);
                } catch (Exception unused2) {
                }
                if (parcelFileDescriptor != null) {
                    n0.e.o(parcelFileDescriptor);
                }
            }
        }
        return iG;
    }

    public static void e(d dVar, Rect rect, Rect rect2) {
        if (dVar.getRequiredRotation() == 0) {
            rect2.set(rect);
            return;
        }
        if (dVar.getRequiredRotation() == 90) {
            int i2 = rect.top;
            int i3 = dVar.F;
            rect2.set(i2, i3 - rect.right, rect.bottom, i3 - rect.left);
        } else if (dVar.getRequiredRotation() != 180) {
            int i4 = dVar.E;
            rect2.set(i4 - rect.bottom, rect.left, i4 - rect.top, rect.right);
        } else {
            int i5 = dVar.E;
            int i6 = i5 - rect.right;
            int i7 = dVar.F;
            rect2.set(i6, i7 - rect.bottom, i5 - rect.left, i7 - rect.top);
        }
    }

    public static Bitmap.Config getPreferredBitmapConfig() {
        return f810v0;
    }

    private int getRequiredRotation() {
        int i2 = this.f823g;
        return i2 == -1 ? this.G : i2;
    }

    public static float j(int i2, long j2, float f2, float f3, long j3) {
        float f4;
        if (i2 == 1) {
            float f5 = j2 / j3;
            return ((f5 - 2.0f) * (-f3) * f5) + f2;
        }
        if (i2 != 2) {
            throw new IllegalStateException("Unexpected easing type: " + i2);
        }
        float f6 = j2 / (j3 / 2.0f);
        if (f6 < 1.0f) {
            f4 = (f3 / 2.0f) * f6 * f6;
        } else {
            float f7 = f6 - 1.0f;
            f4 = (((f7 - 2.0f) * f7) - 1.0f) * ((-f3) / 2.0f);
        }
        return f4 + f2;
    }

    private void setGestureDetector(Context context) {
        this.L = new GestureDetector(context, new a(context));
        this.M = new GestureDetector(context, new b());
    }

    public static void setPreferredBitmapConfig(Bitmap.Config config) {
        f810v0 = config;
    }

    public static void x(float[] fArr, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        fArr[0] = f2;
        fArr[1] = f3;
        fArr[2] = f4;
        fArr[3] = f5;
        fArr[4] = f6;
        fArr[5] = f7;
        fArr[6] = f8;
        fArr[7] = f9;
    }

    public final PointF A(float f2, float f3, float f4) {
        int width = (((getWidth() - getPaddingRight()) - getPaddingLeft()) / 2) + getPaddingLeft();
        int height = (((getHeight() - getPaddingBottom()) - getPaddingTop()) / 2) + getPaddingTop();
        if (this.f832k0 == null) {
            this.f832k0 = new i(0.0f, new PointF(0.0f, 0.0f));
        }
        i iVar = this.f832k0;
        iVar.f888a = f4;
        iVar.f889b.set(width - (f2 * f4), height - (f3 * f4));
        l(true, this.f832k0);
        return this.f832k0.f889b;
    }

    public final int f(float f2) {
        if (this.f829j > 0) {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            f2 *= this.f829j / ((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f);
        }
        int iV = (int) (v() * f2);
        int iU = (int) (u() * f2);
        if (iV == 0 || iU == 0) {
            return 32;
        }
        int i2 = 1;
        int iMin = (u() > iU || v() > iV) ? Math.min(Math.round(u() / iU), Math.round(v() / iV)) : 1;
        while (true) {
            int i3 = i2 * 2;
            if (i3 >= iMin) {
                return i2;
            }
            i2 = i3;
        }
    }

    public final boolean g() {
        int sHeight;
        int sWidth;
        boolean zO = o();
        if (!this.f820e0 && zO) {
            r();
            this.f820e0 = true;
            g gVar = this.f822f0;
            if (gVar != null) {
                ZImageViewer zImageViewer = (ZImageViewer) gVar;
                if (getOrientation() == 0 || getOrientation() == 270) {
                    sHeight = getSHeight();
                    sWidth = getSWidth();
                } else {
                    sWidth = getSHeight();
                    sHeight = getSWidth();
                }
                int measuredWidth = zImageViewer.f1464a.getMeasuredWidth();
                if (sWidth * 3 < measuredWidth) {
                    float f2 = measuredWidth;
                    float f3 = sWidth;
                    setMaxScale((2.0f * f2) / f3);
                    setDoubleTapZoomScale(f2 / f3);
                    setMinimumScaleType(3);
                    setMinScale(f2 / (sWidth * 4));
                    float minScale = getMinScale();
                    PointF center = getCenter();
                    this.f816c0 = null;
                    this.B = Float.valueOf(minScale);
                    this.C = center;
                    this.D = center;
                    invalidate();
                } else {
                    float measuredHeight = (zImageViewer.f1464a.getMeasuredHeight() * 2.0f) / (sWidth + sHeight);
                    setMaxScale(8.0f * measuredHeight);
                    if (sWidth < sHeight) {
                        measuredHeight *= 1.5f;
                    }
                    setDoubleTapZoomScale(measuredHeight);
                    setMinimumScaleType(1);
                }
                FrameLayout frameLayout = (FrameLayout) getTag();
                if (frameLayout != null) {
                    frameLayout.removeViewAt(1);
                }
            }
        }
        return zO;
    }

    public final int getAppliedOrientation() {
        return getRequiredRotation();
    }

    public final PointF getCenter() {
        float width = getWidth() / 2;
        float height = getHeight() / 2;
        PointF pointF = new PointF();
        PointF pointF2 = this.f851y;
        if (pointF2 == null) {
            return null;
        }
        float f2 = width - pointF2.x;
        float f3 = this.f849w;
        pointF.set(f2 / f3, (height - pointF2.y) / f3);
        return pointF;
    }

    public float getMaxScale() {
        return this.f825h;
    }

    public final float getMinScale() {
        return p();
    }

    public final int getOrientation() {
        return this.f823g;
    }

    public final int getSHeight() {
        return this.F;
    }

    public final int getSWidth() {
        return this.E;
    }

    public final float getScale() {
        return this.f849w;
    }

    public final g.b getState() {
        if (this.f851y == null || this.E <= 0 || this.F <= 0) {
            return null;
        }
        return new g.b(getScale(), getCenter(), getOrientation());
    }

    public final boolean h() {
        boolean z2 = getWidth() > 0 && getHeight() > 0 && this.E > 0 && this.F > 0 && (this.f811a != null || o());
        if (!this.f818d0 && z2) {
            r();
            this.f818d0 = true;
            g gVar = this.f822f0;
            if (gVar != null) {
                gVar.getClass();
            }
        }
        return z2;
    }

    public final void i(PointF pointF, PointF pointF2) {
        if (!this.f843q) {
            PointF pointF3 = this.D;
            if (pointF3 != null) {
                pointF.x = pointF3.x;
                pointF.y = pointF3.y;
            } else {
                pointF.x = v() / 2;
                pointF.y = u() / 2;
            }
        }
        float fMin = Math.min(this.f825h, this.f846t);
        float f2 = this.f849w;
        double d2 = f2;
        double d3 = fMin;
        Double.isNaN(d3);
        Double.isNaN(d3);
        boolean z2 = d2 <= d3 * 0.9d || f2 == this.f827i;
        if (!z2) {
            fMin = p();
        }
        int i2 = this.f847u;
        if (i2 == 3) {
            this.f816c0 = null;
            this.B = Float.valueOf(fMin);
            this.C = pointF;
            this.D = pointF;
            invalidate();
        } else if (i2 == 2 || !z2 || !this.f843q) {
            C0015d c0015d = new C0015d(fMin, pointF);
            c0015d.f873g = false;
            c0015d.f870d = this.f848v;
            c0015d.f872f = 4;
            c0015d.a();
        } else if (i2 == 1) {
            C0015d c0015d2 = new C0015d(fMin, pointF, pointF2);
            c0015d2.f873g = false;
            c0015d2.f870d = this.f848v;
            c0015d2.f872f = 4;
            c0015d2.a();
        }
        invalidate();
    }

    public final void k(boolean z2) {
        boolean z3;
        if (this.f851y == null) {
            this.f851y = new PointF(0.0f, 0.0f);
            z3 = true;
        } else {
            z3 = false;
        }
        if (this.f832k0 == null) {
            this.f832k0 = new i(0.0f, new PointF(0.0f, 0.0f));
        }
        i iVar = this.f832k0;
        iVar.f888a = this.f849w;
        iVar.f889b.set(this.f851y);
        l(z2, this.f832k0);
        i iVar2 = this.f832k0;
        this.f849w = iVar2.f888a;
        this.f851y.set(iVar2.f889b);
        if (!z3 || this.f833l == 4) {
            return;
        }
        this.f851y.set(A(v() / 2, u() / 2, this.f849w));
    }

    public final void l(boolean z2, i iVar) {
        float paddingLeft;
        float fMax;
        int iMax;
        float fMax2;
        if (this.f831k == 2 && this.f818d0) {
            z2 = false;
        }
        PointF pointF = iVar.f889b;
        float fMin = Math.min(this.f825h, Math.max(p(), iVar.f888a));
        float fV = v() * fMin;
        float fU = u() * fMin;
        if (this.f831k == 3 && this.f818d0) {
            pointF.x = Math.max(pointF.x, (getWidth() / 2) - fV);
            pointF.y = Math.max(pointF.y, (getHeight() / 2) - fU);
        } else if (z2) {
            pointF.x = Math.max(pointF.x, getWidth() - fV);
            pointF.y = Math.max(pointF.y, getHeight() - fU);
        } else {
            pointF.x = Math.max(pointF.x, -fV);
            pointF.y = Math.max(pointF.y, -fU);
        }
        float paddingTop = 0.5f;
        if (getPaddingLeft() > 0 || getPaddingRight() > 0) {
            paddingLeft = getPaddingLeft() / (getPaddingRight() + getPaddingLeft());
        } else {
            paddingLeft = 0.5f;
        }
        if (getPaddingTop() > 0 || getPaddingBottom() > 0) {
            paddingTop = getPaddingTop() / (getPaddingBottom() + getPaddingTop());
        }
        if (this.f831k != 3 || !this.f818d0) {
            if (z2) {
                fMax = Math.max(0.0f, (getWidth() - fV) * paddingLeft);
                fMax2 = Math.max(0.0f, (getHeight() - fU) * paddingTop);
            } else {
                fMax = Math.max(0, getWidth());
                iMax = Math.max(0, getHeight());
            }
            pointF.x = Math.min(pointF.x, fMax);
            pointF.y = Math.min(pointF.y, fMax2);
            iVar.f888a = fMin;
        }
        fMax = Math.max(0, getWidth() / 2);
        iMax = Math.max(0, getHeight() / 2);
        fMax2 = iMax;
        pointF.x = Math.min(pointF.x, fMax);
        pointF.y = Math.min(pointF.y, fMax2);
        iVar.f888a = fMin;
    }

    public final synchronized void m(Point point) {
        i iVar = new i(0.0f, new PointF(0.0f, 0.0f));
        this.f832k0 = iVar;
        l(true, iVar);
        int iF = f(this.f832k0.f888a);
        this.f819e = iF;
        if (iF > 1) {
            this.f819e = iF / 2;
        }
        if (this.f819e != 1 || v() >= point.x || u() >= point.y) {
            n(point);
            Iterator it = ((List) this.f821f.get(Integer.valueOf(this.f819e))).iterator();
            while (it.hasNext()) {
                new k(this, this.N, (j) it.next()).executeOnExecutor(this.f839o, new Void[0]);
            }
            s(true);
        } else {
            this.N.a();
            this.N = null;
            new e(this, getContext(), this.P, this.f817d).executeOnExecutor(this.f839o, new Void[0]);
        }
    }

    public final void n(Point point) {
        this.f821f = new LinkedHashMap();
        int i2 = this.f819e;
        int i3 = 1;
        int i4 = 1;
        int i5 = 1;
        while (true) {
            int iV = v() / i4;
            int iU = u() / i5;
            int i6 = iV / i2;
            int i7 = iU / i2;
            while (true) {
                if (i6 + i4 + i3 <= point.x) {
                    double d2 = i6;
                    double width = getWidth();
                    Double.isNaN(width);
                    Double.isNaN(width);
                    if (d2 <= width * 1.25d || i2 >= this.f819e) {
                        break;
                    }
                }
                i4++;
                iV = v() / i4;
                i6 = iV / i2;
            }
            while (true) {
                if (i7 + i5 + i3 <= point.y) {
                    double d3 = i7;
                    double height = getHeight();
                    Double.isNaN(height);
                    Double.isNaN(height);
                    if (d3 <= height * 1.25d || i2 >= this.f819e) {
                        break;
                    }
                }
                i5++;
                iU = u() / i5;
                i7 = iU / i2;
            }
            ArrayList arrayList = new ArrayList(i4 * i5);
            int i8 = 0;
            while (i8 < i4) {
                int i9 = 0;
                while (i9 < i5) {
                    j jVar = new j();
                    jVar.f891b = i2;
                    jVar.f894e = i2 == this.f819e;
                    jVar.f890a = new Rect(i8 * iV, i9 * iU, i8 == i4 + (-1) ? v() : (i8 + 1) * iV, i9 == i5 + (-1) ? u() : (i9 + 1) * iU);
                    jVar.f895f = new Rect(0, 0, 0, 0);
                    jVar.f896g = new Rect(jVar.f890a);
                    arrayList.add(jVar);
                    i9++;
                }
                i8++;
            }
            this.f821f.put(Integer.valueOf(i2), arrayList);
            i3 = 1;
            if (i2 == 1) {
                return;
            } else {
                i2 /= 2;
            }
        }
    }

    public final boolean o() {
        boolean z2 = true;
        if (this.f811a != null && !this.f813b) {
            return true;
        }
        LinkedHashMap linkedHashMap = this.f821f;
        if (linkedHashMap == null) {
            return false;
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            if (((Integer) entry.getKey()).intValue() == this.f819e) {
                for (j jVar : (List) entry.getValue()) {
                    if (jVar.f893d || jVar.f892c == null) {
                        z2 = false;
                    }
                }
            }
        }
        return z2;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0108  */
    @Override
    public final void onDraw(Canvas canvas) {
        float height;
        boolean z2;
        super.onDraw(canvas);
        if (this.f828i0 == null) {
            Paint paint = new Paint();
            this.f828i0 = paint;
            paint.setAntiAlias(true);
            this.f828i0.setFilterBitmap(true);
            this.f828i0.setDither(true);
        }
        if (this.E == 0 || this.F == 0 || getWidth() == 0 || getHeight() == 0) {
            return;
        }
        if (this.f821f == null && this.N != null) {
            m(new Point(Math.min(canvas.getMaximumBitmapWidth(), this.f835m), Math.min(canvas.getMaximumBitmapHeight(), this.f837n)));
        }
        if (h()) {
            r();
            c cVar = this.f816c0;
            boolean z3 = false;
            if (cVar != null && cVar.f860e != null) {
                if (this.A == null) {
                    this.A = new PointF(0.0f, 0.0f);
                }
                this.A.set(this.f851y);
                long jCurrentTimeMillis = System.currentTimeMillis();
                c cVar2 = this.f816c0;
                long j2 = jCurrentTimeMillis - cVar2.f866k;
                long j3 = cVar2.f862g;
                boolean z4 = j2 > j3;
                long jMin = Math.min(j2, j3);
                c cVar3 = this.f816c0;
                int i2 = cVar3.f864i;
                float f2 = cVar3.f856a;
                this.f849w = j(i2, jMin, f2, cVar3.f857b - f2, cVar3.f862g);
                c cVar4 = this.f816c0;
                int i3 = cVar4.f864i;
                float f3 = cVar4.f860e.x;
                float fJ = j(i3, jMin, f3, cVar4.f861f.x - f3, cVar4.f862g);
                c cVar5 = this.f816c0;
                int i4 = cVar5.f864i;
                float f4 = cVar5.f860e.y;
                float fJ2 = j(i4, jMin, f4, cVar5.f861f.y - f4, cVar5.f862g);
                this.f851y.x -= y(this.f816c0.f859d.x) - fJ;
                this.f851y.y -= z(this.f816c0.f859d.y) - fJ2;
                if (z4) {
                    z2 = true;
                } else {
                    c cVar6 = this.f816c0;
                    if (cVar6.f856a == cVar6.f857b) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                }
                k(z2);
                int i5 = this.f816c0.f865j;
                s(z4);
                if (z4) {
                    this.f816c0.getClass();
                    this.f816c0 = null;
                }
                invalidate();
            }
            if (this.f821f == null || !o()) {
                Bitmap bitmap = this.f811a;
                if (bitmap == null || bitmap.isRecycled()) {
                    return;
                }
                float width = this.f849w;
                if (this.f813b) {
                    width *= this.E / this.f811a.getWidth();
                    height = this.f849w * (this.F / this.f811a.getHeight());
                } else {
                    height = width;
                }
                if (this.f834l0 == null) {
                    this.f834l0 = new Matrix();
                }
                this.f834l0.reset();
                this.f834l0.postScale(width, height);
                this.f834l0.postRotate(getRequiredRotation());
                Matrix matrix = this.f834l0;
                PointF pointF = this.f851y;
                matrix.postTranslate(pointF.x, pointF.y);
                if (getRequiredRotation() == 180) {
                    Matrix matrix2 = this.f834l0;
                    float f5 = this.f849w;
                    matrix2.postTranslate(this.E * f5, f5 * this.F);
                } else if (getRequiredRotation() == 90) {
                    this.f834l0.postTranslate(this.f849w * this.F, 0.0f);
                } else if (getRequiredRotation() == 270) {
                    this.f834l0.postTranslate(0.0f, this.f849w * this.E);
                }
                if (this.f830j0 != null) {
                    if (this.f836m0 == null) {
                        this.f836m0 = new RectF();
                    }
                    this.f836m0.set(0.0f, 0.0f, this.f813b ? this.f811a.getWidth() : this.E, this.f813b ? this.f811a.getHeight() : this.F);
                    this.f834l0.mapRect(this.f836m0);
                    canvas.drawRect(this.f836m0, this.f830j0);
                }
                canvas.drawBitmap(this.f811a, this.f834l0, this.f828i0);
                return;
            }
            int iMin = Math.min(this.f819e, f(this.f849w));
            for (Map.Entry entry : this.f821f.entrySet()) {
                if (((Integer) entry.getKey()).intValue() == iMin) {
                    for (j jVar : (List) entry.getValue()) {
                        if (jVar.f894e && (jVar.f893d || jVar.f892c == null)) {
                            z3 = true;
                        }
                    }
                }
            }
            for (Map.Entry entry2 : this.f821f.entrySet()) {
                if (((Integer) entry2.getKey()).intValue() == iMin || z3) {
                    for (j jVar2 : (List) entry2.getValue()) {
                        Rect rect = jVar2.f890a;
                        jVar2.f895f.set((int) y(rect.left), (int) z(rect.top), (int) y(rect.right), (int) z(rect.bottom));
                        if (!jVar2.f893d && jVar2.f892c != null) {
                            Paint paint2 = this.f830j0;
                            if (paint2 != null) {
                                canvas.drawRect(jVar2.f895f, paint2);
                            }
                            if (this.f834l0 == null) {
                                this.f834l0 = new Matrix();
                            }
                            this.f834l0.reset();
                            x(this.f838n0, 0.0f, 0.0f, jVar2.f892c.getWidth(), 0.0f, jVar2.f892c.getWidth(), jVar2.f892c.getHeight(), 0.0f, jVar2.f892c.getHeight());
                            if (getRequiredRotation() == 0) {
                                float[] fArr = this.f840o0;
                                Rect rect2 = jVar2.f895f;
                                float f6 = rect2.left;
                                float f7 = rect2.top;
                                float f8 = rect2.right;
                                float f9 = rect2.bottom;
                                x(fArr, f6, f7, f8, f7, f8, f9, f6, f9);
                            } else if (getRequiredRotation() == 90) {
                                float[] fArr2 = this.f840o0;
                                Rect rect3 = jVar2.f895f;
                                float f10 = rect3.right;
                                float f11 = rect3.top;
                                float f12 = rect3.bottom;
                                float f13 = rect3.left;
                                x(fArr2, f10, f11, f10, f12, f13, f12, f13, f11);
                            } else if (getRequiredRotation() == 180) {
                                float[] fArr3 = this.f840o0;
                                Rect rect4 = jVar2.f895f;
                                float f14 = rect4.right;
                                float f15 = rect4.bottom;
                                float f16 = rect4.left;
                                float f17 = rect4.top;
                                x(fArr3, f14, f15, f16, f15, f16, f17, f14, f17);
                            } else if (getRequiredRotation() == 270) {
                                float[] fArr4 = this.f840o0;
                                Rect rect5 = jVar2.f895f;
                                float f18 = rect5.left;
                                float f19 = rect5.bottom;
                                float f20 = rect5.top;
                                float f21 = rect5.right;
                                x(fArr4, f18, f19, f18, f20, f21, f20, f21, f19);
                            }
                            this.f834l0.setPolyToPoly(this.f838n0, 0, this.f840o0, 0, 4);
                            canvas.drawBitmap(jVar2.f892c, this.f834l0, this.f828i0);
                        }
                    }
                }
            }
        }
    }

    @Override
    public final void onMeasure(int i2, int i3) {
        int mode = View.MeasureSpec.getMode(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size = View.MeasureSpec.getSize(i2);
        int size2 = View.MeasureSpec.getSize(i3);
        boolean z2 = mode != 1073741824;
        boolean z3 = mode2 != 1073741824;
        if (this.E > 0 && this.F > 0) {
            if (z2 && z3) {
                size = v();
                size2 = u();
            } else if (z3) {
                double dU = u();
                double dV = v();
                Double.isNaN(dU);
                Double.isNaN(dV);
                double d2 = dU / dV;
                double d3 = size;
                Double.isNaN(d3);
                size2 = (int) (d2 * d3);
            } else if (z2) {
                double dV2 = v();
                double dU2 = u();
                Double.isNaN(dV2);
                Double.isNaN(dU2);
                double d4 = dV2 / dU2;
                double d5 = size2;
                Double.isNaN(d5);
                size = (int) (d4 * d5);
            }
        }
        setMeasuredDimension(Math.max(size, getSuggestedMinimumWidth()), Math.max(size2, getSuggestedMinimumHeight()));
    }

    @Override
    public final void onSizeChanged(int i2, int i3, int i4, int i5) {
        PointF center = getCenter();
        if (!this.f818d0 || center == null) {
            return;
        }
        this.f816c0 = null;
        this.B = Float.valueOf(this.f849w);
        this.C = center;
    }

    /* JADX WARN: Code duplicated, block: B:180:0x04a5  */
    /* JADX WARN: Code duplicated, block: B:182:0x04ab  */
    /* JADX WARN: Code duplicated, block: B:201:0x0500 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:202:0x0502  */
    /* JADX WARN: Code duplicated, block: B:205:0x0512  */
    /* JADX WARN: Code duplicated, block: B:208:0x051f  */
    /* JADX WARN: Code duplicated, block: B:210:0x0523  */
    /* JADX WARN: Code duplicated, block: B:211:0x056b  */
    /* JADX WARN: Code duplicated, block: B:213:0x0571  */
    /* JADX WARN: Code duplicated, block: B:215:0x0575  */
    /* JADX WARN: Code duplicated, block: B:71:0x01aa  */
    @Override
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        ViewParent parent;
        boolean z2;
        boolean z3;
        boolean z4;
        GestureDetector gestureDetector;
        c cVar = this.f816c0;
        if (cVar != null && !cVar.f863h) {
            ViewParent parent2 = getParent();
            if (parent2 != null) {
                parent2.requestDisallowInterceptTouchEvent(true);
            }
            return true;
        }
        PointF pointF = null;
        this.f816c0 = null;
        if (this.f851y == null) {
            GestureDetector gestureDetector2 = this.M;
            if (gestureDetector2 != null) {
                gestureDetector2.onTouchEvent(motionEvent);
            }
            return true;
        }
        if (!this.J && ((gestureDetector = this.L) == null || gestureDetector.onTouchEvent(motionEvent))) {
            this.H = false;
            this.I = false;
            this.K = 0;
            return true;
        }
        float f2 = 0.0f;
        if (this.f852z == null) {
            this.f852z = new PointF(0.0f, 0.0f);
        }
        if (this.A == null) {
            this.A = new PointF(0.0f, 0.0f);
        }
        if (this.R == null) {
            this.R = new PointF(0.0f, 0.0f);
        }
        this.A.set(this.f851y);
        int pointerCount = motionEvent.getPointerCount();
        int action = motionEvent.getAction();
        Handler handler = this.f826h0;
        if (action == 0) {
            this.f816c0 = null;
            parent = getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
            this.K = Math.max(this.K, pointerCount);
            if (pointerCount >= 2) {
                if (this.f844r) {
                    float x2 = motionEvent.getX(0) - motionEvent.getX(1);
                    float y2 = motionEvent.getY(0) - motionEvent.getY(1);
                    float fSqrt = (float) Math.sqrt((y2 * y2) + (x2 * x2));
                    this.f850x = this.f849w;
                    this.S = fSqrt;
                    PointF pointF2 = this.f852z;
                    PointF pointF3 = this.f851y;
                    pointF2.set(pointF3.x, pointF3.y);
                    this.R.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
                } else {
                    this.K = 0;
                }
                handler.removeMessages(1);
            } else if (!this.J) {
                PointF pointF4 = this.f852z;
                PointF pointF5 = this.f851y;
                pointF4.set(pointF5.x, pointF5.y);
                this.R.set(motionEvent.getX(), motionEvent.getY());
                handler.sendEmptyMessageDelayed(1, 600L);
            }
            z2 = true;
        } else if (action == 1) {
            handler.removeMessages(1);
            if (this.J) {
                this.J = false;
                if (!this.V) {
                    i(this.f812a0, this.R);
                }
            }
            if (this.K <= 0 && ((z3 = this.H) || this.I)) {
                if (z3 && pointerCount == 2) {
                    this.I = true;
                    PointF pointF6 = this.f852z;
                    PointF pointF7 = this.f851y;
                    pointF6.set(pointF7.x, pointF7.y);
                    if (motionEvent.getActionIndex() == 1) {
                        this.R.set(motionEvent.getX(0), motionEvent.getY(0));
                    } else {
                        this.R.set(motionEvent.getX(1), motionEvent.getY(1));
                    }
                }
                if (pointerCount < 3) {
                    this.H = false;
                }
                if (pointerCount < 2) {
                    this.I = false;
                    this.K = 0;
                }
                s(true);
            } else if (pointerCount == 1) {
                this.H = false;
                this.I = false;
                this.K = 0;
            }
            z2 = true;
        } else {
            if (action != 2) {
                if (action != 5) {
                    if (action != 6) {
                        if (action != 261) {
                            if (action != 262) {
                            }
                        }
                        z2 = true;
                    }
                    handler.removeMessages(1);
                    if (this.J) {
                        this.J = false;
                        if (!this.V) {
                            i(this.f812a0, this.R);
                        }
                    }
                    if (this.K <= 0) {
                        if (pointerCount == 1) {
                            this.H = false;
                            this.I = false;
                            this.K = 0;
                        }
                    } else if (pointerCount == 1) {
                        this.H = false;
                        this.I = false;
                        this.K = 0;
                    }
                    z2 = true;
                }
                this.f816c0 = null;
                parent = getParent();
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
                this.K = Math.max(this.K, pointerCount);
                if (pointerCount >= 2) {
                    if (this.f844r) {
                        float x3 = motionEvent.getX(0) - motionEvent.getX(1);
                        float y3 = motionEvent.getY(0) - motionEvent.getY(1);
                        float fSqrt2 = (float) Math.sqrt((y3 * y3) + (x3 * x3));
                        this.f850x = this.f849w;
                        this.S = fSqrt2;
                        PointF pointF8 = this.f852z;
                        PointF pointF9 = this.f851y;
                        pointF8.set(pointF9.x, pointF9.y);
                        this.R.set((motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f, (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f);
                    } else {
                        this.K = 0;
                    }
                    handler.removeMessages(1);
                } else if (!this.J) {
                    PointF pointF10 = this.f852z;
                    PointF pointF11 = this.f851y;
                    pointF10.set(pointF11.x, pointF11.y);
                    this.R.set(motionEvent.getX(), motionEvent.getY());
                    handler.sendEmptyMessageDelayed(1, 600L);
                }
                z2 = true;
            } else {
                if (this.K <= 0) {
                    z4 = false;
                } else if (pointerCount >= 2) {
                    float x4 = motionEvent.getX(0) - motionEvent.getX(1);
                    float y4 = motionEvent.getY(0) - motionEvent.getY(1);
                    float fSqrt3 = (float) Math.sqrt((y4 * y4) + (x4 * x4));
                    float x5 = (motionEvent.getX(1) + motionEvent.getX(0)) / 2.0f;
                    float y5 = (motionEvent.getY(1) + motionEvent.getY(0)) / 2.0f;
                    if (this.f844r) {
                        PointF pointF12 = this.R;
                        float f3 = pointF12.x - x5;
                        float f4 = pointF12.y - y5;
                        if (((float) Math.sqrt((f4 * f4) + (f3 * f3))) > 5.0f || Math.abs(fSqrt3 - this.S) > 5.0f || this.I) {
                            this.H = true;
                            this.I = true;
                            double d2 = this.f849w;
                            float fMin = Math.min(this.f825h, (fSqrt3 / this.S) * this.f850x);
                            this.f849w = fMin;
                            if (fMin <= p()) {
                                this.S = fSqrt3;
                                this.f850x = p();
                                this.R.set(x5, y5);
                                this.f852z.set(this.f851y);
                            } else if (this.f843q) {
                                PointF pointF13 = this.R;
                                float f5 = pointF13.x;
                                PointF pointF14 = this.f852z;
                                float f6 = f5 - pointF14.x;
                                float f7 = pointF13.y - pointF14.y;
                                float f8 = this.f849w / this.f850x;
                                float f9 = f6 * f8;
                                float f10 = f8 * f7;
                                PointF pointF15 = this.f851y;
                                pointF15.x = x5 - f9;
                                pointF15.y = y5 - f10;
                                double dU = u();
                                Double.isNaN(d2);
                                Double.isNaN(dU);
                                Double.isNaN(dU);
                                Double.isNaN(d2);
                                Double.isNaN(dU);
                                Double.isNaN(d2);
                                if (dU * d2 >= getHeight() || this.f849w * u() < getHeight()) {
                                    double dV = v();
                                    Double.isNaN(d2);
                                    Double.isNaN(dV);
                                    Double.isNaN(d2);
                                    Double.isNaN(dV);
                                    Double.isNaN(d2);
                                    Double.isNaN(dV);
                                    if (d2 * dV < getWidth() && this.f849w * v() >= getWidth()) {
                                        k(true);
                                        this.R.set(x5, y5);
                                        this.f852z.set(this.f851y);
                                        this.f850x = this.f849w;
                                        this.S = fSqrt3;
                                    }
                                } else {
                                    k(true);
                                    this.R.set(x5, y5);
                                    this.f852z.set(this.f851y);
                                    this.f850x = this.f849w;
                                    this.S = fSqrt3;
                                }
                            } else if (this.D != null) {
                                this.f851y.x = (getWidth() / 2) - (this.f849w * this.D.x);
                                this.f851y.y = (getHeight() / 2) - (this.f849w * this.D.y);
                            } else {
                                this.f851y.x = (getWidth() / 2) - (this.f849w * (v() / 2));
                                this.f851y.y = (getHeight() / 2) - (this.f849w * (u() / 2));
                            }
                            k(true);
                            s(this.f841p);
                            z4 = true;
                        }
                    }
                    z4 = false;
                } else {
                    if (this.J) {
                        float fAbs = (Math.abs(this.f814b0.y - motionEvent.getY()) * 2.0f) + this.T;
                        if (this.U == -1.0f) {
                            this.U = fAbs;
                        }
                        float y6 = motionEvent.getY();
                        PointF pointF16 = this.W;
                        boolean z5 = y6 > pointF16.y;
                        pointF16.set(0.0f, motionEvent.getY());
                        float f11 = 1.0f;
                        float fAbs2 = Math.abs(1.0f - (fAbs / this.U)) * 0.5f;
                        if (fAbs2 > 0.03f || this.V) {
                            this.V = true;
                            if (this.U > 0.0f) {
                                f11 = z5 ? 1.0f + fAbs2 : 1.0f - fAbs2;
                            }
                            double d3 = this.f849w;
                            float fMax = Math.max(p(), Math.min(this.f825h, this.f849w * f11));
                            this.f849w = fMax;
                            if (this.f843q) {
                                PointF pointF17 = this.R;
                                float f12 = pointF17.x;
                                PointF pointF18 = this.f852z;
                                float f13 = f12 - pointF18.x;
                                float f14 = pointF17.y;
                                float f15 = f14 - pointF18.y;
                                float f16 = fMax / this.f850x;
                                float f17 = f13 * f16;
                                float f18 = f16 * f15;
                                PointF pointF19 = this.f851y;
                                pointF19.x = f12 - f17;
                                pointF19.y = f14 - f18;
                                double dU2 = u();
                                Double.isNaN(d3);
                                Double.isNaN(dU2);
                                Double.isNaN(dU2);
                                Double.isNaN(d3);
                                Double.isNaN(dU2);
                                Double.isNaN(d3);
                                if (dU2 * d3 >= getHeight() || this.f849w * u() < getHeight()) {
                                    double dV2 = v();
                                    Double.isNaN(d3);
                                    Double.isNaN(dV2);
                                    Double.isNaN(d3);
                                    Double.isNaN(dV2);
                                    Double.isNaN(d3);
                                    Double.isNaN(dV2);
                                    if (d3 * dV2 >= getWidth() || this.f849w * v() < getWidth()) {
                                    }
                                }
                                k(true);
                                PointF pointF20 = this.R;
                                PointF pointF21 = this.f812a0;
                                float f19 = pointF21.x;
                                float f20 = pointF21.y;
                                PointF pointF22 = new PointF();
                                if (this.f851y != null) {
                                    pointF22.set(y(f19), z(f20));
                                    pointF = pointF22;
                                }
                                pointF20.set(pointF);
                                this.f852z.set(this.f851y);
                                this.f850x = this.f849w;
                            } else if (this.D != null) {
                                this.f851y.x = (getWidth() / 2) - (this.f849w * this.D.x);
                                this.f851y.y = (getHeight() / 2) - (this.f849w * this.D.y);
                            } else {
                                this.f851y.x = (getWidth() / 2) - (this.f849w * (v() / 2));
                                this.f851y.y = (getHeight() / 2) - (this.f849w * (u() / 2));
                            }
                            f2 = fAbs;
                        } else {
                            f2 = fAbs;
                        }
                        this.U = f2;
                        k(true);
                        s(this.f841p);
                    } else {
                        if (!this.H) {
                            float fAbs3 = Math.abs(motionEvent.getX() - this.R.x);
                            float fAbs4 = Math.abs(motionEvent.getY() - this.R.y);
                            float f21 = this.f842p0 * 5.0f;
                            if (fAbs3 > f21 || fAbs4 > f21 || this.I) {
                                this.f851y.x = (motionEvent.getX() - this.R.x) + this.f852z.x;
                                this.f851y.y = (motionEvent.getY() - this.R.y) + this.f852z.y;
                                PointF pointF23 = this.f851y;
                                float f22 = pointF23.x;
                                float f23 = pointF23.y;
                                k(true);
                                PointF pointF24 = this.f851y;
                                boolean z6 = f22 != pointF24.x;
                                float f24 = pointF24.y;
                                boolean z7 = f23 != f24;
                                boolean z8 = z6 && fAbs3 > fAbs4 && !this.I;
                                boolean z9 = z7 && fAbs4 > fAbs3 && !this.I;
                                boolean z10 = f23 == f24 && fAbs4 > 3.0f * f21;
                                if (!z8 && !z9 && (!z6 || !z7 || z10 || this.I)) {
                                    this.I = true;
                                } else if (fAbs3 > f21 || fAbs4 > f21) {
                                    this.K = 0;
                                    handler.removeMessages(1);
                                    ViewParent parent3 = getParent();
                                    if (parent3 != null) {
                                        parent3.requestDisallowInterceptTouchEvent(false);
                                    }
                                }
                                if (!this.f843q) {
                                    PointF pointF25 = this.f851y;
                                    PointF pointF26 = this.f852z;
                                    pointF25.x = pointF26.x;
                                    pointF25.y = pointF26.y;
                                    ViewParent parent4 = getParent();
                                    if (parent4 != null) {
                                        parent4.requestDisallowInterceptTouchEvent(false);
                                    }
                                }
                                s(this.f841p);
                            }
                        }
                        z4 = false;
                    }
                    z4 = true;
                }
                if (z4) {
                    handler.removeMessages(1);
                    invalidate();
                    z2 = true;
                }
            }
            z2 = false;
        }
        return z2 || super.onTouchEvent(motionEvent);
    }

    public final float p() {
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int i2 = this.f833l;
        if (i2 == 2 || i2 == 4) {
            return Math.max((getWidth() - paddingRight) / v(), (getHeight() - paddingTop) / u());
        }
        if (i2 == 3) {
            float f2 = this.f827i;
            if (f2 > 0.0f) {
                return f2;
            }
        }
        return Math.min((getWidth() - paddingRight) / v(), (getHeight() - paddingTop) / u());
    }

    public final synchronized void q(Bitmap bitmap, int i2) {
        int i3 = this.E;
        if (i3 > 0 && this.F > 0 && (i3 != bitmap.getWidth() || this.F != bitmap.getHeight())) {
            t(false);
        }
        Bitmap bitmap2 = this.f811a;
        if (bitmap2 != null && !this.f815c) {
            bitmap2.recycle();
        }
        if (this.f811a != null && this.f815c) {
            g gVar = this.f822f0;
        }
        this.f813b = false;
        this.f815c = false;
        this.f811a = bitmap;
        this.E = bitmap.getWidth();
        this.F = bitmap.getHeight();
        this.G = i2;
        boolean zH = h();
        boolean zG = g();
        if (zH || zG) {
            invalidate();
            requestLayout();
        }
    }

    public final void r() {
        Float f2;
        if (getWidth() == 0 || getHeight() == 0 || this.E <= 0 || this.F <= 0) {
            return;
        }
        if (this.C != null && (f2 = this.B) != null) {
            this.f849w = f2.floatValue();
            if (this.f851y == null) {
                this.f851y = new PointF();
            }
            this.f851y.x = (getWidth() / 2) - (this.f849w * this.C.x);
            this.f851y.y = (getHeight() / 2) - (this.f849w * this.C.y);
            this.C = null;
            this.B = null;
            k(true);
            s(true);
        }
        k(false);
    }

    public final void s(boolean z2) {
        if (this.N == null || this.f821f == null) {
            return;
        }
        int iMin = Math.min(this.f819e, f(this.f849w));
        Iterator it = this.f821f.entrySet().iterator();
        while (it.hasNext()) {
            for (j jVar : (List) ((Map.Entry) it.next()).getValue()) {
                int i2 = jVar.f891b;
                if (i2 < iMin || (i2 > iMin && i2 != this.f819e)) {
                    jVar.f894e = false;
                    Bitmap bitmap = jVar.f892c;
                    if (bitmap != null) {
                        bitmap.recycle();
                        jVar.f892c = null;
                    }
                }
                int i3 = jVar.f891b;
                if (i3 == iMin) {
                    PointF pointF = this.f851y;
                    float f2 = pointF == null ? Float.NaN : (0.0f - pointF.x) / this.f849w;
                    float width = getWidth();
                    PointF pointF2 = this.f851y;
                    float f3 = pointF2 == null ? Float.NaN : (width - pointF2.x) / this.f849w;
                    float f4 = pointF2 == null ? Float.NaN : (0.0f - pointF2.y) / this.f849w;
                    float height = getHeight();
                    PointF pointF3 = this.f851y;
                    float f5 = pointF3 != null ? (height - pointF3.y) / this.f849w : Float.NaN;
                    Rect rect = jVar.f890a;
                    if (f2 <= ((float) rect.right) && ((float) rect.left) <= f3 && f4 <= ((float) rect.bottom) && ((float) rect.top) <= f5) {
                        jVar.f894e = true;
                        if (!jVar.f893d && jVar.f892c == null && z2) {
                            new k(this, this.N, jVar).executeOnExecutor(this.f839o, new Void[0]);
                        }
                    } else if (jVar.f891b != this.f819e) {
                        jVar.f894e = false;
                        Bitmap bitmap2 = jVar.f892c;
                        if (bitmap2 != null) {
                            bitmap2.recycle();
                            jVar.f892c = null;
                        }
                    }
                } else if (i3 == this.f819e) {
                    jVar.f894e = true;
                }
            }
        }
    }

    public final void setBitmapDecoderClass(Class<? extends h.c> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.P = new h.a(cls);
    }

    public final void setBitmapDecoderFactory(h.b<? extends h.c> bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.P = bVar;
    }

    public final void setDoubleTapZoomDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setDoubleTapZoomScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setDoubleTapZoomDuration(int i2) {
        this.f848v = Math.max(0, i2);
    }

    public final void setDoubleTapZoomScale(float f2) {
        this.f846t = f2;
    }

    public final void setDoubleTapZoomStyle(int i2) {
        if (f806r0.contains(Integer.valueOf(i2))) {
            this.f847u = i2;
        } else {
            throw new IllegalArgumentException("Invalid zoom style: " + i2);
        }
    }

    public void setEagerLoadingEnabled(boolean z2) {
        this.f841p = z2;
    }

    public void setExecutor(Executor executor) {
        if (executor == null) {
            throw new NullPointerException("Executor must not be null");
        }
        this.f839o = executor;
    }

    public final void setMaxScale(float f2) {
        this.f825h = f2;
    }

    public void setMaxTileSize(int i2) {
        this.f835m = i2;
        this.f837n = i2;
    }

    public final void setMaximumDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMinScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setMinScale(float f2) {
        this.f827i = f2;
    }

    public final void setMinimumDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        setMaxScale(((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f) / i2);
    }

    public final void setMinimumScaleType(int i2) {
        if (!f809u0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid scale type: " + i2);
        }
        this.f833l = i2;
        if (this.f818d0) {
            k(true);
            invalidate();
        }
    }

    public void setMinimumTileDpi(int i2) {
        DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
        this.f829j = (int) Math.min((displayMetrics.xdpi + displayMetrics.ydpi) / 2.0f, i2);
        if (this.f818d0) {
            t(false);
            invalidate();
        }
    }

    public void setOnImageEventListener(g gVar) {
        this.f822f0 = gVar;
    }

    @Override
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
        this.f824g0 = onLongClickListener;
    }

    public void setOnStateChangedListener(h hVar) {
    }

    public final void setOrientation(int i2) {
        if (!f805q0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid orientation: " + i2);
        }
        this.f823g = i2;
        t(false);
        invalidate();
        requestLayout();
    }

    public final void setPanEnabled(boolean z2) {
        PointF pointF;
        this.f843q = z2;
        if (z2 || (pointF = this.f851y) == null) {
            return;
        }
        pointF.x = (getWidth() / 2) - (this.f849w * (v() / 2));
        this.f851y.y = (getHeight() / 2) - (this.f849w * (u() / 2));
        if (this.f818d0) {
            s(true);
            invalidate();
        }
    }

    public final void setPanLimit(int i2) {
        if (!f808t0.contains(Integer.valueOf(i2))) {
            throw new IllegalArgumentException("Invalid pan limit: " + i2);
        }
        this.f831k = i2;
        if (this.f818d0) {
            k(true);
            invalidate();
        }
    }

    public final void setQuickScaleEnabled(boolean z2) {
        this.f845s = z2;
    }

    public final void setRegionDecoderClass(Class<? extends h.d> cls) {
        if (cls == null) {
            throw new IllegalArgumentException("Decoder class cannot be set to null");
        }
        this.Q = new h.a(cls);
    }

    public final void setRegionDecoderFactory(h.b<? extends h.d> bVar) {
        if (bVar == null) {
            throw new IllegalArgumentException("Decoder factory cannot be set to null");
        }
        this.Q = bVar;
    }

    public final void setTileBackgroundColor(int i2) {
        if (Color.alpha(i2) == 0) {
            this.f830j0 = null;
        } else {
            Paint paint = new Paint();
            this.f830j0 = paint;
            paint.setStyle(Paint.Style.FILL);
            this.f830j0.setColor(i2);
        }
        invalidate();
    }

    public final void setZoomEnabled(boolean z2) {
        this.f844r = z2;
    }

    public final void t(boolean z2) {
        this.f849w = 0.0f;
        this.f850x = 0.0f;
        this.f851y = null;
        this.f852z = null;
        this.A = null;
        this.B = Float.valueOf(0.0f);
        this.C = null;
        this.D = null;
        this.H = false;
        this.I = false;
        this.J = false;
        this.K = 0;
        this.f819e = 0;
        this.R = null;
        this.S = 0.0f;
        this.U = 0.0f;
        this.V = false;
        this.f812a0 = null;
        this.W = null;
        this.f814b0 = null;
        this.f816c0 = null;
        this.f832k0 = null;
        this.f834l0 = null;
        this.f836m0 = null;
        if (z2) {
            g.a aVar = this.f817d;
            if (aVar != null) {
                n0.e.c(aVar.f800c);
                this.f817d = null;
            }
            ReentrantReadWriteLock reentrantReadWriteLock = this.O;
            reentrantReadWriteLock.writeLock().lock();
            try {
                h.d dVar = this.N;
                if (dVar != null) {
                    dVar.a();
                    this.N = null;
                }
                reentrantReadWriteLock.writeLock().unlock();
                Bitmap bitmap = this.f811a;
                if (bitmap != null && !this.f815c) {
                    bitmap.recycle();
                }
                if (this.f811a != null) {
                    boolean z3 = this.f815c;
                }
                this.E = 0;
                this.F = 0;
                this.G = 0;
                this.f818d0 = false;
                this.f820e0 = false;
                this.f811a = null;
                this.f813b = false;
                this.f815c = false;
            } catch (Throwable th) {
                reentrantReadWriteLock.writeLock().unlock();
                throw th;
            }
        }
        LinkedHashMap linkedHashMap = this.f821f;
        if (linkedHashMap != null) {
            Iterator it = linkedHashMap.entrySet().iterator();
            while (it.hasNext()) {
                for (j jVar : (List) ((Map.Entry) it.next()).getValue()) {
                    jVar.f894e = false;
                    Bitmap bitmap2 = jVar.f892c;
                    if (bitmap2 != null) {
                        bitmap2.recycle();
                        jVar.f892c = null;
                    }
                }
            }
            this.f821f = null;
        }
        setGestureDetector(getContext());
    }

    public final int u() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.E : this.F;
    }

    public final int v() {
        int requiredRotation = getRequiredRotation();
        return (requiredRotation == 90 || requiredRotation == 270) ? this.F : this.E;
    }

    public final void w(g.a aVar, boolean z2) {
        if (z2) {
            setEnabled(false);
        } else {
            t(true);
        }
        this.f817d = aVar;
        if (aVar.f803f) {
            (z2 ? new f(this, getContext(), this.Q, aVar) : new l(this, getContext(), this.Q, aVar)).executeOnExecutor(this.f839o, new Void[0]);
        } else {
            new e(this, getContext(), this.P, aVar).executeOnExecutor(this.f839o, new Void[0]);
        }
    }

    public final float y(float f2) {
        PointF pointF = this.f851y;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f2 * this.f849w) + pointF.x;
    }

    public final float z(float f2) {
        PointF pointF = this.f851y;
        if (pointF == null) {
            return Float.NaN;
        }
        return (f2 * this.f849w) + pointF.y;
    }

    public final class C0015d {

        public final float f867a;

        public final PointF f868b;

        public final PointF f869c;

        public long f870d;

        public int f871e;

        public int f872f;

        public boolean f873g;

        public boolean f874h;

        public C0015d(PointF pointF) {
            this.f870d = 500L;
            this.f871e = 2;
            this.f872f = 1;
            this.f873g = true;
            this.f874h = true;
            this.f867a = d.this.f849w;
            this.f868b = pointF;
            this.f869c = null;
        }

        public final void a() {
            d dVar = d.this;
            c cVar = dVar.f816c0;
            int width = (((dVar.getWidth() - dVar.getPaddingRight()) - dVar.getPaddingLeft()) / 2) + dVar.getPaddingLeft();
            int height = (((dVar.getHeight() - dVar.getPaddingBottom()) - dVar.getPaddingTop()) / 2) + dVar.getPaddingTop();
            float fMin = Math.min(dVar.f825h, Math.max(dVar.p(), this.f867a));
            boolean z2 = this.f874h;
            PointF pointF = this.f868b;
            if (z2) {
                float f2 = pointF.x;
                float f3 = pointF.y;
                PointF pointF2 = new PointF();
                PointF pointFA = dVar.A(f2, f3, fMin);
                pointF2.set((((((dVar.getWidth() - dVar.getPaddingRight()) - dVar.getPaddingLeft()) / 2) + dVar.getPaddingLeft()) - pointFA.x) / fMin, (((((dVar.getHeight() - dVar.getPaddingBottom()) - dVar.getPaddingTop()) / 2) + dVar.getPaddingTop()) - pointFA.y) / fMin);
                pointF = pointF2;
            }
            c cVar2 = new c();
            dVar.f816c0 = cVar2;
            cVar2.f856a = dVar.f849w;
            cVar2.f857b = fMin;
            cVar2.f866k = System.currentTimeMillis();
            dVar.f816c0.getClass();
            dVar.f816c0.f858c = dVar.getCenter();
            c cVar3 = dVar.f816c0;
            cVar3.f859d = pointF;
            float f4 = pointF.x;
            float f5 = pointF.y;
            PointF pointF3 = new PointF();
            if (dVar.f851y == null) {
                pointF3 = null;
            } else {
                pointF3.set(dVar.y(f4), dVar.z(f5));
            }
            cVar3.f860e = pointF3;
            dVar.f816c0.f861f = new PointF(width, height);
            c cVar4 = dVar.f816c0;
            cVar4.f862g = this.f870d;
            cVar4.f863h = this.f873g;
            cVar4.f864i = this.f871e;
            cVar4.f865j = this.f872f;
            cVar4.f866k = System.currentTimeMillis();
            dVar.f816c0.getClass();
            PointF pointF4 = this.f869c;
            if (pointF4 != null) {
                float f6 = pointF4.x;
                PointF pointF5 = dVar.f816c0.f858c;
                float f7 = f6 - (pointF5.x * fMin);
                float f8 = pointF4.y - (pointF5.y * fMin);
                PointF pointF6 = new PointF(f7, f8);
                dVar.l(true, new i(fMin, pointF6));
                dVar.f816c0.f861f = new PointF((pointF6.x - f7) + pointF4.x, (pointF6.y - f8) + pointF4.y);
            }
            dVar.invalidate();
        }

        public C0015d(float f2, PointF pointF) {
            this.f870d = 500L;
            this.f871e = 2;
            this.f872f = 1;
            this.f873g = true;
            this.f874h = true;
            this.f867a = f2;
            this.f868b = pointF;
            this.f869c = null;
        }

        public C0015d(float f2, PointF pointF, PointF pointF2) {
            this.f870d = 500L;
            this.f871e = 2;
            this.f872f = 1;
            this.f873g = true;
            this.f874h = true;
            this.f867a = f2;
            this.f868b = pointF;
            this.f869c = pointF2;
        }
    }
}
