package androidx.core.view;

import android.view.WindowInsetsAnimationController;

public final class WindowInsetsAnimationControllerCompat {
    private final b mImpl;

    private static class a extends b {

        private final WindowInsetsAnimationController f8029a;

        a(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.f8029a = windowInsetsAnimationController;
        }

        @Override
        void a(boolean z10) {
            this.f8029a.finish(z10);
        }

        @Override
        public float b() {
            return this.f8029a.getCurrentAlpha();
        }

        @Override
        public float c() {
            return this.f8029a.getCurrentFraction();
        }

        @Override
        public z0.c d() {
            return z0.c.f(this.f8029a.getCurrentInsets());
        }

        @Override
        public z0.c e() {
            return z0.c.f(this.f8029a.getHiddenStateInsets());
        }

        @Override
        public z0.c f() {
            return z0.c.f(this.f8029a.getShownStateInsets());
        }

        @Override
        public int g() {
            return this.f8029a.getTypes();
        }

        @Override
        boolean h() {
            return this.f8029a.isCancelled();
        }

        @Override
        boolean i() {
            return this.f8029a.isFinished();
        }

        @Override
        public void j(z0.c cVar, float f10, float f11) {
            this.f8029a.setInsetsAndAlpha(cVar == null ? null : cVar.g(), f10, f11);
        }
    }

    private static class b {
        b() {
        }

        abstract void a(boolean z10);

        public abstract float b();

        public abstract float c();

        public abstract z0.c d();

        public abstract z0.c e();

        public abstract z0.c f();

        public abstract int g();

        abstract boolean h();

        abstract boolean i();

        public abstract void j(z0.c cVar, float f10, float f11);
    }

    WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new a(windowInsetsAnimationController);
    }

    public void finish(boolean z10) {
        this.mImpl.a(z10);
    }

    public float getCurrentAlpha() {
        return this.mImpl.b();
    }

    public float getCurrentFraction() {
        return this.mImpl.c();
    }

    public z0.c getCurrentInsets() {
        return this.mImpl.d();
    }

    public z0.c getHiddenStateInsets() {
        return this.mImpl.e();
    }

    public z0.c getShownStateInsets() {
        return this.mImpl.f();
    }

    public int getTypes() {
        return this.mImpl.g();
    }

    public boolean isCancelled() {
        return this.mImpl.h();
    }

    public boolean isFinished() {
        return this.mImpl.i();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(z0.c cVar, float f10, float f11) {
        this.mImpl.j(cVar, f10, f11);
    }
}
