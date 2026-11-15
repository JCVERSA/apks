package androidx.compose.material.ripple;

import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import androidx.compose.ui.graphics.u1;
import androidx.compose.ui.graphics.w1;
import androidx.core.view.ViewCompat;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.ranges.RangesKt;

final class k extends RippleDrawable {

    public static final a f3198e = new a(null);

    private final boolean f3199a;

    private u1 f3200b;

    private Integer f3201c;

    private boolean f3202d;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    private static final class b {

        public static final b f3203a = new b();

        private b() {
        }

        public final void a(RippleDrawable rippleDrawable, int i10) {
            rippleDrawable.setRadius(i10);
        }
    }

    public k(boolean z10) {
        super(ColorStateList.valueOf(ViewCompat.MEASURED_STATE_MASK), null, z10 ? new ColorDrawable(-1) : null);
        this.f3199a = z10;
    }

    private final long a(long j10, float f10) {
        if (Build.VERSION.SDK_INT < 28) {
            f10 *= 2;
        }
        return u1.k(j10, RangesKt.g(f10, 1.0f), 0.0f, 0.0f, 0.0f, 14, null);
    }

    public final void b(long j10, float f10) {
        long jA = a(j10, f10);
        u1 u1Var = this.f3200b;
        if (u1Var == null ? false : u1.m(u1Var.u(), jA)) {
            return;
        }
        this.f3200b = u1.g(jA);
        setColor(ColorStateList.valueOf(w1.j(jA)));
    }

    public final void c(int i10) {
        Integer num = this.f3201c;
        if (num != null && num.intValue() == i10) {
            return;
        }
        this.f3201c = Integer.valueOf(i10);
        b.f3203a.a(this, i10);
    }

    @Override
    public Rect getDirtyBounds() {
        if (!this.f3199a) {
            this.f3202d = true;
        }
        Rect dirtyBounds = super.getDirtyBounds();
        this.f3202d = false;
        return dirtyBounds;
    }

    @Override
    public boolean isProjected() {
        return this.f3202d;
    }
}
