package l0;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

public final class n extends CharacterStyle {

    private final boolean f65538a;

    private final boolean f65539b;

    public n(boolean z10, boolean z11) {
        this.f65538a = z10;
        this.f65539b = z11;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setUnderlineText(this.f65538a);
        textPaint.setStrikeThruText(this.f65539b);
    }
}
