package com.transsion.wrapperad.view.cardpage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.Keyframe;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.p009lifecycle.LifecycleCoroutineScope;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.a0;
import com.google.android.material.card.MaterialCardView;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.ad.R$color;
import com.transsion.ad.bidding.base.BiddingIntermediateMaterialBean;
import com.transsion.ad.bidding.nativead.BiddingSspNativeManager;
import com.transsion.ad.view.native_ad.NativeWrapperAdView;
import com.transsion.wrapperad.R$drawable;
import com.transsion.wrapperad.R$id;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.y0;
import ow.o;
import ow.p;

public final class NativeCardPageAdHelper {

    public static final a f56076o = new a(null);

    private final LifecycleCoroutineScope f56077a;

    private Runnable f56078b;

    private ObjectAnimator f56079c;

    private ValueAnimator f56080d;

    private ValueAnimator f56081e;

    private ValueAnimator f56082f;

    private AnimatorSet f56083g;

    private Runnable f56084h;

    private boolean f56085i;

    private NativeCardPageView f56086j;

    private BiddingSspNativeManager f56087k;

    private String f56088l;

    private Map f56089m;

    private final c f56090n;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public static final class b extends AnimatorListenerAdapter {

        final ObjectAnimator f56091a;

        final NativeCardPageAdHelper f56092b;

        final f f56093c;

        b(ObjectAnimator objectAnimator, NativeCardPageAdHelper nativeCardPageAdHelper, f fVar) {
            this.f56091a = objectAnimator;
            this.f56092b = nativeCardPageAdHelper;
            this.f56093c = fVar;
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            super.onAnimationEnd(animation);
            this.f56091a.removeAllListeners();
            this.f56092b.D(this.f56093c);
        }
    }

    public static final class c extends oh.a {
        c() {
        }

        @Override
        public void i(TAdErrorCode tAdErrorCode) {
            super.i(tAdErrorCode);
            NativeCardPageView nativeCardPageView = NativeCardPageAdHelper.this.f56086j;
            if (nativeCardPageView != null) {
                uf.c.g(nativeCardPageView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "NativeCardPage", "onBiddingError() --> p0 = " + (tAdErrorCode != null ? tAdErrorCode.getErrorMessage() : null), false, 4, null);
        }

        @Override
        public void j(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.j(biddingIntermediateMaterialBean);
            NativeCardPageAdHelper.this.v(biddingIntermediateMaterialBean != null ? CollectionsKt.e(biddingIntermediateMaterialBean) : null);
        }

        @Override
        public void k(List list) {
            super.k(list);
            NativeCardPageAdHelper.this.v(list);
        }

        @Override
        public void p(BiddingIntermediateMaterialBean biddingIntermediateMaterialBean) {
            super.p(biddingIntermediateMaterialBean);
            NativeCardPageView nativeCardPageView = NativeCardPageAdHelper.this.f56086j;
            if (nativeCardPageView != null) {
                uf.c.g(nativeCardPageView);
            }
            wf.a.C0922a.f(wf.a.f74274a, "NativeCardPage", "onBiddingWrapperAdShowError()", false, 4, null);
        }
    }

    public static final class d implements Animator.AnimatorListener {

        final AppCompatImageView f56095a;

        final float f56096b;

        final NativeCardPageAdHelper f56097c;

        final FrameLayout f56098d;

        d(AppCompatImageView appCompatImageView, float f10, NativeCardPageAdHelper nativeCardPageAdHelper, FrameLayout frameLayout) {
            this.f56095a = appCompatImageView;
            this.f56096b = f10;
            this.f56097c = nativeCardPageAdHelper;
            this.f56098d = frameLayout;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
            ValueAnimator valueAnimator = this.f56097c.f56080d;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
            }
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            ValueAnimator valueAnimator = this.f56097c.f56080d;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
            }
            this.f56097c.K(this.f56095a, this.f56098d, this.f56096b);
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            this.f56095a.setTranslationX(this.f56096b);
            this.f56095a.setAlpha(0.1f);
        }
    }

    public static final class e implements Animator.AnimatorListener {

        final AppCompatImageView f56099a;

        final float f56100b;

        final FrameLayout f56101c;

        final NativeCardPageAdHelper f56102d;

        e(AppCompatImageView appCompatImageView, float f10, FrameLayout frameLayout, NativeCardPageAdHelper nativeCardPageAdHelper) {
            this.f56099a = appCompatImageView;
            this.f56100b = f10;
            this.f56101c = frameLayout;
            this.f56102d = nativeCardPageAdHelper;
        }

        @Override
        public void onAnimationCancel(Animator animation) {
            Intrinsics.h(animation, "animation");
            AnimatorSet animatorSet = this.f56102d.f56083g;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            ValueAnimator valueAnimator = this.f56102d.f56081e;
            if (valueAnimator != null) {
                valueAnimator.removeAllListeners();
            }
            ValueAnimator valueAnimator2 = this.f56102d.f56082f;
            if (valueAnimator2 != null) {
                valueAnimator2.removeAllListeners();
            }
        }

        @Override
        public void onAnimationEnd(Animator animation) {
            Intrinsics.h(animation, "animation");
            this.f56101c.setVisibility(8);
            AnimatorSet animatorSet = this.f56102d.f56083g;
            if (animatorSet != null) {
                animatorSet.removeAllListeners();
            }
            this.f56102d.A();
        }

        @Override
        public void onAnimationRepeat(Animator animation) {
            Intrinsics.h(animation, "animation");
        }

        @Override
        public void onAnimationStart(Animator animation) {
            Intrinsics.h(animation, "animation");
            this.f56099a.setTranslationX(this.f56100b);
            this.f56099a.setAlpha(0.1f);
        }
    }

    public NativeCardPageAdHelper(LifecycleCoroutineScope lifecycleScope) {
        Intrinsics.h(lifecycleScope, "lifecycleScope");
        this.f56077a = lifecycleScope;
        this.f56085i = true;
        this.f56088l = "";
        this.f56089m = new LinkedHashMap();
        this.f56090n = new c();
    }

    public final void A() {
        ValueAnimator valueAnimator = this.f56080d;
        if (valueAnimator != null) {
            valueAnimator.removeAllListeners();
        }
        ValueAnimator valueAnimator2 = this.f56081e;
        if (valueAnimator2 != null) {
            valueAnimator2.removeAllListeners();
        }
        ValueAnimator valueAnimator3 = this.f56082f;
        if (valueAnimator3 != null) {
            valueAnimator3.removeAllListeners();
        }
        AnimatorSet animatorSet = this.f56083g;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
        }
        ValueAnimator valueAnimator4 = this.f56080d;
        if (valueAnimator4 != null) {
            valueAnimator4.cancel();
        }
        this.f56080d = null;
        ValueAnimator valueAnimator5 = this.f56081e;
        if (valueAnimator5 != null) {
            valueAnimator5.cancel();
        }
        this.f56081e = null;
        ValueAnimator valueAnimator6 = this.f56082f;
        if (valueAnimator6 != null) {
            valueAnimator6.cancel();
        }
        this.f56082f = null;
        AnimatorSet animatorSet2 = this.f56083g;
        if (animatorSet2 != null) {
            animatorSet2.cancel();
        }
        this.f56083g = null;
    }

    private final void B() {
        NativeCardPageView nativeCardPageView = this.f56086j;
        if (nativeCardPageView != null) {
            z();
            k.d(this.f56077a, y0.b(), null, new NativeCardPageAdHelper$loadBiddingAd$1$1(this, nativeCardPageView, null), 2, null);
        }
    }

    public final void D(final f fVar) {
        ViewPager2 viewPager;
        NativeCardPageView nativeCardPageView = this.f56086j;
        if ((nativeCardPageView == null || (viewPager = nativeCardPageView.getViewPager()) == null || viewPager.isUserInputEnabled()) && fVar.e()) {
            if (this.f56085i) {
                this.f56085i = false;
                Runnable runnable = new Runnable() {
                    @Override
                    public void run() {
                        this.this$0.I(fVar);
                        NativeCardPageView nativeCardPageView2 = this.this$0.f56086j;
                        if (nativeCardPageView2 != null) {
                            nativeCardPageView2.postDelayed(this, 7000L);
                        }
                    }
                };
                this.f56084h = runnable;
                runnable.run();
                return;
            }
            NativeCardPageView nativeCardPageView2 = this.f56086j;
            if (nativeCardPageView2 != null) {
                nativeCardPageView2.removeCallbacks(this.f56084h);
            }
            I(fVar);
        }
    }

    private final void E(f fVar) {
        AppCompatTextView appCompatTextView = (AppCompatTextView) fVar.d().findViewById(R$id.native_ad_action);
        if (appCompatTextView != null) {
            int color = androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.ad_white_80);
            Drawable drawableE = y0.h.e(appCompatTextView.getContext().getResources(), R$drawable.ad_shape_tag, appCompatTextView.getContext().getTheme());
            appCompatTextView.setTextColor(color);
            appCompatTextView.setBackground(drawableE);
        }
    }

    private final void H(f fVar) {
        ImageView imageView = (ImageView) fVar.d().findViewWithTag("adVolumeImage");
        if (imageView != null) {
            ViewGroup.LayoutParams layoutParams = imageView.getLayoutParams();
            Intrinsics.f(layoutParams, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams");
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) layoutParams;
            layoutParams2.gravity = MaterialCardView.CHECKED_ICON_GRAVITY_BOTTOM_START;
            int iA = a0.a(8.0f);
            layoutParams2.setMarginStart(iA);
            layoutParams2.bottomMargin = iA;
            int iA2 = a0.a(26.0f);
            layoutParams2.width = iA2;
            layoutParams2.height = iA2;
        }
    }

    public final void I(f fVar) {
        Object objM453constructorimpl;
        ViewPager2 viewPager;
        ViewPager2 viewPager2;
        A();
        NativeCardPageView nativeCardPageView = this.f56086j;
        Unit unit = null;
        View childAt = (nativeCardPageView == null || (viewPager2 = nativeCardPageView.getViewPager()) == null) ? null : viewPager2.getChildAt(0);
        RecyclerView recyclerView = childAt instanceof RecyclerView ? (RecyclerView) childAt : null;
        if (recyclerView != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                NativeCardPageView nativeCardPageView2 = this.f56086j;
                RecyclerView.a0 a0VarFindViewHolderForAdapterPosition = recyclerView.findViewHolderForAdapterPosition((nativeCardPageView2 == null || (viewPager = nativeCardPageView2.getViewPager()) == null) ? 0 : viewPager.getCurrentItem());
                com.transsion.wrapperad.view.cardpage.e.a aVar = a0VarFindViewHolderForAdapterPosition instanceof com.transsion.wrapperad.view.cardpage.e.a ? (com.transsion.wrapperad.view.cardpage.e.a) a0VarFindViewHolderForAdapterPosition : null;
                if (aVar != null) {
                    final FrameLayout frameLayout = (FrameLayout) aVar.itemView.findViewById(R$id.ad_cover);
                    AppCompatImageView appCompatImageView = (AppCompatImageView) aVar.itemView.findViewById(R$id.swipe_guide);
                    if (frameLayout != null && appCompatImageView != null) {
                        fVar.h(false);
                        frameLayout.setVisibility(0);
                        frameLayout.setAlpha(0.0f);
                        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
                        this.f56080d = valueAnimatorOfFloat;
                        if (valueAnimatorOfFloat != null) {
                            valueAnimatorOfFloat.setDuration(500L);
                        }
                        ValueAnimator valueAnimator = this.f56080d;
                        if (valueAnimator != null) {
                            valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                                @Override
                                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                                    NativeCardPageAdHelper.J(frameLayout, valueAnimator2);
                                }
                            });
                        }
                        float fA = a0.a(100.0f);
                        ValueAnimator valueAnimator2 = this.f56080d;
                        if (valueAnimator2 != null) {
                            valueAnimator2.addListener(new d(appCompatImageView, fA, this, frameLayout));
                        }
                        ValueAnimator valueAnimator3 = this.f56080d;
                        if (valueAnimator3 != null) {
                            valueAnimator3.start();
                        }
                    }
                    unit = Unit.f64096a;
                }
                objM453constructorimpl = Result.m453constructorimpl(unit);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    public static final void J(FrameLayout frameLayout, ValueAnimator valueAnimator) {
        Intrinsics.h(valueAnimator, "valueAnimator");
        Object animatedValue = valueAnimator.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        frameLayout.setAlpha(((Float) animatedValue).floatValue());
    }

    public final void K(final AppCompatImageView appCompatImageView, FrameLayout frameLayout, float f10) {
        Unit unit;
        try {
            Result.Companion companion = Result.INSTANCE;
            A();
            ValueAnimator valueAnimatorOfPropertyValuesHolder = ValueAnimator.ofPropertyValuesHolder(PropertyValuesHolder.ofKeyframe("translationX", Keyframe.ofFloat(0.0f, f10), Keyframe.ofFloat(0.4f, 0.0f), Keyframe.ofFloat(0.6f, 0.0f), Keyframe.ofFloat(1.0f, f10)));
            this.f56081e = valueAnimatorOfPropertyValuesHolder;
            if (valueAnimatorOfPropertyValuesHolder != null) {
                valueAnimatorOfPropertyValuesHolder.setDuration(1500L);
            }
            ValueAnimator valueAnimator = this.f56081e;
            if (valueAnimator != null) {
                valueAnimator.setRepeatCount(1);
            }
            ValueAnimator valueAnimator2 = this.f56081e;
            if (valueAnimator2 != null) {
                valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator3) {
                        NativeCardPageAdHelper.L(appCompatImageView, valueAnimator3);
                    }
                });
            }
            ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.1f, 1.0f, 0.1f);
            this.f56082f = valueAnimatorOfFloat;
            if (valueAnimatorOfFloat != null) {
                valueAnimatorOfFloat.setDuration(1500L);
            }
            ValueAnimator valueAnimator3 = this.f56082f;
            if (valueAnimator3 != null) {
                valueAnimator3.setRepeatCount(1);
            }
            ValueAnimator valueAnimator4 = this.f56082f;
            if (valueAnimator4 != null) {
                valueAnimator4.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                    @Override
                    public final void onAnimationUpdate(ValueAnimator valueAnimator5) {
                        NativeCardPageAdHelper.M(appCompatImageView, valueAnimator5);
                    }
                });
            }
            AnimatorSet animatorSet = new AnimatorSet();
            this.f56083g = animatorSet;
            animatorSet.playTogether(this.f56081e, this.f56082f);
            AnimatorSet animatorSet2 = this.f56083g;
            if (animatorSet2 != null) {
                animatorSet2.setDuration(1500L);
            }
            AnimatorSet animatorSet3 = this.f56083g;
            if (animatorSet3 != null) {
                animatorSet3.addListener(new e(appCompatImageView, f10, frameLayout, this));
            }
            AnimatorSet animatorSet4 = this.f56083g;
            if (animatorSet4 != null) {
                animatorSet4.start();
                unit = Unit.f64096a;
            } else {
                unit = null;
            }
            Result.m453constructorimpl(unit);
        } catch (Throwable th2) {
            Result.Companion companion2 = Result.INSTANCE;
            Result.m453constructorimpl(ResultKt.a(th2));
        }
    }

    public static final void L(AppCompatImageView appCompatImageView, ValueAnimator value) {
        Intrinsics.h(value, "value");
        Object animatedValue = value.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        appCompatImageView.setTranslationX(((Float) animatedValue).floatValue());
    }

    public static final void M(AppCompatImageView appCompatImageView, ValueAnimator it) {
        Intrinsics.h(it, "it");
        Object animatedValue = it.getAnimatedValue();
        Intrinsics.f(animatedValue, "null cannot be cast to non-null type kotlin.Float");
        appCompatImageView.setAlpha(((Float) animatedValue).floatValue());
    }

    public static final void t(AppCompatTextView appCompatTextView, NativeCardPageAdHelper nativeCardPageAdHelper, f fVar) {
        ObjectAnimator duration = ObjectAnimator.ofArgb(appCompatTextView, "textColor", androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.ad_white_80), androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_dark_00)).setDuration(300L);
        Intrinsics.g(duration, "setDuration(...)");
        TransitionDrawable transitionDrawable = new TransitionDrawable(new Drawable[]{y0.h.e(appCompatTextView.getContext().getResources(), R$drawable.ad_shape_tag, appCompatTextView.getContext().getTheme()), y0.h.e(appCompatTextView.getContext().getResources(), R$drawable.bg_gradient_brand_4, appCompatTextView.getContext().getTheme())});
        appCompatTextView.setBackground(transitionDrawable);
        transitionDrawable.startTransition(300);
        duration.addListener(new b(duration, nativeCardPageAdHelper, fVar));
        duration.start();
    }

    private final void y() {
        NativeCardPageView nativeCardPageView;
        NativeCardPageView nativeCardPageView2;
        ObjectAnimator objectAnimator = this.f56079c;
        if (objectAnimator != null) {
            objectAnimator.removeAllListeners();
        }
        ObjectAnimator objectAnimator2 = this.f56079c;
        if (objectAnimator2 != null) {
            objectAnimator2.cancel();
        }
        this.f56079c = null;
        Runnable runnable = this.f56078b;
        if (runnable != null && (nativeCardPageView2 = this.f56086j) != null) {
            nativeCardPageView2.removeCallbacks(runnable);
        }
        this.f56078b = null;
        Runnable runnable2 = this.f56084h;
        if (runnable2 != null && (nativeCardPageView = this.f56086j) != null) {
            nativeCardPageView.removeCallbacks(runnable2);
        }
        this.f56084h = null;
    }

    private final void z() {
        BiddingSspNativeManager biddingSspNativeManager = this.f56087k;
        if (biddingSspNativeManager != null) {
            biddingSspNativeManager.U();
        }
        this.f56087k = null;
    }

    public final void C() {
        NativeCardPageView nativeCardPageView = this.f56086j;
        if (nativeCardPageView != null) {
            nativeCardPageView.pauseAutoScroll();
        }
    }

    public final NativeCardPageAdHelper F(Map ctxMap) {
        Intrinsics.h(ctxMap, "ctxMap");
        this.f56089m = ctxMap;
        return this;
    }

    public final NativeCardPageAdHelper G(String sceneId) {
        Intrinsics.h(sceneId, "sceneId");
        this.f56088l = sceneId;
        return this;
    }

    public final void s(final f pageData) {
        Object objM453constructorimpl;
        Intrinsics.h(pageData, "pageData");
        final AppCompatTextView appCompatTextView = (AppCompatTextView) pageData.d().findViewById(R$id.native_ad_action);
        if (appCompatTextView != null) {
            try {
                Result.Companion companion = Result.INSTANCE;
                y();
                Runnable runnable = new Runnable() {
                    @Override
                    public final void run() {
                        NativeCardPageAdHelper.t(appCompatTextView, this, pageData);
                    }
                };
                this.f56078b = runnable;
                NativeCardPageView nativeCardPageView = this.f56086j;
                objM453constructorimpl = Result.m453constructorimpl(nativeCardPageView != null ? Boolean.valueOf(nativeCardPageView.postDelayed(runnable, 3000L)) : null);
            } catch (Throwable th2) {
                Result.Companion companion2 = Result.INSTANCE;
                objM453constructorimpl = Result.m453constructorimpl(ResultKt.a(th2));
            }
            Result.m452boximpl(objM453constructorimpl);
        }
    }

    public final void u(NativeCardPageView pageView) {
        Intrinsics.h(pageView, "pageView");
        this.f56086j = pageView;
        B();
    }

    public final void v(List list) {
        List<f> listL;
        NativeCardPageView scrollInterval;
        NativeCardPageView nativeCardPageView = this.f56086j;
        if (nativeCardPageView != null) {
            if (list != null) {
                List<BiddingIntermediateMaterialBean> list2 = list;
                listL = new ArrayList<>(CollectionsKt.v(list2, 10));
                for (BiddingIntermediateMaterialBean biddingIntermediateMaterialBean : list2) {
                    Context context = nativeCardPageView.getContext();
                    Intrinsics.g(context, "getContext(...)");
                    listL.add(new f(new NativeWrapperAdView(context, null, 2, null), biddingIntermediateMaterialBean, this, false, false, 16, null));
                }
            } else {
                listL = CollectionsKt.l();
            }
            if (listL.isEmpty()) {
                return;
            }
            NativeCardPageView nativeCardPageView2 = this.f56086j;
            if (nativeCardPageView2 != null && (scrollInterval = nativeCardPageView2.setScrollInterval(((long) com.transsion.ad.scene.a.f41152a.m(this.f56088l)) * 1000)) != null) {
                scrollInterval.setPageData(listL);
            }
            uf.c.k(nativeCardPageView);
        }
    }

    public final void w(f pageData) {
        Intrinsics.h(pageData, "pageData");
        if (pageData.b()) {
            return;
        }
        NativeCardPageView nativeCardPageView = this.f56086j;
        if (nativeCardPageView != null) {
            pageData.f(true);
            NativeWrapperAdView nativeWrapperAdViewD = pageData.d();
            BiddingSspNativeManager biddingSspNativeManager = this.f56087k;
            Context context = nativeCardPageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            o oVar = new o(context);
            Context context2 = nativeCardPageView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            nativeWrapperAdViewD.bindSspNativeView(biddingSspNativeManager, oVar, new p(context2), pageData.a());
            H(pageData);
        }
        E(pageData);
    }

    public final void x() {
        z();
        NativeCardPageView nativeCardPageView = this.f56086j;
        if (nativeCardPageView != null) {
            nativeCardPageView.destroy();
        }
        NativeCardPageView nativeCardPageView2 = this.f56086j;
        ViewParent parent = nativeCardPageView2 != null ? nativeCardPageView2.getParent() : null;
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(this.f56086j);
        }
        NativeCardPageView nativeCardPageView3 = this.f56086j;
        if (nativeCardPageView3 != null) {
            uf.c.g(nativeCardPageView3);
        }
        y();
        A();
    }
}
