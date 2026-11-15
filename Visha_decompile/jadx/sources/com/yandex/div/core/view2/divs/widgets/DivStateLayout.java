package com.yandex.div.core.view2.divs.widgets;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.app.NotificationCompat;
import androidx.core.math.MathUtils;
import androidx.core.view.GestureDetectorCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.android.billingclient.api.BillingClient;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div.internal.widget.FrameContainerLayout;
import com.yandex.div2.Div;
import com.yandex.div2.DivBorder;
import defpackage.c74;
import defpackage.e74;
import defpackage.mk2;
import defpackage.nk2;
import defpackage.qc2;
import defpackage.y45;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000¨\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0016\n\u0002\u0010!\n\u0002\b\b\b\u0000\u0018\u00002\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u007fB'\b\u0007\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0096\u0001¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0012\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0096\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u0016\u0010\u0012J \u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\bH\u0096\u0001¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001b\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u001b\u0010\u0012J\u0010\u0010\u001c\u001a\u00020\u000eH\u0096\u0001¢\u0006\u0004\b\u001c\u0010\u0012J*\u0010#\u001a\u00020\u000e2\u0006\u0010\u001e\u001a\u00020\u001d2\b\u0010 \u001a\u0004\u0018\u00010\u001f2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b#\u0010$J\u0018\u0010%\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b%\u0010&J\u0018\u0010'\u001a\u00020\u000e2\u0006\u0010\"\u001a\u00020!H\u0096\u0001¢\u0006\u0004\b'\u0010&J\u0017\u0010+\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0016¢\u0006\u0004\b+\u0010,J\u0017\u0010-\u001a\u00020*2\u0006\u0010)\u001a\u00020(H\u0017¢\u0006\u0004\b-\u0010,J\u0017\u0010/\u001a\u00020*2\u0006\u0010.\u001a\u00020\bH\u0016¢\u0006\u0004\b/\u00100J/\u00105\u001a\u00020\u000e2\u0006\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\b2\u0006\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\bH\u0014¢\u0006\u0004\b5\u00106J\u0017\u00109\u001a\u00020\u000e2\u0006\u00108\u001a\u000207H\u0016¢\u0006\u0004\b9\u0010:J)\u0010>\u001a\u00020*2\u0006\u00108\u001a\u0002072\b\u0010;\u001a\u0004\u0018\u00010!2\u0006\u0010=\u001a\u00020<H\u0014¢\u0006\u0004\b>\u0010?R$\u0010G\u001a\u0004\u0018\u00010@8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010D\"\u0004\bE\u0010FR\u0018\u0010K\u001a\u00060HR\u00020\u00008\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bI\u0010JR\u0014\u0010O\u001a\u00020L8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bM\u0010NR*\u0010W\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010P8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bQ\u0010R\u001a\u0004\bS\u0010T\"\u0004\bU\u0010VR$\u0010_\u001a\u0004\u0018\u00010X8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bY\u0010Z\u001a\u0004\b[\u0010\\\"\u0004\b]\u0010^R0\u0010h\u001a\u0010\u0012\u0004\u0012\u00020a\u0012\u0004\u0012\u00020\u000e\u0018\u00010`8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bb\u0010c\u001a\u0004\bd\u0010e\"\u0004\bf\u0010gR\u001e\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bi\u0010j\"\u0004\bk\u0010lR\u001e\u0010q\u001a\u0004\u0018\u00010\u00038\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bm\u0010n\"\u0004\bo\u0010pR\u0014\u0010r\u001a\u00020*8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\br\u0010sR\u001c\u0010w\u001a\u00020*8\u0016@\u0016X\u0096\u000f¢\u0006\f\u001a\u0004\bt\u0010s\"\u0004\bu\u0010vR\u001a\u0010{\u001a\b\u0012\u0004\u0012\u00020\f0x8\u0016X\u0096\u0005¢\u0006\u0006\u001a\u0004\by\u0010zR\u0013\u0010~\u001a\u0004\u0018\u00010a8F¢\u0006\u0006\u001a\u0004\b|\u0010}¨\u0006\u0080\u0001"}, d2 = {"Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout;", "Lcom/yandex/div/internal/widget/FrameContainerLayout;", "Lmk2;", "Lcom/yandex/div2/Div$n;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lqc2;", "subscription", "Lzfb;", "addSubscription", "(Lqc2;)V", "closeAllSubscription", "()V", "Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "getDivBorderDrawer", "()Lcom/yandex/div/core/view2/divs/widgets/DivBorderDrawer;", "invalidateBorder", "width", "height", "onBoundsChanged", "(II)V", "release", "releaseBorderDrawer", "Lcom/yandex/div/core/view2/a;", "bindingContext", "Lcom/yandex/div2/DivBorder;", "border", "Landroid/view/View;", "view", "setBorder", "(Lcom/yandex/div/core/view2/a;Lcom/yandex/div2/DivBorder;Landroid/view/View;)V", "transitionFinished", "(Landroid/view/View;)V", "transitionStarted", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "", "onInterceptTouchEvent", "(Landroid/view/MotionEvent;)Z", "onTouchEvent", ICode.CALL.CALL_KEY_DIRECTION, "canScrollHorizontally", "(I)Z", "w", CmcdData.STREAMING_FORMAT_HLS, "oldw", "oldh", "onSizeChanged", "(IIII)V", "Landroid/graphics/Canvas;", "canvas", "draw", "(Landroid/graphics/Canvas;)V", "child", "", "drawingTime", "drawChild", "(Landroid/graphics/Canvas;Landroid/view/View;J)Z", "Lcom/yandex/div/core/state/DivStatePath;", "n", "Lcom/yandex/div/core/state/DivStatePath;", "getPath", "()Lcom/yandex/div/core/state/DivStatePath;", "setPath", "(Lcom/yandex/div/core/state/DivStatePath;)V", "path", "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;", "o", "Lcom/yandex/div/core/view2/divs/widgets/DivStateLayout$a;", "swipeListener", "Landroidx/core/view/GestureDetectorCompat;", TtmlNode.TAG_P, "Landroidx/core/view/GestureDetectorCompat;", "gestureDetector", "Lkotlin/Function0;", "q", "Lc74;", "getSwipeOutCallback", "()Lc74;", "setSwipeOutCallback", "(Lc74;)V", "swipeOutCallback", "Lcom/yandex/div2/Div;", "r", "Lcom/yandex/div2/Div;", "getActiveStateDiv$div_release", "()Lcom/yandex/div2/Div;", "setActiveStateDiv$div_release", "(Lcom/yandex/div2/Div;)V", "activeStateDiv", "Lkotlin/Function1;", "", "s", "Le74;", "getVariableUpdater", "()Le74;", "setVariableUpdater", "(Le74;)V", "variableUpdater", "getBindingContext", "()Lcom/yandex/div/core/view2/a;", "setBindingContext", "(Lcom/yandex/div/core/view2/a;)V", "getDiv", "()Lcom/yandex/div2/Div$n;", "setDiv", "(Lcom/yandex/div2/Div$n;)V", TtmlNode.TAG_DIV, "isTransient", "()Z", "getNeedClipping", "setNeedClipping", "(Z)V", "needClipping", "", "getSubscriptions", "()Ljava/util/List;", BillingClient.FeatureType.SUBSCRIPTIONS, "getStateId", "()Ljava/lang/String;", "stateId", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class DivStateLayout extends FrameContainerLayout implements mk2 {
    public final nk2 m;

    public DivStatePath path;

    public final a swipeListener;

    public final GestureDetectorCompat gestureDetector;

    public c74 swipeOutCallback;

    public Div activeStateDiv;

    public e74 variableUpdater;

    public final class a extends GestureDetector.SimpleOnGestureListener {

        public static final class C0290a extends AnimatorListenerAdapter {
            public final DivStateLayout b;

            public C0290a(DivStateLayout divStateLayout) {
                this.b = divStateLayout;
            }

            @Override
            public void onAnimationEnd(Animator animator) {
                y45.j(animator, "animation");
                c74 swipeOutCallback = this.b.getSwipeOutCallback();
                if (swipeOutCallback != null) {
                    swipeOutCallback.invoke();
                }
            }
        }

        public a() {
        }

        public final boolean a(View view, float f, float f2, int i) {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int childCount = viewGroup.getChildCount() - 1; -1 < childCount; childCount--) {
                    View childAt = viewGroup.getChildAt(childCount);
                    if (f >= childAt.getLeft() && f < childAt.getRight() && f2 >= childAt.getTop() && f2 < childAt.getBottom()) {
                        y45.i(childAt, "child");
                        if (a(childAt, f - childAt.getLeft(), f2 - childAt.getTop(), i)) {
                            return true;
                        }
                    }
                }
            }
            return view.canScrollHorizontally(i);
        }

        public final void b() {
            float fAbs;
            C0290a c0290a;
            float fSignum;
            View viewD = d();
            if (viewD == null) {
                return;
            }
            if (Math.abs(viewD.getTranslationX()) > viewD.getWidth() / 2) {
                fAbs = (Math.abs(viewD.getWidth() - viewD.getTranslationX()) * 300.0f) / viewD.getWidth();
                fSignum = Math.signum(viewD.getTranslationX()) * viewD.getWidth();
                c0290a = new C0290a(DivStateLayout.this);
            } else {
                fAbs = (Math.abs(viewD.getTranslationX()) * 300.0f) / viewD.getWidth();
                c0290a = null;
                fSignum = 0.0f;
            }
            viewD.animate().cancel();
            viewD.animate().setDuration((long) MathUtils.clamp(fAbs, 0.0f, 300.0f)).translationX(fSignum).setListener(c0290a).start();
        }

        public final boolean c() {
            View viewD = d();
            return !((viewD != null ? viewD.getTranslationX() : 0.0f) == 0.0f);
        }

        public final View d() {
            if (DivStateLayout.this.getChildCount() > 0) {
                return DivStateLayout.this.getChildAt(0);
            }
            return null;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            y45.j(motionEvent, "e");
            return true;
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            y45.j(motionEvent2, "e2");
            View viewD = d();
            if (viewD == null || motionEvent == null) {
                return false;
            }
            int iSignum = (int) Math.signum(f);
            if (viewD.getTranslationX() == 0.0f && Math.abs(f) > 2 * Math.abs(f2) && a(viewD, motionEvent.getX(), motionEvent.getY(), iSignum)) {
                return false;
            }
            viewD.setTranslationX(MathUtils.clamp(viewD.getTranslationX() - f, -viewD.getWidth(), viewD.getWidth()));
            return !(viewD.getTranslationX() == 0.0f);
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public DivStateLayout(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    @Override
    public void addSubscription(qc2 subscription) {
        this.m.addSubscription(subscription);
    }

    @Override
    public boolean canScrollHorizontally(int direction) {
        if (super.canScrollHorizontally(direction)) {
            return true;
        }
        if (getChildCount() < 1 || this.swipeOutCallback == null) {
            return super.canScrollHorizontally(direction);
        }
        View childAt = getChildAt(0);
        if (direction < 0) {
            if (childAt.getTranslationX() <= childAt.getWidth()) {
                return true;
            }
        } else if ((-childAt.getTranslationX()) <= childAt.getWidth()) {
            return true;
        }
        return false;
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
    public boolean drawChild(Canvas canvas, View child, long drawingTime) {
        y45.j(canvas, "canvas");
        if (child != null && child.getVisibility() == 0) {
            BaseDivViewExtensionsKt.N(child, canvas);
        }
        return super.drawChild(canvas, child, drawingTime);
    }

    public final Div getActiveStateDiv() {
        return this.activeStateDiv;
    }

    @Override
    public com.yandex.div.core.view2.a getBindingContext() {
        return this.m.getBindingContext();
    }

    @Override
    public Div.n getDiv() {
        return (Div.n) this.m.getDiv();
    }

    @Override
    public DivBorderDrawer getDivBorderDrawer() {
        return this.m.getDivBorderDrawer();
    }

    @Override
    public boolean getNeedClipping() {
        return this.m.getNeedClipping();
    }

    public final DivStatePath getPath() {
        return this.path;
    }

    public final String getStateId() {
        DivStatePath divStatePath = this.path;
        if (divStatePath != null) {
            return divStatePath.f();
        }
        return null;
    }

    @Override
    public List<qc2> getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String() {
        return this.m.getCom.android.billingclient.api.BillingClient.FeatureType.SUBSCRIPTIONS java.lang.String();
    }

    public final c74 getSwipeOutCallback() {
        return this.swipeOutCallback;
    }

    public final e74 getVariableUpdater() {
        return this.variableUpdater;
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
    public boolean onInterceptTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (this.swipeOutCallback == null) {
            requestDisallowInterceptTouchEvent(false);
            return false;
        }
        this.gestureDetector.onTouchEvent(event);
        requestDisallowInterceptTouchEvent(this.swipeListener.c());
        if (this.swipeListener.c()) {
            return true;
        }
        return super.onInterceptTouchEvent(event);
    }

    @Override
    public void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        onBoundsChanged(w, h);
    }

    @Override
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent event) {
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (this.swipeOutCallback == null) {
            requestDisallowInterceptTouchEvent(false);
            return super.onTouchEvent(event);
        }
        if (event.getAction() == 1 || event.getAction() == 3) {
            this.swipeListener.b();
        }
        if (this.gestureDetector.onTouchEvent(event)) {
            return true;
        }
        return super.onTouchEvent(event);
    }

    @Override
    public void release() {
        this.m.release();
    }

    @Override
    public void releaseBorderDrawer() {
        this.m.releaseBorderDrawer();
    }

    public final void setActiveStateDiv$div_release(Div div) {
        this.activeStateDiv = div;
    }

    @Override
    public void setBindingContext(com.yandex.div.core.view2.a aVar) {
        this.m.setBindingContext(aVar);
    }

    @Override
    public void setBorder(com.yandex.div.core.view2.a bindingContext, DivBorder border, View view) {
        y45.j(bindingContext, "bindingContext");
        y45.j(view, "view");
        this.m.setBorder(bindingContext, border, view);
    }

    @Override
    public void setDiv(Div.n nVar) {
        this.m.setDiv(nVar);
    }

    @Override
    public void setNeedClipping(boolean z) {
        this.m.setNeedClipping(z);
    }

    public final void setPath(DivStatePath divStatePath) {
        this.path = divStatePath;
    }

    public final void setSwipeOutCallback(c74 c74Var) {
        this.swipeOutCallback = c74Var;
    }

    public final void setVariableUpdater(e74 e74Var) {
        this.variableUpdater = e74Var;
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
    public DivStateLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public DivStateLayout(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DivStateLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.m = new nk2();
        a aVar = new a();
        this.swipeListener = aVar;
        this.gestureDetector = new GestureDetectorCompat(context, aVar, new Handler(Looper.getMainLooper()));
    }
}
