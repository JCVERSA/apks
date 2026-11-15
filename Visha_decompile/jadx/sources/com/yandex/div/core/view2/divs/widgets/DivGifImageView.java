package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.widget.LoadableImageView;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0096\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0013J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0013J\u0010\u0010\u001d\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0013J*\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b(\u0010'J\u000f\u0010)\u001a\u00020\u000fH\u0016¢\u0006\u0004\b)\u0010\u0013J/\u0010.\u001a\u00020\u000f2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\t2\u0006\u0010-\u001a\u00020\tH\u0014¢\u0006\u0004\b.\u0010/J\u0017\u00102\u001a\u00020\u000f2\u0006\u00101\u001a\u000200H\u0016¢\u0006\u0004\b2\u00103R$\u0010;\u001a\u0004\u0018\u0001048\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b5\u00106\u001a\u0004\b7\u00108\"\u0004\b9\u0010:R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u001e\u0010D\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\u0014\u0010F\u001a\u00020E8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bF\u0010GR\u001c\u0010K\u001a\u00020E8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bH\u0010G\"\u0004\bI\u0010JR\u001a\u0010O\u001a\b\u0012\u0004\u0012\u00020\r0L8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bM\u0010N¨\u0006P"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivGifImageView;", "Lcom/yandex/div/core/widget/LoadableImageView;", "Lmk2;", "Lcom/yandex/div2/Div$e;", "", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "resetImageLoaded", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "Landroid/net/Uri;", "o", "Landroid/net/Uri;", "getGifUrl$div_release", "()Landroid/net/Uri;", "setGifUrl$div_release", "(Landroid/net/Uri;)V", "gifUrl", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$e;", "setDiv", "(Lcom/yandex/div2/Div$e;)V", TtmlNode.TAG_DIV, "", "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivGifImageView extends LoadableImageView implements mk2 {
    public final nk2 n;

    public Uri gifUrl;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivGifImageView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.n.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.n.closeAllSubscription();
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
        return this.n.getBindingContext();
    }

    @Override
    public Div.e getDiv() {
        return (Div.e) this.n.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.n.getDivBorderDrawer();
    }

    public final Uri getGifUrl() {
        return this.gifUrl;
    }

    @Override
    public boolean getNeedClipping() {
        return this.n.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.n.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.n.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.n.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.n.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.n.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.n.releaseBorderDrawer();
    }

    @Override
    public void resetImageLoaded() {
        super.resetImageLoaded();
        this.gifUrl = null;
    }

    @Override
    public void setBindingContext(a aVar) {
        this.n.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.n.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.e eVar) {
        this.n.setDiv(eVar);
    }

    public final void setGifUrl$div_release(Uri uri) {
        this.gifUrl = uri;
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.n.setNeedClipping(z);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.n.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.n.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivGifImageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivGifImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivGifImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.n = new nk2();
        setCropToPadding(true);
    }
}
