package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.text.Layout;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.yandex.div.R;
import com.yandex.div.core.util.text.DivTextRangesBackgroundHelper;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.divs.widgets.DivLineHeightTextView;
import com.yandex.div.internal.widget.TextViewWithAccessibleSpans;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.e8;
import defpackage.ig2;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.pfb;
import defpackage.qc2;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0012\n\u0002\u0010!\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0096\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0012\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u0014H\u0096\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u0017\u0010\u0013J \u0010\u001a\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u001c\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0013J\u0010\u0010\u001d\u001a\u00020\u000fH\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0013J*\u0010$\u001a\u00020\u000f2\u0006\u0010\u001f\u001a\u00020\u001e2\b\u0010!\u001a\u0004\u0018\u00010 2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b$\u0010%J\u0018\u0010&\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b&\u0010'J\u0018\u0010(\u001a\u00020\u000f2\u0006\u0010#\u001a\u00020\"H\u0096\u0001¢\u0006\u0004\b(\u0010'J/\u0010-\u001a\u00020\u000f2\u0006\u0010)\u001a\u00020\t2\u0006\u0010*\u001a\u00020\t2\u0006\u0010+\u001a\u00020\t2\u0006\u0010,\u001a\u00020\tH\u0014¢\u0006\u0004\b-\u0010.J\u0017\u00101\u001a\u00020\u000f2\u0006\u00100\u001a\u00020/H\u0016¢\u0006\u0004\b1\u00102J\u000f\u00103\u001a\u00020\u000fH\u0016¢\u0006\u0004\b3\u0010\u0013J\u000f\u00104\u001a\u00020\u000fH\u0016¢\u0006\u0004\b4\u0010\u0013J\u0017\u00105\u001a\u00020\u000f2\u0006\u00100\u001a\u00020/H\u0014¢\u0006\u0004\b5\u00102R$\u0010<\u001a\u0004\u0018\u0001068\u0010@\u0010X\u0090\u000e¢\u0006\u0012\n\u0004\b)\u00107\u001a\u0004\b8\u00109\"\u0004\b:\u0010;R$\u0010D\u001a\u0004\u0018\u00010=8\u0010@\u0010X\u0090\u000e¢\u0006\u0012\n\u0004\b>\u0010?\u001a\u0004\b@\u0010A\"\u0004\bB\u0010CR\"\u0010L\u001a\u00020E8\u0010@\u0010X\u0090\u000e¢\u0006\u0012\n\u0004\bF\u0010G\u001a\u0004\bH\u0010I\"\u0004\bJ\u0010KR\u0016\u0010P\u001a\u00020M8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bN\u0010OR\u001e\u0010\u001f\u001a\u0004\u0018\u00010\u001e8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bQ\u0010R\"\u0004\bS\u0010TR\u001e\u0010Y\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bU\u0010V\"\u0004\bW\u0010XR\u0014\u0010Z\u001a\u00020M8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\bZ\u0010[R\u001c\u0010_\u001a\u00020M8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b\\\u0010[\"\u0004\b]\u0010^R\u001a\u0010c\u001a\b\u0012\u0004\u0012\u00020\r0`8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\ba\u0010b¨\u0006d"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivLineHeightTextView;", "Lcom/yandex/div/internal/widget/TextViewWithAccessibleSpans;", "Lmk2;", "Lcom/yandex/div2/Div$q;", "Lig2;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "startDivAnimation", "stopDivAnimation", "onDraw", "Le8;", "Le8;", "getAdaptiveMaxLines$div_release", "()Le8;", "setAdaptiveMaxLines$div_release", "(Le8;)V", "adaptiveMaxLines", "Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;", "x", "Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;", "getTextRoundedBgHelper$div_release", "()Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;", "setTextRoundedBgHelper$div_release", "(Lcom/yandex/div/core/util/text/DivTextRangesBackgroundHelper;)V", "textRoundedBgHelper", "", "y", "J", "getAnimationStartDelay$div_release", "()J", "setAnimationStartDelay$div_release", "(J)V", "animationStartDelay", "", "z", "Z", "animationStarted", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$q;", "setDiv", "(Lcom/yandex/div2/Div$q;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivLineHeightTextView extends TextViewWithAccessibleSpans implements mk2, ig2 {
    public final nk2 v;

    public e8 adaptiveMaxLines;

    public DivTextRangesBackgroundHelper textRoundedBgHelper;

    public long animationStartDelay;

    public boolean animationStarted;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivLineHeightTextView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public static final void o(DivLineHeightTextView divLineHeightTextView) {
        y45.j(divLineHeightTextView, "this$0");
        if (divLineHeightTextView.animationStarted) {
            divLineHeightTextView.setSelected(true);
        }
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.v.addSubscription(subscription);
    }

    @Override
    public void closeAllSubscription() {
        this.v.closeAllSubscription();
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

    public e8 getAdaptiveMaxLines() {
        return this.adaptiveMaxLines;
    }

    public long getAnimationStartDelay() {
        return this.animationStartDelay;
    }

    @Override
    public a getBindingContext() {
        return this.v.getBindingContext();
    }

    @Override
    public Div.q getDiv() {
        return (Div.q) this.v.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.v.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.v.getNeedClipping();
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.v.getSubscriptions();
    }

    public DivTextRangesBackgroundHelper getTextRoundedBgHelper() {
        return this.textRoundedBgHelper;
    }

    @Override
    public void invalidateBorder() {
        this.v.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.v.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.v.onBoundsChanged(width, height);
    }

    @Override
    public void onDraw(Canvas canvas) {
        DivTextRangesBackgroundHelper textRoundedBgHelper;
        y45.j(canvas, "canvas");
        if ((getText() instanceof Spanned) && getLayout() != null && (textRoundedBgHelper = getTextRoundedBgHelper()) != null && textRoundedBgHelper.h()) {
            float totalPaddingLeft = getTotalPaddingLeft();
            float totalPaddingTop = getTotalPaddingTop();
            int iSave = canvas.save();
            canvas.translate(totalPaddingLeft, totalPaddingTop);
            try {
                DivTextRangesBackgroundHelper textRoundedBgHelper2 = getTextRoundedBgHelper();
                if (textRoundedBgHelper2 != null) {
                    CharSequence text = getText();
                    y45.h(text, "null cannot be cast to non-null type android.text.Spanned");
                    Layout layout = getLayout();
                    y45.i(layout, TtmlNode.TAG_LAYOUT);
                    textRoundedBgHelper2.b(canvas, (Spanned) text, layout);
                }
                canvas.restoreToCount(iSave);
            } catch (Throwable th) {
                canvas.restoreToCount(iSave);
                throw th;
            }
        }
        super.onDraw(canvas);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.v.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.v.releaseBorderDrawer();
    }

    public void setAdaptiveMaxLines$div_release(e8 e8Var) {
        this.adaptiveMaxLines = e8Var;
    }

    public void setAnimationStartDelay$div_release(long j) {
        this.animationStartDelay = j;
    }

    @Override
    public void setBindingContext(a aVar) {
        this.v.setBindingContext(aVar);
    }

    @Override
    public void setBorder(a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.v.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.q qVar) {
        this.v.setDiv(qVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.v.setNeedClipping(z);
    }

    public void setTextRoundedBgHelper$div_release(DivTextRangesBackgroundHelper divTextRangesBackgroundHelper) {
        this.textRoundedBgHelper = divTextRangesBackgroundHelper;
    }

    @Override
    public void startDivAnimation() {
        super.startDivAnimation();
        this.animationStarted = true;
        pfb.b().postDelayed(new Runnable() {
            @Override
            public final void run() {
                DivLineHeightTextView.o(this.b);
            }
        }, getAnimationStartDelay());
    }

    @Override
    public void stopDivAnimation() {
        super.stopDivAnimation();
        this.animationStarted = false;
        setSelected(false);
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.v.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.v.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivLineHeightTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivLineHeightTextView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? R.attr.divTextStyle : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivLineHeightTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.v = new nk2();
    }
}
