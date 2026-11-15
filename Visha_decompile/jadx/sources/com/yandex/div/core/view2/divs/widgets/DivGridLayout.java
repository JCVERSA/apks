package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.GridContainer;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.ig2;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.wv2;
import defpackage.y45;
import defpackage.zr8;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0096\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0013J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0013J\u0010\u0010\u001d\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0013J*\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b(\u0010'J/\u0010-\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\tH\u0014¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u000f2\u0006\u0010/\u001a\u00020\"H\u0016¢\u0006\u0004\b0\u0010'J\u0017\u00103\u001a\u00020\u000f2\u0006\u00102\u001a\u000201H\u0016¢\u0006\u0004\b3\u00104J)\u00108\u001a\u0002072\u0006\u00102\u001a\u0002012\b\u0010/\u001a\u0004\u0018\u00010\"2\u0006\u00106\u001a\u000205H\u0014¢\u0006\u0004\b8\u00109R$\u0010A\u001a\u0004\u0018\u00010:8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bB\u0010C\"\u0004\bD\u0010ER\u001e\u0010J\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bF\u0010G\"\u0004\bH\u0010IR\u0014\u0010K\u001a\u0002078\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bK\u0010LR\u001c\u0010P\u001a\u0002078\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bM\u0010L\"\u0004\bN\u0010OR\u001a\u0010T\u001a\b\u0012\u0004\u0012\u00020\r0Q8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bR\u0010S¨\u0006U"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivGridLayout;", "Lcom/yandex/div/core/widget/GridContainer;", "Lmk2;", "Lcom/yandex/div2/Div$f;", "Lig2;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "child", "onViewRemoved", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "Lzr8;", GslbInterceptor.HEADER_KEY_GSLB, "Lzr8;", "getReleaseViewVisitor$div_release", "()Lzr8;", "setReleaseViewVisitor$div_release", "(Lzr8;)V", "releaseViewVisitor", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$f;", "setDiv", "(Lcom/yandex/div2/Div$f;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivGridLayout extends GridContainer implements mk2, ig2 {
    public final nk2 f;

    public zr8 releaseViewVisitor;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivGridLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.f.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.f.closeAllSubscription();
    }

    @Override
    public void draw(Canvas canvas) {
        y45.j(canvas, "canvas");
        DivBorderDrawer divBorderDrawer = getDivBorderDrawer();
        if (divBorderDrawer == null) {
            super.draw(canvas);
            return;
        }
        int iSave = canvas.save();
        try {
            divBorderDrawer.g(canvas);
            super.draw(canvas);
            divBorderDrawer.h(canvas);
        } finally {
            canvas.restoreToCount(iSave);
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

    @Override
    public a getBindingContext() {
        return this.f.getBindingContext();
    }

    @Override
    public Div.f getDiv() {
        return (Div.f) this.f.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.f.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.f.getNeedClipping();
    }

    public final zr8 getReleaseViewVisitor() {
        return this.releaseViewVisitor;
    }

    @Override
    public List<qc2> getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String() {
        return this.f.getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String();
    }

    @Override
    public void invalidateBorder() {
        this.f.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.f.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.f.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void onViewRemoved(View child) {
        y45.j(child, "child");
        super.onViewRemoved(child);
        zr8 zr8Var = this.releaseViewVisitor;
        if (zr8Var != null) {
            wv2.a(zr8Var, child);
        }
    }

    @Override
    public void release() {
        this.f.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.f.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.f.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.f.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.f fVar) {
        this.f.setDiv(fVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.f.setNeedClipping(z);
    }

    public final void setReleaseViewVisitor$div_release(zr8 zr8Var) {
        this.releaseViewVisitor = zr8Var;
    }

    @Override
    public void startDivAnimation() {
        super.startDivAnimation();
    }

    @Override
    public void stopDivAnimation() {
        super.stopDivAnimation();
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.f.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.f.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivGridLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivGridLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGridLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.f = new nk2();
    }
}
