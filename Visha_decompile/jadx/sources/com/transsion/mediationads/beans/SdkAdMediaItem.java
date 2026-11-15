package com.transsion.mediationads.beans;

import android.app.Application;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.blankj.utilcode.util.LogUtils;
import com.hisavana.common.bean.TAdErrorCode;
import com.hisavana.common.bean.TAdNativeInfo;
import com.hisavana.common.bean.TAdRequestBody;
import com.hisavana.common.interfacz.TAdListener;
import com.hisavana.mediation.ad.TAdNativeView;
import com.hisavana.mediation.ad.TNativeAd;
import com.hisavana.mediation.ad.ViewBinder;
import com.transsion.mediationads.R;
import com.transsion.mediationads.beans.SdkAdMediaItem;
import com.transsion.mediationads.manager.b;
import defpackage.i81;
import defpackage.rz5;
import defpackage.se;
import defpackage.wn8;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.apache.commons.text.StringSubstitutor;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\u0018\u0000 P2\u00020\u0001:\u0002QPB\u001b\b\u0016\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0002¢\u0006\u0004\b\u000b\u0010\fJ!\u0010\u0010\u001a\u00020\u000f2\b\u0010\r\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000e\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0012\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0015\u0010\u0016J\u001f\u0010\u0019\u001a\u00020\u000f2\u0006\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0019\u0010\u001d\u001a\u00020\u000f2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\r\u0010\u001f\u001a\u00020\u001b¢\u0006\u0004\b\u001f\u0010 J\u000f\u0010!\u001a\u00020\u000fH\u0016¢\u0006\u0004\b!\u0010\u0013J\u000f\u0010\"\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\"\u0010\u0013J\u000f\u0010#\u001a\u00020\u000fH\u0016¢\u0006\u0004\b#\u0010\u0013J\u000f\u0010$\u001a\u00020\u0002H\u0016¢\u0006\u0004\b$\u0010%R\u0018\u0010'\u001a\u0004\u0018\u00010&8\u0006@\u0006X\u0087\u000e¢\u0006\u0006\n\u0004\b'\u0010(R$\u0010*\u001a\u0004\u0018\u00010)8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b*\u0010+\u001a\u0004\b,\u0010-\"\u0004\b.\u0010/R$\u00100\u001a\u0004\u0018\u00010\n8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b0\u00101\u001a\u0004\b2\u00103\"\u0004\b4\u00105R$\u00106\u001a\u0004\u0018\u00010\u00148\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u0010\u0016\"\u0004\b9\u0010:R\u001c\u0010<\u001a\b\u0018\u00010;R\u00020\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b<\u0010=R \u0010?\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u001b\u0018\u00010>8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u0010@R$\u0010A\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\bA\u0010B\u001a\u0004\bC\u0010%\"\u0004\bD\u0010ER\u0016\u0010G\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u0010HR\u0016\u0010I\u001a\u00020F8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u0010HR\u0016\u0010K\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bK\u0010LR\u0016\u0010M\u001a\u00020J8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bM\u0010LR\u0014\u0010N\u001a\u00020J8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bN\u0010O¨\u0006R"}, d2 = {"Lcom/transsion/mediationads/beans/SdkAdMediaItem;", "Lcom/transsion/mediationads/beans/AdMediaItem;", "", "adId", "", "listMode", MethodDecl.initName, "(Ljava/lang/String;I)V", "Landroid/view/ViewGroup;", TtmlNode.RUBY_CONTAINER, "Lcom/hisavana/mediation/ad/TAdNativeView;", "obtainTAdNativeView", "(Landroid/view/ViewGroup;)Lcom/hisavana/mediation/ad/TAdNativeView;", "tAdNativeView", "position", "Lzfb;", "bindValuesInner", "(Lcom/hisavana/mediation/ad/TAdNativeView;I)V", "bindAd", "()V", "Lcom/hisavana/mediation/ad/ViewBinder;", "getBinder", "()Lcom/hisavana/mediation/ad/ViewBinder;", "Landroid/view/View;", "nativeAdView", "bindValues", "(Landroid/view/View;I)V", "Landroid/content/Context;", "context", "setContext", "(Landroid/content/Context;)V", "getContext", "()Landroid/content/Context;", "markAsClosed", "markAsConsumed", "release", "toString", "()Ljava/lang/String;", "Lcom/hisavana/mediation/ad/TNativeAd;", "nativeAd", "Lcom/hisavana/mediation/ad/TNativeAd;", "Lcom/hisavana/common/bean/TAdNativeInfo;", "adNativeInfo", "Lcom/hisavana/common/bean/TAdNativeInfo;", "getAdNativeInfo", "()Lcom/hisavana/common/bean/TAdNativeInfo;", "setAdNativeInfo", "(Lcom/hisavana/common/bean/TAdNativeInfo;)V", "adNativeView", "Lcom/hisavana/mediation/ad/TAdNativeView;", "getAdNativeView", "()Lcom/hisavana/mediation/ad/TAdNativeView;", "setAdNativeView", "(Lcom/hisavana/mediation/ad/TAdNativeView;)V", "viewBinder", "Lcom/hisavana/mediation/ad/ViewBinder;", "getViewBinder", "setViewBinder", "(Lcom/hisavana/mediation/ad/ViewBinder;)V", "Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;", "mAdMediaItemListener", "Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;", "Ljava/lang/ref/WeakReference;", "weakReference", "Ljava/lang/ref/WeakReference;", "adScene", "Ljava/lang/String;", "getAdScene", "setAdScene", "(Ljava/lang/String;)V", "", "adRequestTimeMs", "J", "adShowTimeMs", "", "hasReportedResponse", "Z", "hasReportedClose", "isAdAvailable", "()Z", "Companion", "SdkAdMediaItemListener", "mediationAds_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SdkAdMediaItem extends AdMediaItem {
    private static final String TAG = "mediation_ad_SdkAdMediaItem";
    private TAdNativeInfo adNativeInfo;
    private TAdNativeView adNativeView;
    private long adRequestTimeMs;
    private String adScene;
    private long adShowTimeMs;
    private boolean hasReportedClose;
    private boolean hasReportedResponse;
    private SdkAdMediaItemListener mAdMediaItemListener;
    public TNativeAd nativeAd;
    private ViewBinder viewBinder;
    private WeakReference<Context> weakReference;

    public SdkAdMediaItem(String str, int i) {
        super(str, i);
        this.mAdMediaItemListener = new SdkAdMediaItemListener();
    }

    public final void bindAd() {
        TNativeAd tNativeAd;
        TAdNativeView tAdNativeView = this.adNativeView;
        if (tAdNativeView != null) {
            tAdNativeView.setVisibility(0);
        }
        TAdNativeView tAdNativeView2 = this.adNativeView;
        if (tAdNativeView2 != null && this.adNativeInfo != null && (tNativeAd = this.nativeAd) != null) {
            y45.g(tAdNativeView2);
            TAdNativeInfo tAdNativeInfo = this.adNativeInfo;
            y45.g(tAdNativeInfo);
            tNativeAd.bindNativeView(tAdNativeView2, tAdNativeInfo, getBinder(), this.adScene);
        }
        int adPosition = getAdPosition();
        TAdNativeInfo tAdNativeInfo2 = this.adNativeInfo;
        Log.d(TAG, "------->bindAd --> bindNativeView(),position == " + adPosition + "/" + (tAdNativeInfo2 != null ? tAdNativeInfo2.getAdId() : null));
    }

    private final void bindValuesInner(TAdNativeView tAdNativeView, int position) {
        if (!y45.e(this.adNativeView, tAdNativeView)) {
            TAdNativeView tAdNativeView2 = this.adNativeView;
            if (tAdNativeView2 != null) {
                tAdNativeView2.release();
            }
            this.adNativeView = tAdNativeView;
        }
        TAdNativeView tAdNativeView3 = this.adNativeView;
        if (tAdNativeView3 != null) {
            tAdNativeView3.setTag(Integer.valueOf(position));
        }
        setAdPosition(position);
        TAdNativeView tAdNativeView4 = this.adNativeView;
        if (tAdNativeView4 != null) {
            tAdNativeView4.setVisibility(8);
        }
        if (this.nativeAd == null) {
            TNativeAd tNativeAd = new TNativeAd(getContext(), getAdvertisingId());
            this.nativeAd = tNativeAd;
            String strEnterScene = this.adScene;
            if (strEnterScene == null) {
                strEnterScene = tNativeAd.enterScene("native_video_tab", 1);
            }
            this.adScene = strEnterScene;
            TNativeAd tNativeAd2 = this.nativeAd;
            if (tNativeAd2 != null) {
                tNativeAd2.setRequestBody(new TAdRequestBody.AdRequestBodyBuild().setAdListener(this.mAdMediaItemListener).build());
            }
        }
        Log.d(TAG, "bindValues " + this.adNativeInfo);
        if (this.adNativeInfo != null) {
            bindAd();
            return;
        }
        this.adRequestTimeMs = System.currentTimeMillis();
        this.adShowTimeMs = 0L;
        this.hasReportedResponse = false;
        this.hasReportedClose = false;
        rz5.a.c(0);
        TNativeAd tNativeAd3 = this.nativeAd;
        if (tNativeAd3 != null) {
            tNativeAd3.loadAd();
        }
    }

    private final ViewBinder getBinder() {
        View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.item_native_ad_list, (ViewGroup) this.adNativeView, false);
        View viewFindViewById = viewInflate.findViewById(R.id.ll_ad_close);
        if (viewFindViewById != null) {
            viewFindViewById.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    SdkAdMediaItem.getBinder$lambda$0(this.b, view);
                }
            });
        }
        ViewBinder.Builder builderContextMode = new ViewBinder.Builder(viewInflate).titleId(R.id.ad_video_item_content_title).descriptionId(R.id.ad_video_item_content_des).contextMode(1);
        int i = R.id.tmv_ad_cover;
        ViewBinder.Builder builderMediaId = builderContextMode.mediaId(i);
        int i2 = R.id.tv_ad_enter;
        ViewBinder viewBinderBuild = builderMediaId.callToActionId(i2).actionIds(Integer.valueOf(R.id.cl_ad_enter), Integer.valueOf(i2), Integer.valueOf(i), Integer.valueOf(R.id.iv_ad_enter_action)).build();
        y45.i(viewBinderBuild, "build(...)");
        return viewBinderBuild;
    }

    public static final void getBinder$lambda$0(SdkAdMediaItem sdkAdMediaItem, View view) {
        Log.d(TAG, "Ad close button clicked, position: " + sdkAdMediaItem.getAdPosition());
        if (!sdkAdMediaItem.hasReportedClose) {
            sdkAdMediaItem.hasReportedClose = true;
            rz5.a.b(0, 0, sdkAdMediaItem.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - sdkAdMediaItem.adShowTimeMs) / 1000, 0L) : 0L);
        }
        sdkAdMediaItem.markAsClosed();
    }

    private final TAdNativeView obtainTAdNativeView(ViewGroup container) {
        TAdNativeView tAdNativeView = this.adNativeView;
        if (tAdNativeView != null && tAdNativeView.getParent() == container) {
            return tAdNativeView;
        }
        container.removeAllViews();
        TAdNativeView tAdNativeView2 = new TAdNativeView(container.getContext());
        container.addView(tAdNativeView2, new ViewGroup.LayoutParams(-1, -1));
        return tAdNativeView2;
    }

    @Override
    public void bindValues(View nativeAdView, int position) {
        TAdNativeView tAdNativeViewObtainTAdNativeView;
        y45.j(nativeAdView, "nativeAdView");
        if (nativeAdView instanceof TAdNativeView) {
            tAdNativeViewObtainTAdNativeView = (TAdNativeView) nativeAdView;
        } else if (!(nativeAdView instanceof ViewGroup)) {
            return;
        } else {
            tAdNativeViewObtainTAdNativeView = obtainTAdNativeView((ViewGroup) nativeAdView);
        }
        bindValuesInner(tAdNativeViewObtainTAdNativeView, position);
    }

    public final TAdNativeInfo getAdNativeInfo() {
        return this.adNativeInfo;
    }

    public final TAdNativeView getAdNativeView() {
        return this.adNativeView;
    }

    public final String getAdScene() {
        return this.adScene;
    }

    public final Context getContext() {
        WeakReference<Context> weakReference = this.weakReference;
        Context context = weakReference != null ? weakReference.get() : null;
        if (context != null) {
            return context;
        }
        Application applicationA = se.a();
        y45.i(applicationA, "getApp(...)");
        return applicationA;
    }

    public final ViewBinder getViewBinder() {
        return this.viewBinder;
    }

    @Override
    public boolean isAdAvailable() {
        return (this.nativeAd == null || this.isConsumed || this.isClosed) ? false : true;
    }

    @Override
    public void markAsClosed() {
        TAdNativeView tAdNativeView = this.adNativeView;
        if (tAdNativeView != null) {
            tAdNativeView.setVisibility(8);
        }
        if (!this.isClosed) {
            release();
        }
        this.isClosed = true;
    }

    @Override
    public void markAsConsumed() {
        this.isConsumed = true;
        TAdNativeView tAdNativeView = this.adNativeView;
        if (tAdNativeView != null) {
            tAdNativeView.setVisibility(8);
        }
    }

    @Override
    public void release() {
        TAdNativeInfo tAdNativeInfo = this.adNativeInfo;
        if (tAdNativeInfo != null) {
            tAdNativeInfo.release();
        }
        this.adNativeInfo = null;
        TAdNativeView tAdNativeView = this.adNativeView;
        if (tAdNativeView != null) {
            tAdNativeView.release();
        }
        this.adNativeView = null;
        TNativeAd tNativeAd = this.nativeAd;
        if (tNativeAd != null) {
            tNativeAd.destroy();
        }
        this.nativeAd = null;
        this.viewBinder = null;
        this.mAdMediaItemListener = null;
        WeakReference<Context> weakReference = this.weakReference;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.weakReference = null;
    }

    public final void setAdNativeInfo(TAdNativeInfo tAdNativeInfo) {
        this.adNativeInfo = tAdNativeInfo;
    }

    public final void setAdNativeView(TAdNativeView tAdNativeView) {
        this.adNativeView = tAdNativeView;
    }

    public final void setAdScene(String str) {
        this.adScene = str;
    }

    @Override
    public void setContext(Context context) {
        this.weakReference = new WeakReference<>(context);
    }

    public final void setViewBinder(ViewBinder viewBinder) {
        this.viewBinder = viewBinder;
    }

    @Override
    public String toString() {
        return "SdkAdMediaItem{adId='" + getAdvertisingId() + "', adPosition=" + getAdPosition() + ", isConsumed=" + this.isConsumed + ", isClosed=" + this.isClosed + ", adLoadTime=" + getAdLoadTime() + ", displayMode='" + getDisplayMode() + "', isAdAvailable=" + isAdAvailable() + "adNativeInfo=" + this.adNativeInfo + StringSubstitutor.DEFAULT_VAR_END;
    }

    @Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0082\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\t\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\r\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0011\u0010\u0012J!\u0010\u0013\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0014\u0010\u000eJ\u0019\u0010\u0014\u001a\u00020\u00042\b\u0010\u0015\u001a\u0004\u0018\u00010\u000fH\u0016¢\u0006\u0004\b\u0014\u0010\u0016J\u0019\u0010\u0017\u001a\u00020\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0016¢\u0006\u0004\b\u0017\u0010\nJ\u0017\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u0018\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\u0019\u0010\u000e¨\u0006\u001a"}, d2 = {"Lcom/transsion/mediationads/beans/SdkAdMediaItem$SdkAdMediaItemListener;", "Lcom/hisavana/common/interfacz/TAdListener;", MethodDecl.initName, "(Lcom/transsion/mediationads/beans/SdkAdMediaItem;)V", "Lzfb;", "onLoad", "()V", "Lcom/hisavana/common/bean/TAdErrorCode;", "errorCode", "onError", "(Lcom/hisavana/common/bean/TAdErrorCode;)V", "", "source", "onShow", "(I)V", "Lcom/hisavana/common/bean/TAdNativeInfo;", "adNativeInfo", "onNativeFeedShow", "(ILcom/hisavana/common/bean/TAdNativeInfo;)V", "onNativeFeedClicked", "onClosed", "tAdNativeInfo", "(Lcom/hisavana/common/bean/TAdNativeInfo;)V", "onShowError", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "onClicked", "mediationAds_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public final class SdkAdMediaItemListener extends TAdListener {
        public SdkAdMediaItemListener() {
        }

        @Override
        public void onClicked(int i) {
            Log.i(SdkAdMediaItem.TAG, "onClicked " + i);
            SdkAdMediaItem.this.markAsConsumed();
        }

        @Override
        public void onClosed(int source) {
            Log.i(SdkAdMediaItem.TAG, "onClosed " + source);
            if (!SdkAdMediaItem.this.hasReportedClose) {
                SdkAdMediaItem.this.hasReportedClose = true;
                rz5.a.b(0, 1, SdkAdMediaItem.this.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - SdkAdMediaItem.this.adShowTimeMs) / 1000, 0L) : 0L);
            }
            SdkAdMediaItem.this.markAsClosed();
        }

        @Override
        public void onError(TAdErrorCode errorCode) {
            Log.e(SdkAdMediaItem.TAG, "onError: " + errorCode);
            if (SdkAdMediaItem.this.hasReportedResponse) {
                return;
            }
            SdkAdMediaItem.this.hasReportedResponse = true;
            rz5.a.d(0, 0, System.currentTimeMillis() - SdkAdMediaItem.this.adRequestTimeMs, errorCode != null ? errorCode.toString() : null);
        }

        @Override
        public void onLoad() {
            Log.i(SdkAdMediaItem.TAG, "Ad load completed");
            try {
                SdkAdMediaItem sdkAdMediaItem = SdkAdMediaItem.this;
                if (sdkAdMediaItem.nativeAd == null) {
                    Log.w(SdkAdMediaItem.TAG, "onLoad: nativeAd is null, cannot bind ad");
                    return;
                }
                if (sdkAdMediaItem.getAdNativeInfo() != null) {
                    Log.d(SdkAdMediaItem.TAG, "onLoad: adNativeInfo already exists, binding ad directly");
                    if (!SdkAdMediaItem.this.hasReportedResponse) {
                        SdkAdMediaItem.this.hasReportedResponse = true;
                        rz5.a.d(0, 1, System.currentTimeMillis() - SdkAdMediaItem.this.adRequestTimeMs, null);
                    }
                    SdkAdMediaItem.this.bindAd();
                    return;
                }
                TNativeAd tNativeAd = SdkAdMediaItem.this.nativeAd;
                List<TAdNativeInfo> nativeAdInfo = tNativeAd != null ? tNativeAd.getNativeAdInfo() : null;
                List<TAdNativeInfo> list = nativeAdInfo;
                if (list != null && !list.isEmpty()) {
                    SdkAdMediaItem.this.setAdNativeInfo((TAdNativeInfo) i81.q0(nativeAdInfo));
                    if (SdkAdMediaItem.this.getAdNativeInfo() == null) {
                        Log.w(SdkAdMediaItem.TAG, "onLoad: first nativeInfo is null");
                        return;
                    }
                    Log.e(SdkAdMediaItem.TAG, "onLoad nativeInfos " + nativeAdInfo.size() + " :" + nativeAdInfo);
                    TAdNativeInfo adNativeInfo = SdkAdMediaItem.this.getAdNativeInfo();
                    StringBuilder sb = new StringBuilder();
                    sb.append("onLoad: adNativeInfo set successfully ");
                    sb.append(adNativeInfo);
                    Log.d(SdkAdMediaItem.TAG, sb.toString());
                    if (!SdkAdMediaItem.this.hasReportedResponse) {
                        SdkAdMediaItem.this.hasReportedResponse = true;
                        rz5.a.d(0, 1, System.currentTimeMillis() - SdkAdMediaItem.this.adRequestTimeMs, null);
                    }
                    SdkAdMediaItem.this.bindAd();
                    return;
                }
                Log.w(SdkAdMediaItem.TAG, "onLoad: nativeInfos is null or empty");
            } catch (Exception e) {
                Log.e(SdkAdMediaItem.TAG, "onLoad: Exception occurred while binding ad", e);
            }
        }

        @Override
        public void onNativeFeedClicked(int source, TAdNativeInfo adNativeInfo) {
            Log.d(SdkAdMediaItem.TAG, "onNativeFeedClicked: source=" + source);
            SdkAdMediaItem.this.markAsConsumed();
            if (adNativeInfo != null) {
                rz5.a.g(SdkAdMediaItem.this.getAdvertisingId(), adNativeInfo.getTitle(), adNativeInfo.getAdCallToAction(), SdkAdMediaItem.this.getDisplayMode());
            }
        }

        @Override
        public void onNativeFeedShow(int source, TAdNativeInfo adNativeInfo) {
            Log.i(SdkAdMediaItem.TAG, "onNativeFeedShow: source=" + source + ", displayMode=" + SdkAdMediaItem.this.getDisplayMode() + " " + adNativeInfo);
            try {
                int iE = b.a.a().e(SdkAdMediaItem.this.getDisplayMode());
                LogUtils.j(SdkAdMediaItem.TAG, "onNativeFeedShow Ad shown in tabType " + SdkAdMediaItem.this.getDisplayMode() + ", daily count: " + iE);
                if (adNativeInfo != null) {
                    SdkAdMediaItem.this.adShowTimeMs = System.currentTimeMillis();
                    rz5.a.h(SdkAdMediaItem.this.getAdvertisingId(), adNativeInfo.getTitle(), adNativeInfo.getAdCallToAction(), SdkAdMediaItem.this.getDisplayMode(), null);
                }
            } catch (Exception e) {
                Log.e(SdkAdMediaItem.TAG, "onNativeFeedShow Failed to increment daily ad show count: " + e.getMessage());
            }
        }

        @Override
        public void onShow(int source) {
            Log.i(SdkAdMediaItem.TAG, "onShow " + source);
        }

        @Override
        public void onShowError(TAdErrorCode errorCode) {
            String string;
            Log.e(SdkAdMediaItem.TAG, "onShowError: " + errorCode);
            rz5.a aVar = rz5.a;
            String advertisingId = SdkAdMediaItem.this.getAdvertisingId();
            TAdNativeInfo adNativeInfo = SdkAdMediaItem.this.getAdNativeInfo();
            String title = adNativeInfo != null ? adNativeInfo.getTitle() : null;
            TAdNativeInfo adNativeInfo2 = SdkAdMediaItem.this.getAdNativeInfo();
            String adCallToAction = adNativeInfo2 != null ? adNativeInfo2.getAdCallToAction() : null;
            int displayMode = SdkAdMediaItem.this.getDisplayMode();
            if (errorCode == null || (string = Integer.valueOf(errorCode.getErrorCode()).toString()) == null) {
                string = "-10000";
            }
            aVar.h(advertisingId, title, adCallToAction, displayMode, string);
            TAdNativeView adNativeView = SdkAdMediaItem.this.getAdNativeView();
            if (adNativeView != null) {
                adNativeView.setVisibility(8);
            }
        }

        @Override
        public void onClosed(TAdNativeInfo tAdNativeInfo) {
            Log.d(SdkAdMediaItem.TAG, "onClosed " + tAdNativeInfo);
            if (!SdkAdMediaItem.this.hasReportedClose) {
                SdkAdMediaItem.this.hasReportedClose = true;
                rz5.a.b(0, 1, SdkAdMediaItem.this.adShowTimeMs > 0 ? wn8.e((System.currentTimeMillis() - SdkAdMediaItem.this.adShowTimeMs) / 1000, 0L) : 0L);
            }
            SdkAdMediaItem.this.markAsClosed();
        }
    }
}
