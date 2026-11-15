package l0;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

public final class l extends CharacterStyle {

    private final int f65533a;

    private final float f65534b;

    private final float f65535c;

    private final float f65536d;

    public l(int i10, float f10, float f11, float f12) {
        this.f65533a = i10;
        this.f65534b = f10;
        this.f65535c = f11;
        this.f65536d = f12;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setShadowLayer(this.f65536d, this.f65534b, this.f65535c, this.f65533a);
    }
}
