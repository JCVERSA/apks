package m6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.LinearInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class a implements b {

    public static final C0810a f66280b = new C0810a(null);

    private final float f66281a;

    public static final class C0810a {
        public C0810a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private C0810a() {
        }
    }

    @JvmOverloads
    public a() {
        this(0.0f, 1, null);
    }

    @Override
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator animator = ObjectAnimator.ofFloat(view, "alpha", this.f66281a, 1.0f);
        animator.setDuration(300L);
        animator.setInterpolator(new LinearInterpolator());
        Intrinsics.g(animator, "animator");
        return new Animator[]{animator};
    }

    public a(float f10) {
        this.f66281a = f10;
    }

    public a(float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.0f : f10);
    }
}
