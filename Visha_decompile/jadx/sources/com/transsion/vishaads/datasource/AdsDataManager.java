package com.transsion.vishaads.datasource;

import com.blankj.utilcode.util.LogUtils;
import com.google.gson.reflect.TypeToken;
import com.transsion.dbdata.beans.adsbean.AdItemBean;
import com.transsion.dbdata.beans.adsbean.AdsDataBean;
import com.transsion.playercommon.utils.CountryInfoUtil;
import com.transsion.playercommon.vishaapis.onlinevideo.IOnlineVideoApiService;
import com.transsion.playercommon.vishaapis.onlinevideo.OnlineVideoApiManager;
import com.transsion.retrofit.cache.CacheManager;
import com.transsion.retrofit.reponse.BaseResponse;
import com.transsion.vishaads.datasource.AdsDataManager;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.fi1;
import defpackage.it1;
import defpackage.k29;
import defpackage.pd7;
import defpackage.r0a;
import defpackage.rc2;
import defpackage.sg9;
import defpackage.vna;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public class AdsDataManager {
    public static volatile AdsDataManager k;
    public AdsDataBean d;
    public boolean e;
    public AdSourceDownloader f;
    public final String a = "AdsDataManager";
    public final String b = "visha_ad_cache";
    public final String c = StringUtils.COMMA;
    public List g = new ArrayList();
    public List h = new ArrayList();
    public List i = new ArrayList();
    public List j = new ArrayList();

    public class a implements pd7 {
        public final int b;

        public a(int i) {
            this.b = i;
        }

        @Override
        public void onNext(BaseResponse baseResponse) {
            if (baseResponse.getCode() != 0 || !baseResponse.isSuccess()) {
                onError(new Throwable("Invalid response code" + baseResponse.getCode()));
                return;
            }
            LogUtils.j("AdsDataManager", "now region id:" + this.b, "get_ad_data:" + baseResponse);
            AdsDataManager.this.v((AdsDataBean) baseResponse.getData());
            CacheManager.getInstance().lambda$setCache$0("visha_ad_cache_" + this.b, fi1.e(baseResponse.getData()));
        }

        @Override
        public void onComplete() {
        }

        @Override
        public void onError(Throwable th) {
            LogUtils.m("AdsDataManager", "now region id:" + this.b, "get_ad_data_failed:" + th.getMessage());
        }

        @Override
        public void onSubscribe(rc2 rc2Var) {
        }
    }

    public AdsDataManager() {
        LogUtils.j("AdsDataManager", "AdsDataManager initialized");
        this.f = new AdSourceDownloader();
    }

    public static AdsDataManager n() {
        if (k == null) {
            synchronized (AdsDataManager.class) {
                try {
                    if (k == null) {
                        k = new AdsDataManager();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return k;
    }

    public static boolean o(AdItemBean adItemBean, String str) {
        return Integer.parseInt(str) == adItemBean.getId();
    }

    public static boolean p(AdItemBean adItemBean, String str) {
        return Integer.parseInt(str) == adItemBean.getId();
    }

    public static boolean q(AdItemBean adItemBean, String str) {
        return Integer.parseInt(str) == adItemBean.getId();
    }

    public static boolean r(AdItemBean adItemBean, String str) {
        return Integer.parseInt(str) == adItemBean.getId();
    }

    public static boolean s(AdItemBean adItemBean, AdItemBean adItemBean2) {
        return adItemBean.getId() == adItemBean2.getId();
    }

    public static boolean t(AdItemBean adItemBean, AdItemBean adItemBean2) {
        return adItemBean.getId() == adItemBean2.getId();
    }

    public static boolean u(AdItemBean adItemBean, AdItemBean adItemBean2) {
        return adItemBean.getId() == adItemBean2.getId();
    }

    public void A() {
    }

    public final void i() {
        this.j.clear();
        if (this.g.size() > 0) {
            this.j.add((AdItemBean) this.g.get(0));
            this.g.remove(0);
        }
        if (this.h.size() > 0) {
            this.j.add((AdItemBean) this.h.get(0));
            this.h.remove(0);
        }
        if (this.i.size() > 0) {
            this.j.add((AdItemBean) this.i.get(0));
            this.i.remove(0);
        }
        if (this.g.size() > 0) {
            this.j.addAll(this.g);
        }
        if (this.h.size() > 0) {
            this.j.addAll(this.h);
        }
        if (this.i.size() > 0) {
            this.j.addAll(this.i);
        }
        Iterator it = this.j.iterator();
        while (it.hasNext()) {
            this.f.d((AdItemBean) it.next(), new AdSourceDownloader.DownloadCallback() {
                @Override
                public void onDownloadFailure(String str, String str2) {
                }

                @Override
                public void onDownloadSuccess(String str, String str2) {
                }
            });
        }
    }

    public AdItemBean j() throws Throwable {
        String[] strArrSplit;
        if (this.d == null) {
            String cache = CacheManager.getInstance().getCache("visha_ad_cache_" + CountryInfoUtil.m());
            if (r0a.g(cache)) {
                LogUtils.m("AdsDataManager", "[AudioBannerAD]getCurrentAudioBannerAd no cache found");
                return null;
            }
            this.d = (AdsDataBean) fi1.c(cache, new TypeToken<AdsDataBean>() {
            }.getType());
        }
        AdsDataBean adsDataBean = this.d;
        if (adsDataBean == null || adsDataBean.getAudioBannerList() == null || this.d.getAudioBannerList().size() == 0) {
            LogUtils.m("AdsDataManager", "[AudioBannerAD]getCurrentAudioBannerAd no audio banner list found");
            return null;
        }
        String strJ = sg9.e("visha_ad").j("a_a_i");
        if (r0a.g(strJ)) {
            strArrSplit = null;
        } else {
            LogUtils.j("AdsDataManager", "[AudioBannerAD]audio ads has play ids:" + strJ);
            strArrSplit = strJ.split(StringUtils.COMMA);
        }
        AdsDataBean adsDataBean2 = this.d;
        if (adsDataBean2 != null) {
            AdItemBean adItemBean = null;
            for (final AdItemBean adItemBean2 : adsDataBean2.getAudioBannerList()) {
                if (strArrSplit != null && strArrSplit.length > 0 && Arrays.stream(strArrSplit).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AdsDataManager.o(adItemBean2, (String) obj);
                    }
                })) {
                    LogUtils.j("AdsDataManager", "[AudioBannerAD]audio ads has already play id=" + adItemBean2.getId() + " adItemName=" + adItemBean2.getName());
                    if (adItemBean == null && adItemBean2.isOnlineTime(vna.b()) && adItemBean2.isLocalFileExists()) {
                        adItemBean = adItemBean2;
                    }
                } else if (!adItemBean2.isOnlineTime(vna.b())) {
                    continue;
                } else {
                    if (adItemBean2.isLocalFileExists()) {
                        LogUtils.w("AdsDataManager", "[AudioBannerAD]get current audio ad:" + adItemBean2);
                        if (!r0a.g(strJ)) {
                            strJ = strJ + StringUtils.COMMA;
                        }
                        sg9.e("visha_ad").r("a_a_i", String.valueOf(strJ + adItemBean2.getId()));
                        return adItemBean2;
                    }
                    LogUtils.j("AdsDataManager", "[AudioBannerAD]current audio banner ad,local file not exists:" + adItemBean2);
                }
            }
            if (adItemBean != null) {
                LogUtils.w("AdsDataManager", "[AudioBannerAD]all audio ad played,so start play first:" + adItemBean);
                sg9.e("visha_ad").r("a_a_i", String.valueOf(adItemBean.getId()));
                return adItemBean;
            }
        }
        LogUtils.m("AdsDataManager", "[AudioBannerAD]not get audio banner ad");
        return null;
    }

    public AdItemBean k() throws Throwable {
        String[] strArrSplit;
        String[] strArr;
        String[] strArr2;
        if (this.d == null) {
            String cache = CacheManager.getInstance().getCache("visha_ad_cache_" + CountryInfoUtil.m());
            if (r0a.g(cache)) {
                LogUtils.m("AdsDataManager", "[LaunchAD]get current launch failed,no cache found");
                return null;
            }
            LogUtils.j("AdsDataManager", "[LaunchAD]get current launch from cache:", cache);
            this.d = (AdsDataBean) fi1.c(cache, new TypeToken<AdsDataBean>() {
            }.getType());
        }
        AdsDataBean adsDataBean = this.d;
        if (adsDataBean == null || adsDataBean.getLaunchScreenList() == null || this.d.getLaunchScreenList().size() == 0) {
            LogUtils.m("AdsDataManager", "[LaunchAD]no launch screen list found");
            return null;
        }
        String strC = it1.c(OSDateTimePicker.FORMAT_Y_M_D);
        int iF = sg9.e("visha_ad").f(strC);
        LogUtils.j("AdsDataManager", "[LaunchAD]launch ads day:" + strC + " have show " + iF + ",total times:" + this.d.getTime());
        if (iF >= this.d.getTime()) {
            LogUtils.m("AdsDataManager", "[LaunchAD]launch ads day:" + strC + " show " + iF + " times, is out count " + this.d.getTime() + " times");
            return null;
        }
        String str = strC + "_l_a_s_i";
        String strJ = sg9.e("visha_ad").j(str);
        String strJ2 = sg9.e("visha_ad").j("l_a_i");
        LogUtils.j("AdsDataManager", "[LaunchAD]launch ads getInterval today: " + strJ + " play ids:" + strJ2);
        if (!r0a.g(strJ)) {
            LogUtils.j("AdsDataManager", "[LaunchAD]launch ads has play interval:" + strJ);
            String[] strArrSplit2 = strJ.split(StringUtils.COMMA);
            if (this.d.getIntervalCount() > 0 && (strArrSplit2.length < this.d.getIntervalCount() || Integer.parseInt(strArrSplit2[strArrSplit2.length - 1]) == 1)) {
                LogUtils.m("AdsDataManager", "[LaunchAD]launch ads interval invalid,this time not play");
                sg9.e("visha_ad").r(str, (strJ + StringUtils.COMMA) + "0");
                return null;
            }
            int length = strArrSplit2.length - 1;
            int i = 0;
            while (length >= 0) {
                if (Integer.parseInt(strArrSplit2[length]) == 0) {
                    i++;
                    if (i == this.d.getIntervalCount()) {
                        LogUtils.j("AdsDataManager", "[LaunchAD]launch ads interval valid,this time can play,so find valid ad item");
                        break;
                    }
                    strArr2 = strArrSplit2;
                } else {
                    strArr2 = strArrSplit2;
                    if (Integer.parseInt(strArrSplit2[length]) == 1 && i < this.d.getIntervalCount()) {
                        LogUtils.m("AdsDataManager", "[LaunchAD]launch ads interval invalid,this time not play");
                        sg9.e("visha_ad").r(str, (strJ + StringUtils.COMMA) + "0");
                        return null;
                    }
                }
                length--;
                strArrSplit2 = strArr2;
            }
        }
        if (r0a.g(strJ2)) {
            strArrSplit = null;
        } else {
            LogUtils.j("AdsDataManager", "[LaunchAD]launch ads played ids:" + strJ2);
            strArrSplit = strJ2.split(StringUtils.COMMA);
        }
        AdsDataBean adsDataBean2 = this.d;
        if (adsDataBean2 != null && adsDataBean2.getLaunchScreenList() != null && this.d.getLaunchScreenList().size() > 0) {
            AdItemBean adItemBean = null;
            for (final AdItemBean adItemBean2 : this.d.getLaunchScreenList()) {
                if (strArrSplit == null || strArrSplit.length <= 0) {
                    strArr = strArrSplit;
                } else {
                    strArr = strArrSplit;
                    if (Arrays.stream(strArrSplit).anyMatch(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return AdsDataManager.p(adItemBean2, (String) obj);
                        }
                    })) {
                        LogUtils.j("AdsDataManager", "[LaunchAD]launch ads has already play", "id=" + adItemBean2.getId() + " adItemName=" + adItemBean2.getName());
                        if (adItemBean == null && adItemBean2.isOnlineTime(vna.b()) && adItemBean2.isLocalFileExists()) {
                            adItemBean = adItemBean2;
                        }
                    }
                    strArrSplit = strArr;
                }
                if (adItemBean2.isOnlineTime(vna.b()) && adItemBean2.isLocalFileExists()) {
                    LogUtils.w("AdsDataManager", "[LaunchAD] get current Launch ad:" + adItemBean2);
                    if (!r0a.g(strJ2)) {
                        strJ2 = strJ2 + StringUtils.COMMA;
                    }
                    sg9.e("visha_ad").r("l_a_i", strJ2 + adItemBean2.getId());
                    sg9.e("visha_ad").p(strC, iF + 1);
                    if (this.d.getIntervalCount() > 0) {
                        if (!r0a.g(strJ)) {
                            strJ = strJ + StringUtils.COMMA;
                        }
                        sg9.e("visha_ad").r(str, strJ + "1");
                    }
                    return adItemBean2;
                }
                strArrSplit = strArr;
            }
            if (adItemBean != null) {
                LogUtils.w("AdsDataManager", "[LaunchAD] launch ads all ad played,so start play first:" + adItemBean);
                sg9.e("visha_ad").r("l_a_i", String.valueOf(adItemBean.getId()));
                sg9.e("visha_ad").p(strC, iF + 1);
                sg9.e("visha_ad").r(str, "1");
                return adItemBean;
            }
        }
        LogUtils.m("AdsDataManager", "[LaunchAD]not get launch ad");
        return null;
    }

    public AdItemBean l() throws Throwable {
        String[] strArrSplit;
        if (this.d == null) {
            String cache = CacheManager.getInstance().getCache("visha_ad_cache_" + CountryInfoUtil.m());
            if (r0a.g(cache)) {
                LogUtils.m("AdsDataManager", "[VideoBannerAD]getCurrentVideoBannerAd no cache found");
                return null;
            }
            this.d = (AdsDataBean) fi1.c(cache, new TypeToken<AdsDataBean>() {
            }.getType());
        }
        AdsDataBean adsDataBean = this.d;
        if (adsDataBean == null || adsDataBean.getVideoBannerList() == null || this.d.getVideoBannerList().size() == 0) {
            LogUtils.m("AdsDataManager", "[VideoBannerAD]no video banner list found");
            return null;
        }
        String strJ = sg9.e("visha_ad").j("v_a_i");
        if (r0a.g(strJ)) {
            strArrSplit = null;
        } else {
            LogUtils.j("AdsDataManager", "[VideoBannerAD]video ads has play ids:" + strJ);
            strArrSplit = strJ.split(StringUtils.COMMA);
        }
        AdsDataBean adsDataBean2 = this.d;
        if (adsDataBean2 != null) {
            AdItemBean adItemBean = null;
            for (final AdItemBean adItemBean2 : adsDataBean2.getVideoBannerList()) {
                if (strArrSplit != null && strArrSplit.length > 0 && Arrays.stream(strArrSplit).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AdsDataManager.q(adItemBean2, (String) obj);
                    }
                })) {
                    LogUtils.j("AdsDataManager", "[VideoBannerAD]video ad has already play", "id=" + adItemBean2.getId() + " adItemName=" + adItemBean2.getName());
                    if (adItemBean == null && adItemBean2.isOnlineTime(vna.b()) && adItemBean2.isLocalFileExists()) {
                        adItemBean = adItemBean2;
                    }
                } else if (!adItemBean2.isOnlineTime(vna.b())) {
                    continue;
                } else {
                    if (adItemBean2.isLocalFileExists()) {
                        LogUtils.w("AdsDataManager", "[VideoBannerAD] get current video banner ad:" + adItemBean2);
                        if (!r0a.g(strJ)) {
                            strJ = strJ + StringUtils.COMMA;
                        }
                        sg9.e("visha_ad").r("v_a_i", String.valueOf(strJ + adItemBean2.getId()));
                        return adItemBean2;
                    }
                    LogUtils.j("AdsDataManager", "[VideoBannerAD]current video banner ad,local file not exists:" + adItemBean2);
                }
            }
            if (adItemBean != null) {
                LogUtils.w("AdsDataManager", "[VideoBannerAD]all video ad played,so start play first:" + adItemBean);
                sg9.e("visha_ad").r("v_a_i", String.valueOf(adItemBean.getId()));
                return adItemBean;
            }
        }
        LogUtils.m("AdsDataManager", "[VideoBannerAD]not get video banner ad");
        return null;
    }

    public AdItemBean m() throws Throwable {
        String[] strArrSplit;
        if (this.d == null) {
            String cache = CacheManager.getInstance().getCache("visha_ad_cache_" + CountryInfoUtil.m());
            if (r0a.g(cache)) {
                LogUtils.m("AdsDataManager", "[VideoIconAd]getCurrentVideoIconAd no cache found");
                return null;
            }
            this.d = (AdsDataBean) fi1.c(cache, new TypeToken<AdsDataBean>() {
            }.getType());
        }
        AdsDataBean adsDataBean = this.d;
        if (adsDataBean == null || adsDataBean.getVideoIconList() == null || this.d.getVideoIconList().size() == 0) {
            LogUtils.m("AdsDataManager", "[VideoIconAd]no video icon list found");
            return null;
        }
        String strJ = sg9.e("visha_ad").j("v_i_a_i");
        if (r0a.g(strJ)) {
            strArrSplit = null;
        } else {
            LogUtils.j("AdsDataManager", "[VideoIconAd]video icon ad has play ids:" + strJ);
            strArrSplit = strJ.split(StringUtils.COMMA);
        }
        AdsDataBean adsDataBean2 = this.d;
        if (adsDataBean2 != null) {
            AdItemBean adItemBean = null;
            for (final AdItemBean adItemBean2 : adsDataBean2.getVideoIconList()) {
                if (strArrSplit != null && strArrSplit.length > 0 && Arrays.stream(strArrSplit).anyMatch(new Predicate() {
                    @Override
                    public final boolean test(Object obj) {
                        return AdsDataManager.r(adItemBean2, (String) obj);
                    }
                })) {
                    LogUtils.j("AdsDataManager", "[VideoIconAd]video icon Ad has already play", "id=" + adItemBean2.getId() + " adItemName=" + adItemBean2.getName());
                    if (adItemBean == null && adItemBean2.isOnlineTime(vna.b())) {
                        adItemBean = adItemBean2;
                    }
                } else if (adItemBean2.isOnlineTime(vna.b())) {
                    LogUtils.w("AdsDataManager", "[VideoIconAd]get current video icon ad:" + adItemBean2);
                    if (!r0a.g(strJ)) {
                        strJ = strJ + StringUtils.COMMA;
                    }
                    sg9.e("visha_ad").r("v_i_a_i", strJ + adItemBean2.getId());
                    return adItemBean2;
                }
            }
            if (adItemBean != null) {
                LogUtils.w("AdsDataManager", "[VideoIconAd]all video icon ad played,so start play first:" + adItemBean);
                sg9.e("visha_ad").r("v_i_a_i", String.valueOf(adItemBean.getId()));
                return adItemBean;
            }
        }
        LogUtils.m("AdsDataManager", "[VideoIconAd]not get video icon ad");
        return null;
    }

    public final void v(AdsDataBean adsDataBean) {
        if (adsDataBean == null) {
            return;
        }
        AdsDataBean adsDataBean2 = (AdsDataBean) fi1.c(CacheManager.getInstance().getCache("visha_ad_cache_" + CountryInfoUtil.m()), new TypeToken<AdsDataBean>() {
        }.getType());
        x(adsDataBean.getLaunchScreenList(), adsDataBean2);
        y(adsDataBean.getVideoBannerList(), adsDataBean2);
        w(adsDataBean.getAudioBannerList(), adsDataBean2);
        i();
    }

    public final void w(List list, AdsDataBean adsDataBean) {
        List<AdItemBean> audioBannerList = adsDataBean != null ? adsDataBean.getAudioBannerList() : null;
        this.i.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final AdItemBean adItemBean = (AdItemBean) it.next();
            if (audioBannerList == null || !audioBannerList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AdsDataManager.s(adItemBean, (AdItemBean) obj);
                }
            }) || !adItemBean.isLocalFileExists()) {
                adItemBean.setAdType(AdItemBean.AD_TYPE_ONLINE_AUDIO_BANNER);
                this.i.add(adItemBean);
            }
        }
    }

    public final void x(List list, AdsDataBean adsDataBean) {
        List<AdItemBean> launchScreenList = adsDataBean != null ? adsDataBean.getLaunchScreenList() : null;
        this.g.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final AdItemBean adItemBean = (AdItemBean) it.next();
            if (launchScreenList == null || !launchScreenList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AdsDataManager.t(adItemBean, (AdItemBean) obj);
                }
            }) || !adItemBean.isLocalFileExists()) {
                adItemBean.setAdType(AdItemBean.AD_TYPE_ONLINE_LAUNCH);
                this.g.add(adItemBean);
            }
        }
    }

    public final void y(List list, AdsDataBean adsDataBean) {
        List<AdItemBean> videoBannerList = adsDataBean != null ? adsDataBean.getVideoBannerList() : null;
        this.h.clear();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            final AdItemBean adItemBean = (AdItemBean) it.next();
            if (videoBannerList == null || !videoBannerList.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return AdsDataManager.u(adItemBean, (AdItemBean) obj);
                }
            }) || !adItemBean.isLocalFileExists()) {
                adItemBean.setAdType(AdItemBean.AD_TYPE_ONLINE_VIDEO_BANNER);
                this.h.add(adItemBean);
            }
        }
    }

    public void z(int i) {
        if (this.e) {
            return;
        }
        this.e = true;
        ((IOnlineVideoApiService) OnlineVideoApiManager.getInstance().getApi(IOnlineVideoApiService.class)).getVishaAds(i).d0(k29.c()).M(k29.c()).subscribe(new a(i));
    }
}
