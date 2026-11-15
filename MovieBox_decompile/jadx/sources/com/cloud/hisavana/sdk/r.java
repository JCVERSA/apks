package com.cloud.hisavana.sdk;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class r extends h0 {

    private final AdsDTO f22217d;

    private m3 f22218e;

    private AtomicInteger f22219f;

    private boolean f22220g = false;

    private int f22221h;

    class a extends DrawableResponseListener {

        final AdsDTO f22222b;

        a(AdsDTO adsDTO) {
            this.f22222b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            this.f22222b.setACReady(Boolean.FALSE);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            this.f22222b.setACReady(Boolean.TRUE);
        }
    }

    class b extends DrawableResponseListener {

        final AdsDTO f22224b;

        b(AdsDTO adsDTO) {
            this.f22224b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().e("BannerDownload", "onRequestError " + taErrorCode);
            r.this.k(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            r.this.f(i10);
            r.this.l(this.f22224b);
        }
    }

    class c extends DrawableResponseListener {

        final int f22226b;

        final AdsDTO f22227c;

        class a implements com.cloud.hisavana.sdk.common.util.n {
            a() {
            }

            @Override
            public void a(boolean z10) {
                c cVar = c.this;
                r.this.l(cVar.f22227c);
            }
        }

        c(int i10, AdsDTO adsDTO) {
            this.f22226b = i10;
            this.f22227c = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (this.f22227c.isInteractiveAd()) {
                AthenaTracker.S(r.this.f22217d, 1);
            }
            r.this.k(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            r.this.b(i10);
            if (this.f22226b == 1 && r.this.f22217d.getPslinkInfo() != null && !TextUtils.isEmpty(adImage.getFilePath())) {
                r.this.f22217d.getPslinkInfo().setIconUri(com.cloud.hisavana.sdk.common.util.m.e(adImage.getFilePath()));
            }
            if (!this.f22227c.isInteractiveAd()) {
                r.this.l(this.f22227c);
                return;
            }
            AthenaTracker.S(r.this.f22217d, 0);
            if (adImage != null) {
                com.cloud.hisavana.sdk.common.util.z.f21622a.h(this.f22227c, adImage.getFilePath(), new a());
            } else {
                r.this.k(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
            }
        }
    }

    class d extends DrawableResponseListener {
        d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            b4.b().e("BannerDownload", "onRequestError " + taErrorCode);
            r.this.k(taErrorCode);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            r.this.f(i10);
            r rVar = r.this;
            rVar.l(rVar.f22217d);
        }
    }

    public r(AdsDTO adsDTO, int i10, m3 m3Var) {
        this.f22217d = adsDTO;
        this.f22221h = i10;
        this.f22218e = m3Var;
    }

    public void k(TaErrorCode taErrorCode) {
        if (this.f22220g) {
            return;
        }
        this.f22220g = true;
        m3 m3Var = this.f22218e;
        if (m3Var != null) {
            m3Var.a(taErrorCode, this.f21879a);
        }
    }

    public void l(AdsDTO adsDTO) {
        b4 b4VarB = b4.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f22219f;
        sb2.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        b4VarB.d("BannerDownload", sb2.toString());
        AtomicInteger atomicInteger2 = this.f22219f;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        m3 m3Var = this.f22218e;
        if (m3Var != null) {
            m3Var.b(adsDTO, this.f21879a);
        }
        if (this.f22221h == 1) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO);
            i0.f21895a.b(arrayList);
        }
        J0.M(adsDTO);
    }

    private void n() {
        AdsDTO adsDTO = this.f22217d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdChoiceImageUrl())) {
            b4.b().d("BannerDownload", "Not found adChoiceImageUrl");
        } else {
            b4.b().d("ssp", "textView impression");
            DownLoadRequest.k(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, false, new a(adsDTO));
        }
    }

    private void p() {
        if (!NetStateManager.checkNetworkState(true)) {
            this.f22218e.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.f21879a);
            return;
        }
        AdsDTO adsDTO = this.f22217d;
        if (adsDTO == null || this.f22218e == null) {
            this.f22218e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f21879a);
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdm())) {
            b4.b().e("BannerDownload", "getAdmView,adm is null");
            k(TaErrorCode.ERROR_ADM_IS_NULL);
            return;
        }
        List<String> scales = this.f22217d.getScales();
        if (scales == null || scales.isEmpty()) {
            k(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            return;
        }
        String str = scales.get(0);
        str.hashCode();
        if (!str.equals("3:2") && !str.equals("20:3")) {
            k(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            b4.b().e("BannerDownload", "getAdmView adm scale is not fit");
            return;
        }
        if (this.f22217d.getExt() == null || this.f22217d.getExt().getStoreFlag().intValue() <= 0) {
            if (this.f22218e != null) {
                a();
                this.f22218e.b(this.f22217d, this.f21879a);
                return;
            }
            return;
        }
        AdsProtocolBean.Ext ext = this.f22217d.getExt();
        this.f22219f = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            k(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.f22217d, 6, false, new d());
        }
    }

    private void r() {
        int i10;
        boolean z10;
        AdsDTO adsDTO = this.f22217d;
        if (adsDTO == null) {
            this.f22218e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.f21879a);
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((TextUtils.equals(adsDTO.getMaterialStyle(), "B20301") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20302") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20303")) && adsDTO.getNativeObject() != null) {
            adImgUrl = adsDTO.getNativeObject().getLogoUrl();
            i10 = 1;
            z10 = true;
        } else {
            z10 = false;
            i10 = 2;
        }
        if (adsDTO.isInteractiveAd()) {
            adImgUrl = adsDTO.getAdImgUrl();
            i10 = 8;
            z10 = true;
        }
        if (TextUtils.isEmpty(adImgUrl)) {
            this.f22218e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_URL_IS_EMPTY, this.f21879a);
            b4.b().d("BannerDownload", "Not found the render type");
            return;
        }
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            this.f22219f = new AtomicInteger(1);
        } else {
            this.f22219f = new AtomicInteger(2);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                k(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adImgUrl, adsDTO, i10, z10, new c(i10, adsDTO));
        if (DownLoadRequest.f21459q) {
            return;
        }
        n();
    }

    public void q() {
        this.f22220g = false;
        AdsDTO adsDTO = this.f22217d;
        if (adsDTO != null) {
            int i10 = this.f22221h;
            if (i10 == 3 || i10 == 2) {
                if (this.f22218e != null) {
                    a();
                    this.f22218e.b(this.f22217d, this.f21879a);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(adsDTO.getAdm())) {
                r();
            } else {
                p();
            }
        }
    }
}
