package androidx.compose.ui.platform;

import android.view.ViewConfiguration;

public final class l0 implements o2 {

    private final ViewConfiguration f5531a;

    public l0(ViewConfiguration viewConfiguration) {
        this.f5531a = viewConfiguration;
    }

    @Override
    public long a() {
        return ViewConfiguration.getDoubleTapTimeout();
    }

    @Override
    public long b() {
        return 40L;
    }

    @Override
    public long c() {
        return ViewConfiguration.getLongPressTimeout();
    }

    @Override
    public long d() {
        return n2.b(this);
    }

    @Override
    public float e() {
        return this.f5531a.getScaledMaximumFlingVelocity();
    }

    @Override
    public float f() {
        return this.f5531a.getScaledTouchSlop();
    }
}
