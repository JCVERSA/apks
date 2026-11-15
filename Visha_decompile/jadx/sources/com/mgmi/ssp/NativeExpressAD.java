package com.mgmi.ssp;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.a.b;
import com.mgmi.ads.api.a.c;
import com.mgmi.ads.api.a.d;
import com.mgmi.ads.api.h;
import com.mgmi.f.e;
import com.mgmi.g.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class NativeExpressAD {
    private boolean hasInit;
    private NativeInnerListener mADListenerPro;
    private b mAdsLoaderInterface;
    private d mAdsRequestInterface;
    private NativeExpressADListener mNativeExpressADListener;
    List<NativeExpressADView> nativeExpressADViews;

    public NativeExpressAD(@Nullable Context context, @Nullable ADSize aDSize, @NonNull String str, @NonNull String str2, NativeExpressADListener nativeExpressADListener, int i, TParams tParams) {
        if (!com.mgmi.platform.b.a().b()) {
            if (nativeExpressADListener != null) {
                nativeExpressADListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            if (nativeExpressADListener != null) {
                nativeExpressADListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(context, context.getPackageName())) {
            if (nativeExpressADListener != null) {
                nativeExpressADListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        this.nativeExpressADViews = new ArrayList();
        this.mNativeExpressADListener = nativeExpressADListener;
        c cVar = new c();
        this.mAdsRequestInterface = cVar;
        cVar.c(i);
        a aVar = new a(str, str2);
        if (tParams != null) {
            aVar.c(tParams.getVid());
            aVar.d(tParams.getNid());
            aVar.f(tParams.getISVip());
            aVar.g(tParams.getIspay());
            aVar.o(tParams.getIspreview());
            aVar.d(tParams.getHid());
            aVar.e(tParams.getChid());
            aVar.b(tParams.getFrom());
            aVar.n(tParams.getPosition());
        }
        this.mAdsRequestInterface.b(aVar);
        this.mAdsRequestInterface.b("ADS_BANNER");
        if (aDSize != null) {
            this.mAdsRequestInterface.a(aDSize.getWidth());
            this.mAdsRequestInterface.b(aDSize.getHeight());
        }
        this.mAdsRequestInterface.a(new com.mgmi.ads.api.a() {
            @Override
            public boolean isFullScreen() {
                return NativeExpressAD.this.mADListenerPro != null && NativeExpressAD.this.mADListenerPro.isFullScreen();
            }

            @Override
            public void onADLoaded(List<com.mgtv.a.b.a.a> list) {
                if (list != null && list.size() > 0) {
                    Iterator<com.mgtv.a.b.a.a> it = list.iterator();
                    while (it.hasNext()) {
                        NativeExpressAD.this.nativeExpressADViews.add(new NativeExpressADView(it.next()));
                    }
                }
                if (NativeExpressAD.this.mNativeExpressADListener != null) {
                    NativeExpressAD.this.mNativeExpressADListener.onADLoaded(NativeExpressAD.this.nativeExpressADViews);
                }
            }

            @Override
            public void onAdListener(com.mgmi.ads.api.a.EnumC0161a enumC0161a, @Nullable AdWidgetInfoImp adWidgetInfoImp) {
                List<NativeExpressADView> list;
                List<NativeExpressADView> list2;
                List<NativeExpressADView> list3;
                List<NativeExpressADView> list4;
                if (com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL.equals(enumC0161a)) {
                    String errorMsg = adWidgetInfoImp.getErrorMsg();
                    int errorCode = adWidgetInfoImp.getErrorCode();
                    if (NativeExpressAD.this.mNativeExpressADListener != null) {
                        NativeExpressAD.this.mNativeExpressADListener.onNoAd(new AdError(errorCode, errorMsg));
                        return;
                    }
                    return;
                }
                if (!com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA.equals(enumC0161a) && !com.mgmi.ads.api.a.EnumC0161a.JUMP_VIP.equals(enumC0161a) && !com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA.equals(enumC0161a)) {
                    com.mgmi.ads.api.a.EnumC0161a enumC0161a2 = com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA;
                    if (!enumC0161a2.equals(enumC0161a) && !enumC0161a2.equals(enumC0161a)) {
                        if (com.mgmi.ads.api.a.EnumC0161a.CLOSE_AD.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mNativeExpressADListener == null || (list4 = NativeExpressAD.this.nativeExpressADViews) == null || list4.size() <= 0) {
                                return;
                            }
                            NativeExpressAD.this.mNativeExpressADListener.onADClosed(NativeExpressAD.this.nativeExpressADViews.get(0));
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.AD_RENDER_SUCCESS.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mNativeExpressADListener == null || (list3 = NativeExpressAD.this.nativeExpressADViews) == null || list3.size() <= 0) {
                                return;
                            }
                            NativeExpressAD.this.mNativeExpressADListener.onRenderSuccess(NativeExpressAD.this.nativeExpressADViews.get(0));
                            NativeExpressAD.this.mNativeExpressADListener.onADExposure(NativeExpressAD.this.nativeExpressADViews.get(0));
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.AD_RENDER_FAIL.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mNativeExpressADListener == null || (list2 = NativeExpressAD.this.nativeExpressADViews) == null || list2.size() <= 0) {
                                return;
                            }
                            NativeExpressAD.this.mNativeExpressADListener.onRenderFail(NativeExpressAD.this.nativeExpressADViews.get(0));
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.AD_FINISH.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mADListenerPro != null) {
                                NativeExpressAD.this.mADListenerPro.onADFinish();
                                return;
                            }
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.VIDEO_AD_START.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mADListenerPro == null || !e.h()) {
                                return;
                            }
                            NativeExpressAD.this.mADListenerPro.onVideoADStart();
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.PLAYER_PROGRESS_UPDATE.equals(enumC0161a)) {
                            if (adWidgetInfoImp == null || NativeExpressAD.this.mADListenerPro == null) {
                                return;
                            }
                            NativeExpressAD.this.mADListenerPro.onUpdateAdTime(adWidgetInfoImp.getAdDurationRemain());
                            return;
                        }
                        if (com.mgmi.ads.api.a.EnumC0161a.HALFSCREEN_REQUESTED.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mADListenerPro != null) {
                                NativeExpressAD.this.mADListenerPro.onClickBackButton();
                                return;
                            }
                            return;
                        } else if (com.mgmi.ads.api.a.EnumC0161a.FULLSCREEN_REQUESTED.equals(enumC0161a)) {
                            if (NativeExpressAD.this.mADListenerPro != null) {
                                NativeExpressAD.this.mADListenerPro.onClickFullScreenButton();
                                return;
                            }
                            return;
                        } else {
                            if (com.mgmi.ads.api.a.EnumC0161a.IMAGE_AD_START.equals(enumC0161a) && NativeExpressAD.this.mADListenerPro != null && e.h()) {
                                NativeExpressAD.this.mADListenerPro.onADFinish();
                                return;
                            }
                            return;
                        }
                    }
                }
                if (adWidgetInfoImp == null || TextUtils.isEmpty(adWidgetInfoImp.getValuesTag()) || NativeExpressAD.this.mNativeExpressADListener == null || (list = NativeExpressAD.this.nativeExpressADViews) == null || list.size() <= 0) {
                    return;
                }
                for (NativeExpressADView nativeExpressADView : NativeExpressAD.this.nativeExpressADViews) {
                    if (!TextUtils.isEmpty(nativeExpressADView.getValueTag()) && nativeExpressADView.getValueTag().equals(adWidgetInfoImp.getValuesTag())) {
                        NativeExpressAD.this.mNativeExpressADListener.onADClicked(nativeExpressADView);
                        return;
                    }
                }
            }
        });
        this.mAdsLoaderInterface = com.mgmi.platform.b.b.a().a(context, this.mAdsRequestInterface);
        this.hasInit = true;
    }

    public void biddingFail(BidInfo bidInfo) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar == null || bidInfo == null) {
            return;
        }
        bVar.a(false, copyInfo(bidInfo));
    }

    public com.mgmi.e.a copyInfo(BidInfo bidInfo) {
        if (bidInfo == null) {
            return new com.mgmi.e.a();
        }
        return new com.mgmi.e.a().setResult(bidInfo.getResult()).setBidType(bidInfo.getBidType()).setBidWinner(bidInfo.getBidWinner()).setWinECPM("" + bidInfo.getWinECPM()).setSecondECPM("" + bidInfo.getSecondECPM());
    }

    public void finish() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a();
        }
    }

    public NativeInnerListener getADListenerPro() {
        return this.mADListenerPro;
    }

    public void loadAd(int i) {
        loadAd(false, i, -1);
    }

    public void noticeFullScreen() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.FULLSCREEN, (String) null);
        }
    }

    public void noticeHarlfScreen() {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(h.HARLFSCREEN, (String) null);
        }
    }

    public void paused() {
        b bVar;
        if (this.hasInit && (bVar = this.mAdsLoaderInterface) != null) {
            bVar.c();
        }
    }

    public void play() {
        b bVar;
        if (this.hasInit && (bVar = this.mAdsLoaderInterface) != null) {
            bVar.g();
        }
    }

    public void preLoadView() {
        b bVar;
        if (this.hasInit && (bVar = this.mAdsLoaderInterface) != null) {
            bVar.h();
        }
    }

    public void resume() {
        b bVar;
        if (this.hasInit && (bVar = this.mAdsLoaderInterface) != null) {
            bVar.b();
        }
    }

    public void setADListenerPro(NativeInnerListener nativeInnerListener) {
        this.mADListenerPro = nativeInnerListener;
    }

    public void showAd(BidInfo bidInfo) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            bVar.a(true, copyInfo(bidInfo));
            this.mAdsLoaderInterface.g();
        }
    }

    public void loadAd(boolean z, int i, int i2) {
        if (this.hasInit) {
            if (this.mAdsRequestInterface.k() != null) {
                this.mAdsRequestInterface.k().j(i2);
                this.mAdsRequestInterface.k().b(i);
            }
            this.mAdsRequestInterface.f(z);
            this.mAdsLoaderInterface.b(this.mAdsRequestInterface);
        }
    }
}
