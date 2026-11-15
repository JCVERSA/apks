package com.yandex.div.core.player;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.yandex.div.R;
import com.yandex.div2.DivVideoScale;
import defpackage.ju2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u00012\u00020\u0002B%\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lcom/yandex/div/core/player/DivPlayerView;", "Landroid/widget/FrameLayout;", "Lju2;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public abstract class DivPlayerView extends FrameLayout implements ju2 {
    public DivPlayerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.divImageStyle : i);
    }

    public void attach(a aVar) {
        super.attach(aVar);
    }

    public void detach() {
        super.detach();
    }

    public a getAttachedPlayer() {
        return super.getAttachedPlayer();
    }

    public void setScale(DivVideoScale divVideoScale) {
        super.setScale(divVideoScale);
    }

    public void setVisibleOnScreen(boolean z) {
        super.setVisibleOnScreen(z);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }
}
