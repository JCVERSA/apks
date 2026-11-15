package com.transsion.photoview;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.ImageView;
import android.widget.OverScroller;

public class PhotoViewAttachment implements View.OnTouchListener, View.OnLayoutChangeListener {

    private final ImageView f45980h;

    private GestureDetector f45981i;

    private com.transsion.photoview.b f45982j;

    private n f45983k;

    private View.OnClickListener f45989q;

    private View.OnLongClickListener f45990r;

    private FlingRunnable f45991s;

    private float f45994v;

    private final com.transsion.photoview.c f45997y;

    private Interpolator f45973a = new AccelerateDecelerateInterpolator();

    private int f45974b = 200;

    private float f45975c = 1.0f;

    private float f45976d = 1.75f;

    private float f45977e = 3.0f;

    private boolean f45978f = true;

    private boolean f45979g = false;

    private final Matrix f45984l = new Matrix();

    private final Matrix f45985m = new Matrix();

    private final Matrix f45986n = new Matrix();

    private final RectF f45987o = new RectF();

    private final float[] f45988p = new float[9];

    private int f45992t = 2;

    private int f45993u = 2;

    private boolean f45995w = true;

    private ImageView.ScaleType f45996x = ImageView.ScaleType.FIT_CENTER;

    private class AnimatedZoomRunnable implements Runnable {
        private final float mFocalX;
        private final float mFocalY;
        private final long mStartTime = System.currentTimeMillis();
        private final float mZoomEnd;
        private final float mZoomStart;

        public AnimatedZoomRunnable(float f10, float f11, float f12, float f13) {
            this.mFocalX = f12;
            this.mFocalY = f13;
            this.mZoomStart = f10;
            this.mZoomEnd = f11;
        }

        private float interpolate() {
            return PhotoViewAttachment.this.f45973a.getInterpolation(Math.min(1.0f, ((System.currentTimeMillis() - this.mStartTime) * 1.0f) / PhotoViewAttachment.this.f45974b));
        }

        @Override
        public void run() {
            float fInterpolate = interpolate();
            float f10 = this.mZoomStart;
            PhotoViewAttachment.this.f45997y.d((f10 + ((this.mZoomEnd - f10) * fInterpolate)) / PhotoViewAttachment.this.M(), this.mFocalX, this.mFocalY);
            if (fInterpolate < 1.0f) {
                com.transsion.photoview.a.a(PhotoViewAttachment.this.f45980h, this);
            }
        }
    }

    private class FlingRunnable implements Runnable {
        private int mCurrentX;
        private int mCurrentY;
        private final OverScroller mScroller;

        public FlingRunnable(Context context) {
            this.mScroller = new OverScroller(context);
        }

        public void cancelFling() {
            this.mScroller.forceFinished(true);
        }

        public void fling(int i10, int i11, int i12, int i13) {
            int i14;
            int iRound;
            int i15;
            int iRound2;
            RectF rectFD = PhotoViewAttachment.this.D();
            if (rectFD == null) {
                return;
            }
            int iRound3 = Math.round(-rectFD.left);
            float f10 = i10;
            if (f10 < rectFD.width()) {
                iRound = Math.round(rectFD.width() - f10);
                i14 = 0;
            } else {
                i14 = iRound3;
                iRound = i14;
            }
            int iRound4 = Math.round(-rectFD.top);
            float f11 = i11;
            if (f11 < rectFD.height()) {
                iRound2 = Math.round(rectFD.height() - f11);
                i15 = 0;
            } else {
                i15 = iRound4;
                iRound2 = i15;
            }
            this.mCurrentX = iRound3;
            this.mCurrentY = iRound4;
            if (iRound3 == iRound && iRound4 == iRound2) {
                return;
            }
            this.mScroller.fling(iRound3, iRound4, i12, i13, i14, iRound, i15, iRound2, 0, 0);
        }

        @Override
        public void run() {
            if (!this.mScroller.isFinished() && this.mScroller.computeScrollOffset()) {
                int currX = this.mScroller.getCurrX();
                int currY = this.mScroller.getCurrY();
                PhotoViewAttachment.this.f45986n.postTranslate(this.mCurrentX - currX, this.mCurrentY - currY);
                PhotoViewAttachment.this.A();
                this.mCurrentX = currX;
                this.mCurrentY = currY;
                com.transsion.photoview.a.a(PhotoViewAttachment.this.f45980h, this);
            }
        }
    }

    class a implements com.transsion.photoview.c {
        a() {
        }

        @Override
        public void b(float f10, float f11) {
            if (PhotoViewAttachment.this.f45982j.g()) {
                return;
            }
            PhotoViewAttachment.j(PhotoViewAttachment.this);
            PhotoViewAttachment.this.f45986n.postTranslate(f10, f11);
            PhotoViewAttachment.this.A();
            ViewParent parent = PhotoViewAttachment.this.f45980h.getParent();
            if (!PhotoViewAttachment.this.f45978f || PhotoViewAttachment.this.f45982j.g() || PhotoViewAttachment.this.f45979g) {
                if (parent != null) {
                    parent.requestDisallowInterceptTouchEvent(true);
                }
            } else if ((PhotoViewAttachment.this.f45992t == 2 || ((PhotoViewAttachment.this.f45992t == 0 && f10 >= 1.0f) || ((PhotoViewAttachment.this.f45992t == 1 && f10 <= -1.0f) || ((PhotoViewAttachment.this.f45993u == 0 && f11 >= 1.0f) || (PhotoViewAttachment.this.f45993u == 1 && f11 <= -1.0f))))) && parent != null) {
                parent.requestDisallowInterceptTouchEvent(false);
                PhotoViewAttachment.this.f45983k.e(PhotoViewAttachment.this.M(), PhotoViewAttachment.this.f45982j.d(), PhotoViewAttachment.this.f45982j.e());
            }
        }

        @Override
        public void c(float f10, float f11, float f12, float f13, float f14) {
            if (PhotoViewAttachment.this.f45983k.h()) {
                return;
            }
            if (PhotoViewAttachment.this.M() < PhotoViewAttachment.this.f45977e || f10 < 1.0f) {
                PhotoViewAttachment.m(PhotoViewAttachment.this);
                PhotoViewAttachment.this.f45986n.postScale(f10, f10, f11, f12);
                PhotoViewAttachment.this.f45986n.postTranslate(f13, f14);
                PhotoViewAttachment.this.A();
            }
        }

        @Override
        public void d(float f10, float f11, float f12) {
            c(f10, f11, f12, 0.0f, 0.0f);
        }

        @Override
        public void e(float f10, float f11, float f12, float f13) {
            PhotoViewAttachment photoViewAttachment = PhotoViewAttachment.this;
            photoViewAttachment.f45991s = photoViewAttachment.new FlingRunnable(photoViewAttachment.f45980h.getContext());
            FlingRunnable flingRunnable = PhotoViewAttachment.this.f45991s;
            PhotoViewAttachment photoViewAttachment2 = PhotoViewAttachment.this;
            int I = photoViewAttachment2.I(photoViewAttachment2.f45980h);
            PhotoViewAttachment photoViewAttachment3 = PhotoViewAttachment.this;
            flingRunnable.fling(I, photoViewAttachment3.H(photoViewAttachment3.f45980h), (int) f12, (int) f13);
            PhotoViewAttachment.this.f45980h.post(PhotoViewAttachment.this.f45991s);
        }
    }

    class b extends GestureDetector.SimpleOnGestureListener {
        b() {
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
            PhotoViewAttachment.o(PhotoViewAttachment.this);
            return false;
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            if (PhotoViewAttachment.this.f45990r != null) {
                PhotoViewAttachment.this.f45990r.onLongClick(PhotoViewAttachment.this.f45980h);
            }
        }
    }

    class c implements GestureDetector.OnDoubleTapListener {
        c() {
        }

        @Override
        public boolean onDoubleTap(MotionEvent motionEvent) {
            try {
                float fM = PhotoViewAttachment.this.M();
                float x10 = motionEvent.getX();
                float y10 = motionEvent.getY();
                if (fM < PhotoViewAttachment.this.K()) {
                    PhotoViewAttachment photoViewAttachment = PhotoViewAttachment.this;
                    photoViewAttachment.m0(photoViewAttachment.K(), x10, y10, true);
                } else if (fM < PhotoViewAttachment.this.K() || fM >= PhotoViewAttachment.this.J()) {
                    PhotoViewAttachment photoViewAttachment2 = PhotoViewAttachment.this;
                    photoViewAttachment2.m0(photoViewAttachment2.L(), x10, y10, true);
                } else {
                    PhotoViewAttachment photoViewAttachment3 = PhotoViewAttachment.this;
                    photoViewAttachment3.m0(photoViewAttachment3.J(), x10, y10, true);
                }
            } catch (ArrayIndexOutOfBoundsException unused) {
            }
            return true;
        }

        @Override
        public boolean onDoubleTapEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override
        public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
            if (PhotoViewAttachment.this.f45989q != null) {
                PhotoViewAttachment.this.f45989q.onClick(PhotoViewAttachment.this.f45980h);
            }
            RectF rectFD = PhotoViewAttachment.this.D();
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            PhotoViewAttachment.r(PhotoViewAttachment.this);
            if (rectFD == null) {
                return false;
            }
            if (!rectFD.contains(x10, y10)) {
                PhotoViewAttachment.k(PhotoViewAttachment.this);
                return false;
            }
            rectFD.width();
            rectFD.height();
            PhotoViewAttachment.l(PhotoViewAttachment.this);
            return true;
        }
    }

    static class d {

        static final int[] f46001a;

        static {
            int[] iArr = new int[ImageView.ScaleType.values().length];
            f46001a = iArr;
            try {
                iArr[ImageView.ScaleType.FIT_CENTER.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f46001a[ImageView.ScaleType.FIT_START.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f46001a[ImageView.ScaleType.FIT_END.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f46001a[ImageView.ScaleType.FIT_XY.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public PhotoViewAttachment(ImageView imageView) {
        a aVar = new a();
        this.f45997y = aVar;
        this.f45980h = imageView;
        imageView.setOnTouchListener(this);
        imageView.addOnLayoutChangeListener(this);
        if (imageView.isInEditMode()) {
            return;
        }
        this.f45994v = 0.0f;
        this.f45982j = new com.transsion.photoview.b(imageView.getContext(), aVar);
        Q(imageView);
        this.f45983k = new n(imageView);
    }

    public void A() {
        if (B()) {
            V(F());
        }
    }

    private boolean B() {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        RectF rectFE = E(F());
        if (rectFE == null) {
            return false;
        }
        float fHeight = rectFE.height();
        float fWidth = rectFE.width();
        float fH = H(this.f45980h);
        float f15 = 0.0f;
        if (fHeight <= fH) {
            int i10 = d.f46001a[this.f45996x.ordinal()];
            if (i10 != 2) {
                if (i10 != 3) {
                    f13 = (fH - fHeight) / 2.0f;
                    f14 = rectFE.top;
                } else {
                    f13 = fH - fHeight;
                    f14 = rectFE.top;
                }
                f10 = f13 - f14;
            } else {
                f10 = -rectFE.top;
            }
            this.f45993u = 2;
        } else {
            float f16 = rectFE.top;
            if (f16 > 0.0f) {
                this.f45993u = 0;
                f10 = -f16;
            } else {
                float f17 = rectFE.bottom;
                if (f17 < fH) {
                    this.f45993u = 1;
                    f10 = fH - f17;
                } else {
                    this.f45993u = -1;
                    f10 = 0.0f;
                }
            }
        }
        float fI = I(this.f45980h);
        if (fWidth <= fI) {
            int i11 = d.f46001a[this.f45996x.ordinal()];
            if (i11 != 2) {
                if (i11 != 3) {
                    f11 = (fI - fWidth) / 2.0f;
                    f12 = rectFE.left;
                } else {
                    f11 = fI - fWidth;
                    f12 = rectFE.left;
                }
                f15 = f11 - f12;
            } else {
                f15 = -rectFE.left;
            }
            this.f45992t = 2;
        } else {
            float f18 = rectFE.left;
            if (f18 > 0.0f) {
                this.f45992t = 0;
                f15 = -f18;
            } else {
                float f19 = rectFE.right;
                if (f19 < fI) {
                    f15 = fI - f19;
                    this.f45992t = 1;
                } else {
                    this.f45992t = -1;
                }
            }
        }
        this.f45986n.postTranslate(f15, f10);
        return true;
    }

    private RectF E(Matrix matrix) {
        Drawable drawable = this.f45980h.getDrawable();
        if (drawable == null) {
            return null;
        }
        this.f45987o.set(0.0f, 0.0f, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
        matrix.mapRect(this.f45987o);
        return this.f45987o;
    }

    private Matrix F() {
        this.f45985m.set(this.f45984l);
        this.f45985m.postConcat(this.f45986n);
        return this.f45985m;
    }

    public int H(ImageView imageView) {
        return (imageView.getHeight() - imageView.getPaddingTop()) - imageView.getPaddingBottom();
    }

    public int I(ImageView imageView) {
        return (imageView.getWidth() - imageView.getPaddingStart()) - imageView.getPaddingEnd();
    }

    private float P(Matrix matrix, int i10) {
        matrix.getValues(this.f45988p);
        return this.f45988p[i10];
    }

    private void Q(ImageView imageView) {
        GestureDetector gestureDetector = new GestureDetector(imageView.getContext(), new b());
        this.f45981i = gestureDetector;
        gestureDetector.setOnDoubleTapListener(new c());
    }

    private void S() {
        this.f45986n.reset();
        j0(this.f45994v);
        V(F());
        B();
    }

    private void V(Matrix matrix) {
        this.f45980h.setImageMatrix(matrix);
    }

    static j j(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static e k(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static f l(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static g m(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static h o(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    static k r(PhotoViewAttachment photoViewAttachment) {
        photoViewAttachment.getClass();
        return null;
    }

    private void u0(Drawable drawable) {
        if (drawable == null) {
            return;
        }
        float fI = I(this.f45980h);
        float fH = H(this.f45980h);
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.f45984l.reset();
        float f10 = intrinsicWidth;
        float f11 = fI / f10;
        float f12 = intrinsicHeight;
        float f13 = fH / f12;
        ImageView.ScaleType scaleType = this.f45996x;
        if (scaleType == ImageView.ScaleType.CENTER) {
            this.f45984l.postTranslate((fI - f10) / 2.0f, (fH - f12) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_CROP) {
            float fMax = Math.max(f11, f13);
            this.f45984l.postScale(fMax, fMax);
            this.f45984l.postTranslate((fI - (f10 * fMax)) / 2.0f, (fH - (f12 * fMax)) / 2.0f);
        } else if (scaleType == ImageView.ScaleType.CENTER_INSIDE) {
            float fMin = Math.min(1.0f, Math.min(f11, f13));
            this.f45984l.postScale(fMin, fMin);
            this.f45984l.postTranslate((fI - (f10 * fMin)) / 2.0f, (fH - (f12 * fMin)) / 2.0f);
        } else {
            RectF rectF = new RectF(0.0f, 0.0f, f10, f12);
            RectF rectF2 = new RectF(0.0f, 0.0f, fI, fH);
            if (((int) this.f45994v) % 180 != 0) {
                rectF = new RectF(0.0f, 0.0f, f12, f10);
            }
            int i10 = d.f46001a[this.f45996x.ordinal()];
            if (i10 == 1) {
                this.f45984l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.CENTER);
            } else if (i10 == 2) {
                this.f45984l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.START);
            } else if (i10 == 3) {
                this.f45984l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.END);
            } else if (i10 == 4) {
                this.f45984l.setRectToRect(rectF, rectF2, Matrix.ScaleToFit.FILL);
            }
        }
        S();
    }

    private void z() {
        FlingRunnable flingRunnable = this.f45991s;
        if (flingRunnable != null) {
            flingRunnable.cancelFling();
            this.f45991s = null;
        }
    }

    public void C(Matrix matrix) {
        matrix.set(F());
    }

    public RectF D() {
        B();
        return E(F());
    }

    public Matrix G() {
        return this.f45985m;
    }

    public float J() {
        return this.f45977e;
    }

    public float K() {
        return this.f45976d;
    }

    public float L() {
        return this.f45975c;
    }

    public float M() {
        return (float) Math.sqrt(((float) Math.pow(P(this.f45986n, 0), 2.0d)) + ((float) Math.pow(P(this.f45986n, 3), 2.0d)));
    }

    public ImageView.ScaleType N() {
        return this.f45996x;
    }

    public void O(Matrix matrix) {
        matrix.set(this.f45986n);
    }

    public boolean R() {
        return this.f45995w;
    }

    public void T(boolean z10) {
        this.f45978f = z10;
    }

    public boolean U(Matrix matrix) {
        if (matrix == null) {
            throw new IllegalArgumentException("Matrix cannot be null");
        }
        if (this.f45980h.getDrawable() == null) {
            return false;
        }
        this.f45986n.set(matrix);
        A();
        return true;
    }

    public void W(float f10) {
        o.a(this.f45975c, this.f45976d, f10);
        this.f45977e = f10;
    }

    public void X(float f10) {
        o.a(this.f45975c, f10, this.f45977e);
        this.f45976d = f10;
    }

    public void Y(float f10) {
        o.a(f10, this.f45976d, this.f45977e);
        this.f45975c = f10;
    }

    public void Z(View.OnClickListener onClickListener) {
        this.f45989q = onClickListener;
    }

    public void a0(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f45981i.setOnDoubleTapListener(onDoubleTapListener);
    }

    public void b0(View.OnLongClickListener onLongClickListener) {
        this.f45990r = onLongClickListener;
    }

    public void c0(com.transsion.photoview.d dVar) {
    }

    public void d0(e eVar) {
    }

    public void e0(f fVar) {
    }

    public void f0(g gVar) {
    }

    public void g0(h hVar) {
    }

    public void h0(j jVar) {
    }

    public void i0(k kVar) {
    }

    public void j0(float f10) {
        this.f45986n.postRotate(f10 % 360.0f);
        A();
    }

    public void k0(float f10) {
        this.f45986n.setRotate(f10 % 360.0f);
        A();
    }

    public void l0(float f10) {
        n0(f10, false);
    }

    public void m0(float f10, float f11, float f12, boolean z10) {
        if (f10 < this.f45975c || f10 > this.f45977e) {
            throw new IllegalArgumentException("Scale must be within the range of minScale and maxScale");
        }
        if (z10) {
            this.f45980h.post(new AnimatedZoomRunnable(M(), f10, f11, f12));
        } else {
            this.f45986n.setScale(f10, f10, f11, f12);
            A();
        }
    }

    public void n0(float f10, boolean z10) {
        m0(f10, this.f45980h.getRight() / 2.0f, this.f45980h.getBottom() / 2.0f, z10);
    }

    public void o0(float f10, float f11, float f12) {
        o.a(f10, f11, f12);
        this.f45975c = f10;
        this.f45976d = f11;
        this.f45977e = f12;
    }

    @Override
    public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
        if (i10 == i14 && i11 == i15 && i12 == i16 && i13 == i17) {
            return;
        }
        u0(this.f45980h.getDrawable());
    }

    /* JADX WARN: Code duplicated, block: B:23:0x006f  */
    /* JADX WARN: Code duplicated, block: B:32:0x0087  */
    /* JADX WARN: Code duplicated, block: B:37:0x00a3  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b0  */
    /* JADX WARN: Code duplicated, block: B:47:0x00ba  */
    @Override
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        com.transsion.photoview.b bVar;
        boolean z11;
        GestureDetector gestureDetector;
        boolean zG;
        boolean zF;
        boolean z12;
        boolean z13;
        RectF rectFD;
        boolean z14 = false;
        if (!this.f45995w || !o.d((ImageView) view)) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 0) {
            if (action == 1 || action == 3) {
                if (M() < this.f45975c) {
                    RectF rectFD2 = D();
                    if (rectFD2 != null) {
                        view.post(new AnimatedZoomRunnable(M(), this.f45975c, rectFD2.centerX(), rectFD2.centerY()));
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                } else if (M() <= this.f45977e || (rectFD = D()) == null) {
                    z10 = false;
                } else {
                    view.post(new AnimatedZoomRunnable(M(), this.f45977e, rectFD.centerX(), rectFD.centerY()));
                    z10 = true;
                }
                this.f45983k.d();
            }
            bVar = this.f45982j;
            if (bVar != null) {
                zG = bVar.g();
                zF = this.f45982j.f();
                boolean zH = this.f45982j.h(motionEvent);
                if (!zG || this.f45982j.g()) {
                    z12 = false;
                } else {
                    z12 = true;
                }
                if (!zF || this.f45982j.f()) {
                    z13 = false;
                } else {
                    z13 = true;
                }
                if (z12 && z13) {
                    z14 = true;
                }
                this.f45979g = z14;
                z11 = zH;
            } else {
                z11 = z10;
            }
            gestureDetector = this.f45981i;
            if (gestureDetector == null && gestureDetector.onTouchEvent(motionEvent)) {
                return true;
            }
        }
        ViewParent parent = view.getParent();
        if (parent != null) {
            parent.requestDisallowInterceptTouchEvent(true);
        }
        z();
        z10 = false;
        bVar = this.f45982j;
        if (bVar != null) {
            zG = bVar.g();
            zF = this.f45982j.f();
            boolean zH2 = this.f45982j.h(motionEvent);
            if (zG) {
                z12 = false;
            } else {
                z12 = false;
            }
            if (zF) {
                z13 = false;
            } else {
                z13 = false;
            }
            if (z12) {
                z14 = true;
            }
            this.f45979g = z14;
            z11 = zH2;
        } else {
            z11 = z10;
        }
        gestureDetector = this.f45981i;
        return gestureDetector == null ? z11 : z11;
    }

    public void p0(ImageView.ScaleType scaleType) {
        if (!o.e(scaleType) || scaleType == this.f45996x) {
            return;
        }
        this.f45996x = scaleType;
        t0();
    }

    public void q0(i iVar) {
        n nVar = this.f45983k;
        if (nVar != null) {
            nVar.k(iVar);
        }
    }

    public void r0(int i10) {
        this.f45974b = i10;
    }

    public void s0(boolean z10) {
        this.f45995w = z10;
        t0();
    }

    public void t0() {
        if (this.f45995w) {
            u0(this.f45980h.getDrawable());
        } else {
            S();
        }
    }
}
