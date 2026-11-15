package com.mgmi.ssp;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mgmi.ads.api.AdWidgetInfoImp;
import com.mgmi.ads.api.a.b;
import com.mgmi.ads.api.a.c;
import com.mgmi.ads.api.a.d;
import com.mgmi.g.a;
import com.transsion.livecaption.constant.ICode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class NativeAd {
    private WeakReference<Activity> activityWeakReference;
    private boolean hasInit;
    private boolean isBidAd = false;
    private b mAdsLoaderInterface;
    private d mAdsRequestInterface;
    List<NativeADDataRef> mNativeADDataRefs;
    private NativeAdListener mNativeAdListener;

    public NativeAd(@NonNull Activity activity, @NonNull String str, @NonNull String str2, NativeAdListener nativeAdListener, int i, TParams tParams) {
        init(activity, str, str2, nativeAdListener, i, tParams);
    }

    private void init(Activity activity, @NonNull String str, @NonNull String str2, NativeAdListener nativeAdListener, int i, TParams tParams) {
        if (!com.mgmi.platform.b.a().b()) {
            if (nativeAdListener != null) {
                nativeAdListener.onNoAd(new AdError(AdError.ERROR_REASON_MID_BLACKLIST, "媒体黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(str2)) {
            if (nativeAdListener != null) {
                nativeAdListener.onNoAd(new AdError(AdError.ERROR_REASON_PID_BLACKLIST, "广告位黑名单"));
                return;
            }
            return;
        }
        if (!com.mgmi.platform.b.a().a(activity, activity.getPackageName())) {
            if (nativeAdListener != null) {
                nativeAdListener.onNoAd(new AdError(AdError.ERROR_REASON_PACKAGE_ERROR, "包名校验错误，当前APP包名与官网注册媒体是填写的包名不一致，无法使用SDK"));
                return;
            }
            return;
        }
        this.activityWeakReference = new WeakReference<>(activity);
        this.mNativeADDataRefs = new ArrayList();
        this.mNativeAdListener = nativeAdListener;
        c cVar = new c();
        this.mAdsRequestInterface = cVar;
        cVar.c(i);
        this.mAdsRequestInterface.f(true);
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
        this.mAdsRequestInterface.a(new com.mgmi.ads.api.a() {
            @Override
            public void onADLoaded(List<com.mgtv.a.b.a.a> list) {
                boolean z = false;
                int iA = -1;
                if (list != null && list.size() > 0) {
                    for (com.mgtv.a.b.a.a aVar2 : list) {
                        if (aVar2 != null) {
                            if (!aVar2.u()) {
                                z = true;
                                break;
                            }
                            NativeAd.this.mNativeADDataRefs.add(new NativeAdData(aVar2, aVar2.x()));
                            if (iA < 0) {
                                iA = aVar2.A();
                            }
                        }
                    }
                }
                if (z) {
                    if (NativeAd.this.mNativeAdListener != null) {
                        NativeAd.this.mNativeAdListener.onNoAd(new AdError(ICode.BUSINESSES.ACTION_INIT_SUBTITLE, "广告样式校验失败，请检查广告位与接口使用是否一致"));
                    }
                } else if (NativeAd.this.isBidAd) {
                    if (NativeAd.this.mNativeAdListener != null) {
                        NativeAd.this.mNativeAdListener.onADLoaded(iA);
                    }
                } else if (NativeAd.this.mNativeAdListener != null) {
                    NativeAd.this.mNativeAdListener.onADLoaded(NativeAd.this.mNativeADDataRefs);
                }
            }

            @Override
            public void onAdListener(com.mgmi.ads.api.a.EnumC0161a enumC0161a, @Nullable AdWidgetInfoImp adWidgetInfoImp) {
                if (com.mgmi.ads.api.a.EnumC0161a.AD_REQUEST_FAIL.equals(enumC0161a)) {
                    String errorMsg = adWidgetInfoImp.getErrorMsg();
                    int errorCode = adWidgetInfoImp.getErrorCode();
                    if (NativeAd.this.mNativeAdListener != null) {
                        NativeAd.this.mNativeAdListener.onNoAd(new AdError(errorCode, errorMsg));
                        return;
                    }
                    return;
                }
                if (com.mgmi.ads.api.a.EnumC0161a.JUMP_SCHEMA.equals(enumC0161a) || com.mgmi.ads.api.a.EnumC0161a.JUMP_VIP.equals(enumC0161a) || com.mgmi.ads.api.a.EnumC0161a.JUMP_HARFSCREEN_SCHEMA.equals(enumC0161a)) {
                    return;
                }
                com.mgmi.ads.api.a.EnumC0161a enumC0161a2 = com.mgmi.ads.api.a.EnumC0161a.LOAD_HARFSCREEN_SCHEMA;
                if (enumC0161a2.equals(enumC0161a)) {
                    return;
                }
                enumC0161a2.equals(enumC0161a);
            }
        });
        this.mAdsLoaderInterface = com.mgmi.platform.b.b.a().a(activity, this.mAdsRequestInterface);
        this.hasInit = true;
    }

    public void bidFail(BidInfo bidInfo) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar == null || bidInfo == null) {
            return;
        }
        bVar.a(false, copyInfo(bidInfo));
    }

    public void bidSuccess(BidInfo bidInfo) {
        b bVar = this.mAdsLoaderInterface;
        if (bVar != null) {
            if (bVar != null && bidInfo != null) {
                bVar.a(true, copyInfo(bidInfo));
            }
            NativeAdListener nativeAdListener = this.mNativeAdListener;
            if (nativeAdListener != null) {
                nativeAdListener.onADLoaded(this.mNativeADDataRefs);
            }
        }
    }

    public com.mgmi.e.a copyInfo(BidInfo bidInfo) {
        if (bidInfo == null) {
            return new com.mgmi.e.a();
        }
        return new com.mgmi.e.a().setResult(bidInfo.getResult()).setBidType(bidInfo.getBidType()).setBidWinner(bidInfo.getBidWinner()).setWinECPM("" + bidInfo.getWinECPM()).setSecondECPM("" + bidInfo.getSecondECPM());
    }

    public void loadAd(int i) {
        if (this.hasInit) {
            if (this.mAdsRequestInterface.k() != null) {
                this.mAdsRequestInterface.k().b(i);
            }
            this.mAdsLoaderInterface.b(this.mAdsRequestInterface);
        }
    }

    public NativeAd(@NonNull Activity activity, @NonNull String str, @NonNull String str2, NativeAdListener nativeAdListener, int i, TParams tParams, int i2) {
        if (tParams != null) {
            tParams.setEcpm(i2);
        }
        init(activity, str, str2, nativeAdListener, i, tParams);
    }

    public void loadAd(int i, int i2) {
        if (this.hasInit) {
            if (this.mAdsRequestInterface.k() != null) {
                this.mAdsRequestInterface.k().j(i2);
                this.mAdsRequestInterface.k().b(i);
            }
            this.mAdsLoaderInterface.b(this.mAdsRequestInterface);
        }
    }
}
