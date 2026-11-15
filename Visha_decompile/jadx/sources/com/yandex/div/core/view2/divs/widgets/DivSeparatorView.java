package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.SeparatorView;
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

@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0006\b\u0000\u0018\u0000 F2\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001GB'\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0096\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0012J \u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\bH\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u0012J\u0010\u0010\u001c\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0012J*\u0010#\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b#\u0010$J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b%\u0010&J\u0018\u0010'\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b'\u0010&J/\u0010,\u001a\u00020\u000e2\u0006\u0010(\u001a\u00020\b2\u0006\u0010)\u001a\u00020\b2\u0006\u0010*\u001a\u00020\b2\u0006\u0010+\u001a\u00020\bH\u0014¢\u0006\u0004\b,\u0010-J\u0017\u00100\u001a\u00020\u000e2\u0006\u0010/\u001a\u00020.H\u0016¢\u0006\u0004\b0\u00101R\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\u001e\u0010:\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b6\u00107\"\u0004\b8\u00109R\u0014\u0010<\u001a\u00020;8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\b<\u0010=R\u001c\u0010A\u001a\u00020;8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b>\u0010=\"\u0004\b?\u0010@R\u001a\u0010E\u001a\b\u0012\u0004\u0012\u00020\f0B8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bC\u0010D¨\u0006H"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivSeparatorView;", "Lcom/yandex/div/internal/widget/SeparatorView;", "Lmk2;", "Lcom/yandex/div2/Div$l;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$l;", "setDiv", "(Lcom/yandex/div2/Div$l;)V", TtmlNode.TAG_DIV, "", "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivSeparatorView extends SeparatorView implements mk2 {
    public static final int DEFAULT_DIVIDER_COLOR = 335544320;
    public final nk2 h;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivSeparatorView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.h.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.h.closeAllSubscription();
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
        return this.h.getBindingContext();
    }

    @Override
    public Div.l getDiv() {
        return (Div.l) this.h.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.h.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.h.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.h.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.h.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.h.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.h.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.h.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.h.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.h.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.h.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.l lVar) {
        this.h.setDiv(lVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.h.setNeedClipping(z);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.h.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.h.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivSeparatorView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivSeparatorView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivSeparatorView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.h = new nk2();
        setDividerColor(335544320);
    }
}
