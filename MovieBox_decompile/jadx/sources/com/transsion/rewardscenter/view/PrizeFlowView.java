package com.transsion.rewardscenter.view;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.imageview.ShapeableImageView;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.tn.lib.widget.R$mipmap;
import com.transsion.push.PushConstants;
import com.transsion.rewardscenter.view.PrizeFlowView;
import com.transsion.rewardscenterapi.PrizeFlow;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import yo.f;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0012\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u0000 ?2\u00020\u0001:\u0001$B'\b\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0011\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\fH\u0002¢\u0006\u0004\b\u0012\u0010\u0010J\u001f\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0016\u001a\u00020\u0015H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u00020\u00192\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u001b\u0010\u001f\u001a\u00020\f2\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d¢\u0006\u0004\b\u001f\u0010 J\r\u0010!\u001a\u00020\f¢\u0006\u0004\b!\u0010\u0010J\u000f\u0010\"\u001a\u00020\fH\u0014¢\u0006\u0004\b\"\u0010\u0010J\u000f\u0010#\u001a\u00020\fH\u0014¢\u0006\u0004\b#\u0010\u0010R\u0014\u0010&\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%R\u0014\u0010(\u001a\u00020\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b'\u0010%R\u0016\u0010*\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010%R\u0016\u0010+\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010%R\u001c\u0010-\u001a\b\u0012\u0004\u0012\u00020\u00150\u001d8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010,R\u0016\u0010/\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010.R\u0016\u00102\u001a\u0002008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u00101R\u0014\u00105\u001a\u0002038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u00104R\u0014\u00109\u001a\u0002068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108R\u0014\u0010=\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b;\u0010<R\u0014\u0010>\u001a\u00020:8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010<¨\u0006@"}, d2 = {"Lcom/transsion/rewardscenter/view/PrizeFlowView;", "Landroid/widget/FrameLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/view/View;", "root", "", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/view/View;)V", "g", "()V", CampaignEx.JSON_KEY_AD_K, "h", "Lyo/f;", "binding", "Lcom/transsion/rewardscenterapi/PrizeFlow;", "flow", "e", "(Lyo/f;Lcom/transsion/rewardscenterapi/PrizeFlow;)V", "", "name", "f", "(Ljava/lang/String;)Ljava/lang/String;", "", "flows", "setPrizeFlows", "(Ljava/util/List;)V", PushConstants.PROVIDER_FIELD_DESTROY, "onAttachedToWindow", "onDetachedFromWindow", "a", "Lyo/f;", "bindingA", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "bindingB", "c", "current", "next", "Ljava/util/List;", "prizeFlows", "I", "currentIndex", "", "Z", "isRunning", "Landroid/view/animation/DecelerateInterpolator;", "Landroid/view/animation/DecelerateInterpolator;", "interpolator", "Landroid/os/Handler;", "i", "Landroid/os/Handler;", "handler", "Ljava/lang/Runnable;", "j", "Ljava/lang/Runnable;", "ticker", "startRunnable", "Companion", "RewardsCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class PrizeFlowView extends FrameLayout {

    private final f bindingA;

    private final f bindingB;

    private f current;

    private f next;

    private List prizeFlows;

    private int currentIndex;

    private boolean isRunning;

    private final DecelerateInterpolator interpolator;

    private final Handler handler;

    private final Runnable ticker;

    private final Runnable startRunnable;
    public static final int $stable = 8;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeFlowView(Context context) {
        this(context, null, 0, 6, null);
        Intrinsics.h(context, "context");
    }

    private final void d(View root) {
        ViewParent parent = root.getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(root);
        }
        addView(root, new FrameLayout.LayoutParams(-1, -1));
    }

    private final void e(f binding, PrizeFlow flow) {
        binding.f76334d.setText(f(flow.getUserName()));
        binding.f76333c.setText(flow.getPrizeName());
        ni.f.a aVar = ni.f.f67269a;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        ni.f.b bVarI = aVar.m(context).g(flow.getAvatar()).i(R$mipmap.profile_default_avatar);
        ShapeableImageView ivAvatar = binding.f76332b;
        Intrinsics.g(ivAvatar, "ivAvatar");
        bVarI.d(ivAvatar);
    }

    private final String f(String name) {
        if (name == null || name.length() == 0) {
            return "";
        }
        if (name.length() <= 3) {
            return name;
        }
        return StringsKt.z1(name, 2) + StringsKt.M("*", Math.min(name.length() - 3, 6)) + StringsKt.x1(name);
    }

    private final void g() {
        this.isRunning = true;
        this.handler.postDelayed(this.ticker, 3000L);
    }

    private final void h() {
        final float height = getHeight();
        this.current.getRoot().animate().translationY(-height).setDuration(400L).setInterpolator(this.interpolator).start();
        this.next.getRoot().animate().translationY(0.0f).setDuration(400L).setInterpolator(this.interpolator).withEndAction(new Runnable() {
            @Override
            public final void run() {
                PrizeFlowView.i(this.f15422a, height);
            }
        }).start();
    }

    public static final void i(PrizeFlowView prizeFlowView, float f10) {
        if (prizeFlowView.isRunning) {
            int size = (prizeFlowView.currentIndex + 1) % prizeFlowView.prizeFlows.size();
            prizeFlowView.currentIndex = size;
            f fVar = prizeFlowView.current;
            List list = prizeFlowView.prizeFlows;
            prizeFlowView.e(fVar, (PrizeFlow) list.get((size + 1) % list.size()));
            prizeFlowView.current.getRoot().setTranslationY(f10);
            f fVar2 = prizeFlowView.current;
            prizeFlowView.current = prizeFlowView.next;
            prizeFlowView.next = fVar2;
            prizeFlowView.g();
        }
    }

    public static final void j(PrizeFlowView prizeFlowView) {
        f fVar = prizeFlowView.bindingA;
        prizeFlowView.current = fVar;
        prizeFlowView.next = prizeFlowView.bindingB;
        prizeFlowView.e(fVar, (PrizeFlow) prizeFlowView.prizeFlows.get(prizeFlowView.currentIndex));
        prizeFlowView.current.getRoot().setTranslationY(0.0f);
        if (prizeFlowView.prizeFlows.size() >= 2) {
            f fVar2 = prizeFlowView.next;
            List list = prizeFlowView.prizeFlows;
            prizeFlowView.e(fVar2, (PrizeFlow) list.get((prizeFlowView.currentIndex + 1) % list.size()));
            prizeFlowView.next.getRoot().setTranslationY(prizeFlowView.getMeasuredHeight());
            prizeFlowView.g();
        }
    }

    private final void k() {
        this.isRunning = false;
        removeCallbacks(this.startRunnable);
        this.handler.removeCallbacks(this.ticker);
        this.bindingA.getRoot().animate().cancel();
        this.bindingB.getRoot().animate().cancel();
    }

    public static final void l(PrizeFlowView prizeFlowView) {
        prizeFlowView.h();
    }

    public final void destroy() {
        k();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.prizeFlows.isEmpty() || this.isRunning) {
            return;
        }
        post(this.startRunnable);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k();
    }

    public final void setPrizeFlows(List<PrizeFlow> flows) {
        Intrinsics.h(flows, "flows");
        if (flows.isEmpty()) {
            return;
        }
        k();
        this.prizeFlows = flows;
        this.currentIndex = 0;
        removeAllViews();
        ConstraintLayout root = this.bindingA.getRoot();
        Intrinsics.g(root, "getRoot(...)");
        d(root);
        if (flows.size() >= 2) {
            ConstraintLayout root2 = this.bindingB.getRoot();
            Intrinsics.g(root2, "getRoot(...)");
            d(root2);
        }
        post(this.startRunnable);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeFlowView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        Intrinsics.h(context, "context");
    }

    public PrizeFlowView(Context context, AttributeSet attributeSet, int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i11 & 2) != 0 ? null : attributeSet, (i11 & 4) != 0 ? 0 : i10);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @JvmOverloads
    public PrizeFlowView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        f fVarC = f.c(LayoutInflater.from(context));
        Intrinsics.g(fVarC, "inflate(...)");
        this.bindingA = fVarC;
        f fVarC2 = f.c(LayoutInflater.from(context));
        Intrinsics.g(fVarC2, "inflate(...)");
        this.bindingB = fVarC2;
        this.current = fVarC;
        this.next = fVarC2;
        this.prizeFlows = CollectionsKt.l();
        this.interpolator = new DecelerateInterpolator();
        this.handler = new Handler(Looper.getMainLooper());
        this.ticker = new Runnable() {
            @Override
            public final void run() {
                PrizeFlowView.l(this.f15420a);
            }
        };
        this.startRunnable = new Runnable() {
            @Override
            public final void run() {
                PrizeFlowView.j(this.f15421a);
            }
        };
        setClipChildren(true);
    }
}
