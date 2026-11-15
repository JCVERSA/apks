package com.monetization.ads.fullscreen.template.view;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.er;
import com.yandex.mobile.ads.impl.ou;
import com.yandex.mobile.ads.impl.pu0;
import com.yandex.mobile.ads.impl.qu0;
import com.yandex.mobile.ads.impl.ry1;
import com.yandex.mobile.ads.impl.su0;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Lcom/monetization/ads/fullscreen/template/view/ExtendedViewContainer;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lcom/yandex/mobile/ads/impl/su0;", "measureSpecProvider", "Lzfb;", "setMeasureSpecProvider", "(Lcom/yandex/mobile/ads/impl/su0;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public final class ExtendedViewContainer extends FrameLayout {
    private final ou a;
    private su0 b;
    private su0 c;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedViewContainer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private final er a(float f, float f2) {
        y45.j(this, "view");
        Context applicationContext = getContext().getApplicationContext();
        y45.i(applicationContext, "getApplicationContext(...)");
        qu0 qu0Var = new qu0(this, f, applicationContext, new su0.a());
        y45.j(this, "view");
        Context applicationContext2 = getContext().getApplicationContext();
        y45.i(applicationContext2, "getApplicationContext(...)");
        return new er(qu0Var, new pu0(this, f2, applicationContext2));
    }

    @Override
    public final void onDraw(Canvas canvas) {
        y45.j(canvas, "canvas");
        this.a.a(canvas);
        super.onDraw(canvas);
    }

    @Override
    public final void onMeasure(int i, int i2) {
        su0.a aVarA = this.c.a(i, i2);
        super.onMeasure(aVarA.a, aVarA.b);
        this.a.a();
    }

    public final void setMeasureSpecProvider(su0 measureSpecProvider) {
        y45.j(measureSpecProvider, "measureSpecProvider");
        this.c = new er(this.b, measureSpecProvider);
        requestLayout();
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedViewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public ExtendedViewContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public ExtendedViewContainer(Context context, AttributeSet attributeSet, int i) {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        int dimensionPixelSize3;
        int dimensionPixelSize4;
        super(context, attributeSet, i);
        y45.j(context, "context");
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MonetizationAdsInternalExtendedContainer, i, 0);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            int dimensionPixelSize5 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_corner_radius, 0);
            dimensionPixelSize2 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_top_left_corner_radius, dimensionPixelSize5);
            dimensionPixelSize3 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_top_right_corner_radius, dimensionPixelSize5);
            dimensionPixelSize4 = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_right_corner_radius, dimensionPixelSize5);
            dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_bottom_left_corner_radius, dimensionPixelSize5);
            this.b = a(typedArrayObtainStyledAttributes.getFloat(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_width, 1.0f), typedArrayObtainStyledAttributes.getFloat(R.styleable.MonetizationAdsInternalExtendedContainer_monetization_internal_max_screen_height, 1.0f));
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.b = new ry1();
            dimensionPixelSize = 0;
            dimensionPixelSize2 = 0;
            dimensionPixelSize3 = 0;
            dimensionPixelSize4 = 0;
        }
        this.c = this.b;
        this.a = new ou(this, dimensionPixelSize2, dimensionPixelSize3, dimensionPixelSize4, dimensionPixelSize);
        setWillNotDraw(false);
    }
}
