package defpackage;

import android.text.TextPaint;
import android.text.style.CharacterStyle;

public final class pf9 extends CharacterStyle {
    public final of9 a;

    public pf9(of9 of9Var) {
        y45.j(of9Var, "shadow");
        this.a = of9Var;
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        of9 of9Var = this.a;
        if (textPaint != null) {
            textPaint.setShadowLayer(of9Var.d(), of9Var.b(), of9Var.c(), of9Var.a());
        }
    }
}
