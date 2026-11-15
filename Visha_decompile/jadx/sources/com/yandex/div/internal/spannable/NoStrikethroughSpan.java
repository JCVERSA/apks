package com.yandex.div.internal.spannable;

import android.text.TextPaint;
import android.text.style.StrikethroughSpan;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/yandex/div/internal/spannable/NoStrikethroughSpan;", "Landroid/text/style/StrikethroughSpan;", MethodDecl.initName, "()V", "Landroid/text/TextPaint;", "ds", "Lzfb;", "updateDrawState", "(Landroid/text/TextPaint;)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class NoStrikethroughSpan extends StrikethroughSpan {
    @Override
    public void updateDrawState(TextPaint ds) {
        y45.j(ds, "ds");
        ds.setStrikeThruText(false);
    }
}
