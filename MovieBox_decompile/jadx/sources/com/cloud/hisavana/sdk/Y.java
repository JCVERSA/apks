package com.cloud.hisavana.sdk;

import android.content.res.AssetManager;
import com.cloud.hisavana.net.HttpRequest;
import com.cloud.hisavana.net.RequestParams;
import com.cloud.hisavana.net.disklrucache.listener.LruCleanCallBack;
import com.cloud.hisavana.net.impl.StringCallback;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.data.bean.inapp.CachedAdInfos;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultAdDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.DefaultDataDTO;
import com.cloud.hisavana.sdk.data.bean.inapp.PsAppInfo;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.DefaultResponse;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CommonConfigDTO;
import com.cloud.hisavana.sdk.data.bean.response.ccofig.CustomConfigManager;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.google.gson.reflect.TypeToken;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.io.CloseableKt;
import kotlin.io.FilesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import okhttp3.Headers;

public final class Y {

    public static final Y f20925a = new Y();

    private static long f20926b = 86400000;

    private static AtomicBoolean f20927c = new AtomicBoolean(true);

    private static AtomicInteger f20928d = new AtomicInteger(-1);

    private static final String f20929e = "https://transsion-eagllwin-material-static-test.oss-ap-southeast-1.aliyuncs.com/adInternal/json/" + c7.b.f16688b + '_' + k7.c.l() + ".txt";

    private static final String f20930f = "https://material-static-oss.eagllwin.com/adInternal/json/" + c7.b.f16688b + '_' + k7.c.l() + ".txt";

    @Metadata(d1 = {"\u0000\b\n\u0002\u0010\u0002\n\u0002\b\u0002\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"", "a", "()V"}, k = 3, mv = {1, 9, 0})
    static final class a extends Lambda implements Function0<Unit> {

        final AtomicInteger f20931a;

        final String f20932b;

        final List<String> f20933c;

        final int f20934d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(AtomicInteger atomicInteger, String str, List<String> list, int i10) {
            super(0);
            this.f20931a = atomicInteger;
            this.f20932b = str;
            this.f20933c = list;
            this.f20934d = i10;
        }

        public final void a() {
            if (this.f20931a.get() == 0) {
                d0.f21734a.e(this.f20932b);
            }
            Y.f20925a.r(this.f20933c, this.f20934d + 1);
        }

        @Override
        public Object invoke() {
            a();
            return Unit.f64096a;
        }
    }

    @Metadata(d1 = {"\u0000\u0013\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u0010\u0012\f\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00020\u0001¨\u0006\u0004"}, d2 = {"com/cloud/hisavana/sdk/Y$b", "Lcom/google/gson/reflect/TypeToken;", "", "Lcom/cloud/hisavana/sdk/data/bean/response/AdsDTO;", "api_release"}, k = 1, mv = {1, 9, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
    public static final class b extends TypeToken<List<? extends AdsDTO>> {
        b() {
        }
    }

    public static final class c extends StringCallback {

        final String f20935c;

        final RequestParams f20936d;

        final String f20937e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(String str, RequestParams requestParams, String str2) {
            super(true);
            this.f20935c = str;
            this.f20936d = requestParams;
            this.f20937e = str2;
        }

        @Override
        public void l(Headers headers) {
            super.l(headers);
        }

        @Override
        public void x(int i10, String str, Throwable th2) {
            String message;
            if (c7.b.l()) {
                String str2 = "----- full url = " + this.f20935c + " \n----- postBodyString = " + this.f20936d.getPostBody() + '}';
                b4 b4VarB = b4.b();
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str2);
                sb2.append(" \n ----- status code =  ");
                sb2.append(i10);
                sb2.append("\n ----- error message =  + ");
                if (th2 == null || (message = th2.getMessage()) == null) {
                    message = "";
                }
                sb2.append(message);
                sb2.append(" ----- response = ");
                sb2.append(str);
                b4VarB.w("DefaultAdManager", sb2.toString());
            }
            AthenaTracker.M(this.f20937e, i10);
            Y.f20925a.t();
        }

        @Override
        public void y(int i10, String str) {
            if (c7.b.l()) {
                String str2 = "----- full url = " + this.f20935c + " \n----- postBodyString = " + this.f20936d.getPostBody() + '}';
                b4.b().w("DefaultAdManager", str2 + " \n ----- status code =  " + i10 + "\n ----- response = " + str);
            }
            Y y10 = Y.f20925a;
            int iH = y10.h(i10, str);
            y10.t();
            AthenaTracker.M(this.f20937e, iH);
        }
    }

    private Y() {
    }

    private final DefaultDataDTO B() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()));
        String str = File.separator;
        sb2.append(str);
        sb2.append("default_ad_data");
        sb2.append(str);
        sb2.append(c7.b.f16688b);
        sb2.append(str);
        sb2.append("default_ad_data.txt");
        String string = sb2.toString();
        b4.b().d("DefaultAdManager", "default_ad_data path is " + string);
        File file = new File(string);
        if (!file.exists()) {
            b4.b().w("DefaultAdManager", "default ad data path is not exist");
            return null;
        }
        try {
            file.setReadable(true);
            file.setWritable(true);
            DefaultDataDTO defaultDataDTO = (DefaultDataDTO) GsonUtil.a(FilesKt.i(file, null, 1, null), DefaultDataDTO.class);
            if (defaultDataDTO == null) {
                return null;
            }
            long jH = l7.a.e().h("default_local_version");
            b4.b().d("DefaultAdManager", "localVersion is " + jH + " , zip version is " + defaultDataDTO.getVersion());
            Long version = defaultDataDTO.getVersion();
            Intrinsics.g(version, "getVersion(...)");
            if (jH < version.longValue()) {
                return defaultDataDTO;
            }
        } catch (Throwable th2) {
            b4.b().d("DefaultAdManager", "parse default ad data failed, error is " + th2.getMessage());
        }
        return null;
    }

    private final void C() {
        String strA = com.cloud.hisavana.sdk.common.util.l0.a();
        AthenaTracker.L(strA);
        int iG = g();
        if (iG != 0) {
            AthenaTracker.M(strA, iG);
            t();
        } else {
            String strG = i7.a.g();
            RequestParams requestParams = new RequestParams();
            requestParams.i("Accept-Timezone", "UTC");
            HttpRequest.f20712a.h(strG, requestParams, new c(strG, requestParams, strA));
        }
    }

    public static final void E() {
        CommonConfigDTO commonConfigData = CustomConfigManager.getCommonConfigData();
        if (!(commonConfigData != null ? Intrinsics.c(commonConfigData.getIsRequestDefaultAdOnNetChange(), Boolean.FALSE) : false) && f20928d.get() == 0 && f20927c.get()) {
            f20928d.set(1);
            f20925a.C();
        }
    }

    private final boolean F() {
        try {
            AssetManager assets = com.cloud.sdk.commonutil.util.e.a().getAssets();
            if (assets == null) {
                return false;
            }
            InputStream inputStreamOpen = assets.open(c7.b.f16688b + ".zip");
            if (inputStreamOpen == null) {
                return false;
            }
            try {
                boolean zA = com.cloud.hisavana.sdk.common.util.r0.a(inputStreamOpen, com.cloud.hisavana.sdk.common.util.m.b(com.cloud.sdk.commonutil.util.e.a()) + File.separator + "default_ad_data");
                b4.b().d("DefaultAdManager", "unzip result is ----> " + zA);
                CloseableKt.a(inputStreamOpen, null);
                return zA;
            } catch (Throwable th2) {
                try {
                    throw th2;
                } catch (Throwable th3) {
                    CloseableKt.a(inputStreamOpen, th2);
                    throw th3;
                }
            }
        } catch (Exception unused) {
            b4.b().e("DefaultAdManager", "Please check whether the default advertising zip package is configured correctly");
            return false;
        }
    }

    private final int g() {
        if (!NetStateManager.checkNetworkState(true)) {
            return 2004;
        }
        long jI = l7.a.e().i("default_last_request_time", 0L);
        long jCurrentTimeMillis = System.currentTimeMillis();
        long jI2 = l7.a.e().i("default_interval", f20926b);
        b4.b().d("DefaultAdManager", "lastRequestTime is " + jI + ", currentTIme is " + jCurrentTimeMillis + ", default interval is " + jI2);
        return jCurrentTimeMillis - jI <= jI2 ? 2005 : 0;
    }

    public final int h(int i10, String str) {
        DefaultDataDTO data;
        if (i10 != 200) {
            return i10;
        }
        if (str == null || str.length() == 0) {
            return 2002;
        }
        try {
            DefaultResponse defaultResponse = (DefaultResponse) GsonUtil.a(str, DefaultResponse.class);
            if (defaultResponse == null || (data = defaultResponse.getData()) == null) {
                return 2002;
            }
            long jH = l7.a.e().h("default_local_version");
            b4.b().d("DefaultAdManager", "local version is " + jH + ", online version is " + data.getVersion());
            Long version = defaultResponse.getData().getVersion();
            Intrinsics.g(version, "getVersion(...)");
            if (jH < version.longValue()) {
                Y y10 = f20925a;
                DefaultDataDTO data2 = defaultResponse.getData();
                Intrinsics.g(data2, "getData(...)");
                y10.o(data2, false);
            }
            l7.a.e().q("default_last_request_time", System.currentTimeMillis());
            return 0;
        } catch (Exception unused) {
            return 2001;
        }
    }

    public static final void l(t0 listener, CachedAdInfos cachedAdInfos) {
        Intrinsics.h(listener, "$listener");
        Intrinsics.h(cachedAdInfos, "$cachedAdInfos");
        listener.a(cachedAdInfos.getAdsDTOList(), cachedAdInfos.getAdStatusStr());
    }

    private final void o(DefaultDataDTO defaultDataDTO, boolean z10) {
        List<DefaultAdDTO> nativeAds = defaultDataDTO.getNativeAds();
        if (nativeAds == null) {
            nativeAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> bannerAds = defaultDataDTO.getBannerAds();
        if (bannerAds == null) {
            bannerAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> interstitialAds = defaultDataDTO.getInterstitialAds();
        if (interstitialAds == null) {
            interstitialAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> splashAds = defaultDataDTO.getSplashAds();
        if (splashAds == null) {
            splashAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> iconAds = defaultDataDTO.getIconAds();
        if (iconAds == null) {
            iconAds = CollectionsKt.l();
        }
        List<DefaultAdDTO> rewardedAds = defaultDataDTO.getRewardedAds();
        if (rewardedAds == null) {
            rewardedAds = CollectionsKt.l();
        }
        List<PsAppInfo> psAppInfoList = defaultDataDTO.getPsAppInfoList();
        if (psAppInfoList == null) {
            psAppInfoList = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(nativeAds);
        arrayList.addAll(bannerAds);
        arrayList.addAll(interstitialAds);
        arrayList.addAll(splashAds);
        arrayList.addAll(iconAds);
        arrayList.addAll(rewardedAds);
        d0 d0Var = d0.f21734a;
        Long version = defaultDataDTO.getVersion();
        Intrinsics.g(version, "getVersion(...)");
        d0Var.i(arrayList, psAppInfoList, z10, version.longValue());
    }

    public static final void p(String str) {
        d0 d0Var = d0.f21734a;
        Intrinsics.e(str);
        d0Var.n(str);
    }

    public final void r(List list, int i10) {
        List list2;
        if (list.isEmpty() || i10 >= list.size()) {
            b4.b().d("DefaultAdManager", "download default material completed");
            f20928d.set(0);
            return;
        }
        String str = (String) list.get(i10);
        String strL = d0.f21734a.l(str);
        if (strL.length() == 0) {
            f20925a.r(list, i10 + 1);
            return;
        }
        try {
            list2 = (List) GsonUtil.b(strL.toString(), new b().getType());
        } catch (Exception unused) {
            b4.b().d("DefaultAdManager", "parse ad data json failed");
            list2 = null;
        }
        if (list2 == null || list2.isEmpty()) {
            f20925a.r(list, i10 + 1);
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            AdsDTO adsDTO = (AdsDTO) obj;
            if (!(adsDTO != null ? adsDTO.isFromLocal() : false)) {
                arrayList.add(obj);
            }
        }
        if (arrayList.isEmpty()) {
            f20925a.r(list, i10 + 1);
            return;
        }
        c0 c0Var = c0.f21112a;
        h4 h4VarA = c0Var.a(arrayList);
        AtomicInteger atomicInteger = new AtomicInteger(0);
        c0Var.f(str, h4VarA, atomicInteger, new a(atomicInteger, str, list, i10));
    }

    public final void t() {
        r(d0.f21734a.m(), 0);
    }

    public static final void u(int i10, String codeSeatId, int i11, boolean z10, int i12, ConcurrentHashMap concurrentHashMap, final t0 listener) {
        Intrinsics.h(codeSeatId, "$codeSeatId");
        Intrinsics.h(listener, "$listener");
        final CachedAdInfos cachedAdInfosA = d0.f21734a.a(i10, codeSeatId, i11, z10, i12, concurrentHashMap);
        HSScopeHelper.f22503a.e(new Runnable() {
            @Override
            public final void run() {
                Y.l(listener, cachedAdInfosA);
            }
        });
    }

    public static final void v(long j10) {
        boolean zC = l7.a.e().c("default_file_save_finished");
        int iG = l7.a.e().g(String.valueOf(j10), 0);
        long jH = l7.a.e().h("default_local_version");
        b4.b().d("DefaultAdManager", "defaultVersion is " + j10 + ",  local version is " + jH + " , times is " + iG);
        if (j10 <= 0 || jH >= j10 || iG >= 3) {
            if (!zC) {
                c0.f21112a.b();
            }
            f20925a.C();
            return;
        }
        Y y10 = f20925a;
        if (y10.F()) {
            DefaultDataDTO defaultDataDTOB = y10.B();
            if (defaultDataDTOB != null) {
                y10.o(defaultDataDTOB, true);
            }
            c0.f21112a.b();
        }
        y10.C();
    }

    public static final void w(String adCreativeId, String codeSeatId) {
        Intrinsics.h(adCreativeId, "$adCreativeId");
        Intrinsics.h(codeSeatId, "$codeSeatId");
        d0.f21734a.o(adCreativeId, codeSeatId);
    }

    private final void z() {
        HttpRequest.f20712a.b(new LruCleanCallBack() {
            @Override
            public final void onCallBack(String str) {
                Y.p(str);
            }
        });
    }

    public final boolean A() {
        return f20927c.get();
    }

    public final void D() {
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                Y.E();
            }
        });
    }

    public final void j(final int i10, final String codeSeatId, final int i11, final boolean z10, final int i12, final ConcurrentHashMap concurrentHashMap, final t0 listener) {
        Intrinsics.h(codeSeatId, "codeSeatId");
        Intrinsics.h(listener, "listener");
        HSScopeHelper.f22503a.e(new Runnable() {
            @Override
            public final void run() {
                Y.u(i10, codeSeatId, i11, z10, i12, concurrentHashMap, listener);
            }
        });
    }

    public final void k(final long j10) {
        boolean zD = l7.a.e().d("default_is_open", true);
        f20927c.set(zD);
        b4.b().d("DefaultAdManager", "default ad is open ---> " + zD);
        if (!zD) {
            f20928d.set(0);
        } else {
            z();
            HSScopeHelper.f22503a.i(new Runnable() {
                @Override
                public final void run() {
                    Y.v(j10);
                }
            });
        }
    }

    public final void q(final String adCreativeId, final String codeSeatId) {
        Intrinsics.h(adCreativeId, "adCreativeId");
        Intrinsics.h(codeSeatId, "codeSeatId");
        HSScopeHelper.f22503a.i(new Runnable() {
            @Override
            public final void run() {
                Y.w(adCreativeId, codeSeatId);
            }
        });
    }

    public final void s(boolean z10) {
        f20927c.set(z10);
    }

    public final String x() {
        return f20930f;
    }

    public final String y() {
        return f20929e;
    }
}
