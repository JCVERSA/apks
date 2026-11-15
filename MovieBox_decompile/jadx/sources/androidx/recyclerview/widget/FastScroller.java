package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.ViewCompat;

class FastScroller extends RecyclerView.l implements RecyclerView.q {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.r C;

    private final int f13839a;

    private final int f13840b;

    final StateListDrawable f13841c;

    final Drawable f13842d;

    private final int f13843e;

    private final int f13844f;

    private final StateListDrawable f13845g;

    private final Drawable f13846h;

    private final int f13847i;

    private final int f13848j;

    int f13849k;

    int f13850l;

    float f13851m;

    int f13852n;

    int f13853o;

    float f13854p;

    private RecyclerView f13857s;

    final ValueAnimator f13864z;

    private int f13855q = 0;

    private int f13856r = 0;

    private boolean f13858t = false;

    private boolean f13859u = false;

    private int f13860v = 0;

    private int f13861w = 0;

    private final int[] f13862x = new int[2];

    private final int[] f13863y = new int[2];

    class a extends RecyclerView.r {
        a() {
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i10, int i11) {
            FastScroller.this.v(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    private class b extends AnimatorListenerAdapter {

        private boolean f13866a = false;

        b() {
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            this.f13866a = true;
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (this.f13866a) {
                this.f13866a = false;
                return;
            }
            if (((Float) FastScroller.this.f13864z.getAnimatedValue()).floatValue() == 0.0f) {
                FastScroller fastScroller = FastScroller.this;
                fastScroller.A = 0;
                fastScroller.s(0);
            } else {
                FastScroller fastScroller2 = FastScroller.this;
                fastScroller2.A = 2;
                fastScroller2.p();
            }
        }
    }

    private class c implements ValueAnimator.AnimatorUpdateListener {
        c() {
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            FastScroller.this.f13841c.setAlpha(iFloatValue);
            FastScroller.this.f13842d.setAlpha(iFloatValue);
            FastScroller.this.p();
        }
    }

    FastScroller(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f13864z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new Runnable() {
            @Override
            public void run() {
                FastScroller.this.k(500);
            }
        };
        this.C = new a();
        this.f13841c = stateListDrawable;
        this.f13842d = drawable;
        this.f13845g = stateListDrawable2;
        this.f13846h = drawable2;
        this.f13843e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f13844f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f13847i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f13848j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f13839a = i11;
        this.f13840b = i12;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new b());
        valueAnimatorOfFloat.addUpdateListener(new c());
        d(recyclerView);
    }

    private void e() {
        this.f13857s.removeCallbacks(this.B);
    }

    private void f() {
        this.f13857s.removeItemDecoration(this);
        this.f13857s.removeOnItemTouchListener(this);
        this.f13857s.removeOnScrollListener(this.C);
        e();
    }

    private void g(Canvas canvas) {
        int i10 = this.f13856r;
        int i11 = this.f13847i;
        int i12 = i10 - i11;
        int i13 = this.f13853o;
        int i14 = this.f13852n;
        int i15 = i13 - (i14 / 2);
        this.f13845g.setBounds(0, 0, i14, i11);
        this.f13846h.setBounds(0, 0, this.f13855q, this.f13848j);
        canvas.translate(0.0f, i12);
        this.f13846h.draw(canvas);
        canvas.translate(i15, 0.0f);
        this.f13845g.draw(canvas);
        canvas.translate(-i15, -i12);
    }

    private void h(Canvas canvas) {
        int i10 = this.f13855q;
        int i11 = this.f13843e;
        int i12 = i10 - i11;
        int i13 = this.f13850l;
        int i14 = this.f13849k;
        int i15 = i13 - (i14 / 2);
        this.f13841c.setBounds(0, 0, i11, i14);
        this.f13842d.setBounds(0, 0, this.f13844f, this.f13856r);
        if (!m()) {
            canvas.translate(i12, 0.0f);
            this.f13842d.draw(canvas);
            canvas.translate(0.0f, i15);
            this.f13841c.draw(canvas);
            canvas.translate(-i12, -i15);
            return;
        }
        this.f13842d.draw(canvas);
        canvas.translate(this.f13843e, i15);
        canvas.scale(-1.0f, 1.0f);
        this.f13841c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f13843e, -i15);
    }

    private int[] i() {
        int[] iArr = this.f13863y;
        int i10 = this.f13840b;
        iArr[0] = i10;
        iArr[1] = this.f13855q - i10;
        return iArr;
    }

    private int[] j() {
        int[] iArr = this.f13862x;
        int i10 = this.f13840b;
        iArr[0] = i10;
        iArr[1] = this.f13856r - i10;
        return iArr;
    }

    private void l(float f10) {
        int[] iArrI = i();
        float fMax = Math.max(iArrI[0], Math.min(iArrI[1], f10));
        if (Math.abs(this.f13853o - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f13854p, fMax, iArrI, this.f13857s.computeHorizontalScrollRange(), this.f13857s.computeHorizontalScrollOffset(), this.f13855q);
        if (iR != 0) {
            this.f13857s.scrollBy(iR, 0);
        }
        this.f13854p = fMax;
    }

    private boolean m() {
        return ViewCompat.getLayoutDirection(this.f13857s) == 1;
    }

    private void q(int i10) {
        e();
        this.f13857s.postDelayed(this.B, i10);
    }

    private int r(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    private void t() {
        this.f13857s.addItemDecoration(this);
        this.f13857s.addOnItemTouchListener(this);
        this.f13857s.addOnScrollListener(this.C);
    }

    private void w(float f10) {
        int[] iArrJ = j();
        float fMax = Math.max(iArrJ[0], Math.min(iArrJ[1], f10));
        if (Math.abs(this.f13850l - fMax) < 2.0f) {
            return;
        }
        int iR = r(this.f13851m, fMax, iArrJ, this.f13857s.computeVerticalScrollRange(), this.f13857s.computeVerticalScrollOffset(), this.f13856r);
        if (iR != 0) {
            this.f13857s.scrollBy(0, iR);
        }
        this.f13851m = fMax;
    }

    @Override
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f13860v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (zO || zN) {
                if (zN) {
                    this.f13861w = 1;
                    this.f13854p = (int) motionEvent.getX();
                } else if (zO) {
                    this.f13861w = 2;
                    this.f13851m = (int) motionEvent.getY();
                }
                s(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f13860v == 2) {
            this.f13851m = 0.0f;
            this.f13854p = 0.0f;
            s(1);
            this.f13861w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f13860v == 2) {
            u();
            if (this.f13861w == 1) {
                l(motionEvent.getX());
            }
            if (this.f13861w == 2) {
                w(motionEvent.getY());
            }
        }
    }

    @Override
    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i10 = this.f13860v;
        if (i10 == 1) {
            boolean zO = o(motionEvent.getX(), motionEvent.getY());
            boolean zN = n(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zO && !zN) {
                return false;
            }
            if (zN) {
                this.f13861w = 1;
                this.f13854p = (int) motionEvent.getX();
            } else if (zO) {
                this.f13861w = 2;
                this.f13851m = (int) motionEvent.getY();
            }
            s(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    public void d(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f13857s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            f();
        }
        this.f13857s = recyclerView;
        if (recyclerView != null) {
            t();
        }
    }

    void k(int i10) {
        int i11 = this.A;
        if (i11 == 1) {
            this.f13864z.cancel();
        } else if (i11 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f13864z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f13864z.setDuration(i10);
        this.f13864z.start();
    }

    boolean n(float f10, float f11) {
        if (f11 >= this.f13856r - this.f13847i) {
            int i10 = this.f13853o;
            int i11 = this.f13852n;
            if (f10 >= i10 - (i11 / 2) && f10 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean o(float f10, float f11) {
        if (!m() ? f10 >= this.f13855q - this.f13843e : f10 <= this.f13843e) {
            int i10 = this.f13850l;
            int i11 = this.f13849k;
            if (f11 >= i10 - (i11 / 2) && f11 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, RecyclerView.x xVar) {
        if (this.f13855q != this.f13857s.getWidth() || this.f13856r != this.f13857s.getHeight()) {
            this.f13855q = this.f13857s.getWidth();
            this.f13856r = this.f13857s.getHeight();
            s(0);
        } else if (this.A != 0) {
            if (this.f13858t) {
                h(canvas);
            }
            if (this.f13859u) {
                g(canvas);
            }
        }
    }

    void p() {
        this.f13857s.invalidate();
    }

    void s(int i10) {
        if (i10 == 2 && this.f13860v != 2) {
            this.f13841c.setState(D);
            e();
        }
        if (i10 == 0) {
            p();
        } else {
            u();
        }
        if (this.f13860v == 2 && i10 != 2) {
            this.f13841c.setState(E);
            q(1200);
        } else if (i10 == 1) {
            q(1500);
        }
        this.f13860v = i10;
    }

    public void u() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                this.f13864z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f13864z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f13864z.setDuration(500L);
        this.f13864z.setStartDelay(0L);
        this.f13864z.start();
    }

    void v(int i10, int i11) {
        int iComputeVerticalScrollRange = this.f13857s.computeVerticalScrollRange();
        int i12 = this.f13856r;
        this.f13858t = iComputeVerticalScrollRange - i12 > 0 && i12 >= this.f13839a;
        int iComputeHorizontalScrollRange = this.f13857s.computeHorizontalScrollRange();
        int i13 = this.f13855q;
        boolean z10 = iComputeHorizontalScrollRange - i13 > 0 && i13 >= this.f13839a;
        this.f13859u = z10;
        boolean z11 = this.f13858t;
        if (!z11 && !z10) {
            if (this.f13860v != 0) {
                s(0);
                return;
            }
            return;
        }
        if (z11) {
            float f10 = i12;
            this.f13850l = (int) ((f10 * (i11 + (f10 / 2.0f))) / iComputeVerticalScrollRange);
            this.f13849k = Math.min(i12, (i12 * i12) / iComputeVerticalScrollRange);
        }
        if (this.f13859u) {
            float f11 = i13;
            this.f13853o = (int) ((f11 * (i10 + (f11 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f13852n = Math.min(i13, (i13 * i13) / iComputeHorizontalScrollRange);
        }
        int i14 = this.f13860v;
        if (i14 == 0 || i14 == 1) {
            s(1);
        }
    }

    @Override
    public void c(boolean z10) {
    }
}
