package defpackage;

import android.text.TextPaint;
import android.text.style.ClickableSpan;

public abstract class fo1 extends ClickableSpan {
    @Override
    public void updateDrawState(TextPaint textPaint) {
        textPaint.setColor(textPaint.linkColor);
        textPaint.setUnderlineText(false);
    }
}
