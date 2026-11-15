package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.widget.LinearContainerLayout;
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
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u00042\u00020\u0005B'\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0014J \u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0014J\u0010\u0010\u001e\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u001e\u0010\u0014J*\u0010%\u001a\u00020\u00102\u0006\u0010 \u001a\u00020\u001f2\b\u0010\"\u001a\u0004\u0018\u00010!2\u0006\u0010$\u001a\u00020#H\u0096\u0001¢\u0006\u0004\b%\u0010&J\u0018\u0010'\u001a\u00020\u00102\u0006\u0010$\u001a\u00020#H\u0096\u0001¢\u0006\u0004\b'\u0010(J\u0018\u0010)\u001a\u00020\u00102\u0006\u0010$\u001a\u00020#H\u0096\u0001¢\u0006\u0004\b)\u0010(J/\u0010.\u001a\u00020\u00102\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020\n2\u0006\u0010-\u001a\u00020\nH\u0014¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u00102\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103J)\u00108\u001a\u0002072\u0006\u00101\u001a\u0002002\b\u00104\u001a\u0004\u0018\u00010#2\u0006\u00106\u001a\u000205H\u0014¢\u0006\u0004\b8\u00109R\u001e\u0010 \u001a\u0004\u0018\u00010\u001f8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u001e\u0010B\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b>\u0010?\"\u0004\b@\u0010AR\u0014\u0010C\u001a\u0002078\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bC\u0010DR\u001c\u0010H\u001a\u0002078\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bE\u0010D\"\u0004\bF\u0010GR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\u000e0I8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bJ\u0010KR$\u0010R\u001a\n\u0012\u0004\u0012\u00020N\u0018\u00010M8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bO\u0010K\"\u0004\bP\u0010Q¨\u0006S"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivLinearLayout;", "Lcom/yandex/div/core/widget/LinearContainerLayout;", "Lmk2;", "Lcom/yandex/div2/Div$b;", "Lch2;", "Lig2;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "child", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$b;", "setDiv", "(Lcom/yandex/div2/Div$b;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "", "Lzl2;", "getItems", "setItems", "(Ljava/util/List;)V", "items", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivLinearLayout extends LinearContainerLayout implements mk2, ch2, ig2 {
    public final nk2 B;
    public final dh2 C;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivLinearLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.B.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.B.closeAllSubscription();
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
        return this.B.getBindingContext();
    }

    @Override
    public Div.b getDiv() {
        return (Div.b) this.B.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.B.getDivBorderDrawer();
    }

    @Override
    public List<zl2> getItems() {
        return this.C.getItems();
    }

    @Override
    public boolean getNeedClipping() {
        return this.B.getNeedClipping();
    }

    @Override
    public List<qc2> getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String() {
        return this.B.getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String();
    }

    @Override
    public void invalidateBorder() {
        this.B.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.B.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.B.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.B.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.B.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.B.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.B.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.b bVar) {
        this.B.setDiv(bVar);
    }

    @Override
    public void setItems(List<zl2> list) {
        this.C.setItems(list);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.B.setNeedClipping(z);
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
        this.B.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.B.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivLinearLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivLinearLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivLinearLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.B = new nk2();
        this.C = new dh2();
    }
}
