package com.yandex.div.core.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivBorderDrawer;
import com.yandex.div.internal.widget.FrameContainerLayout;
import com.yandex.div.internal.widget.TransientViewMixin;
import com.yandex.div2.DivBorder;
import defpackage.l7b;
import defpackage.pdc;
import defpackage.vg2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0010\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B'\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0018\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0011\u001a\u00020\u000e2\u0006\u0010\r\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0010J+\u0010\u0016\u001a\u00020\u000e2\b\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0013\u001a\u00020\b2\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u0011\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ)\u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\u001f\u0010 R\u0014\u0010\"\u001a\u00020!8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0013\u0010\u0012\u001a\u0004\u0018\u00010\f8F¢\u0006\u0006\u001a\u0004\b$\u0010%R$\u0010*\u001a\u00020!2\u0006\u0010&\u001a\u00020!8V@VX\u0096\u000e¢\u0006\f\u001a\u0004\b'\u0010#\"\u0004\b(\u0010)¨\u0006+"}, d2 = {"Lcom/yandex/div/core/widget/DivViewWrapper;", "Lcom/yandex/div/internal/widget/FrameContainerLayout;", "Lvg2;", "Ll7b;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "view", "Lzfb;", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "child", "index", "Landroid/view/ViewGroup$LayoutParams;", "params", "addView", "(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "", "isTransient", "()Z", "getChild", "()Landroid/view/View;", ES6Iterator.VALUE_PROPERTY, "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivViewWrapper extends FrameContainerLayout implements vg2, l7b {
    public final TransientViewMixin m;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivViewWrapper(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addView(View child, int index, ViewGroup.LayoutParams params) {
        if (getChildCount() != 0) {
            throw new IllegalArgumentException("ViewWrapper can host only one child view");
        }
        super.addView(child, 0, params);
    }

    public final View getChild() {
        if (getChildCount() == 0) {
            return null;
        }
        return getChildAt(0);
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        KeyEvent.Callback child = getChild();
        vg2 vg2Var = child instanceof vg2 ? (vg2) child : null;
        if (vg2Var != null) {
            return vg2Var.getDivBorderDrawer();
        }
        return null;
    }

    @Override
    public boolean getNeedClipping() {
        KeyEvent.Callback child = getChild();
        vg2 vg2Var = child instanceof vg2 ? (vg2) child : null;
        if (vg2Var != null) {
            return vg2Var.getNeedClipping();
        }
        return true;
    }

    public void invalidateBorder() {
        super.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.m.isTransient();
    }

    public void onBoundsChanged(int i, int i2) {
        super.onBoundsChanged(i, i2);
    }

    public void releaseBorderDrawer() {
        super.releaseBorderDrawer();
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        KeyEvent.Callback child = getChild();
        vg2 vg2Var = child instanceof vg2 ? (vg2) child : null;
        if (vg2Var != null) {
            vg2Var.setBorder(bindingContext, border, view);
        }
    }

    @Override
    public void setNeedClipping(boolean z) {
        KeyEvent.Callback child = getChild();
        vg2 vg2Var = child instanceof vg2 ? (vg2) child : null;
        if (vg2Var == null) {
            return;
        }
        vg2Var.setNeedClipping(z);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.m.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.m.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivViewWrapper(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivViewWrapper(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivViewWrapper(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.m = new TransientViewMixin();
        pdc.g(this);
        setImportantForAccessibility(2);
    }
}
