package c1;

import android.animation.ValueAnimator;
import android.view.animation.LinearInterpolator;
import android.widget.Magnifier;
import ru.zdevs.zarchiver.ui.editor.EditableView;

public final class d {

    public final Magnifier f449a;

    public final ValueAnimator f450b;

    public float f451c;

    public float f452d;

    public float f453e;

    public float f454f;

    public float f455g;

    public float f456h;

    public d(EditableView editableView, int i2) {
        Magnifier.Builder builder = new Magnifier.Builder(editableView);
        float f2 = i2;
        this.f449a = builder.setSize((int) (f2 * 5.5f), (int) (f2 * 1.5f)).setElevation(0.0f).setInitialZoom(1.5f).setClippingEnabled(true).setCornerRadius(3.0f).setDefaultSourceToMagnifierOffset(0, (-i2) - (i2 / 2)).setSourceBounds(1, 0, 1, 0).build();
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f450b = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(100L);
        valueAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        valueAnimatorOfFloat.addUpdateListener(new c(this));
    }

    public final void a() {
        this.f449a.dismiss();
        this.f450b.cancel();
    }

    public final void b(float f2, float f3) {
        float f4 = this.f456h;
        ValueAnimator valueAnimator = this.f450b;
        if (f3 != f4) {
            if (valueAnimator.isRunning()) {
                valueAnimator.cancel();
                this.f451c = this.f453e;
                this.f452d = this.f454f;
            } else {
                this.f451c = this.f455g;
                this.f452d = this.f456h;
            }
            valueAnimator.start();
        } else if (!valueAnimator.isRunning()) {
            this.f449a.show(f2, f3);
        }
        this.f455g = f2;
        this.f456h = f3;
    }

    public final void c() {
        this.f449a.update();
    }
}
