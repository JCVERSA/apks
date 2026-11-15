package androidx.compose.foundation;

import android.content.Context;
import android.widget.EdgeEffect;

final class u extends EdgeEffect {

    private final float f3036a;

    private float f3037b;

    public u(Context context) {
        super(context);
        this.f3036a = o0.a.a(context).D0(o0.i.g(1));
    }

    public final void a(float f10) {
        float f11 = this.f3037b + f10;
        this.f3037b = f11;
        if (Math.abs(f11) > this.f3036a) {
            onRelease();
        }
    }

    @Override
    public void onAbsorb(int i10) {
        this.f3037b = 0.0f;
        super.onAbsorb(i10);
    }

    @Override
    public void onPull(float f10, float f11) {
        this.f3037b = 0.0f;
        super.onPull(f10, f11);
    }

    @Override
    public void onRelease() {
        this.f3037b = 0.0f;
        super.onRelease();
    }

    @Override
    public void onPull(float f10) {
        this.f3037b = 0.0f;
        super.onPull(f10);
    }
}
