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
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;

public class a2 extends h0 {

    private AdsDTO f20957d;

    private AtomicInteger f20958e;

    private m3 f20959f;

    private boolean f20960g = false;

    private int f20961h;

    class a extends DrawableResponseListener {
        a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            a2.this.j(TaErrorCode.ERROR_STORE_MATERIAL_TAKE_FAILED);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            a2.this.f(i10);
            a2.this.o();
        }
    }

    class b extends DrawableResponseListener {

        final AdsDTO f20963b;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override
            public void a(boolean z10) {
                if (z10) {
                    a2.this.o();
                } else {
                    a2.this.j(new TaErrorCode(1, ""));
                }
            }
        }

        b(AdsDTO adsDTO) {
            this.f20963b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().d("SplashLoadManager", "onRequestError " + taErrorCode.getErrorMessage());
            if (this.f20963b.isInteractiveAd()) {
                AthenaTracker.S(this.f20963b, 1);
            }
            a2.this.j(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            a2.this.b(i10);
            if (adImage != null) {
                if (!this.f20963b.isInteractiveAd()) {
                    a2.this.o();
                } else {
                    AthenaTracker.S(this.f20963b, 0);
                    com.cloud.hisavana.sdk.common.util.z.f21622a.h(this.f20963b, adImage.getFilePath(), new a());
                }
            }
        }
    }

    class c implements com.cloud.hisavana.sdk.common.util.p0.b {
        c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            VastData videoInfo;
            if (a2.this.f20957d != null && (videoInfo = a2.this.f20957d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.FALSE);
            }
            a2.this.j(taErrorCode);
        }

        @Override
        public void b(int i10) {
            VastData videoInfo;
            a2.this.e(i10);
            b4.b().d("SplashLoadManager", "loadVideo() -----> onSuccess");
            if (a2.this.f20957d != null && (videoInfo = a2.this.f20957d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.TRUE);
            }
            a2.this.o();
        }
    }

    public a2(AdsDTO adsDTO, int i10, m3 m3Var) {
        this.f20957d = adsDTO;
        this.f20961h = i10;
        this.f20959f = m3Var;
    }

    public void j(TaErrorCode taErrorCode) {
        this.f20960g = false;
        m3 m3Var = this.f20959f;
        if (m3Var != null) {
            this.f20960g = false;
            m3Var.a(taErrorCode, this.f21879a);
        }
    }

    private void k(AdsDTO adsDTO, String str) {
        if (adsDTO == null || TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = new b(adsDTO);
        if (adsDTO.isVastTypeAd()) {
            s();
        } else {
            DownLoadRequest.k(str, adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), bVar);
        }
    }

    private boolean l(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext;
        if (adsDTO == null || (ext = adsDTO.getExt()) == null || ext.getStoreFlag().intValue() <= 0) {
            return false;
        }
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            j(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
            return true;
        }
        DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new a());
        return true;
    }

    public void o() {
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f20958e;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        b4VarB.d("SplashLoadManager", sb2.toString());
        AtomicInteger atomicInteger2 = this.f20958e;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        q();
    }

    private void q() {
        AdsDTO adsDTO;
        this.f20960g = false;
        m3 m3Var = this.f20959f;
        if (m3Var != null && (adsDTO = this.f20957d) != null) {
            this.f20960g = false;
            m3Var.b(adsDTO, this.f21879a);
        }
        if (this.f20961h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(this.f20957d);
            i0.f21895a.b(arrayList);
        }
    }

    private void s() {
        b4.b().d("SplashLoadManager", "loadVideo");
        com.cloud.hisavana.sdk.common.util.p0.f21581a.c(new c(), this.f20957d);
    }

    public void r() {
        AdsDTO adsDTO = this.f20957d;
        if (adsDTO == null) {
            j(TaErrorCode.ERROR_AD_SPLASH_MATERIAL_IS_NULL);
            return;
        }
        if (this.f20960g) {
            return;
        }
        this.f20960g = true;
        int i10 = this.f20961h;
        if (i10 == 3 || i10 == 2) {
            a();
            q();
            return;
        }
        String strA = com.cloud.hisavana.sdk.common.util.b.f21563a.a(adsDTO);
        this.f20958e = new AtomicInteger(2);
        if (!l(this.f20957d)) {
            this.f20958e.decrementAndGet();
        }
        k(this.f20957d, strA);
    }
}
