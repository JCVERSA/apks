package androidx.core.view.insets;

import android.animation.ValueAnimator;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;

public abstract class Protection {
    private static final long DEFAULT_DURATION_IN = 333;
    private static final long DEFAULT_DURATION_OUT = 166;
    private final a mAttributes = new a();
    private Object mController;
    private z0.c mInsets;
    private z0.c mInsetsIgnoringVisibility;
    private final int mSide;
    private float mSystemAlpha;
    private float mSystemInsetAmount;
    private float mUserAlpha;
    private ValueAnimator mUserAlphaAnimator;
    private float mUserInsetAmount;
    private ValueAnimator mUserInsetAmountAnimator;
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_IN = new PathInterpolator(0.0f, 0.0f, 0.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_MOVE_OUT = new PathInterpolator(0.6f, 0.0f, 1.0f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_IN = new PathInterpolator(0.0f, 0.0f, 0.2f, 1.0f);
    private static final Interpolator DEFAULT_INTERPOLATOR_FADE_OUT = new PathInterpolator(0.4f, 0.0f, 1.0f, 1.0f);

    static class a {

        private int f8085a = -1;

        private int f8086b = -1;

        private z0.c f8087c = z0.c.f76464e;

        private boolean f8088d = false;

        private Drawable f8089e = null;

        private float f8090f = 0.0f;

        private float f8091g = 0.0f;

        private float f8092h = 1.0f;

        private InterfaceC0063a f8093i;

        interface InterfaceC0063a {
            void a(int i10);

            void b(z0.c cVar);

            void c(float f10);

            void d(int i10);

            void e(float f10);

            void f(float f10);

            void g(Drawable drawable);

            void onVisibilityChanged(boolean z10);
        }

        a() {
        }

        public void A(int i10) {
            if (this.f8085a != i10) {
                this.f8085a = i10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.d(i10);
                }
            }
        }

        public void s(float f10) {
            if (this.f8092h != f10) {
                this.f8092h = f10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.c(f10);
                }
            }
        }

        public void u(Drawable drawable) {
            this.f8089e = drawable;
            InterfaceC0063a interfaceC0063a = this.f8093i;
            if (interfaceC0063a != null) {
                interfaceC0063a.g(drawable);
            }
        }

        public void v(int i10) {
            if (this.f8086b != i10) {
                this.f8086b = i10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.a(i10);
                }
            }
        }

        public void w(z0.c cVar) {
            if (this.f8087c.equals(cVar)) {
                return;
            }
            this.f8087c = cVar;
            InterfaceC0063a interfaceC0063a = this.f8093i;
            if (interfaceC0063a != null) {
                interfaceC0063a.b(cVar);
            }
        }

        public void x(float f10) {
            if (this.f8090f != f10) {
                this.f8090f = f10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.e(f10);
                }
            }
        }

        public void y(float f10) {
            if (this.f8091g != f10) {
                this.f8091g = f10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.f(f10);
                }
            }
        }

        public void z(boolean z10) {
            if (this.f8088d != z10) {
                this.f8088d = z10;
                InterfaceC0063a interfaceC0063a = this.f8093i;
                if (interfaceC0063a != null) {
                    interfaceC0063a.onVisibilityChanged(z10);
                }
            }
        }

        float k() {
            return this.f8092h;
        }

        Drawable l() {
            return this.f8089e;
        }

        int m() {
            return this.f8086b;
        }

        z0.c n() {
            return this.f8087c;
        }

        float o() {
            return this.f8090f;
        }

        float p() {
            return this.f8091g;
        }

        int q() {
            return this.f8085a;
        }

        boolean r() {
            return this.f8088d;
        }

        void t(InterfaceC0063a interfaceC0063a) {
            if (this.f8093i != null && interfaceC0063a != null) {
                throw new IllegalStateException("Trying to overwrite the existing callback. Did you send one protection to multiple ProtectionLayouts?");
            }
            this.f8093i = interfaceC0063a;
        }
    }

    public Protection(int i10) {
        z0.c cVar = z0.c.f76464e;
        this.mInsets = cVar;
        this.mInsetsIgnoringVisibility = cVar;
        this.mSystemAlpha = 1.0f;
        this.mUserAlpha = 1.0f;
        this.mSystemInsetAmount = 1.0f;
        this.mUserInsetAmount = 1.0f;
        this.mController = null;
        this.mUserAlphaAnimator = null;
        this.mUserInsetAmountAnimator = null;
        if (i10 == 1 || i10 == 2 || i10 == 4 || i10 == 8) {
            this.mSide = i10;
            return;
        }
        throw new IllegalArgumentException("Unexpected side: " + i10);
    }

    private void cancelUserAlphaAnimation() {
        ValueAnimator valueAnimator = this.mUserAlphaAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserAlphaAnimator = null;
        }
    }

    private void cancelUserInsetsAmountAnimation() {
        ValueAnimator valueAnimator = this.mUserInsetAmountAnimator;
        if (valueAnimator != null) {
            valueAnimator.cancel();
            this.mUserInsetAmountAnimator = null;
        }
    }

    public void lambda$animateAlpha$0(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void lambda$animateInsetsAmount$1(ValueAnimator valueAnimator) {
        setAlphaInternal(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    private void setAlphaInternal(float f10) {
        this.mUserAlpha = f10;
        updateAlpha();
    }

    private void setInsetAmountInternal(float f10) {
        this.mUserInsetAmount = f10;
        updateInsetAmount();
    }

    private void updateAlpha() {
        this.mAttributes.s(this.mSystemAlpha * this.mUserAlpha);
    }

    private void updateInsetAmount() {
        float f10 = this.mUserInsetAmount * this.mSystemInsetAmount;
        int i10 = this.mSide;
        if (i10 == 1) {
            a aVar = this.mAttributes;
            aVar.x((-(1.0f - f10)) * aVar.f8085a);
            return;
        }
        if (i10 == 2) {
            a aVar2 = this.mAttributes;
            aVar2.y((-(1.0f - f10)) * aVar2.f8086b);
        } else if (i10 == 4) {
            a aVar3 = this.mAttributes;
            aVar3.x((1.0f - f10) * aVar3.f8085a);
        } else {
            if (i10 != 8) {
                return;
            }
            a aVar4 = this.mAttributes;
            aVar4.y((1.0f - f10) * aVar4.f8086b);
        }
    }

    public void animateAlpha(float f10) {
        cancelUserAlphaAnimation();
        float f11 = this.mUserAlpha;
        if (f10 == f11) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f10);
        this.mUserAlphaAnimator = valueAnimatorOfFloat;
        if (this.mUserAlpha < f10) {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_IN);
        } else {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserAlphaAnimator.setInterpolator(DEFAULT_INTERPOLATOR_FADE_OUT);
        }
        this.mUserAlphaAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f8098a.lambda$animateAlpha$0(valueAnimator);
            }
        });
        this.mUserAlphaAnimator.start();
    }

    public void animateInsetsAmount(float f10) {
        cancelUserInsetsAmountAnimation();
        float f11 = this.mUserInsetAmount;
        if (f10 == f11) {
            return;
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f11, f10);
        this.mUserInsetAmountAnimator = valueAnimatorOfFloat;
        if (this.mUserInsetAmount < f10) {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_IN);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_IN);
        } else {
            valueAnimatorOfFloat.setDuration(DEFAULT_DURATION_OUT);
            this.mUserInsetAmountAnimator.setInterpolator(DEFAULT_INTERPOLATOR_MOVE_OUT);
        }
        this.mUserInsetAmountAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.f8097a.lambda$animateInsetsAmount$1(valueAnimator);
            }
        });
        this.mUserInsetAmountAnimator.start();
    }

    z0.c dispatchInsets(z0.c cVar, z0.c cVar2, z0.c cVar3) {
        this.mInsets = cVar;
        this.mInsetsIgnoringVisibility = cVar2;
        this.mAttributes.w(cVar3);
        return updateLayout();
    }

    public float getAlpha() {
        return this.mUserAlpha;
    }

    a getAttributes() {
        return this.mAttributes;
    }

    Object getController() {
        return this.mController;
    }

    public float getInsetAmount() {
        return this.mUserInsetAmount;
    }

    public int getSide() {
        return this.mSide;
    }

    boolean occupiesCorners() {
        return false;
    }

    public void setAlpha(float f10) {
        if (f10 >= 0.0f && f10 <= 1.0f) {
            cancelUserAlphaAnimation();
            setAlphaInternal(f10);
        } else {
            throw new IllegalArgumentException("Alpha must in a range of [0, 1]. Got: " + f10);
        }
    }

    void setController(Object obj) {
        this.mController = obj;
    }

    void setDrawable(Drawable drawable) {
        this.mAttributes.u(drawable);
    }

    public void setInsetAmount(float f10) {
        if (f10 >= 0.0f && f10 <= 1.0f) {
            cancelUserInsetsAmountAnimation();
            setInsetAmountInternal(f10);
        } else {
            throw new IllegalArgumentException("Inset amount must in a range of [0, 1]. Got: " + f10);
        }
    }

    void setSystemAlpha(float f10) {
        this.mSystemAlpha = f10;
        updateAlpha();
    }

    void setSystemInsetAmount(float f10) {
        this.mSystemInsetAmount = f10;
        updateInsetAmount();
    }

    void setSystemVisible(boolean z10) {
        this.mAttributes.z(z10);
    }

    z0.c updateLayout() {
        int i10;
        z0.c cVarC = z0.c.f76464e;
        int i11 = this.mSide;
        if (i11 == 1) {
            i10 = this.mInsets.f76465a;
            this.mAttributes.A(getThickness(this.mInsetsIgnoringVisibility.f76465a));
            if (occupiesCorners()) {
                cVarC = z0.c.c(getThickness(i10), 0, 0, 0);
            }
        } else if (i11 == 2) {
            i10 = this.mInsets.f76466b;
            this.mAttributes.v(getThickness(this.mInsetsIgnoringVisibility.f76466b));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, getThickness(i10), 0, 0);
            }
        } else if (i11 == 4) {
            i10 = this.mInsets.f76467c;
            this.mAttributes.A(getThickness(this.mInsetsIgnoringVisibility.f76467c));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, 0, getThickness(i10), 0);
            }
        } else if (i11 != 8) {
            i10 = 0;
        } else {
            i10 = this.mInsets.f76468d;
            this.mAttributes.v(getThickness(this.mInsetsIgnoringVisibility.f76468d));
            if (occupiesCorners()) {
                cVarC = z0.c.c(0, 0, 0, getThickness(i10));
            }
        }
        setSystemVisible(i10 > 0);
        setSystemAlpha(i10 > 0 ? 1.0f : 0.0f);
        setSystemInsetAmount(i10 > 0 ? 1.0f : 0.0f);
        return cVarC;
    }

    void dispatchColorHint(int i10) {
    }

    int getThickness(int i10) {
        return i10;
    }
}
