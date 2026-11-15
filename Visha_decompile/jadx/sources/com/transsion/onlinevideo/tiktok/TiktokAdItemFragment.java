package com.transsion.onlinevideo.tiktok;

import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.mediation.ad.TAdNativeView;
import com.hisavana.mediation.ad.TNativeAd;
import com.hisavana.mediation.ad.ViewBinder;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.tiktok.ad.AdSlotRemoveReason;
import defpackage.aja;
import defpackage.rka;
import defpackage.rz5;
import defpackage.wn8;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000|\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0010\t\n\u0002\b\u0012\u0018\u0000 g2\u00020\u0001:\u0002hiB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\b\u0010\u0003J\u000f\u0010\t\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\t\u0010\u0003J\u0017\u0010\f\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\nH\u0002¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u0017\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u000f\u0010\u0014\u001a\u00020\u0013H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0017\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\u0017\u0010\u0003J\u001b\u0010\u0019\u001a\u00020\u00182\n\b\u0002\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001b\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001b\u0010\u0006J\u0017\u0010\u001e\u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b \u0010\u001fJ\u000f\u0010!\u001a\u00020\u0007H\u0002¢\u0006\u0004\b!\u0010\u0003J\u000f\u0010\"\u001a\u00020\u0007H\u0002¢\u0006\u0004\b\"\u0010\u0003J\u0019\u0010%\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010#H\u0002¢\u0006\u0004\b%\u0010&J\u000f\u0010'\u001a\u00020\u0007H\u0002¢\u0006\u0004\b'\u0010\u0003J\u000f\u0010(\u001a\u00020\u0007H\u0002¢\u0006\u0004\b(\u0010\u0003J\u0019\u0010+\u001a\u00020\u00072\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b+\u0010,J!\u0010/\u001a\u00020\u00072\u0006\u0010.\u001a\u00020-2\b\u0010*\u001a\u0004\u0018\u00010)H\u0016¢\u0006\u0004\b/\u00100J\r\u00101\u001a\u00020\u0007¢\u0006\u0004\b1\u0010\u0003J\r\u00102\u001a\u00020\u0004¢\u0006\u0004\b2\u0010\u0006J\r\u00103\u001a\u00020\u0004¢\u0006\u0004\b3\u0010\u0006J\r\u00104\u001a\u00020\u0004¢\u0006\u0004\b4\u0010\u0006J\u0015\u00106\u001a\u00020\u00072\u0006\u00105\u001a\u00020\u0018¢\u0006\u0004\b6\u00107J\r\u00108\u001a\u00020\u0007¢\u0006\u0004\b8\u0010\u0003J\u000f\u00109\u001a\u00020\u0007H\u0016¢\u0006\u0004\b9\u0010\u0003R$\u0010A\u001a\u0004\u0018\u00010:8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b;\u0010<\u001a\u0004\b=\u0010>\"\u0004\b?\u0010@R\u0018\u0010E\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u0010DR\u0018\u0010I\u001a\u0004\u0018\u00010F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0018\u0010L\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bJ\u0010KR\u0016\u0010N\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010\u0011R\u0018\u0010Q\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010S\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bR\u0010'R\u0016\u0010U\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bT\u0010'R\u0016\u0010W\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bV\u0010'R\u0016\u0010Z\u001a\u00020X8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bY\u0010\bR\u0016\u0010\\\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b[\u0010'R\u0016\u0010^\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b]\u0010'R\u0016\u0010`\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b_\u0010'R\u0016\u0010b\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010'R\u0016\u0010d\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010\u0011R\u0016\u0010f\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010\u0011¨\u0006j"}, d2 = {"Lcom/transsion/onlinevideo/tiktok/TiktokAdItemFragment;", "Landroidx/fragment/app/Fragment;", MethodDecl.initName, "()V", "", "R", "()Z", "Lzfb;", "J", "L", "Lrka;", "prefetched", "K", "(Lrka;)V", "O", "Lcom/hisavana/mediation/ad/TNativeAd;", "nativeAd", "I", "(Lcom/hisavana/mediation/ad/TNativeAd;)V", "Lcom/hisavana/mediation/ad/ViewBinder;", "M", "()Lcom/hisavana/mediation/ad/ViewBinder;", ExifInterface.LONGITUDE_WEST, "N", "", "b0", "(Lrka;)I", "g0", "Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;", "reason", "a0", "(Lcom/transsion/onlinevideo/tiktok/ad/AdSlotRemoveReason;)V", "f0", "e0", "T", "", "adFail", "Y", "(Ljava/lang/String;)V", "Z", "X", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/View;", "view", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "U", "Q", "P", ExifInterface.LATITUDE_SOUTH, "globalPosition", "h0", "(I)V", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "onDestroyView", "Laja;", CmcdData.STREAM_TYPE_LIVE, "Laja;", "getAdSlotCallback", "()Laja;", "d0", "(Laja;)V", "adSlotCallback", "Landroid/widget/FrameLayout;", CmcdData.OBJECT_TYPE_MANIFEST, "Landroid/widget/FrameLayout;", "mAdRootLayout", "Lcom/hisavana/mediation/ad/TAdNativeView;", "n", "Lcom/hisavana/mediation/ad/TAdNativeView;", "mNativeAdView", "o", "Landroid/view/View;", "mFallbackLayout", TtmlNode.TAG_P, "mPosition", "q", "Lrka;", "mPrefetched", "r", "mDisplayedReported", "s", "mHasReportedAdShow", "t", "mHasReportedAdClose", "", "u", "mAdShowTimeMs", "v", "mRemoveRequested", "w", "mFallbackShown", "x", "mSelectedInViewPager", "y", "mNativeBindDispatched", "z", "mViewGeneration", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "mBoundViewGeneration", "B", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "b", "onlinevideo_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class TiktokAdItemFragment extends Fragment {

    public static final Companion INSTANCE = new Companion(null);

    public int mBoundViewGeneration;

    public aja adSlotCallback;

    public FrameLayout mAdRootLayout;

    public TAdNativeView mNativeAdView;

    public View mFallbackLayout;

    public int mPosition;

    public rka mPrefetched;

    public boolean mDisplayedReported;

    public boolean mHasReportedAdShow;

    public boolean mHasReportedAdClose;

    public long mAdShowTimeMs;

    public boolean mRemoveRequested;

    public boolean mFallbackShown;

    public boolean mSelectedInViewPager;

    public boolean mNativeBindDispatched;

    public int mViewGeneration;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final TiktokAdItemFragment a(int i) {
            TiktokAdItemFragment tiktokAdItemFragment = new TiktokAdItemFragment();
            Bundle bundle = new Bundle();
            bundle.putInt("position", i);
            tiktokAdItemFragment.setArguments(bundle);
            return tiktokAdItemFragment;
        }

        public Companion() {
        }
    }

    public TiktokAdItemFragment() {
        super(R.layout.fragment_tiktok_ad_item);
        this.mBoundViewGeneration = -1;
    }

    public static int c0(TiktokAdItemFragment tiktokAdItemFragment, rka rkaVar, int i, Object obj) {
        if ((i & 1) != 0) {
            rkaVar = tiktokAdItemFragment.mPrefetched;
        }
        return tiktokAdItemFragment.b0(rkaVar);
    }

    public final void I(TNativeAd nativeAd) {
        nativeAd.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdListener(new b()).build());
    }

    public final void J() {
        if (!this.mSelectedInViewPager || getView() == null) {
            return;
        }
        if (R()) {
            Log.d("TiktokAdItemFragment", "bindIfSelectedInViewPager skipped: already bound position=" + this.mPosition);
            return;
        }
        if (!this.mRemoveRequested) {
            L();
        }
        rka rkaVar = this.mPrefetched;
        TAdNativeInfo tAdNativeInfoE = rkaVar != null ? rkaVar.e() : null;
        if (tAdNativeInfoE == null || !tAdNativeInfoE.isExpired()) {
            return;
        }
        Log.w("TiktokAdItemFragment", "bindIfSelectedInViewPager: ad expired position=" + this.mPosition);
        f0(AdSlotRemoveReason.AD_EXPIRED);
    }

    public final void K(rka prefetched) {
        boolean z = this.mNativeBindDispatched;
        if (z && this.mBoundViewGeneration == this.mViewGeneration) {
            Log.d("TiktokAdItemFragment", "bindNativeAd skipped: already dispatched position=" + this.mPosition);
            return;
        }
        if (z) {
            N();
            this.mNativeBindDispatched = false;
        }
        TAdNativeView tAdNativeView = this.mNativeAdView;
        if (tAdNativeView == null) {
            Log.w("TiktokAdItemFragment", "bindNativeAd: nativeView null position=" + this.mPosition);
            return;
        }
        this.mNativeBindDispatched = true;
        String strEnterScene = prefetched.d().enterScene("native_tiktok_feed", 1);
        TAdNativeInfo tAdNativeInfoE = prefetched.e();
        if (tAdNativeInfoE.isExpired()) {
            Log.w("TiktokAdItemFragment", "bindNativeAd: nativeInfo expired position=" + this.mPosition);
            f0(AdSlotRemoveReason.AD_EXPIRED);
            return;
        }
        tAdNativeView.setVisibility(0);
        I(prefetched.d());
        prefetched.d().bindNativeView(tAdNativeView, tAdNativeInfoE, M(), strEnterScene);
        View viewFindViewById = tAdNativeView.findViewById(R.id.native_mediaview_iv_id);
        if (viewFindViewById instanceof ImageView) {
            ImageView imageView = (ImageView) viewFindViewById;
            imageView.setAdjustViewBounds(true);
            imageView.setScaleType(ImageView.ScaleType.FIT_XY);
        }
        int i = this.mViewGeneration;
        this.mBoundViewGeneration = i;
        Log.d("TiktokAdItemFragment", "bindNativeAd success position=" + this.mPosition + ", viewGen=" + i + ", waiting onShow");
        if (this.mDisplayedReported) {
            O();
        }
    }

    public final void L() {
        if (this.mRemoveRequested) {
            Log.d("TiktokAdItemFragment", "bindPrefetchedOrRemove skipped: removeRequested position=" + this.mPosition);
            return;
        }
        if (R()) {
            Log.d("TiktokAdItemFragment", "bindPrefetchedOrRemove skipped: already bound position=" + this.mPosition);
            return;
        }
        rka rkaVar = this.mPrefetched;
        if (rkaVar != null) {
            if (!rkaVar.f()) {
                Log.w("TiktokAdItemFragment", "bindPrefetchedOrRemove: existing invalid position=" + this.mPosition + ", consumed=" + rkaVar.b());
                f0(AdSlotRemoveReason.AD_EXPIRED);
                return;
            }
            if (R()) {
                Log.d("TiktokAdItemFragment", "bindPrefetchedOrRemove: already bound position=" + this.mPosition);
                return;
            }
            Log.d("TiktokAdItemFragment", "bindPrefetchedOrRemove: rebind after view recreate position=" + this.mPosition + ", viewGen=" + this.mViewGeneration + " boundGen=" + this.mBoundViewGeneration);
            K(rkaVar);
            return;
        }
        aja ajaVar = this.adSlotCallback;
        if (ajaVar == null) {
            Log.w("TiktokAdItemFragment", "bindPrefetchedOrRemove: no callback position=" + this.mPosition);
            if (this.mRemoveRequested) {
                return;
            }
            a0(AdSlotRemoveReason.LOAD_FAILED);
            return;
        }
        rka rkaVarM = ajaVar.m(c0(this, null, 1, null));
        if (rkaVarM == null) {
            Log.w("TiktokAdItemFragment", "bindPrefetchedOrRemove: no prefetched ad position=" + this.mPosition);
            if (this.mRemoveRequested) {
                return;
            }
            a0(AdSlotRemoveReason.LOAD_FAILED);
            return;
        }
        if (rkaVarM.f()) {
            Log.d("TiktokAdItemFragment", "bindPrefetchedOrRemove: take ok position=" + this.mPosition + ", milestone=" + rkaVarM.c());
            this.mPrefetched = rkaVarM;
            K(rkaVarM);
            return;
        }
        Log.w("TiktokAdItemFragment", "bindPrefetchedOrRemove: prefetched invalid position=" + this.mPosition + ", milestone=" + rkaVarM.c());
        rkaVarM.g();
        f0(AdSlotRemoveReason.AD_EXPIRED);
    }

    public final ViewBinder M() {
        ViewBinder.Builder builder = new ViewBinder.Builder(LayoutInflater.from(requireContext()).inflate(R.layout.item_native_ad_tiktok, (ViewGroup) this.mNativeAdView, false));
        int i = R.id.ad_tt_item_content_title;
        ViewBinder.Builder builderTitleId = builder.titleId(i);
        int i2 = R.id.ad_tt_item_content_des;
        ViewBinder.Builder builderContextMode = builderTitleId.descriptionId(i2).contextMode(1);
        int i3 = R.id.tmv_ad_tt_cover;
        ViewBinder.Builder builderMediaId = builderContextMode.mediaId(i3);
        int i4 = R.id.tiv_ad_tt_icon;
        ViewBinder.Builder builderIconId = builderMediaId.iconId(i4);
        int i5 = R.id.btn_ad_cta;
        ViewBinder.Builder builderCallToActionId = builderIconId.callToActionId(i5);
        int i6 = R.id.ad_choices_view;
        ViewBinder viewBinderBuild = builderCallToActionId.adChoicesView(i6).adDisclaimerView(R.id.ad_disclaimer_view).actionIds(Integer.valueOf(i3), Integer.valueOf(i5), Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i6), Integer.valueOf(i4)).build();
        y45.i(viewBinderBuild, "build(...)");
        return viewBinderBuild;
    }

    public final void N() {
        TAdNativeView tAdNativeView = this.mNativeAdView;
        if (tAdNativeView != null) {
            tAdNativeView.release();
        }
        TAdNativeView tAdNativeView2 = this.mNativeAdView;
        if (tAdNativeView2 != null) {
            tAdNativeView2.setVisibility(8);
        }
    }

    public final void O() {
        Log.d("TiktokAdItemFragment", "dismissLoadingAfterRebind position=" + this.mPosition + " (already displayed, no onShow)");
        View view = this.mFallbackLayout;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final boolean P() {
        rka rkaVar;
        if (!this.mRemoveRequested && (rkaVar = this.mPrefetched) != null) {
            y45.g(rkaVar);
            if (rkaVar.f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean Q() {
        return R();
    }

    public final boolean R() {
        rka rkaVar;
        if (this.mNativeBindDispatched && this.mBoundViewGeneration == this.mViewGeneration && (rkaVar = this.mPrefetched) != null) {
            y45.g(rkaVar);
            if (rkaVar.f()) {
                return true;
            }
        }
        return false;
    }

    public final boolean getMRemoveRequested() {
        return this.mRemoveRequested;
    }

    public final void T() {
        Log.i("TiktokAdItemFragment", "onAdDisplayedSuccess position=" + this.mPosition);
        View view = this.mFallbackLayout;
        if (view != null) {
            view.setVisibility(8);
        }
        Y(null);
        Z();
    }

    public final void U() {
        if (this.mRemoveRequested) {
            return;
        }
        if (this.mSelectedInViewPager && R()) {
            Log.d("TiktokAdItemFragment", "onSelectedInViewPager skipped: already bound position=" + this.mPosition);
            return;
        }
        this.mSelectedInViewPager = true;
        Log.d("TiktokAdItemFragment", "onSelectedInViewPager position=" + this.mPosition + ", removeRequested=" + this.mRemoveRequested + ", hasPrefetched=" + (this.mPrefetched != null) + ", bindDispatched=" + this.mNativeBindDispatched + ", viewGen=" + this.mViewGeneration + " boundGen=" + this.mBoundViewGeneration + ", viewReady=" + (getView() != null));
        J();
    }

    public final void V() {
        Log.d("TiktokAdItemFragment", "onUnSelectedInViewPager position=" + this.mPosition);
        this.mSelectedInViewPager = false;
        g0();
    }

    public final void W() {
        rka rkaVar = this.mPrefetched;
        if (rkaVar == null) {
            Log.d("TiktokAdItemFragment", "releaseBoundAd: nothing bound position=" + this.mPosition);
            N();
            return;
        }
        Log.d("TiktokAdItemFragment", "releaseBoundAd position=" + this.mPosition + ", consumed=" + rkaVar.b() + ", milestone=" + rkaVar.c());
        rka rkaVar2 = this.mPrefetched;
        if (rkaVar2 != null) {
            if (rkaVar2.b()) {
                try {
                    rkaVar2.e().release();
                } catch (Throwable unused) {
                }
                try {
                    rkaVar2.d().destroy();
                } catch (Throwable unused2) {
                }
            } else {
                rkaVar2.g();
            }
        }
        this.mPrefetched = null;
        this.mNativeBindDispatched = false;
        this.mBoundViewGeneration = -1;
        N();
    }

    public final void X() {
        if (this.mHasReportedAdClose) {
            Log.d("TiktokAdItemFragment", "reportAdCloseOnce skipped: already reported position=" + this.mPosition);
            return;
        }
        this.mHasReportedAdClose = true;
        long jE = this.mAdShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - this.mAdShowTimeMs) / 1000, 0L) : 0L;
        Log.i("TiktokAdItemFragment", "reportAdCloseOnce position=" + this.mPosition + " durationSec=" + jE);
        rz5.a.b(3, 1, jE);
    }

    public final void Y(String adFail) {
        if (this.mHasReportedAdShow) {
            Log.d("TiktokAdItemFragment", "reportAdShowOnce skipped: already reported position=" + this.mPosition);
            return;
        }
        Log.d("TiktokAdItemFragment", "reportAdShowOnce position=" + this.mPosition + " adFail=" + adFail);
        this.mHasReportedAdShow = true;
        if (adFail == null) {
            this.mAdShowTimeMs = System.currentTimeMillis();
        }
        rz5.a.e(3, adFail);
    }

    public final void Z() {
        if (this.mDisplayedReported) {
            Log.d("TiktokAdItemFragment", "reportDisplayedOnce skipped: already reported position=" + this.mPosition);
            return;
        }
        Log.d("TiktokAdItemFragment", "reportDisplayedOnce position=" + this.mPosition);
        this.mDisplayedReported = true;
        aja ajaVar = this.adSlotCallback;
        if (ajaVar != null) {
            ajaVar.p(c0(this, null, 1, null));
        }
    }

    public final void a0(AdSlotRemoveReason reason) {
        if (this.mRemoveRequested) {
            Log.d("TiktokAdItemFragment", "requestRemove skipped: already requested position=" + this.mPosition + " reason=" + reason);
            return;
        }
        Log.i("TiktokAdItemFragment", "requestRemove position=" + this.mPosition + " reason=" + reason);
        this.mRemoveRequested = true;
        W();
        aja ajaVar = this.adSlotCallback;
        if (ajaVar != null) {
            ajaVar.n(c0(this, null, 1, null), reason);
        }
    }

    public final int b0(rka prefetched) {
        int iA = prefetched != null ? prefetched.a() : -1;
        return iA >= 0 ? iA : this.mPosition;
    }

    public final void d0(aja ajaVar) {
        this.adSlotCallback = ajaVar;
    }

    public final void e0() {
        if (this.mFallbackShown) {
            return;
        }
        this.mFallbackShown = true;
        TAdNativeView tAdNativeView = this.mNativeAdView;
        if (tAdNativeView != null) {
            tAdNativeView.setVisibility(8);
        }
        View view = this.mFallbackLayout;
        if (view != null) {
            view.setVisibility(0);
        }
        Log.w("TiktokAdItemFragment", "showFallback position=" + this.mPosition);
    }

    public final void f0(AdSlotRemoveReason reason) {
        Log.w("TiktokAdItemFragment", "showFallbackAndRemove position=" + this.mPosition + " reason=" + reason);
        if (reason != AdSlotRemoveReason.LOAD_FAILED) {
            e0();
        }
        a0(reason);
    }

    public final boolean g0() {
        rka rkaVar;
        boolean z = false;
        if (this.mRemoveRequested || (rkaVar = this.mPrefetched) == null || !rkaVar.f()) {
            return false;
        }
        N();
        this.mPrefetched = null;
        this.mNativeBindDispatched = false;
        this.mBoundViewGeneration = -1;
        int iB0 = b0(rkaVar);
        aja ajaVar = this.adSlotCallback;
        if (ajaVar != null && ajaVar.o(iB0, rkaVar)) {
            z = true;
        }
        if (z) {
            Log.d("TiktokAdItemFragment", "stashPrefetchedToController ok position=" + this.mPosition + " milestone=" + rkaVar.c());
        }
        return z;
    }

    public final void h0(int globalPosition) {
        int i;
        if (globalPosition < 0 || (i = this.mPosition) == globalPosition) {
            return;
        }
        Log.d("TiktokAdItemFragment", "syncGlobalPosition " + i + " -> " + globalPosition);
        this.mPosition = globalPosition;
        Bundle arguments = getArguments();
        if (arguments != null) {
            arguments.putInt("position", globalPosition);
        }
    }

    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Bundle arguments = getArguments();
        int i = arguments != null ? arguments.getInt("position", 0) : 0;
        this.mPosition = i;
        Log.d("TiktokAdItemFragment", "onCreate position=" + i);
    }

    @Override
    public void onDestroyView() {
        int i = this.mPosition;
        boolean z = this.mRemoveRequested;
        boolean z2 = this.mPrefetched != null;
        Log.d("TiktokAdItemFragment", "onDestroyView position=" + i + ", removeRequested=" + z + ", hasPrefetched=" + z2 + ", displayed=" + this.mDisplayedReported);
        this.mSelectedInViewPager = false;
        this.mNativeBindDispatched = false;
        this.mBoundViewGeneration = -1;
        if (!this.mRemoveRequested) {
            rka rkaVar = this.mPrefetched;
            if (rkaVar != null) {
                N();
                this.mPrefetched = null;
                int iB0 = b0(rkaVar);
                aja ajaVar = this.adSlotCallback;
                if (ajaVar == null || !ajaVar.o(iB0, rkaVar)) {
                    Log.w("TiktokAdItemFragment", "onDestroyView: stash failed position=" + this.mPosition + " displayed=" + this.mDisplayedReported);
                    rkaVar.g();
                    if (!this.mDisplayedReported) {
                        a0(AdSlotRemoveReason.FRAGMENT_DESTROYED);
                    }
                } else {
                    Log.d("TiktokAdItemFragment", "onDestroyView: stashed prefetched position=" + this.mPosition + ", milestone=" + rkaVar.c());
                }
            }
        } else if (this.mPrefetched != null) {
            W();
        }
        this.mNativeAdView = null;
        this.mAdRootLayout = null;
        this.mFallbackLayout = null;
        super.onDestroyView();
    }

    @Override
    public void onViewCreated(View view, Bundle savedInstanceState) {
        y45.j(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.mViewGeneration++;
        this.mAdRootLayout = (FrameLayout) view.findViewById(R.id.ad_root_layout);
        this.mNativeAdView = (TAdNativeView) view.findViewById(R.id.native_ad_tt_layout);
        this.mFallbackLayout = view.findViewById(R.id.ad_fallback_layout);
        Log.d("TiktokAdItemFragment", "onViewCreated position=" + this.mPosition + ", selectedInViewPager=" + this.mSelectedInViewPager);
        if (this.mSelectedInViewPager) {
            J();
        }
    }

    public final class b extends TAdListener {
        public b() {
        }

        @Override
        public void onClicked(int i) {
            Log.d("TiktokAdItemFragment", "onClicked source=" + i + " position=" + TiktokAdItemFragment.this.mPosition);
            rz5.a.a(3);
        }

        @Override
        public void onClosed(int i) {
            Log.i("TiktokAdItemFragment", "onClosed source=" + i + " position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment.this.X();
            TiktokAdItemFragment.this.a0(AdSlotRemoveReason.USER_CLOSED);
        }

        @Override
        public void onError(TAdErrorCode tAdErrorCode) {
            Log.e("TiktokAdItemFragment", "onError after bind: " + tAdErrorCode + " position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment.this.f0(AdSlotRemoveReason.LOAD_FAILED);
        }

        @Override
        public void onLoad() {
            Log.d("TiktokAdItemFragment", "onLoad after bind position=" + TiktokAdItemFragment.this.mPosition);
            if (TiktokAdItemFragment.this.mDisplayedReported) {
                TiktokAdItemFragment.this.O();
            }
        }

        @Override
        public void onNativeFeedClicked(int i, TAdNativeInfo tAdNativeInfo) {
            Log.d("TiktokAdItemFragment", "onNativeFeedClicked source=" + i + " position=" + TiktokAdItemFragment.this.mPosition);
            rz5.a.a(3);
        }

        @Override
        public void onNativeFeedShow(int i, TAdNativeInfo tAdNativeInfo) {
            Log.i("TiktokAdItemFragment", "onNativeFeedShow source=" + i + " position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment.this.T();
        }

        @Override
        public void onShow(int i) {
            Log.i("TiktokAdItemFragment", "onShow source=" + i + " position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment.this.T();
        }

        @Override
        public void onShowError(TAdErrorCode tAdErrorCode) {
            String string;
            Log.e("TiktokAdItemFragment", "onShowError: " + tAdErrorCode + " position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment tiktokAdItemFragment = TiktokAdItemFragment.this;
            if (tAdErrorCode == null || (string = Integer.valueOf(tAdErrorCode.getErrorCode()).toString()) == null) {
                string = "-10000";
            }
            tiktokAdItemFragment.Y(string);
            TiktokAdItemFragment.this.f0(AdSlotRemoveReason.LOAD_FAILED);
        }

        @Override
        public void onClosed(TAdNativeInfo tAdNativeInfo) {
            Log.i("TiktokAdItemFragment", "onClosed info position=" + TiktokAdItemFragment.this.mPosition);
            TiktokAdItemFragment.this.X();
            TiktokAdItemFragment.this.a0(AdSlotRemoveReason.USER_CLOSED);
        }
    }
}
