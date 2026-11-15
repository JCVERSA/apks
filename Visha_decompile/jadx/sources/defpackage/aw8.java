package defpackage;

import android.graphics.Outline;
import android.graphics.Rect;
import android.view.View;
import android.view.ViewOutlineProvider;

public class aw8 extends ViewOutlineProvider {
    public final float a;

    public aw8(float f) {
        this.a = f;
    }

    @Override
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(new Rect(0, 0, view.getWidth(), view.getHeight()), this.a);
    }
}
