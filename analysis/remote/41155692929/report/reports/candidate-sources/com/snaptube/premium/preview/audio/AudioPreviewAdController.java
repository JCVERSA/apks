package com.snaptube.premium.preview.audio;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import androidx.view.LifecycleCoroutineScope;
import androidx.view.ViewTreeLifecycleOwner;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.snaptube.ads.base.AdsPos;
import com.snaptube.ads.mraid.SnapAdConstants;
import com.snaptube.ads.nativead.AdView;
import com.snaptube.premium.R;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.preview.audio.view.CountDownView;
import com.snaptube.premium.preview.audio.view.ForbiddenTouchConstraintLayout;
import com.snaptube.util.ProductionEnv;
import com.snaptube.util.ViewExtKt;
import javax.inject.Inject;
import kotlin.Metadata;
import net.pubnative.mediation.broadcast.MediationEventBus;
import net.pubnative.mediation.request.model.PubnativeAdModel;
import o.b7;
import o.b88;
import o.fc1;
import o.gb;
import o.jb;
import o.jh1;
import o.kh1;
import o.kx8;
import o.or3;
import o.qe8;
import o.wd0;
import o.wu7;
import o.x24;
import o.xp2;
import o.y24;
import o.ys2;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\n\u0018\u0000 \u001b2\u00020\u0001:\u0002\u001d B\u0011\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u0015\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ?\u0010\u0015\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u0010\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0011\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0012\u001a\u0004\u0018\u00010\u000f2\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u0017\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0017\u0010\nJ\u001f\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001b\u0010\nJ\u0017\u0010\u001c\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u001c\u0010\nR\u0016\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u0010\u001eR\u0014\u0010\"\u001a\u00020\u001f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\"\u0010.\u001a\u00020'8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b(\u0010)\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\"\u00106\u001a\u00020/8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R\"\u0010>\u001a\u0002078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b8\u00109\u001a\u0004\b:\u0010;\"\u0004\b<\u0010=R\u0014\u0010@\u001a\u0002078BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b?\u0010;¨\u0006A"}, d2 = {"Lcom/snaptube/premium/preview/audio/AudioPreviewAdController;", "Lo/kh1;", "Landroid/os/Bundle;", SnapAdConstants.KEY_PARAMS, "<init>", "(Landroid/os/Bundle;)V", "Lo/ys2;", "root", "Lo/mg8;", "M", "(Lo/ys2;)V", "Lo/x24;", "owner", "onDestroy", "(Lo/x24;)V", "", "placementId", "realPlacementId", MediationEventBus.PARAM_PROVIDER, "Lnet/pubnative/mediation/request/model/PubnativeAdModel;", "adData", "t", "(Lo/ys2;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V", "n", "ad", "o", "(Lo/ys2;Lnet/pubnative/mediation/request/model/PubnativeAdModel;)V", "g", CampaignEx.JSON_KEY_AD_R, "a", "Landroid/os/Bundle;", "Lcom/snaptube/ads/base/AdsPos;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "Lcom/snaptube/ads/base/AdsPos;", "adsPos", "Lo/wu7;", "c", "Lo/wu7;", "adSubscription", "Lo/gb;", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "Lo/gb;", "h", "()Lo/gb;", "setAdRepositoryService", "(Lo/gb;)V", "adRepositoryService", "Lo/b7;", "e", "Lo/b7;", "getAdCache", "()Lo/b7;", "setAdCache", "(Lo/b7;)V", "adCache", "", "f", "Z", "i", "()Z", "B", "(Z)V", "hasShowAd", "s", "isSecretMedia", "snaptube_classicNormalRelease"}, k = 1, mv = {1, 9, 0})
public final class AudioPreviewAdController implements kh1 {

    public final Bundle params;

    public final AdsPos adsPos = AdsPos.AUDIO_PREVIEW;

    public wu7 adSubscription;

    @Inject
    public gb adRepositoryService;

    @Inject
    public b7 adCache;

    public boolean hasShowAd;

    public interface b {
        void T(AudioPreviewAdController audioPreviewAdController);
    }

    public static final class c implements Animator.AnimatorListener {
        public final ys2 a;

        public c(ys2 ys2Var) {
            this.a = ys2Var;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            or3.f(animator, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            or3.f(animator, "animation");
            this.a.j.h();
            this.a.g.setVisibility(4);
            this.a.h.setVisibility(4);
            this.a.l.setVisibility(4);
            this.a.m.setVisibility(4);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            or3.f(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            or3.f(animator, "animation");
        }
    }

    public static final class d implements Animator.AnimatorListener {
        public final ys2 a;
        public final AudioPreviewAdController b;

        public d(ys2 ys2Var, AudioPreviewAdController audioPreviewAdController) {
            this.a = ys2Var;
            this.b = audioPreviewAdController;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
            or3.f(animator, "animation");
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            or3.f(animator, "animation");
            ForbiddenTouchConstraintLayout forbiddenTouchConstraintLayout = this.a.b;
            or3.e(forbiddenTouchConstraintLayout, "adContainer");
            ViewExtKt.g(forbiddenTouchConstraintLayout, false);
            this.a.d.setAdListener(null);
            this.b.B(false);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
            or3.f(animator, "animation");
        }

        @Override
        public void onAnimationStart(Animator animator) {
            or3.f(animator, "animation");
        }
    }

    public static final class e extends BottomSheetBehavior.g {
        public final ForbiddenTouchConstraintLayout a;

        public e(ForbiddenTouchConstraintLayout forbiddenTouchConstraintLayout) {
            this.a = forbiddenTouchConstraintLayout;
        }

        @Override
        public void a(View view, float f) {
            or3.f(view, "bottomSheet");
        }

        /* JADX WARN: Code duplicated, block: B:7:0x000e  */
        @Override
        public void b(View view, int i) {
            boolean z;
            or3.f(view, "bottomSheet");
            ForbiddenTouchConstraintLayout forbiddenTouchConstraintLayout = this.a;
            if (i != 3) {
                z = i != 1;
            }
            forbiddenTouchConstraintLayout.setEnabled(z);
        }
    }

    public AudioPreviewAdController(Bundle bundle) {
        this.params = bundle;
        ((b) fc1.a(PhoenixApplication.z())).T(this);
    }

    public static final wu7 a(AudioPreviewAdController audioPreviewAdController) {
        return audioPreviewAdController.adSubscription;
    }

    public static final AdsPos c(AudioPreviewAdController audioPreviewAdController) {
        return audioPreviewAdController.adsPos;
    }

    public static final void d(AudioPreviewAdController audioPreviewAdController, ys2 ys2Var) {
        audioPreviewAdController.r(ys2Var);
    }

    public static final void e(AudioPreviewAdController audioPreviewAdController, ys2 ys2Var, String str, String str2, String str3, PubnativeAdModel pubnativeAdModel) {
        audioPreviewAdController.t(ys2Var, str, str2, str3, pubnativeAdModel);
    }

    public static final void f(AudioPreviewAdController audioPreviewAdController, wu7 wu7Var) {
        audioPreviewAdController.adSubscription = wu7Var;
    }

    public final void B(boolean z) {
        this.hasShowAd = z;
    }

    @Override
    public void E(x24 x24Var) {
        jh1.c(this, x24Var);
    }

    @Override
    public void L(x24 x24Var) {
        jh1.d(this, x24Var);
    }

    public final void M(ys2 root) {
        LifecycleCoroutineScope lifecycleCoroutineScopeA;
        or3.f(root, "root");
        if (s()) {
            return;
        }
        AdView adView = root.d;
        or3.e(adView, "adview");
        adView.setCardBackgroundColor(ContextCompat.getColor(adView.getContext(), R.color.transparent));
        ForbiddenTouchConstraintLayout forbiddenTouchConstraintLayout = root.b;
        or3.e(forbiddenTouchConstraintLayout, "adContainer");
        BottomSheetBehavior.d0(root.w).T(new e(forbiddenTouchConstraintLayout));
        ImageView imageView = root.c;
        or3.e(imageView, "adLabel");
        ViewExtKt.g(imageView, false);
        CountDownView countDownView = root.j;
        or3.e(countDownView, "countDown");
        ViewExtKt.g(countDownView, false);
        gb gbVarH = h();
        jb.a aVar = jb.e;
        String strPos = this.adsPos.pos();
        or3.e(strPos, "pos(...)");
        gbVarH.c(aVar.a(strPos).f("ad_request_scene", "audio_preview"));
        x24 x24VarA = ViewTreeLifecycleOwner.a(adView);
        if (x24VarA == null || (lifecycleCoroutineScopeA = y24.a(x24VarA)) == null) {
            return;
        }
        wd0.d(lifecycleCoroutineScopeA, null, null, new AudioPreviewAdController$setupAd$2(adView, this, root, null), 3, null);
    }

    public final void g(ys2 root) {
        root.b.setAlpha(0.0f);
        root.g.setAlpha(0.0f);
        root.h.setAlpha(0.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(root.B, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(root.l, "alpha", 1.0f, 0.0f), ObjectAnimator.ofFloat(root.m, "alpha", 1.0f, 0.0f));
        animatorSet.setDuration(300L);
        ObjectAnimator duration = ObjectAnimator.ofFloat(root.b, "alpha", 0.0f, 1.0f).setDuration(300L);
        or3.e(duration, "setDuration(...)");
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.play(animatorSet);
        animatorSet2.play(duration).after(100L);
        animatorSet2.addListener(new c(root));
        animatorSet2.start();
    }

    public final gb h() {
        gb gbVar = this.adRepositoryService;
        if (gbVar != null) {
            return gbVar;
        }
        or3.w("adRepositoryService");
        return null;
    }

    public final boolean getHasShowAd() {
        return this.hasShowAd;
    }

    public final void n(ys2 root) {
        AdView adView = root.d;
        ViewGroup.LayoutParams layoutParams = adView.getLayoutParams();
        or3.d(layoutParams, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.topMargin = root.l.getTop();
        adView.setLayoutParams(marginLayoutParams);
    }

    public final void o(ys2 root, PubnativeAdModel ad) {
        CountDownView countDownView = root.j;
        or3.c(countDownView);
        ViewExtKt.g(countDownView, true);
        countDownView.setCountDown(6);
        countDownView.setOnClickClose(new AudioPreviewAdController$handleCountDownAndLabel$1$1(countDownView, ad));
        countDownView.setOnCountDownFinished(new AudioPreviewAdController$handleCountDownAndLabel$1$2(this, root));
        ImageView imageView = root.c;
        or3.e(imageView, "adLabel");
        ViewExtKt.g(imageView, true);
        if (ad.isNative()) {
            View viewFindViewById = root.b().findViewById(R.id.nativeAdCoverContainerCard);
            if (viewFindViewById != null) {
                kx8.b(viewFindViewById, new AudioPreviewAdController$handleCountDownAndLabel$2$1(viewFindViewById, root));
                return;
            }
            return;
        }
        int iD = (qe8.d(root.b().getContext()) - xp2.a(300.0f)) / 2;
        ImageView imageView2 = root.c;
        or3.e(imageView2, "adLabel");
        kx8.e(imageView2, xp2.a(12.0f) + iD);
        CountDownView countDownView2 = root.j;
        or3.e(countDownView2, "countDown");
        kx8.d(countDownView2, iD);
    }

    @Override
    public void onDestroy(x24 owner) {
        or3.f(owner, "owner");
        wu7 wu7Var = this.adSubscription;
        if (wu7Var != null) {
            wu7Var.unsubscribe();
        }
        jh1.b(this, owner);
    }

    @Override
    public void onStart(x24 x24Var) {
        jh1.e(this, x24Var);
    }

    @Override
    public void onStop(x24 x24Var) {
        jh1.f(this, x24Var);
    }

    public final void r(ys2 root) {
        root.g.setVisibility(0);
        root.h.setVisibility(0);
        root.l.setVisibility(0);
        root.m.setVisibility(0);
        root.g.setAlpha(1.0f);
        root.h.setAlpha(1.0f);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(ObjectAnimator.ofFloat(root.B, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(root.l, "alpha", 0.0f, 1.0f), ObjectAnimator.ofFloat(root.m, "alpha", 0.0f, 1.0f));
        animatorSet.setDuration(300L);
        ObjectAnimator duration = ObjectAnimator.ofFloat(root.b, "alpha", 1.0f, 0.0f).setDuration(300L);
        or3.e(duration, "setDuration(...)");
        AnimatorSet animatorSet2 = new AnimatorSet();
        animatorSet2.play(duration);
        animatorSet2.play(animatorSet).after(100L);
        animatorSet2.addListener(new d(root, this));
        animatorSet2.start();
    }

    public final boolean s() {
        Bundle bundle = this.params;
        if (bundle != null) {
            return bundle.getBoolean("extra_is_secret_media", false);
        }
        return false;
    }

    public final void t(ys2 root, String placementId, String realPlacementId, String provider, PubnativeAdModel adData) {
        if (adData == null) {
            ProductionEnv.throwExceptForDebugging("AudioPreviewException", new RuntimeException("adData is null"));
            return;
        }
        ProductionEnv.d("AudioPreviewAd", "onAdImpression: " + adData);
        if (this.hasShowAd) {
            return;
        }
        b88.k(root.d.getContext(), "预览页已填充，填充类型：" + adData.getAdForm());
        n(root);
        o(root, adData);
        g(root);
        this.hasShowAd = true;
    }

    @Override
    public void u(x24 x24Var) {
        jh1.a(this, x24Var);
    }
}
