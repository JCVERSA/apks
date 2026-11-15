package androidx.core.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowInsets;
import android.view.WindowInsetsAnimation;
import android.view.WindowInsetsAnimation$Callback;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import androidx.core.R$id;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Objects;

public final class WindowInsetsAnimationCompat {
    private static final boolean DEBUG = false;
    private static final String TAG = "WindowInsetsAnimCompat";
    private b mImpl;

    private static class Impl21 extends b {

        private static final Interpolator f8004f = new PathInterpolator(0.0f, 1.1f, 0.0f, 1.0f);

        private static final Interpolator f8005g = new o1.a();

        private static final Interpolator f8006h = new DecelerateInterpolator(1.5f);

        private static final Interpolator f8007i = new AccelerateInterpolator(1.5f);

        private static class Impl21OnApplyWindowInsetsListener implements View.OnApplyWindowInsetsListener {

            final Callback f8008a;

            private WindowInsetsCompat f8009b;

            class a implements ValueAnimator.AnimatorUpdateListener {

                final WindowInsetsAnimationCompat f8010a;

                final WindowInsetsCompat f8011b;

                final WindowInsetsCompat f8012c;

                final int f8013d;

                final View f8014e;

                a(WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i10, View view) {
                    this.f8010a = windowInsetsAnimationCompat;
                    this.f8011b = windowInsetsCompat;
                    this.f8012c = windowInsetsCompat2;
                    this.f8013d = i10;
                    this.f8014e = view;
                }

                @Override
                public void onAnimationUpdate(ValueAnimator valueAnimator) {
                    this.f8010a.setFraction(valueAnimator.getAnimatedFraction());
                    Impl21.o(this.f8014e, Impl21.s(this.f8011b, this.f8012c, this.f8010a.getInterpolatedFraction(), this.f8013d), Collections.singletonList(this.f8010a));
                }
            }

            class b extends AnimatorListenerAdapter {

                final WindowInsetsAnimationCompat f8016a;

                final View f8017b;

                b(WindowInsetsAnimationCompat windowInsetsAnimationCompat, View view) {
                    this.f8016a = windowInsetsAnimationCompat;
                    this.f8017b = view;
                }

                @Override
                public void onAnimationEnd(Animator animator) {
                    this.f8016a.setFraction(1.0f);
                    Impl21.m(this.f8017b, this.f8016a);
                }
            }

            Impl21OnApplyWindowInsetsListener(View view, Callback callback) {
                this.f8008a = callback;
                WindowInsetsCompat rootWindowInsets = ViewCompat.getRootWindowInsets(view);
                this.f8009b = rootWindowInsets != null ? new WindowInsetsCompat.Builder(rootWindowInsets).build() : null;
            }

            @Override
            public WindowInsets onApplyWindowInsets(final View view, WindowInsets windowInsets) {
                if (!view.isLaidOut()) {
                    this.f8009b = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                    return Impl21.q(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat = WindowInsetsCompat.toWindowInsetsCompat(windowInsets, view);
                if (this.f8009b == null) {
                    this.f8009b = ViewCompat.getRootWindowInsets(view);
                }
                if (this.f8009b == null) {
                    this.f8009b = windowInsetsCompat;
                    return Impl21.q(view, windowInsets);
                }
                Callback callbackR = Impl21.r(view);
                if (callbackR != null && Objects.equals(callbackR.mDispachedInsets, windowInsetsCompat)) {
                    return Impl21.q(view, windowInsets);
                }
                int[] iArr = new int[1];
                int[] iArr2 = new int[1];
                Impl21.i(windowInsetsCompat, this.f8009b, iArr, iArr2);
                int i10 = iArr[0];
                int i11 = iArr2[0];
                int i12 = i10 | i11;
                if (i12 == 0) {
                    this.f8009b = windowInsetsCompat;
                    return Impl21.q(view, windowInsets);
                }
                WindowInsetsCompat windowInsetsCompat2 = this.f8009b;
                final WindowInsetsAnimationCompat windowInsetsAnimationCompat = new WindowInsetsAnimationCompat(i12, Impl21.k(i10, i11), (WindowInsetsCompat.Type.ime() & i12) != 0 ? 160L : 250L);
                windowInsetsAnimationCompat.setFraction(0.0f);
                final ValueAnimator duration = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(windowInsetsAnimationCompat.getDurationMillis());
                final BoundsCompat boundsCompatJ = Impl21.j(windowInsetsCompat, windowInsetsCompat2, i12);
                Impl21.n(view, windowInsetsAnimationCompat, windowInsetsCompat, false);
                duration.addUpdateListener(new a(windowInsetsAnimationCompat, windowInsetsCompat, windowInsetsCompat2, i12, view));
                duration.addListener(new b(windowInsetsAnimationCompat, view));
                OneShotPreDrawListener.add(view, new Runnable() {
                    @Override
                    public void run() {
                        Impl21.p(view, windowInsetsAnimationCompat, boundsCompatJ);
                        duration.start();
                    }
                });
                this.f8009b = windowInsetsCompat;
                return Impl21.q(view, windowInsets);
            }
        }

        Impl21(int i10, Interpolator interpolator, long j10) {
            super(i10, interpolator, j10);
        }

        static void i(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int[] iArr, int[] iArr2) {
            for (int i10 = 1; i10 <= 512; i10 <<= 1) {
                z0.c insets = windowInsetsCompat.getInsets(i10);
                z0.c insets2 = windowInsetsCompat2.getInsets(i10);
                int i11 = insets.f76465a;
                int i12 = insets2.f76465a;
                boolean z10 = i11 > i12 || insets.f76466b > insets2.f76466b || insets.f76467c > insets2.f76467c || insets.f76468d > insets2.f76468d;
                if (z10 != (i11 < i12 || insets.f76466b < insets2.f76466b || insets.f76467c < insets2.f76467c || insets.f76468d < insets2.f76468d)) {
                    if (z10) {
                        iArr[0] = iArr[0] | i10;
                    } else {
                        iArr2[0] = iArr2[0] | i10;
                    }
                }
            }
        }

        static BoundsCompat j(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, int i10) {
            z0.c insets = windowInsetsCompat.getInsets(i10);
            z0.c insets2 = windowInsetsCompat2.getInsets(i10);
            return new BoundsCompat(z0.c.c(Math.min(insets.f76465a, insets2.f76465a), Math.min(insets.f76466b, insets2.f76466b), Math.min(insets.f76467c, insets2.f76467c), Math.min(insets.f76468d, insets2.f76468d)), z0.c.c(Math.max(insets.f76465a, insets2.f76465a), Math.max(insets.f76466b, insets2.f76466b), Math.max(insets.f76467c, insets2.f76467c), Math.max(insets.f76468d, insets2.f76468d)));
        }

        static Interpolator k(int i10, int i11) {
            if ((WindowInsetsCompat.Type.ime() & i10) != 0) {
                return f8004f;
            }
            if ((WindowInsetsCompat.Type.ime() & i11) != 0) {
                return f8005g;
            }
            if ((i10 & WindowInsetsCompat.Type.systemBars()) != 0) {
                return f8006h;
            }
            if ((WindowInsetsCompat.Type.systemBars() & i11) != 0) {
                return f8007i;
            }
            return null;
        }

        private static View.OnApplyWindowInsetsListener l(View view, Callback callback) {
            return new Impl21OnApplyWindowInsetsListener(view, callback);
        }

        static void m(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.onEnd(windowInsetsAnimationCompat);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    m(viewGroup.getChildAt(i10), windowInsetsAnimationCompat);
                }
            }
        }

        static void n(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, WindowInsetsCompat windowInsetsCompat, boolean z10) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.mDispachedInsets = windowInsetsCompat;
                if (!z10) {
                    callbackR.onPrepare(windowInsetsAnimationCompat);
                    z10 = callbackR.getDispatchMode() == 0;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    n(viewGroup.getChildAt(i10), windowInsetsAnimationCompat, windowInsetsCompat, z10);
                }
            }
        }

        static void o(View view, WindowInsetsCompat windowInsetsCompat, List list) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                windowInsetsCompat = callbackR.onProgress(windowInsetsCompat, list);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    o(viewGroup.getChildAt(i10), windowInsetsCompat, list);
                }
            }
        }

        static void p(View view, WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            Callback callbackR = r(view);
            if (callbackR != null) {
                callbackR.onStart(windowInsetsAnimationCompat, boundsCompat);
                if (callbackR.getDispatchMode() == 0) {
                    return;
                }
            }
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
                    p(viewGroup.getChildAt(i10), windowInsetsAnimationCompat, boundsCompat);
                }
            }
        }

        static WindowInsets q(View view, WindowInsets windowInsets) {
            return view.getTag(R$id.tag_on_apply_window_listener) != null ? windowInsets : view.onApplyWindowInsets(windowInsets);
        }

        static Callback r(View view) {
            Object tag = view.getTag(R$id.tag_window_insets_animation_callback);
            if (tag instanceof Impl21OnApplyWindowInsetsListener) {
                return ((Impl21OnApplyWindowInsetsListener) tag).f8008a;
            }
            return null;
        }

        static WindowInsetsCompat s(WindowInsetsCompat windowInsetsCompat, WindowInsetsCompat windowInsetsCompat2, float f10, int i10) {
            WindowInsetsCompat.Builder builder = new WindowInsetsCompat.Builder(windowInsetsCompat);
            for (int i11 = 1; i11 <= 512; i11 <<= 1) {
                if ((i10 & i11) == 0) {
                    builder.setInsets(i11, windowInsetsCompat.getInsets(i11));
                } else {
                    z0.c insets = windowInsetsCompat.getInsets(i11);
                    z0.c insets2 = windowInsetsCompat2.getInsets(i11);
                    float f11 = 1.0f - f10;
                    builder.setInsets(i11, WindowInsetsCompat.insetInsets(insets, (int) (((double) ((insets.f76465a - insets2.f76465a) * f11)) + 0.5d), (int) (((double) ((insets.f76466b - insets2.f76466b) * f11)) + 0.5d), (int) (((double) ((insets.f76467c - insets2.f76467c) * f11)) + 0.5d), (int) (((double) ((insets.f76468d - insets2.f76468d) * f11)) + 0.5d)));
                }
            }
            return builder.build();
        }

        static void t(View view, Callback callback) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListenerL = callback != null ? l(view, callback) : null;
            view.setTag(R$id.tag_window_insets_animation_callback, onApplyWindowInsetsListenerL);
            if (view.getTag(R$id.tag_compat_insets_dispatch) == null && view.getTag(R$id.tag_on_apply_window_listener) == null) {
                view.setOnApplyWindowInsetsListener(onApplyWindowInsetsListenerL);
            }
        }
    }

    private static class b {

        private final int f8024a;

        private float f8025b;

        private final Interpolator f8026c;

        private final long f8027d;

        private float f8028e = 1.0f;

        b(int i10, Interpolator interpolator, long j10) {
            this.f8024a = i10;
            this.f8026c = interpolator;
            this.f8027d = j10;
        }

        public float a() {
            return this.f8028e;
        }

        public long b() {
            return this.f8027d;
        }

        public float c() {
            return this.f8025b;
        }

        public float d() {
            Interpolator interpolator = this.f8026c;
            return interpolator != null ? interpolator.getInterpolation(this.f8025b) : this.f8025b;
        }

        public Interpolator e() {
            return this.f8026c;
        }

        public int f() {
            return this.f8024a;
        }

        public void g(float f10) {
            this.f8028e = f10;
        }

        public void h(float f10) {
            this.f8025b = f10;
        }
    }

    public WindowInsetsAnimationCompat(int i10, Interpolator interpolator, long j10) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new a(i10, interpolator, j10);
        } else {
            this.mImpl = new Impl21(i10, interpolator, j10);
        }
    }

    static void setCallback(View view, Callback callback) {
        if (Build.VERSION.SDK_INT >= 30) {
            a.l(view, callback);
        } else {
            Impl21.t(view, callback);
        }
    }

    static WindowInsetsAnimationCompat toWindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        return new WindowInsetsAnimationCompat(windowInsetsAnimation);
    }

    public float getAlpha() {
        return this.mImpl.a();
    }

    public long getDurationMillis() {
        return this.mImpl.b();
    }

    public float getFraction() {
        return this.mImpl.c();
    }

    public float getInterpolatedFraction() {
        return this.mImpl.d();
    }

    public Interpolator getInterpolator() {
        return this.mImpl.e();
    }

    public int getTypeMask() {
        return this.mImpl.f();
    }

    public void setAlpha(float f10) {
        this.mImpl.g(f10);
    }

    public void setFraction(float f10) {
        this.mImpl.h(f10);
    }

    private static class a extends b {

        private final WindowInsetsAnimation f8019f;

        private static class C0062a extends WindowInsetsAnimation$Callback {

            private final Callback f8020a;

            private List f8021b;

            private ArrayList f8022c;

            private final HashMap f8023d;

            C0062a(Callback callback) {
                super(callback.getDispatchMode());
                this.f8023d = new HashMap();
                this.f8020a = callback;
            }

            private WindowInsetsAnimationCompat a(WindowInsetsAnimation windowInsetsAnimation) {
                WindowInsetsAnimationCompat windowInsetsAnimationCompat = (WindowInsetsAnimationCompat) this.f8023d.get(windowInsetsAnimation);
                if (windowInsetsAnimationCompat != null) {
                    return windowInsetsAnimationCompat;
                }
                WindowInsetsAnimationCompat windowInsetsAnimationCompat2 = WindowInsetsAnimationCompat.toWindowInsetsAnimationCompat(windowInsetsAnimation);
                this.f8023d.put(windowInsetsAnimation, windowInsetsAnimationCompat2);
                return windowInsetsAnimationCompat2;
            }

            public void onEnd(WindowInsetsAnimation windowInsetsAnimation) {
                this.f8020a.onEnd(a(windowInsetsAnimation));
                this.f8023d.remove(windowInsetsAnimation);
            }

            public void onPrepare(WindowInsetsAnimation windowInsetsAnimation) {
                this.f8020a.onPrepare(a(windowInsetsAnimation));
            }

            public WindowInsets onProgress(WindowInsets windowInsets, List list) {
                ArrayList arrayList = this.f8022c;
                if (arrayList == null) {
                    ArrayList arrayList2 = new ArrayList(list.size());
                    this.f8022c = arrayList2;
                    this.f8021b = Collections.unmodifiableList(arrayList2);
                } else {
                    arrayList.clear();
                }
                for (int size = list.size() - 1; size >= 0; size--) {
                    WindowInsetsAnimation windowInsetsAnimationA = e1.a(list.get(size));
                    WindowInsetsAnimationCompat windowInsetsAnimationCompatA = a(windowInsetsAnimationA);
                    windowInsetsAnimationCompatA.setFraction(windowInsetsAnimationA.getFraction());
                    this.f8022c.add(windowInsetsAnimationCompatA);
                }
                return this.f8020a.onProgress(WindowInsetsCompat.toWindowInsetsCompat(windowInsets), this.f8021b).toWindowInsets();
            }

            public WindowInsetsAnimation.Bounds onStart(WindowInsetsAnimation windowInsetsAnimation, WindowInsetsAnimation.Bounds bounds) {
                return this.f8020a.onStart(a(windowInsetsAnimation), BoundsCompat.toBoundsCompat(bounds)).toBounds();
            }
        }

        a(WindowInsetsAnimation windowInsetsAnimation) {
            super(0, null, 0L);
            this.f8019f = windowInsetsAnimation;
        }

        public static WindowInsetsAnimation.Bounds i(BoundsCompat boundsCompat) {
            u0.a();
            return t0.a(boundsCompat.getLowerBound().g(), boundsCompat.getUpperBound().g());
        }

        public static z0.c j(WindowInsetsAnimation.Bounds bounds) {
            return z0.c.f(bounds.getUpperBound());
        }

        public static z0.c k(WindowInsetsAnimation.Bounds bounds) {
            return z0.c.f(bounds.getLowerBound());
        }

        public static void l(View view, Callback callback) {
            view.setWindowInsetsAnimationCallback(callback != null ? new C0062a(callback) : null);
        }

        @Override
        public float a() {
            return this.f8019f.getAlpha();
        }

        @Override
        public long b() {
            return this.f8019f.getDurationMillis();
        }

        @Override
        public float c() {
            return this.f8019f.getFraction();
        }

        @Override
        public float d() {
            return this.f8019f.getInterpolatedFraction();
        }

        @Override
        public Interpolator e() {
            return this.f8019f.getInterpolator();
        }

        @Override
        public int f() {
            return this.f8019f.getTypeMask();
        }

        @Override
        public void g(float f10) {
            this.f8019f.setAlpha(f10);
        }

        @Override
        public void h(float f10) {
            this.f8019f.setFraction(f10);
        }

        a(int i10, Interpolator interpolator, long j10) {
            this(s0.a(i10, interpolator, j10));
        }
    }

    public static final class BoundsCompat {
        private final z0.c mLowerBound;
        private final z0.c mUpperBound;

        public BoundsCompat(z0.c cVar, z0.c cVar2) {
            this.mLowerBound = cVar;
            this.mUpperBound = cVar2;
        }

        public static BoundsCompat toBoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            return new BoundsCompat(bounds);
        }

        public z0.c getLowerBound() {
            return this.mLowerBound;
        }

        public z0.c getUpperBound() {
            return this.mUpperBound;
        }

        public BoundsCompat inset(z0.c cVar) {
            return new BoundsCompat(WindowInsetsCompat.insetInsets(this.mLowerBound, cVar.f76465a, cVar.f76466b, cVar.f76467c, cVar.f76468d), WindowInsetsCompat.insetInsets(this.mUpperBound, cVar.f76465a, cVar.f76466b, cVar.f76467c, cVar.f76468d));
        }

        public WindowInsetsAnimation.Bounds toBounds() {
            return a.i(this);
        }

        public String toString() {
            return "Bounds{lower=" + this.mLowerBound + " upper=" + this.mUpperBound + "}";
        }

        private BoundsCompat(WindowInsetsAnimation.Bounds bounds) {
            this.mLowerBound = a.k(bounds);
            this.mUpperBound = a.j(bounds);
        }
    }

    private WindowInsetsAnimationCompat(WindowInsetsAnimation windowInsetsAnimation) {
        this(0, null, 0L);
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new a(windowInsetsAnimation);
        }
    }

    public static abstract class Callback {
        public static final int DISPATCH_MODE_CONTINUE_ON_SUBTREE = 1;
        public static final int DISPATCH_MODE_STOP = 0;
        WindowInsetsCompat mDispachedInsets;
        private final int mDispatchMode;

        @Retention(RetentionPolicy.SOURCE)
        public @interface DispatchMode {
        }

        public Callback(int i10) {
            this.mDispatchMode = i10;
        }

        public final int getDispatchMode() {
            return this.mDispatchMode;
        }

        public abstract WindowInsetsCompat onProgress(WindowInsetsCompat windowInsetsCompat, List<WindowInsetsAnimationCompat> list);

        public void onEnd(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public void onPrepare(WindowInsetsAnimationCompat windowInsetsAnimationCompat) {
        }

        public BoundsCompat onStart(WindowInsetsAnimationCompat windowInsetsAnimationCompat, BoundsCompat boundsCompat) {
            return boundsCompat;
        }
    }
}
