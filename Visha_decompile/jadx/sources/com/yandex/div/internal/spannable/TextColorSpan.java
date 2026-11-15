package com.yandex.div.internal.spannable;

import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0017\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div/internal/spannable/TextColorSpan;", "Landroid/text/style/ForegroundColorSpan;", "", "color", MethodDecl.initName, "(I)V", "Landroid/text/TextPaint;", "textPaint", "Lzfb;", "updateDrawState", "(Landroid/text/TextPaint;)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class TextColorSpan extends ForegroundColorSpan {
    public TextColorSpan(int i) {
        super(i);
    }

    @Override
    public void updateDrawState(TextPaint textPaint) {
        y45.j(textPaint, "textPaint");
        super.updateDrawState(textPaint);
        textPaint.setShader(null);
    }
}
