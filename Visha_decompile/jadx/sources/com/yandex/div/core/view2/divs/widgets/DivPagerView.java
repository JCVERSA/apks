package com.yandex.div.core.view2.divs.widgets;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import androidx.viewpager2.widget.ViewPager2;
import com.android.billingclient.api.BillingClient;
import com.lzy.okgo.cookie.SerializableCookie;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.pager.PagerSelectedActionsDispatcher;
import com.yandex.div.core.widget.ViewPager2Wrapper;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.c74;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.ue7;
import defpackage.ve7;
import defpackage.y45;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000©\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0010!\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\b#*\u0001w\b\u0010\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u0004\u0097\u0001\u0098\u0001B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u000e\u001a\u00020\rH\u0012¢\u0006\u0004\b\u000f\u0010\u0010J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0013H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u0018H\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u0013H\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u0017J \u0010\u001e\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\t2\u0006\u0010\u001d\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010 \u001a\u00020\u0013H\u0096\u0001¢\u0006\u0004\b \u0010\u0017J\u0010\u0010!\u001a\u00020\u0013H\u0096\u0001¢\u0006\u0004\b!\u0010\u0017J*\u0010'\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\"2\b\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010&\u001a\u00020\rH\u0096\u0001¢\u0006\u0004\b'\u0010(J\u0018\u0010)\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\rH\u0096\u0001¢\u0006\u0004\b)\u0010*J\u0018\u0010+\u001a\u00020\u00132\u0006\u0010&\u001a\u00020\rH\u0096\u0001¢\u0006\u0004\b+\u0010*J\u000f\u0010,\u001a\u00020\u0013H\u0016¢\u0006\u0004\b,\u0010\u0017J/\u00101\u001a\u00020\u00132\u0006\u0010-\u001a\u00020\t2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\tH\u0014¢\u0006\u0004\b1\u00102J\u0017\u00105\u001a\u00020\u00132\u0006\u00104\u001a\u000203H\u0016¢\u0006\u0004\b5\u00106J)\u0010:\u001a\u0002092\u0006\u00104\u001a\u0002032\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\u0006\u00108\u001a\u000207H\u0014¢\u0006\u0004\b:\u0010;J\u0017\u0010>\u001a\u00020\u00132\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b>\u0010?J\u0017\u0010@\u001a\u00020\u00132\u0006\u0010=\u001a\u00020<H\u0016¢\u0006\u0004\b@\u0010?J\u000f\u0010A\u001a\u00020\u0013H\u0016¢\u0006\u0004\bA\u0010\u0017J\u0017\u0010D\u001a\u0002092\u0006\u0010C\u001a\u00020BH\u0016¢\u0006\u0004\bD\u0010EJ\u0019\u0010G\u001a\u0004\u0018\u00010\r2\u0006\u0010F\u001a\u00020\tH\u0016¢\u0006\u0004\bG\u0010HR.\u0010O\u001a\u0004\u0018\u00010<2\b\u0010I\u001a\u0004\u0018\u00010<8\u0010@PX\u0090\u000e¢\u0006\u0012\n\u0004\bJ\u0010K\u001a\u0004\bL\u0010M\"\u0004\bN\u0010?R\u001a\u0010S\u001a\b\u0012\u0004\u0012\u00020<0P8\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\bQ\u0010RR.\u0010W\u001a\u0004\u0018\u00010<2\b\u0010I\u001a\u0004\u0018\u00010<8\u0010@PX\u0090\u000e¢\u0006\u0012\n\u0004\bT\u0010K\u001a\u0004\bU\u0010M\"\u0004\bV\u0010?R.\u0010^\u001a\u0004\u0018\u00010X2\b\u0010I\u001a\u0004\u0018\u00010X8\u0010@PX\u0090\u000e¢\u0006\u0012\n\u0004\b.\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R.\u0010f\u001a\u0004\u0018\u00010_2\b\u0010I\u001a\u0004\u0018\u00010_8\u0010@PX\u0090\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR$\u0010n\u001a\u0004\u0018\u00010g8\u0010@\u0010X\u0090\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR$\u0010v\u001a\u0004\u0018\u00010o8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u001d\u0010|\u001a\u0004\u0018\u00010w8RX\u0092\u0084\u0002¢\u0006\f\n\u0004\bx\u0010y\u001a\u0004\bz\u0010{R\u001f\u0010#\u001a\u0004\u0018\u00010\"8\u0016@\u0016X\u0096\u000f¢\u0006\r\u001a\u0004\b}\u0010~\"\u0005\b\u007f\u0010\u0080\u0001R#\u0010\u0085\u0001\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\u0010\u001a\u0006\b\u0081\u0001\u0010\u0082\u0001\"\u0006\b\u0083\u0001\u0010\u0084\u0001R\u0017\u0010\u0086\u0001\u001a\u0002098\u0016X\u0096\u0005¢\u0006\b\u001a\u0006\b\u0086\u0001\u0010\u0087\u0001R!\u0010\u008b\u0001\u001a\u0002098\u0016@\u0016X\u0096\u000f¢\u0006\u0010\u001a\u0006\b\u0088\u0001\u0010\u0087\u0001\"\u0006\b\u0089\u0001\u0010\u008a\u0001R\u001d\u0010\u008e\u0001\u001a\b\u0012\u0004\u0012\u00020\u00110P8\u0016X\u0096\u0005¢\u0006\b\u001a\u0006\b\u008c\u0001\u0010\u008d\u0001R)\u0010\u0091\u0001\u001a\u0002092\u0006\u0010I\u001a\u0002098P@PX\u0090\u000e¢\u0006\u0010\u001a\u0006\b\u008f\u0001\u0010\u0087\u0001\"\u0006\b\u0090\u0001\u0010\u008a\u0001R)\u0010\u0096\u0001\u001a\u00020\t2\u0006\u0010I\u001a\u00020\t8P@PX\u0090\u000e¢\u0006\u0010\u001a\u0006\b\u0092\u0001\u0010\u0093\u0001\"\u0006\b\u0094\u0001\u0010\u0095\u0001¨\u0006\u0099\u0001"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivPagerView;", "Lcom/yandex/div/core/widget/ViewPager2Wrapper;", "Lmk2;", "Lcom/yandex/div2/Div$j;", "Lve7;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "child", "c", "(Landroid/view/View;)Ljava/lang/Integer;", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "enableAccessibility", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "", "drawingTime", "", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "callback", "addChangePageCallbackForIndicators", "(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V", "removeChangePageCallbackForIndicators", "clearChangePageCallbackForIndicators", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "index", "getPageView", "(I)Landroid/view/View;", ES6Iterator.VALUE_PROPERTY, "e", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "getChangePageCallbackForState$div_release", "()Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "setChangePageCallbackForState$div_release", "changePageCallbackForState", "", "f", "Ljava/util/List;", "changePageCallbacksForIndicators", GslbInterceptor.HEADER_KEY_GSLB, "getChangePageCallbackForLogger$div_release", "setChangePageCallbackForLogger$div_release", "changePageCallbackForLogger", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;", "getChangePageCallbackForOffScreenPages$div_release", "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;", "setChangePageCallbackForOffScreenPages$div_release", "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;)V", "changePageCallbackForOffScreenPages", "Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;", "getPagerSelectedActionsDispatcher$div_release", "()Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;", "setPagerSelectedActionsDispatcher$div_release", "(Lcom/yandex/div/core/view2/divs/pager/PagerSelectedActionsDispatcher;)V", "pagerSelectedActionsDispatcher", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;", "j", "Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;", "getPagerOnItemsCountChange$div_release", "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;", "setPagerOnItemsCountChange$div_release", "(Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$a;)V", "pagerOnItemsCountChange", "Lue7;", "k", "Lue7;", "getOnInterceptTouchEventListener", "()Lue7;", "setOnInterceptTouchEventListener", "(Lue7;)V", "onInterceptTouchEventListener", "com/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1", CmcdData.STREAM_TYPE_LIVE, "Lyi5;", "getAccessibilityDelegate", "()Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$accessibilityDelegate$2$1;", "accessibilityDelegate", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$j;", "setDiv", "(Lcom/yandex/div2/Div$j;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "getClipToPage$div_release", "setClipToPage$div_release", "clipToPage", "getCurrentItem$div_release", "()I", "setCurrentItem$div_release", "(I)V", "currentItem", "OffScreenPagesUpdateCallback", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivPagerView extends ViewPager2Wrapper implements mk2, ve7 {
    public final nk2 d;

    public ViewPager2.OnPageChangeCallback changePageCallbackForState;

    public final List changePageCallbacksForIndicators;

    public ViewPager2.OnPageChangeCallback changePageCallbackForLogger;

    public OffScreenPagesUpdateCallback changePageCallbackForOffScreenPages;

    public PagerSelectedActionsDispatcher pagerSelectedActionsDispatcher;

    public a pagerOnItemsCountChange;

    public ue7 onInterceptTouchEventListener;

    public final yi5 accessibilityDelegate;

    @Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\b \u0018\u00002\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004JY\u0010\u0011\u001a\u00020\u00102\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0011\u0010\u0012¨\u0006\u0013"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivPagerView$OffScreenPagesUpdateCallback;", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "Landroid/view/View$OnLayoutChangeListener;", MethodDecl.initName, "()V", "Landroid/view/View;", "v", "", TtmlNode.LEFT, "top", TtmlNode.RIGHT, "bottom", "oldLeft", "oldTop", "oldRight", "oldBottom", "Lzfb;", "onLayoutChange", "(Landroid/view/View;IIIIIIII)V", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static abstract class OffScreenPagesUpdateCallback extends ViewPager2.OnPageChangeCallback implements View.OnLayoutChangeListener {
        public void onLayoutChange(View v, int left, int top, int right, int bottom, int oldLeft, int oldTop, int oldRight, int oldBottom) {
        }
    }

    public interface a {
        void a();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivPagerView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private DivPagerView$accessibilityDelegate$2.AnonymousClass1 getAccessibilityDelegate() {
        return (DivPagerView$accessibilityDelegate$2.AnonymousClass1) this.accessibilityDelegate.getValue();
    }

    public void addChangePageCallbackForIndicators(ViewPager2.OnPageChangeCallback callback) {
        y45.j(callback, "callback");
        this.changePageCallbacksForIndicators.add(callback);
        getViewPager().registerOnPageChangeCallback(callback);
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.d.addSubscription(subscription);
    }

    public final Integer c(View child) {
        while (!y45.e(child, this)) {
            Object tag = child.getTag(R.id.div_pager_item_clip_id);
            Integer num = tag instanceof Integer ? (Integer) tag : null;
            if (num != null) {
                return Integer.valueOf(num.intValue());
            }
            Object parent = child.getParent();
            child = parent instanceof View ? (View) parent : null;
            if (child == null) {
                break;
            }
        }
        return null;
    }

    public void clearChangePageCallbackForIndicators() {
        Iterator it = this.changePageCallbacksForIndicators.iterator();
        while (it.hasNext()) {
            getViewPager().unregisterOnPageChangeCallback((ViewPager2.OnPageChangeCallback) it.next());
        }
        this.changePageCallbacksForIndicators.clear();
    }

    @Override
    public void closeAllSubscription() {
        this.d.closeAllSubscription();
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

    public void enableAccessibility() {
        RecyclerView recyclerView;
        DivPagerView$accessibilityDelegate$2.AnonymousClass1 accessibilityDelegate = getAccessibilityDelegate();
        if (accessibilityDelegate == null || (recyclerView = getRecyclerView()) == null) {
            return;
        }
        recyclerView.setAccessibilityDelegateCompat(accessibilityDelegate);
    }

    @Override
    public com.yandex.div.core.view2.a getBindingContext() {
        return this.d.getBindingContext();
    }

    public ViewPager2.OnPageChangeCallback getChangePageCallbackForLogger() {
        return this.changePageCallbackForLogger;
    }

    public OffScreenPagesUpdateCallback getChangePageCallbackForOffScreenPages() {
        return this.changePageCallbackForOffScreenPages;
    }

    public ViewPager2.OnPageChangeCallback getChangePageCallbackForState() {
        return this.changePageCallbackForState;
    }

    public boolean getClipToPage$div_release() {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView != null) {
            return recyclerView.getClipChildren();
        }
        return false;
    }

    public int getCurrentItem$div_release() {
        return getViewPager().getCurrentItem();
    }

    @Override
    public Div.j getDiv() {
        return (Div.j) this.d.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.d.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.d.getNeedClipping();
    }

    public ue7 getOnInterceptTouchEventListener() {
        return this.onInterceptTouchEventListener;
    }

    public View getPageView(int index) {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null) {
            return null;
        }
        View childAt = recyclerView.getChildAt(index);
        ViewGroup viewGroup = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
        if (viewGroup == null) {
            return null;
        }
        return viewGroup.getChildAt(0);
    }

    public a getPagerOnItemsCountChange() {
        return this.pagerOnItemsCountChange;
    }

    public PagerSelectedActionsDispatcher getPagerSelectedActionsDispatcher() {
        return this.pagerSelectedActionsDispatcher;
    }

    @Override
    public List<qc2> getSubscriptions() {
        return this.d.getSubscriptions();
    }

    @Override
    public void invalidateBorder() {
        this.d.invalidateBorder();
    }

    @Override
    public boolean isTransient() {
        return this.d.isTransient();
    }

    @Override
    public void onBoundsChanged(int width, int height) {
        this.d.onBoundsChanged(width, height);
    }

    @Override
    public boolean onInterceptTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        ue7 onInterceptTouchEventListener = getOnInterceptTouchEventListener();
        return (onInterceptTouchEventListener != null ? onInterceptTouchEventListener.a(this, event) : false) || super.onInterceptTouchEvent(event);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    public void release() {
        this.d.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.d.releaseBorderDrawer();
    }

    public void removeChangePageCallbackForIndicators(ViewPager2.OnPageChangeCallback callback) {
        y45.j(callback, "callback");
        this.changePageCallbacksForIndicators.remove(callback);
        getViewPager().unregisterOnPageChangeCallback(callback);
    }

    @Override
    public void setBindingContext(com.yandex.div.core.view2.a aVar) {
        this.d.setBindingContext(aVar);
    }

    @Override
    public void setBorder(com.yandex.div.core.view2.a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.d.setBorder(bindingContext, border, view);
    }

    public void setChangePageCallbackForLogger$div_release(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.changePageCallbackForLogger;
        if (onPageChangeCallback2 != null) {
            getViewPager().unregisterOnPageChangeCallback(onPageChangeCallback2);
        }
        if (onPageChangeCallback != null) {
            getViewPager().registerOnPageChangeCallback(onPageChangeCallback);
        }
        this.changePageCallbackForLogger = onPageChangeCallback;
    }

    public void setChangePageCallbackForOffScreenPages$div_release(OffScreenPagesUpdateCallback offScreenPagesUpdateCallback) {
        OffScreenPagesUpdateCallback offScreenPagesUpdateCallback2 = this.changePageCallbackForOffScreenPages;
        if (offScreenPagesUpdateCallback2 != null) {
            getViewPager().unregisterOnPageChangeCallback(offScreenPagesUpdateCallback2);
            RecyclerView recyclerView = getRecyclerView();
            if (recyclerView != null) {
                recyclerView.removeOnLayoutChangeListener(offScreenPagesUpdateCallback2);
            }
        }
        if (offScreenPagesUpdateCallback != null) {
            getViewPager().registerOnPageChangeCallback(offScreenPagesUpdateCallback);
            RecyclerView recyclerView2 = getRecyclerView();
            if (recyclerView2 != null) {
                recyclerView2.addOnLayoutChangeListener(offScreenPagesUpdateCallback);
            }
        }
        this.changePageCallbackForOffScreenPages = offScreenPagesUpdateCallback;
    }

    public void setChangePageCallbackForState$div_release(ViewPager2.OnPageChangeCallback onPageChangeCallback) {
        ViewPager2.OnPageChangeCallback onPageChangeCallback2 = this.changePageCallbackForState;
        if (onPageChangeCallback2 != null) {
            getViewPager().unregisterOnPageChangeCallback(onPageChangeCallback2);
        }
        if (onPageChangeCallback != null) {
            getViewPager().registerOnPageChangeCallback(onPageChangeCallback);
        }
        this.changePageCallbackForState = onPageChangeCallback;
    }

    public void setClipToPage$div_release(boolean z) {
        RecyclerView recyclerView = getRecyclerView();
        if (recyclerView == null) {
            return;
        }
        recyclerView.setClipChildren(z);
    }

    public void setCurrentItem$div_release(int i) {
        getViewPager().setCurrentItem(i, false);
    }

    @Override
    public void setDiv(Div.j jVar) {
        this.d.setDiv(jVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.d.setNeedClipping(z);
    }

    @Override
    public void setOnInterceptTouchEventListener(ue7 ue7Var) {
        this.onInterceptTouchEventListener = ue7Var;
    }

    public void setPagerOnItemsCountChange$div_release(a aVar) {
        this.pagerOnItemsCountChange = aVar;
    }

    public void setPagerSelectedActionsDispatcher$div_release(PagerSelectedActionsDispatcher pagerSelectedActionsDispatcher) {
        PagerSelectedActionsDispatcher pagerSelectedActionsDispatcher2 = this.pagerSelectedActionsDispatcher;
        if (pagerSelectedActionsDispatcher2 != null) {
            pagerSelectedActionsDispatcher2.f(getViewPager());
        }
        if (pagerSelectedActionsDispatcher != null) {
            pagerSelectedActionsDispatcher.e(getViewPager());
        }
        this.pagerSelectedActionsDispatcher = pagerSelectedActionsDispatcher;
    }

    @Override
    public void transitionFinished(View view) {
        y45.j(view, "view");
        this.d.transitionFinished(view);
    }

    @Override
    public void transitionStarted(View view) {
        y45.j(view, "view");
        this.d.transitionStarted(view);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivPagerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivPagerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivPagerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.d = new nk2();
        this.changePageCallbacksForIndicators = new ArrayList();
        this.accessibilityDelegate = b.b(LazyThreadSafetyMode.NONE, new c74() {
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r1v1, types: [com.yandex.div.core.view2.divs.widgets.DivPagerView$accessibilityDelegate$2$1] */
            @Override
            public final AnonymousClass1 invoke() {
                RecyclerView recyclerView = this.this$0.getRecyclerView();
                if (recyclerView == null) {
                    return null;
                }
                recyclerView.setDescendantFocusability(262144);
                return new RecyclerViewAccessibilityDelegate(this.this$0) {
                    public final DivPagerView b;

                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(this.a);
                        this.b = divPagerView;
                    }

                    @Override
                    public boolean onRequestSendAccessibilityEvent(ViewGroup host, View child, AccessibilityEvent event) {
                        Integer numC;
                        y45.j(host, SerializableCookie.HOST);
                        y45.j(child, "child");
                        y45.j(event, NotificationCompat.CATEGORY_EVENT);
                        if (event.getEventType() == 32768 && (numC = this.b.c(child)) != null) {
                            DivPagerView divPagerView = this.b;
                            RecyclerView recyclerView2 = this.a;
                            int iIntValue = numC.intValue();
                            if (divPagerView.getCurrentItem$div_release() != iIntValue) {
                                recyclerView2.performAccessibilityAction(iIntValue > divPagerView.getCurrentItem$div_release() ? 4096 : 8192, null);
                            }
                        }
                        return super.onRequestSendAccessibilityEvent(host, child, event);
                    }
                };
            }
        });
    }
}
