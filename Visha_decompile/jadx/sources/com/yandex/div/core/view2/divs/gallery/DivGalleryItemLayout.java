package com.yandex.div.core.view2.divs.gallery;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.widget.DivViewWrapper;
import com.yandex.div.internal.widget.DivLayoutParams;
import defpackage.sj2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0013\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J+\u0010\r\u001a\u00020\f2\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u0019\u0010\u000f\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0019\u0010\u0012\u001a\u00020\u00112\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J\u0019\u0010\u0015\u001a\u00020\n2\b\u0010\u0014\u001a\u0004\u0018\u00010\nH\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\nH\u0014¢\u0006\u0004\b\u0017\u0010\u0018J\u001f\u0010\u001b\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\b2\u0006\u0010\u001a\u001a\u00020\bH\u0014¢\u0006\u0004\b\u001b\u0010\u001cJ7\u0010\"\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\b2\u0006\u0010\u001f\u001a\u00020\b2\u0006\u0010 \u001a\u00020\b2\u0006\u0010!\u001a\u00020\bH\u0014¢\u0006\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcom/yandex/div/core/view2/divs/gallery/DivGalleryItemLayout;", "Lcom/yandex/div/core/widget/DivViewWrapper;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/view/View;", "child", "", "index", "Landroid/view/ViewGroup$LayoutParams;", "params", "Lzfb;", "addView", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "setLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)V", "", "checkLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Z", "childLayoutParams", "generateLayoutParams", "(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;", "generateDefaultLayoutParams", "()Landroid/view/ViewGroup$LayoutParams;", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "changed", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "onLayout", "(ZIIII)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGalleryItemLayout extends DivViewWrapper {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGalleryItemLayout(Context context) {
        super(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        super.addView(child, 0, params);
        if (getLayoutParams() == null) {
            if ((child != null ? child.getLayoutParams() : null) != null) {
                setLayoutParams(child.getLayoutParams());
            }
        }
    }

    @Override
    public boolean checkLayoutParams(ViewGroup.LayoutParams params) {
        return params == null || !y45.e(params, getLayoutParams());
    }

    @Override
    public ViewGroup.LayoutParams generateDefaultLayoutParams() {
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams instanceof DivLayoutParams) {
            return layoutParams;
        }
        return layoutParams == null ? new DivLayoutParams(-2, -2) : super.generateLayoutParams(layoutParams);
    }

    @Override
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams childLayoutParams) {
        return sj2.b(generateDefaultLayoutParams(), childLayoutParams);
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
    public void onLayout(boolean changed, int left, int top, int right, int bottom) {
        View child = getChild();
        if (child != null) {
            child.layout(0, 0, right - left, bottom - top);
        }
    }

    @Override
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        View child = getChild();
        if (child != null) {
            child.measure(widthMeasureSpec, heightMeasureSpec);
            setMeasuredDimension(child.getMeasuredWidthAndState(), child.getMeasuredHeightAndState());
        } else {
            setMeasuredDimension(View.resolveSizeAndState(getPaddingLeft() + getSuggestedMinimumWidth() + getPaddingRight(), widthMeasureSpec, 0), View.resolveSizeAndState(getPaddingTop() + getSuggestedMinimumHeight() + getPaddingBottom(), heightMeasureSpec, 0));
        }
    }

    @Override
    public void releaseBorderDrawer() {
        super.releaseBorderDrawer();
    }

    @Override
    public void setLayoutParams(ViewGroup.LayoutParams params) {
        View child = getChild();
        if (child == null) {
            super.setLayoutParams(params);
            return;
        }
        if (params != null) {
            sj2.b(params, child.getLayoutParams());
        }
        super.setLayoutParams(params);
        child.setLayoutParams(params);
    }
}
