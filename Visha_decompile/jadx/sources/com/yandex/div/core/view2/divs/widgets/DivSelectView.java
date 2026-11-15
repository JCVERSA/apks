package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.SelectView;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.e74;
import defpackage.ig2;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004B\u000f\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\f\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u000bH\u0096\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0012\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u000bH\u0096\u0001¢\u0006\u0004\b\u0013\u0010\u000fJ \u0010\u0017\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u0014H\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u000bH\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u000fJ\u0010\u0010\u001a\u001a\u00020\u000bH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u000fJ*\u0010!\u001a\u00020\u000b2\u0006\u0010\u001c\u001a\u00020\u001b2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010 \u001a\u00020\u001fH\u0096\u0001¢\u0006\u0004\b!\u0010\"J\u0018\u0010#\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fH\u0096\u0001¢\u0006\u0004\b#\u0010$J\u0018\u0010%\u001a\u00020\u000b2\u0006\u0010 \u001a\u00020\u001fH\u0096\u0001¢\u0006\u0004\b%\u0010$J\u0017\u0010(\u001a\u00020\u000b2\u0006\u0010'\u001a\u00020&H\u0016¢\u0006\u0004\b(\u0010)J/\u0010,\u001a\u00020\u000b2\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0016\u001a\u00020\u00142\u0006\u0010*\u001a\u00020\u00142\u0006\u0010+\u001a\u00020\u0014H\u0014¢\u0006\u0004\b,\u0010-R0\u00106\u001a\u0010\u0012\u0004\u0012\u00020/\u0012\u0004\u0012\u00020\u000b\u0018\u00010.8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001e\u0010\u001c\u001a\u0004\u0018\u00010\u001b8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010?\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u0014\u0010A\u001a\u00020@8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bA\u0010BR\u001c\u0010F\u001a\u00020@8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bC\u0010B\"\u0004\bD\u0010ER\u001a\u0010J\u001a\b\u0012\u0004\u0012\u00020\t0G8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bH\u0010I¨\u0006K"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivSelectView;", "Lcom/yandex/div/internal/widget/SelectView;", "Lmk2;", "Lcom/yandex/div2/Div$k;", "Lig2;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "oldWidth", "oldHeight", "onSizeChanged", "(IIII)V", "Lkotlin/Function1;", "", "v", "Le74;", "getValueUpdater", "()Le74;", "setValueUpdater", "(Le74;)V", "valueUpdater", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$k;", "setDiv", "(Lcom/yandex/div2/Div$k;)V", TtmlNode.TAG_DIV, "", "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivSelectView extends SelectView implements mk2, ig2 {
    public final nk2 u;

    public e74 valueUpdater;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSelectView(Context context) {
        super(context);
        y45.j(context, "context");
        this.u = new nk2();
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.u.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.u.closeAllSubscription();
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
    public a getBindingContext() {
        return this.u.getBindingContext();
    }

    @Override
    public Div.k getDiv() {
        return (Div.k) this.u.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.u.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.u.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.u.getSubscriptions();
    }

    public e74 getValueUpdater() {
        return this.valueUpdater;
    }

    @Override
    public void invalidateBorder() {
        this.u.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.u.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.u.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int width, int height, int oldWidth, int oldHeight) {
        super.onSizeChanged(width, height, oldWidth, oldHeight);
        onBoundsChanged(width, height);
    }

    @Override
    public void release() {
        this.u.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.u.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.u.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.u.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.k kVar) {
        this.u.setDiv(kVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.u.setNeedClipping(z);
    }

    public void setValueUpdater(e74 e74Var) {
        this.valueUpdater = e74Var;
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
        this.u.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.u.transitionStarted(view);
    }
}
