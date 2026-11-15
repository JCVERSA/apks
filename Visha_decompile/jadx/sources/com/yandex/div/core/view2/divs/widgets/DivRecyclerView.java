package com.yandex.div.core.view2.divs.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.ContextThemeWrapper;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.android.billingclient.api.BillingClient;
import com.transsion.livecaption.constant.ICode;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import com.yandex.div.core.view2.a;
import com.yandex.div.core.view2.backbutton.BackHandlingRecyclerView;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.core.view2.divs.gallery.DivGridLayoutManager;
import com.yandex.div.core.view2.divs.gallery.PagerSnapStartHelper;
import com.yandex.div.core.widget.DivViewWrapper;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import com.yandex.div2.DivGallery;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.tr8;
import defpackage.ue7;
import defpackage.ve7;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000\u009a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0015\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u001a\n\u0002\u0010!\n\u0002\b\u0006\b\u0010\u0018\u0000 \u008e\u00012\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u00022\u00020\u0004:\u0002\u008f\u0001B'\b\u0007\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\n\b\u0002\u0010\b\u001a\u0004\u0018\u00010\u0007\u0012\b\b\u0002\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0012¢\u0006\u0004\b\u000e\u0010\u000fJ\u0013\u0010\u0011\u001a\u00020\t*\u00020\u0010H\u0012¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0018\u001a\u00020\u0015H\u0096\u0001¢\u0006\u0004\b\u0018\u0010\u0019J\u0012\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u001d\u001a\u00020\u0015H\u0096\u0001¢\u0006\u0004\b\u001d\u0010\u0019J \u0010 \u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\t2\u0006\u0010\u001f\u001a\u00020\tH\u0096\u0001¢\u0006\u0004\b \u0010!J\u0010\u0010\"\u001a\u00020\u0015H\u0096\u0001¢\u0006\u0004\b\"\u0010\u0019J*\u0010)\u001a\u00020\u00152\u0006\u0010$\u001a\u00020#2\b\u0010&\u001a\u0004\u0018\u00010%2\u0006\u0010(\u001a\u00020'H\u0096\u0001¢\u0006\u0004\b)\u0010*J\u0018\u0010+\u001a\u00020\u00152\u0006\u0010(\u001a\u00020'H\u0096\u0001¢\u0006\u0004\b+\u0010,J\u0018\u0010-\u001a\u00020\u00152\u0006\u0010(\u001a\u00020'H\u0096\u0001¢\u0006\u0004\b-\u0010,J\u001f\u00100\u001a\u00020\r2\u0006\u0010.\u001a\u00020\t2\u0006\u0010/\u001a\u00020\tH\u0016¢\u0006\u0004\b0\u00101J\u0017\u00103\u001a\u00020\u00152\u0006\u00102\u001a\u00020\tH\u0016¢\u0006\u0004\b3\u00104J\u001f\u00107\u001a\u00020\u00152\u0006\u00105\u001a\u00020\t2\u0006\u00106\u001a\u00020\tH\u0016¢\u0006\u0004\b7\u0010!J\u0017\u0010:\u001a\u00020\r2\u0006\u00109\u001a\u000208H\u0016¢\u0006\u0004\b:\u0010;J\u0019\u0010=\u001a\u00020\r2\b\u0010<\u001a\u0004\u0018\u000108H\u0017¢\u0006\u0004\b=\u0010;J/\u0010B\u001a\u00020\u00152\u0006\u0010>\u001a\u00020\t2\u0006\u0010?\u001a\u00020\t2\u0006\u0010@\u001a\u00020\t2\u0006\u0010A\u001a\u00020\tH\u0014¢\u0006\u0004\bB\u0010CJ\u0017\u0010F\u001a\u00020\u00152\u0006\u0010E\u001a\u00020DH\u0016¢\u0006\u0004\bF\u0010GJ)\u0010K\u001a\u00020\r2\u0006\u0010E\u001a\u00020D2\b\u0010H\u001a\u0004\u0018\u00010'2\u0006\u0010J\u001a\u00020IH\u0016¢\u0006\u0004\bK\u0010LJ\u000f\u0010M\u001a\u00020\u0015H\u0016¢\u0006\u0004\bM\u0010\u0019J\u0019\u0010O\u001a\u0004\u0018\u00010'2\u0006\u0010N\u001a\u00020\tH\u0016¢\u0006\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\t8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bQ\u0010RR\u0016\u0010T\u001a\u00020\t8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\b?\u0010RR\u0016\u0010V\u001a\u00020\t8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bU\u0010RR*\u0010^\u001a\u00020\u00102\u0006\u0010W\u001a\u00020\u00108\u0016@VX\u0096\u000e¢\u0006\u0012\n\u0004\bX\u0010Y\u001a\u0004\bZ\u0010[\"\u0004\b\\\u0010]R$\u0010f\u001a\u0004\u0018\u00010_8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b`\u0010a\u001a\u0004\bb\u0010c\"\u0004\bd\u0010eR\"\u0010n\u001a\u00020g8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bh\u0010i\u001a\u0004\bj\u0010k\"\u0004\bl\u0010mR$\u0010v\u001a\u0004\u0018\u00010o8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bp\u0010q\u001a\u0004\br\u0010s\"\u0004\bt\u0010uR\u0016\u0010y\u001a\u00020\r8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bw\u0010xR\u0016\u0010{\u001a\u00020\t8\u0012@\u0012X\u0092\u000e¢\u0006\u0006\n\u0004\bz\u0010RR\u001e\u0010$\u001a\u0004\u0018\u00010#8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\b|\u0010}\"\u0004\b~\u0010\u007fR#\u0010\u0084\u0001\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\u0010\u001a\u0006\b\u0080\u0001\u0010\u0081\u0001\"\u0006\b\u0082\u0001\u0010\u0083\u0001R\u0016\u0010\u0085\u0001\u001a\u00020\r8\u0016X\u0096\u0005¢\u0006\u0007\u001a\u0005\b\u0085\u0001\u0010\u000fR \u0010\u0089\u0001\u001a\u00020\r8\u0016@\u0016X\u0096\u000f¢\u0006\u000f\u001a\u0005\b\u0086\u0001\u0010\u000f\"\u0006\b\u0087\u0001\u0010\u0088\u0001R\u001e\u0010\u008d\u0001\u001a\t\u0012\u0004\u0012\u00020\u00130\u008a\u00018\u0016X\u0096\u0005¢\u0006\b\u001a\u0006\b\u008b\u0001\u0010\u008c\u0001¨\u0006\u0090\u0001"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivRecyclerView;", "Lcom/yandex/div/core/view2/backbutton/BackHandlingRecyclerView;", "Lmk2;", "Lcom/yandex/div2/Div$d;", "Lve7;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", "b", "()Z", "", "c", "(F)I", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "velocityX", "velocityY", "fling", "(II)Z", ICode.CALL.CALL_KEY_STATE, "onScrollStateChanged", "(I)V", "dx", "dy", "onScrolled", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "e", "onTouchEvent", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "child", "", "drawingTime", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "release", "index", "getItemView", "(I)Landroid/view/View;", GslbInterceptor.HEADER_KEY_GSLB, "I", "scrollPointerId", "pointTouchX", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "pointTouchY", ES6Iterator.VALUE_PROPERTY, "j", "F", "getScrollInterceptionAngle", "()F", "setScrollInterceptionAngle", "(F)V", "scrollInterceptionAngle", "Lue7;", "k", "Lue7;", "getOnInterceptTouchEventListener", "()Lue7;", "setOnInterceptTouchEventListener", "(Lue7;)V", "onInterceptTouchEventListener", "Lcom/yandex/div2/DivGallery$ScrollMode;", CmcdData.STREAM_TYPE_LIVE, "Lcom/yandex/div2/DivGallery$ScrollMode;", "getScrollMode", "()Lcom/yandex/div2/DivGallery$ScrollMode;", "setScrollMode", "(Lcom/yandex/div2/DivGallery$ScrollMode;)V", "scrollMode", "Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;", CmcdData.OBJECT_TYPE_MANIFEST, "Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;", "getPagerSnapStartHelper", "()Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;", "setPagerSnapStartHelper", "(Lcom/yandex/div/core/view2/divs/gallery/PagerSnapStartHelper;)V", "pagerSnapStartHelper", "n", "Z", "needFling", "o", "beforeScrollFocusPosition", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$d;", "setDiv", "(Lcom/yandex/div2/Div$d;)V", TtmlNode.TAG_DIV, "isTransient", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class DivRecyclerView extends BackHandlingRecyclerView implements mk2, ve7 {
    public static final float NOT_INTERCEPT = 0.0f;
    public final nk2 f;

    public int scrollPointerId;

    public int pointTouchX;

    public int pointTouchY;

    public float scrollInterceptionAngle;

    public ue7 onInterceptTouchEventListener;

    public DivGallery.ScrollMode scrollMode;

    public PagerSnapStartHelper pagerSnapStartHelper;

    public boolean needFling;

    public int beforeScrollFocusPosition;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivRecyclerView(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    private boolean b() {
        return canScrollHorizontally(-1) || canScrollHorizontally(1) || canScrollVertically(-1) || canScrollVertically(1);
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.f.addSubscription(subscription);
    }

    public final int c(float f) {
        return (int) Math.ceil(f);
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
    public boolean fling(int velocityX, int velocityY) {
        boolean zFling = super.fling(velocityX, velocityY);
        if (getScrollMode() == DivGallery.ScrollMode.PAGING) {
            this.needFling = !zFling;
        }
        return zFling;
    }

    @Override
    public a getBindingContext() {
        return this.f.getBindingContext();
    }

    @Override
    public Div.d getDiv() {
        return (Div.d) this.f.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.f.getDivBorderDrawer();
    }

    public View getItemView(int index) {
        View childAt = getChildAt(index);
        ViewGroup viewGroup = childAt instanceof ViewGroup ? (ViewGroup) childAt : null;
        if (viewGroup == null) {
            return null;
        }
        return viewGroup.getChildAt(0);
    }

    @Override
    public boolean getNeedClipping() {
        return this.f.getNeedClipping();
    }

    public ue7 getOnInterceptTouchEventListener() {
        return this.onInterceptTouchEventListener;
    }

    public PagerSnapStartHelper getPagerSnapStartHelper() {
        return this.pagerSnapStartHelper;
    }

    public float getScrollInterceptionAngle() {
        return this.scrollInterceptionAngle;
    }

    public DivGallery.ScrollMode getScrollMode() {
        return this.scrollMode;
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
    public boolean onInterceptTouchEvent(MotionEvent event) {
        int iFindPointerIndex;
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        ue7 onInterceptTouchEventListener = getOnInterceptTouchEventListener();
        if (onInterceptTouchEventListener != null ? onInterceptTouchEventListener.a(this, event) : false) {
            return true;
        }
        if (getScrollInterceptionAngle() == 0.0f) {
            return super.onInterceptTouchEvent(event);
        }
        int actionMasked = event.getActionMasked();
        int actionIndex = event.getActionIndex();
        if (actionMasked == 0) {
            this.scrollPointerId = event.getPointerId(0);
            this.pointTouchX = c(event.getX());
            this.pointTouchY = c(event.getY());
            return super.onInterceptTouchEvent(event);
        }
        if (actionMasked != 2) {
            if (actionMasked != 5) {
                return super.onInterceptTouchEvent(event);
            }
            this.scrollPointerId = event.getPointerId(actionIndex);
            this.pointTouchX = c(event.getX(actionIndex));
            this.pointTouchY = c(event.getY(actionIndex));
            return super.onInterceptTouchEvent(event);
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager == null || (iFindPointerIndex = event.findPointerIndex(this.scrollPointerId)) < 0) {
            return false;
        }
        int iC = c(event.getX(iFindPointerIndex));
        int iC2 = c(event.getY(iFindPointerIndex));
        if (getScrollState() == 1) {
            return super.onInterceptTouchEvent(event);
        }
        int iAbs = Math.abs(iC - this.pointTouchX);
        int iAbs2 = Math.abs(iC2 - this.pointTouchY);
        if (iAbs == 0 && iAbs2 == 0) {
            return false;
        }
        double dAtan = iAbs != 0 ? (Math.atan(((double) iAbs2) / ((double) iAbs)) * ((double) 180)) / 3.141592653589793d : 90.0d;
        return (layoutManager.canScrollHorizontally() && dAtan <= ((double) getScrollInterceptionAngle())) || (layoutManager.canScrollVertically() && dAtan > ((double) getScrollInterceptionAngle()));
    }

    @Override
    public void onScrollStateChanged(int state) {
        if (state == 2) {
            View focusedChild = getFocusedChild();
            if (focusedChild == null) {
                this.beforeScrollFocusPosition = -1;
                return;
            }
            this.beforeScrollFocusPosition = getChildAdapterPosition(focusedChild);
        }
        super.onScrollStateChanged(state);
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0041  */
    /* JADX WARN: Code duplicated, block: B:27:0x0044  */
    /* JADX WARN: Code duplicated, block: B:30:0x0049  */
    @Override
    public void onScrolled(int dx, int dy) {
        int orientation;
        int i;
        int i2;
        RecyclerView.ViewHolder viewHolderFindViewHolderForAdapterPosition;
        View view;
        DivViewWrapper divViewWrapper;
        View child;
        if (this.beforeScrollFocusPosition == -1) {
            return;
        }
        RecyclerView.LayoutManager layoutManager = getLayoutManager();
        if (layoutManager instanceof LinearLayoutManager) {
            orientation = ((LinearLayoutManager) layoutManager).getOrientation();
        } else {
            orientation = layoutManager instanceof DivGridLayoutManager ? ((DivGridLayoutManager) layoutManager).getOrientation() : 0;
        }
        if (orientation == 1 && dy > 0) {
            i = this.beforeScrollFocusPosition;
        } else {
            if ((orientation == 1 && dy <= 0) || dx <= 0) {
                int i3 = this.beforeScrollFocusPosition;
                i2 = i3 - 1;
                viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i2);
                if (viewHolderFindViewHolderForAdapterPosition != null) {
                    view = viewHolderFindViewHolderForAdapterPosition.itemView;
                } else {
                    view = null;
                }
                divViewWrapper = view instanceof DivViewWrapper ? (DivViewWrapper) view : null;
                if (divViewWrapper != null && (child = divViewWrapper.getChild()) != null) {
                    child.requestFocus();
                }
                super.onScrolled(dx, dy);
            }
            i = this.beforeScrollFocusPosition;
        }
        i2 = i + 1;
        viewHolderFindViewHolderForAdapterPosition = findViewHolderForAdapterPosition(i2);
        if (viewHolderFindViewHolderForAdapterPosition != null) {
            view = viewHolderFindViewHolderForAdapterPosition.itemView;
        } else {
            view = null;
        }
        if (view instanceof DivViewWrapper) {
        }
        if (divViewWrapper != null) {
            child.requestFocus();
        }
        super.onScrolled(dx, dy);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent e) {
        RecyclerView.LayoutManager layoutManager;
        PagerSnapStartHelper pagerSnapStartHelper;
        View viewFindSnapView;
        int i;
        DivGallery.ScrollMode scrollMode = getScrollMode();
        DivGallery.ScrollMode scrollMode2 = DivGallery.ScrollMode.PAGING;
        if (scrollMode == scrollMode2) {
            this.needFling = true;
        }
        boolean z = super.onTouchEvent(e) && b();
        if (e == null || e.getActionMasked() != 1 || getScrollMode() != scrollMode2 || !this.needFling || (layoutManager = getLayoutManager()) == null || (pagerSnapStartHelper = getPagerSnapStartHelper()) == null || (viewFindSnapView = pagerSnapStartHelper.findSnapView(layoutManager)) == null) {
            return z;
        }
        int[] iArrCalculateDistanceToFinalSnap = pagerSnapStartHelper.calculateDistanceToFinalSnap(layoutManager, viewFindSnapView);
        if (iArrCalculateDistanceToFinalSnap.length >= 2 && ((i = iArrCalculateDistanceToFinalSnap[0]) != 0 || iArrCalculateDistanceToFinalSnap[1] != 0)) {
            smoothScrollBy(i, iArrCalculateDistanceToFinalSnap[1]);
        }
        return z;
    }

    @Override
    public void release() {
        super.release();
        releaseBorderDrawer();
        Object adapter = getAdapter();
        if (adapter instanceof tr8) {
            ((tr8) adapter).release();
        }
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
    public void setDiv(Div.d dVar) {
        this.f.setDiv(dVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.f.setNeedClipping(z);
    }

    @Override
    public void setOnInterceptTouchEventListener(ue7 ue7Var) {
        this.onInterceptTouchEventListener = ue7Var;
    }

    public void setPagerSnapStartHelper(PagerSnapStartHelper pagerSnapStartHelper) {
        this.pagerSnapStartHelper = pagerSnapStartHelper;
    }

    public void setScrollInterceptionAngle(float f) {
        this.scrollInterceptionAngle = f != 0.0f ? Math.abs(f) % 90 : 0.0f;
    }

    public void setScrollMode(DivGallery.ScrollMode scrollMode) {
        y45.j(scrollMode, "<set-?>");
        this.scrollMode = scrollMode;
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
    public DivRecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivRecyclerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivRecyclerView(Context context, AttributeSet attributeSet, int i) {
        super(new ContextThemeWrapper(context, R.style.Div_Gallery), attributeSet, i);
        y45.j(context, "context");
        this.f = new nk2();
        this.scrollPointerId = -1;
        this.scrollMode = DivGallery.ScrollMode.DEFAULT;
        this.beforeScrollFocusPosition = -1;
    }
}
