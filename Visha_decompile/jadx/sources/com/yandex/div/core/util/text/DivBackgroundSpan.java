package com.yandex.div.core.util.text;

import android.text.TextPaint;
import android.text.style.UnderlineSpan;
import com.yandex.div2.DivTextRangeBackground;
import com.yandex.div2.DivTextRangeBorder;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\b\u0000\u0018\u00002\u00020\u0001B\u001b\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0019\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\r\u001a\u0004\b\u000e\u0010\u000fR\u0019\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/yandex/div/core/util/text/DivBackgroundSpan;", "Landroid/text/style/UnderlineSpan;", "Lcom/yandex/div2/DivTextRangeBorder;", "border", "Lcom/yandex/div2/DivTextRangeBackground;", "background", MethodDecl.initName, "(Lcom/yandex/div2/DivTextRangeBorder;Lcom/yandex/div2/DivTextRangeBackground;)V", "Landroid/text/TextPaint;", "ds", "Lzfb;", "updateDrawState", "(Landroid/text/TextPaint;)V", "Lcom/yandex/div2/DivTextRangeBorder;", "getBorder", "()Lcom/yandex/div2/DivTextRangeBorder;", "Lcom/yandex/div2/DivTextRangeBackground;", "getBackground", "()Lcom/yandex/div2/DivTextRangeBackground;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivBackgroundSpan extends UnderlineSpan {
    private final DivTextRangeBackground background;
    private final DivTextRangeBorder border;

    public DivBackgroundSpan(DivTextRangeBorder divTextRangeBorder, DivTextRangeBackground divTextRangeBackground) {
        this.border = divTextRangeBorder;
        this.background = divTextRangeBackground;
    }

    public final DivTextRangeBackground getBackground() {
        return this.background;
    }

    public final DivTextRangeBorder getBorder() {
        return this.border;
    }

    @Override
    public void updateDrawState(TextPaint ds) {
        y45.j(ds, "ds");
        ds.setUnderlineText(false);
    }
}
