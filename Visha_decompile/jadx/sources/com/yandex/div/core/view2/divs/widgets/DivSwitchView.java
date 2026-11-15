package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.SwitchView;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\n2\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u000eJ \u0010\u0016\u001a\u00020\n2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0015\u001a\u00020\u0013H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u000eJ\u0010\u0010\u0019\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u000eJ*\u0010 \u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u001a2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001f\u001a\u00020\u001eH\u0096\u0001¢\u0006\u0004\b \u0010!J\u0018\u0010\"\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0096\u0001¢\u0006\u0004\b\"\u0010#J\u0018\u0010$\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020\u001eH\u0096\u0001¢\u0006\u0004\b$\u0010#J/\u0010)\u001a\u00020\n2\u0006\u0010%\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u00132\u0006\u0010(\u001a\u00020\u0013H\u0014¢\u0006\u0004\b)\u0010*J\u0017\u0010-\u001a\u00020\n2\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u001a8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b/\u00100\"\u0004\b1\u00102R\u001e\u00107\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b3\u00104\"\u0004\b5\u00106R\u0014\u00109\u001a\u0002088\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b9\u0010:R\u001c\u0010>\u001a\u0002088\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b;\u0010:\"\u0004\b<\u0010=R\u001a\u0010B\u001a\b\u0012\u0004\u0012\u00020\b0?8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b@\u0010A¨\u0006C"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivSwitchView;", "Lcom/yandex/div/internal/widget/SwitchView;", "Lmk2;", "Lcom/yandex/div2/Div$o;", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$o;", "setDiv", "(Lcom/yandex/div2/Div$o;)V", TtmlNode.TAG_DIV, "", "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivSwitchView extends SwitchView implements mk2 {
    public final nk2 j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSwitchView(Context context) {
        super(context);
        y45.j(context, "context");
        this.j = new nk2();
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.j.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.j.closeAllSubscription();
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
        return this.j.getBindingContext();
    }

    @Override
    public Div.o getDiv() {
        return (Div.o) this.j.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.j.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.j.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.j.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.j.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.j.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.j.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.j.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.j.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.j.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.j.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.o oVar) {
        this.j.setDiv(oVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.j.setNeedClipping(z);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.j.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.j.transitionStarted(view);
    }
}
