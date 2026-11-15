package com.yandex.div.core.view2.divs.pager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.DivViewWrapper;
import defpackage.c74;
import defpackage.odc;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\r\b\u0001\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\tH\u0014¢\u0006\u0004\b\r\u0010\u000eJ)\u0010\u0015\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u0014\u001a\u00020\u0013H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0018\u0010\u0019J'\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001a\u001a\u00020\t2\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u001b\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001f¨\u0006 "}, d2 = {"Lcom/yandex/div/core/view2/divs/pager/DivPagerPageLayout;", "Lcom/yandex/div/core/widget/DivViewWrapper;", "Landroid/content/Context;", "context", "Lkotlin/Function0;", "", "isHorizontal", MethodDecl.initName, "(Landroid/content/Context;Lc74;)V", "", "widthMeasureSpec", "heightMeasureSpec", "Lzfb;", "onMeasure", "(II)V", "Landroid/graphics/Canvas;", "canvas", "Landroid/view/View;", "child", "", "drawingTime", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "parentSpec", TtmlNode.TAG_P, "(I)I", PlayAudioData.TAG_SIZE, "alongScrollAxis", "q", "(IIZ)I", "n", "Lc74;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SuppressLint({"ViewConstructor"})
public final class DivPagerPageLayout extends DivViewWrapper {

    public final c74 isHorizontal;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPagerPageLayout(Context context, c74 c74Var) {
        super(context, null, 0, 6, null);
        y45.j(context, "context");
        y45.j(c74Var, "isHorizontal");
        this.isHorizontal = c74Var;
        setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
    }

    @Override
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        y45.j(canvas, "canvas");
        if (child != null && child.getVisibility() == 0) {
            BaseDivViewExtensionsKt.N(child, canvas);
        }
        return super.drawChild(canvas, child, drawingTime);
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
    public void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        if (getChildCount() == 0) {
            super.onMeasure(widthMeasureSpec, heightMeasureSpec);
            return;
        }
        ViewGroup.LayoutParams layoutParams = getChildAt(0).getLayoutParams();
        boolean zBooleanValue = ((Boolean) this.isHorizontal.invoke()).booleanValue();
        if (zBooleanValue) {
            setMinimumHeight(p(heightMeasureSpec));
        } else {
            setMinimumWidth(p(widthMeasureSpec));
        }
        super.onMeasure(q(layoutParams.width, widthMeasureSpec, zBooleanValue), q(layoutParams.height, heightMeasureSpec, !zBooleanValue));
    }

    public final int p(int parentSpec) {
        if (odc.f(parentSpec)) {
            return 0;
        }
        return View.MeasureSpec.getSize(parentSpec);
    }

    public final int q(int size, int parentSpec, boolean alongScrollAxis) {
        return (alongScrollAxis || size == -1 || size == -3) ? parentSpec : odc.i();
    }

    @Override
    public void releaseBorderDrawer() {
        super.releaseBorderDrawer();
    }
}
