package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class a4 extends h0 {

    private AdsDTO f20968d;

    private AtomicInteger f20969e;

    private m3 f20970f;

    private boolean f20971g = false;

    private int f20972h;

    class a implements com.cloud.hisavana.sdk.common.util.p0.b {

        final AdsDTO f20973a;

        a(AdsDTO adsDTO) {
            this.f20973a = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            a4.this.i(this.f20973a, false);
            a4.this.g(taErrorCode);
        }

        @Override
        public void b(int i10) {
            a4.this.i(this.f20973a, true);
            a4.this.e(i10);
            a4.this.w();
            J0.M(this.f20973a);
        }
    }

    class b extends DrawableResponseListener {

        final AdsDTO f20975b;

        b(AdsDTO adsDTO) {
            this.f20975b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            a4.this.g(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            a4.this.f(i10);
            a4.this.h(this.f20975b);
        }
    }

    class c extends DrawableResponseListener {

        final AdsDTO f20977b;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override
            public void a(boolean z10) {
                if (!z10) {
                    a4.this.g(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
                } else {
                    c cVar = c.this;
                    a4.this.h(cVar.f20977b);
                }
            }
        }

        c(AdsDTO adsDTO) {
            this.f20977b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (a4.this.f20968d.isInteractiveAd()) {
                AthenaTracker.S(a4.this.f20968d, 1);
            }
            a4.this.g(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            a4.this.b(i10);
            if (!this.f20977b.isInteractiveAd()) {
                a4.this.h(this.f20977b);
                return;
            }
            AthenaTracker.S(a4.this.f20968d, 0);
            if (adImage != null) {
                com.cloud.hisavana.sdk.common.util.z.f21622a.h(this.f20977b, adImage.getFilePath(), new a());
            } else {
                a4.this.g(TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            a4.this.g(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            a4.this.f(i10);
            a4 a4Var = a4.this;
            a4Var.h(a4Var.f20968d);
        }
    }

    public a4(AdsDTO adsDTO, int i10, m3 m3Var) {
        this.f20968d = adsDTO;
        this.f20972h = i10;
        this.f20970f = m3Var;
    }

    public void g(TaErrorCode taErrorCode) {
        this.f20971g = false;
        m3 m3Var = this.f20970f;
        if (m3Var != null) {
            m3Var.a(taErrorCode, this.f21879a);
        }
    }

    public void h(AdsDTO adsDTO) {
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f20969e;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        b4VarB.d("SplashLoadManager", sb2.toString());
        AtomicInteger atomicInteger2 = this.f20969e;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        w();
        J0.M(adsDTO);
    }

    public void i(AdsDTO adsDTO, boolean z10) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo != null) {
            videoInfo.setCached(Boolean.valueOf(z10));
        }
    }

    private void s() {
        b4.b().d("SplashLoadManager", "interstitial loadAdmAd");
        if (!NetStateManager.checkNetworkState(true)) {
            this.f20970f.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.f21879a);
            return;
        }
        AdsDTO adsDTO = this.f20968d;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm())) {
            this.f20970f.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f21879a);
            return;
        }
        if (this.f20968d.getExt() == null || this.f20968d.getExt().getStoreFlag().intValue() <= 0) {
            a();
            w();
            return;
        }
        AdsProtocolBean.Ext ext = this.f20968d.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            return;
        }
        this.f20969e = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            g(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.f20968d, 6, false, new d());
        }
    }

    private void u() {
        AdsProtocolBean.Ext ext;
        b4.b().d("SplashLoadManager", "interstitial loadNormalAd");
        AdsDTO adsDTO = this.f20968d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
            g(TaErrorCode.ERROR_ADM_URL_IS_EMPTY);
            return;
        }
        this.f20969e = new AtomicInteger(1);
        if (adsDTO.getExt() != null && adsDTO.getExt().getStoreFlag().intValue() > 0 && (ext = adsDTO.getExt()) != null && ext.getStoreFlag().intValue() > 0) {
            this.f20969e.addAndGet(1);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                g(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), this.f20968d, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), new c(adsDTO));
    }

    private void v() {
        b4.b().d("SplashLoadManager", "interstitial loadVastAd");
        AdsDTO adsDTO = this.f20968d;
        if (adsDTO == null) {
            g(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
        } else {
            com.cloud.hisavana.sdk.common.util.p0.f21581a.c(new a(adsDTO), adsDTO);
        }
    }

    public void w() {
        AdsDTO adsDTO;
        this.f20971g = false;
        m3 m3Var = this.f20970f;
        if (m3Var != null && (adsDTO = this.f20968d) != null) {
            m3Var.b(adsDTO, this.f21879a);
        }
        if (this.f20972h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f20968d);
            i0.f21895a.b(arrayList);
        }
    }

    public void q() {
        AdsDTO adsDTO = this.f20968d;
        if (adsDTO == null) {
            g(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
            return;
        }
        if (this.f20971g) {
            return;
        }
        this.f20971g = true;
        int i10 = this.f20972h;
        if (i10 == 3 || i10 == 2) {
            a();
            w();
        } else if (adsDTO.isVastTypeAd()) {
            v();
        } else if (TextUtils.isEmpty(this.f20968d.getAdm())) {
            u();
        } else {
            s();
        }
    }
}
