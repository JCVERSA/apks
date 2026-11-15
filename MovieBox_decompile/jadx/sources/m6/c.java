package m6;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.view.View;
import android.view.animation.DecelerateInterpolator;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c implements b {

    public static final a f66282b = new a(null);

    private final float f66283a;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    @JvmOverloads
    public c() {
        this(0.0f, 1, null);
    }

    @Override
    public Animator[] a(View view) {
        Intrinsics.h(view, "view");
        ObjectAnimator scaleX = ObjectAnimator.ofFloat(view, "scaleX", this.f66283a, 1.0f);
        scaleX.setDuration(300L);
        scaleX.setInterpolator(new DecelerateInterpolator());
        ObjectAnimator scaleY = ObjectAnimator.ofFloat(view, "scaleY", this.f66283a, 1.0f);
        scaleY.setDuration(300L);
        scaleY.setInterpolator(new DecelerateInterpolator());
        Intrinsics.g(scaleX, "scaleX");
        Intrinsics.g(scaleY, "scaleY");
        return new Animator[]{scaleX, scaleY};
    }

    public c(float f10) {
        this.f66283a = f10;
    }

    public c(float f10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this((i10 & 1) != 0 ? 0.5f : f10);
    }
}
