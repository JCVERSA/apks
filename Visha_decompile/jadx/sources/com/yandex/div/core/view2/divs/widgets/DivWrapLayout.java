package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.wraplayout.WrapContainerLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.ch2;
import defpackage.dh2;
import defpackage.ig2;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import defpackage.zl2;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u00042\u00020\u0005B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u000f\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0012\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0010J \u0010\u0018\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u001a\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u0010J\u0010\u0010\u001b\u001a\u00020\fH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u0010J*\u0010\"\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001c2\b\u0010\u001f\u001a\u0004\u0018\u00010\u001e2\u0006\u0010!\u001a\u00020 H\u0096\u0001¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\f2\u0006\u0010!\u001a\u00020 H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\f2\u0006\u0010!\u001a\u00020 H\u0096\u0001¢\u0006\u0004\b&\u0010%J/\u0010+\u001a\u00020\f2\u0006\u0010'\u001a\u00020\u00152\u0006\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020\u00152\u0006\u0010*\u001a\u00020\u0015H\u0014¢\u0006\u0004\b+\u0010,J\u0017\u0010/\u001a\u00020\f2\u0006\u0010.\u001a\u00020-H\u0016¢\u0006\u0004\b/\u00100J)\u00105\u001a\u0002042\u0006\u0010.\u001a\u00020-2\b\u00101\u001a\u0004\u0018\u00010 2\u0006\u00103\u001a\u000202H\u0014¢\u0006\u0004\b5\u00106R\u001e\u0010\u001d\u001a\u0004\u0018\u00010\u001c8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010?\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0014\u0010@\u001a\u0002048\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b@\u0010AR\u001c\u0010E\u001a\u0002048\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bB\u0010A\"\u0004\bC\u0010DR\u001a\u0010I\u001a\b\u0012\u0004\u0012\u00020\n0F8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bG\u0010HR$\u0010O\u001a\n\u0012\u0004\u0012\u00020K\u0018\u00010J8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bL\u0010H\"\u0004\bM\u0010N¨\u0006P"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivWrapLayout;", "Lcom/yandex/div/core/widget/wraplayout/WrapContainerLayout;", "Lmk2;", "Lcom/yandex/div2/Div$b;", "Lch2;", "Lig2;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "child", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$b;", "setDiv", "(Lcom/yandex/div2/Div$b;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "", "Lzl2;", "getItems", "setItems", "(Ljava/util/List;)V", "items", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivWrapLayout extends WrapContainerLayout implements mk2, ch2, ig2 {
    public final nk2 y;
    public final dh2 z;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivWrapLayout(Context context) {
        super(context);
        y45.j(context, "context");
        this.y = new nk2();
        this.z = new dh2();
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.y.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.y.closeAllSubscription();
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
        return this.y.getBindingContext();
    }

    @Override
    public Div.b getDiv() {
        return (Div.b) this.y.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.y.getDivBorderDrawer();
    }

    @Override
    public List<zl2> getItems() {
        return this.z.getItems();
    }

    @Override
    public boolean getNeedClipping() {
        return this.y.getNeedClipping();
    }

    @Override
    public List<qc2> getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String() {
        return this.y.getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String();
    }

    @Override
    public void invalidateBorder() {
        this.y.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.y.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.y.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.y.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.y.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.y.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.y.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.b bVar) {
        this.y.setDiv(bVar);
    }

    @Override
    public void setItems(List<zl2> list) {
        this.z.setItems(list);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.y.setNeedClipping(z);
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
        this.y.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.y.transitionStarted(view);
    }
}
