package com.yandex.div.core.tooltip;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.DivViewWrapper;
import defpackage.xi;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0010\u0018\u00002\u00020\u0001B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ/\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u00062\u0006\u0010\f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J)\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0014¢\u0006\u0004\b\u0018\u0010\u0019J+\u0010\u001d\u001a\u00020\u000e2\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u001a\u001a\u00020\u00062\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eR\u0016\u0010!\u001a\u0004\u0018\u00010\u00138VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001f\u0010 ¨\u0006\""}, d2 = {"Lcom/yandex/div/core/tooltip/DivTooltipContainer;", "Lcom/yandex/div/core/widget/DivViewWrapper;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "x", "y", "width", "height", "Lzfb;", "updateLocation", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "Landroid/view/View;", "child", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "index", "Landroid/view/ViewGroup$LayoutParams;", "params", "addView", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "getTooltipView", "()Landroid/view/View;", "tooltipView", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivTooltipContainer extends DivViewWrapper {
    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivTooltipContainer(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (getChildCount() == 1) {
            xi.i("Adding more than one child view to DivTooltipContainer is not allowed.");
        } else {
            super.addView(child, index, params);
        }
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        y45.j(canvas, "canvas");
        if (child != null && child.getVisibility() == 0) {
            BaseDivViewExtensionsKt.N(child, canvas);
        }
        return super.drawChild(canvas, child, drawingTime);
    }

    public View getTooltipView() {
        if (getChildCount() == 0) {
            return null;
        }
        return getChildAt(0);
    }

    @Override
    public void invalidateBorder() {
        super.invalidateBorder();
    }

    @Override
    public void onBoundsChanged(int i, int i2) {
        super.onBoundsChanged(i, i2);
    }

    @Override
    public void releaseBorderDrawer() {
        super.releaseBorderDrawer();
    }

    public void updateLocation(int x, int y, int width, int height) {
        View tooltipView = getTooltipView();
        if (tooltipView == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = tooltipView.getLayoutParams();
        ViewGroup.MarginLayoutParams marginLayoutParams = layoutParams instanceof ViewGroup.MarginLayoutParams ? (ViewGroup.MarginLayoutParams) layoutParams : null;
        if (marginLayoutParams == null) {
            return;
        }
        marginLayoutParams.leftMargin = x;
        marginLayoutParams.topMargin = y;
        marginLayoutParams.height = height;
        marginLayoutParams.width = width;
        tooltipView.requestLayout();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivTooltipContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivTooltipContainer(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivTooltipContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        setClipChildren(false);
        setClipToPadding(false);
    }
}
