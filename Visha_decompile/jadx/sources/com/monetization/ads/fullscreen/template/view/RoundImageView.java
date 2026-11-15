package com.monetization.ads.fullscreen.template.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.yandex.mobile.ads.impl.ou;
import com.yandex.mobile.ads.impl.pu;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B1\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/monetization/ads/fullscreen/template/view/RoundImageView;", "Landroid/widget/ImageView;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "", "defStyleAttr", "Lcom/yandex/mobile/ads/impl/pu;", "cornerViewRenderingControllerFactory", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/yandex/mobile/ads/impl/pu;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class RoundImageView extends ImageView {
    private final ou a;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public RoundImageView(Context context) {
        this(context, null, 0, null, 14, null);
        y45.j(context, "context");
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        this.a.a(canvas);
        super.onDraw(canvas);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a.a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public RoundImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, null, 12, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public RoundImageView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, null, 8, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public RoundImageView(Context context, AttributeSet attributeSet, int i, pu puVar) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        y45.j(puVar, "cornerViewRenderingControllerFactory");
        puVar.getClass();
        this.a = pu.a(context, this, attributeSet, i);
    }

    public RoundImageView(Context context, AttributeSet attributeSet, int i, pu puVar, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i, (i2 & 8) != 0 ? new pu() : puVar);
    }
}
