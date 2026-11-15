package androidx.swiperefreshlayout.widget;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;

public class b extends Drawable implements Animatable {

    private static final Interpolator f14622g = new LinearInterpolator();

    private static final Interpolator f14623h = new o1.b();

    private static final int[] f14624i = {ViewCompat.MEASURED_STATE_MASK};

    private final c f14625a;

    private float f14626b;

    private Resources f14627c;

    private Animator f14628d;

    float f14629e;

    boolean f14630f;

    class a implements ValueAnimator.AnimatorUpdateListener {

        final c f14631a;

        a(c cVar) {
            this.f14631a = cVar;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            b.this.n(fFloatValue, this.f14631a);
            b.this.b(fFloatValue, this.f14631a, false);
            b.this.invalidateSelf();
        }
    }

    private static class c {

        final RectF f14635a = new RectF();

        final Paint f14636b;

        final Paint f14637c;

        final Paint f14638d;

        float f14639e;

        float f14640f;

        float f14641g;

        float f14642h;

        int[] f14643i;

        int f14644j;

        float f14645k;

        float f14646l;

        float f14647m;

        boolean f14648n;

        Path f14649o;

        float f14650p;

        float f14651q;

        int f14652r;

        int f14653s;

        int f14654t;

        int f14655u;

        c() {
            Paint paint = new Paint();
            this.f14636b = paint;
            Paint paint2 = new Paint();
            this.f14637c = paint2;
            Paint paint3 = new Paint();
            this.f14638d = paint3;
            this.f14639e = 0.0f;
            this.f14640f = 0.0f;
            this.f14641g = 0.0f;
            this.f14642h = 5.0f;
            this.f14650p = 1.0f;
            this.f14654t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void A() {
            this.f14645k = this.f14639e;
            this.f14646l = this.f14640f;
            this.f14647m = this.f14641g;
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f14635a;
            float f10 = this.f14651q;
            float fMin = (this.f14642h / 2.0f) + f10;
            if (f10 <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f14652r * this.f14650p) / 2.0f, this.f14642h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f11 = this.f14639e;
            float f12 = this.f14641g;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f14640f + f12) * 360.0f) - f13;
            this.f14636b.setColor(this.f14655u);
            this.f14636b.setAlpha(this.f14654t);
            float f15 = this.f14642h / 2.0f;
            rectF.inset(f15, f15);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f14638d);
            float f16 = -f15;
            rectF.inset(f16, f16);
            canvas.drawArc(rectF, f13, f14, false, this.f14636b);
            b(canvas, f13, f14, rectF);
        }

        void b(Canvas canvas, float f10, float f11, RectF rectF) {
            if (this.f14648n) {
                Path path = this.f14649o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f14649o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f12 = (this.f14652r * this.f14650p) / 2.0f;
                this.f14649o.moveTo(0.0f, 0.0f);
                this.f14649o.lineTo(this.f14652r * this.f14650p, 0.0f);
                Path path3 = this.f14649o;
                float f13 = this.f14652r;
                float f14 = this.f14650p;
                path3.lineTo((f13 * f14) / 2.0f, this.f14653s * f14);
                this.f14649o.offset((fMin + rectF.centerX()) - f12, rectF.centerY() + (this.f14642h / 2.0f));
                this.f14649o.close();
                this.f14637c.setColor(this.f14655u);
                this.f14637c.setAlpha(this.f14654t);
                canvas.save();
                canvas.rotate(f10 + f11, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f14649o, this.f14637c);
                canvas.restore();
            }
        }

        int c() {
            return this.f14654t;
        }

        float d() {
            return this.f14640f;
        }

        int e() {
            return this.f14643i[f()];
        }

        int f() {
            return (this.f14644j + 1) % this.f14643i.length;
        }

        float g() {
            return this.f14639e;
        }

        int h() {
            return this.f14643i[this.f14644j];
        }

        float i() {
            return this.f14646l;
        }

        float j() {
            return this.f14647m;
        }

        float k() {
            return this.f14645k;
        }

        void l() {
            t(f());
        }

        void m() {
            this.f14645k = 0.0f;
            this.f14646l = 0.0f;
            this.f14647m = 0.0f;
            y(0.0f);
            v(0.0f);
            w(0.0f);
        }

        void n(int i10) {
            this.f14654t = i10;
        }

        void o(float f10, float f11) {
            this.f14652r = (int) f10;
            this.f14653s = (int) f11;
        }

        void p(float f10) {
            if (f10 != this.f14650p) {
                this.f14650p = f10;
            }
        }

        void q(float f10) {
            this.f14651q = f10;
        }

        void r(int i10) {
            this.f14655u = i10;
        }

        void s(ColorFilter colorFilter) {
            this.f14636b.setColorFilter(colorFilter);
        }

        void t(int i10) {
            this.f14644j = i10;
            this.f14655u = this.f14643i[i10];
        }

        void u(int[] iArr) {
            this.f14643i = iArr;
            t(0);
        }

        void v(float f10) {
            this.f14640f = f10;
        }

        void w(float f10) {
            this.f14641g = f10;
        }

        void x(boolean z10) {
            if (this.f14648n != z10) {
                this.f14648n = z10;
            }
        }

        void y(float f10) {
            this.f14639e = f10;
        }

        void z(float f10) {
            this.f14642h = f10;
            this.f14636b.setStrokeWidth(f10);
        }
    }

    public b(Context context) {
        this.f14627c = ((Context) i.g(context)).getResources();
        c cVar = new c();
        this.f14625a = cVar;
        cVar.u(f14624i);
        k(2.5f);
        m();
    }

    private void a(float f10, c cVar) {
        n(f10, cVar);
        float fFloor = (float) (Math.floor(cVar.j() / 0.8f) + 1.0d);
        cVar.y(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f10));
        cVar.v(cVar.i());
        cVar.w(cVar.j() + ((fFloor - cVar.j()) * f10));
    }

    private int c(float f10, int i10, int i11) {
        int i12 = (i10 >> 24) & 255;
        int i13 = (i10 >> 16) & 255;
        int i14 = (i10 >> 8) & 255;
        int i15 = i10 & 255;
        return ((i12 + ((int) ((((i11 >> 24) & 255) - i12) * f10))) << 24) | ((i13 + ((int) ((((i11 >> 16) & 255) - i13) * f10))) << 16) | ((i14 + ((int) ((((i11 >> 8) & 255) - i14) * f10))) << 8) | (i15 + ((int) (f10 * ((i11 & 255) - i15))));
    }

    private void h(float f10) {
        this.f14626b = f10;
    }

    private void i(float f10, float f11, float f12, float f13) {
        c cVar = this.f14625a;
        float f14 = this.f14627c.getDisplayMetrics().density;
        cVar.z(f11 * f14);
        cVar.q(f10 * f14);
        cVar.t(0);
        cVar.o(f12 * f14, f13 * f14);
    }

    private void m() {
        c cVar = this.f14625a;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new a(cVar));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f14622g);
        valueAnimatorOfFloat.addListener(new C0118b(cVar));
        this.f14628d = valueAnimatorOfFloat;
    }

    void b(float f10, c cVar, boolean z10) {
        float interpolation;
        float interpolation2;
        if (this.f14630f) {
            a(f10, cVar);
            return;
        }
        if (f10 != 1.0f || z10) {
            float fJ = cVar.j();
            if (f10 < 0.5f) {
                interpolation = cVar.k();
                interpolation2 = (f14623h.getInterpolation(f10 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float fK = cVar.k() + 0.79f;
                interpolation = fK - (((1.0f - f14623h.getInterpolation((f10 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = fK;
            }
            float f11 = fJ + (0.20999998f * f10);
            float f12 = (f10 + this.f14629e) * 216.0f;
            cVar.y(interpolation);
            cVar.v(interpolation2);
            cVar.w(f11);
            h(f12);
        }
    }

    public void d(boolean z10) {
        this.f14625a.x(z10);
        invalidateSelf();
    }

    @Override
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f14626b, bounds.exactCenterX(), bounds.exactCenterY());
        this.f14625a.a(canvas, bounds);
        canvas.restore();
    }

    public void e(float f10) {
        this.f14625a.p(f10);
        invalidateSelf();
    }

    public void f(int... iArr) {
        this.f14625a.u(iArr);
        this.f14625a.t(0);
        invalidateSelf();
    }

    public void g(float f10) {
        this.f14625a.w(f10);
        invalidateSelf();
    }

    @Override
    public int getAlpha() {
        return this.f14625a.c();
    }

    @Override
    public int getOpacity() {
        return -3;
    }

    @Override
    public boolean isRunning() {
        return this.f14628d.isRunning();
    }

    public void j(float f10, float f11) {
        this.f14625a.y(f10);
        this.f14625a.v(f11);
        invalidateSelf();
    }

    public void k(float f10) {
        this.f14625a.z(f10);
        invalidateSelf();
    }

    public void l(int i10) {
        if (i10 == 0) {
            i(11.0f, 3.0f, 12.0f, 6.0f);
        } else {
            i(7.5f, 2.5f, 10.0f, 5.0f);
        }
        invalidateSelf();
    }

    void n(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.r(c((f10 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.r(cVar.h());
        }
    }

    @Override
    public void setAlpha(int i10) {
        this.f14625a.n(i10);
        invalidateSelf();
    }

    @Override
    public void setColorFilter(ColorFilter colorFilter) {
        this.f14625a.s(colorFilter);
        invalidateSelf();
    }

    @Override
    public void start() {
        this.f14628d.cancel();
        this.f14625a.A();
        if (this.f14625a.d() != this.f14625a.g()) {
            this.f14630f = true;
            this.f14628d.setDuration(666L);
            this.f14628d.start();
        } else {
            this.f14625a.t(0);
            this.f14625a.m();
            this.f14628d.setDuration(1332L);
            this.f14628d.start();
        }
    }

    @Override
    public void stop() {
        this.f14628d.cancel();
        h(0.0f);
        this.f14625a.x(false);
        this.f14625a.t(0);
        this.f14625a.m();
        invalidateSelf();
    }

    class C0118b implements Animator.AnimatorListener {

        final c f14633a;

        C0118b(c cVar) {
            this.f14633a = cVar;
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            b.this.b(1.0f, this.f14633a, true);
            this.f14633a.A();
            this.f14633a.l();
            b bVar = b.this;
            if (!bVar.f14630f) {
                bVar.f14629e += 1.0f;
                return;
            }
            bVar.f14630f = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f14633a.x(false);
        }

        @Override
        public void onAnimationStart(Animator animator) {
            b.this.f14629e = 0.0f;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
        }
    }
}
