package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.R;
import com.yandex.div.core.player.DivPlayerView;
import com.yandex.div.core.view2.a;
import com.yandex.div.internal.widget.FrameContainerLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.ae5;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.tr8;
import defpackage.xi;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000v\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010!\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u00042\u00020\u0005B'\b\u0007\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\rJ\u001a\u0010\u0011\u001a\u00020\u00102\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0012\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0014J \u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\nH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0010H\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0014J*\u0010$\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u00102\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b(\u0010'J/\u0010-\u001a\u00020\u00102\u0006\u0010)\u001a\u00020\n2\u0006\u0010*\u001a\u00020\n2\u0006\u0010+\u001a\u00020\n2\u0006\u0010,\u001a\u00020\nH\u0014¢\u0006\u0004\b-\u0010.J\u0017\u00101\u001a\u00020\u00102\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u0010H\u0016¢\u0006\u0004\b3\u0010\u0014J\u000f\u00105\u001a\u0004\u0018\u000104¢\u0006\u0004\b5\u00106J\u000f\u00107\u001a\u00020\nH\u0016¢\u0006\u0004\b7\u00108R\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001e\u0010A\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0014\u0010C\u001a\u00020B8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bC\u0010DR\u001c\u0010H\u001a\u00020B8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bE\u0010D\"\u0004\bF\u0010GR\u001a\u0010L\u001a\b\u0012\u0004\u0012\u00020\u000e0I8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bJ\u0010K¨\u0006M"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivVideoView;", "Lcom/yandex/div/internal/widget/FrameContainerLayout;", "Lmk2;", "Lcom/yandex/div2/Div$r;", "", "Ltr8;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "release", "Lcom/yandex/div/core/player/DivPlayerView;", "getPlayerView", "()Lcom/yandex/div/core/player/DivPlayerView;", "getBaseline", "()I", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$r;", "setDiv", "(Lcom/yandex/div2/Div$r;)V", TtmlNode.TAG_DIV, "", "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivVideoView extends FrameContainerLayout implements mk2, tr8 {
    public final nk2 m;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivVideoView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.m.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.m.closeAllSubscription();
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
    public int getBaseline() {
        return getMeasuredHeight() - getPaddingBottom();
    }

    @Override
    public a getBindingContext() {
        return this.m.getBindingContext();
    }

    @Override
    public Div.r getDiv() {
        return (Div.r) this.m.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.m.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.m.getNeedClipping();
    }

    public final DivPlayerView getPlayerView() {
        if (getChildCount() > 2) {
            ae5 ae5Var = ae5.a;
            if (xi.o()) {
                xi.i("Too many children in DivVideo");
            }
        }
        View childAt = getChildAt(0);
        if (childAt == null) {
            return null;
        }
        if (childAt instanceof DivPlayerView) {
            return (DivPlayerView) childAt;
        }
        ae5 ae5Var2 = ae5.a;
        if (xi.o()) {
            xi.i("Wrong view type inside DivVideo");
        }
        return null;
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.m.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.m.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.m.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.m.onBoundsChanged(width, height);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        super.release();
        DivPlayerView playerView = getPlayerView();
        if (playerView != null) {
            com.yandex.div.core.player.a attachedPlayer = playerView.getAttachedPlayer();
            playerView.detach();
            if (attachedPlayer != null) {
                attachedPlayer.release();
            }
        }
        releaseBorderDrawer();
    }

    @Override
    public void releaseBorderDrawer() {
        this.m.releaseBorderDrawer();
    }

    @Override
    public void setBindingContext(a aVar) {
        this.m.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.m.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.r rVar) {
        this.m.setDiv(rVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.m.setNeedClipping(z);
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
    public DivVideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivVideoView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.divImageStyle : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivVideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.m = new nk2();
    }
}
