package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.hisavana.sdk.manager.NetStateManager;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class dp1 extends bl4 {
    public final AdsDTO d;
    public wmd e;
    public AtomicInteger f;
    public boolean g = false;
    public int h;

    public class a extends DrawableResponseListener {
        public final AdsDTO b;

        public a(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            this.b.setACReady(Boolean.FALSE);
        }

        @Override
        public void g(int i, AdImage adImage) {
            this.b.setACReady(Boolean.TRUE);
        }
    }

    public class b extends DrawableResponseListener {
        public final AdsDTO b;

        public b(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("BannerDownload", "onRequestError " + taErrorCode);
            dp1.this.l(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            dp1.this.f(i);
            dp1.this.m(this.b);
        }
    }

    public class c extends DrawableResponseListener {
        public final int b;
        public final AdsDTO c;

        public class a implements h24 {
            public a() {
            }

            @Override
            public void a(boolean z) {
                c cVar = c.this;
                dp1.this.m(cVar.c);
            }
        }

        public c(int i, AdsDTO adsDTO) {
            this.b = i;
            this.c = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (this.c.isInteractiveAd()) {
                AthenaTracker.X(dp1.this.d, 1);
            }
            dp1.this.l(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            dp1.this.b(i);
            if (this.b == 1 && dp1.this.d.getPslinkInfo() != null && !TextUtils.isEmpty(adImage.getFilePath())) {
                dp1.this.d.getPslinkInfo().setIconUri(yu3.e(adImage.getFilePath()));
            }
            if (!this.c.isInteractiveAd()) {
                dp1.this.m(this.c);
                return;
            }
            AthenaTracker.X(dp1.this.d, 0);
            if (adImage != null) {
                d45.a.h(this.c, adImage.getFilePath(), new a());
            } else {
                dp1.this.l(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
            }
        }
    }

    public class d extends DrawableResponseListener {
        public d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("BannerDownload", "onRequestError " + taErrorCode);
            dp1.this.l(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            dp1.this.f(i);
            dp1 dp1Var = dp1.this;
            dp1Var.m(dp1Var.d);
        }
    }

    public dp1(AdsDTO adsDTO, int i, wmd wmdVar) {
        this.d = adsDTO;
        this.h = i;
        this.e = wmdVar;
    }

    public static void n(List list) {
        fx8.a.b(list);
    }

    private void p() {
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdChoiceImageUrl())) {
            ikd.b().d("BannerDownload", "Not found adChoiceImageUrl");
        } else {
            ikd.b().d("ssp", "textView impression");
            DownLoadRequest.k(adsDTO.getAdChoiceImageUrl(), adsDTO, 3, false, new a(adsDTO));
        }
    }

    public final void l(TaErrorCode taErrorCode) {
        if (this.g) {
            return;
        }
        this.g = true;
        wmd wmdVar = this.e;
        if (wmdVar != null) {
            wmdVar.a(taErrorCode, this.a);
        }
    }

    public final void m(AdsDTO adsDTO) {
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.f;
        sb.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        ikdVarB.d("BannerDownload", sb.toString());
        AtomicInteger atomicInteger2 = this.f;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        wmd wmdVar = this.e;
        if (wmdVar != null) {
            wmdVar.b(adsDTO, this.a);
        }
        if (this.h == 1) {
            final ArrayList arrayList = new ArrayList();
            arrayList.add(adsDTO);
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    dp1.n(arrayList);
                }
            });
        }
        U0.N(adsDTO);
    }

    public final void r() {
        if (!NetStateManager.checkNetworkState(true)) {
            this.e.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.a);
            return;
        }
        AdsDTO adsDTO = this.d;
        if (adsDTO == null || this.e == null) {
            this.e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.a);
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdm())) {
            ikd.b().e("BannerDownload", "getAdmView,adm is null");
            l(TaErrorCode.ERROR_ADM_IS_NULL);
            return;
        }
        List<String> scales = this.d.getScales();
        if (scales == null || scales.isEmpty()) {
            l(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            return;
        }
        String str = scales.get(0);
        str.hashCode();
        if (!str.equals("3:2") && !str.equals("20:3")) {
            l(TaErrorCode.ERROR_ADM_SCALE_TAKE_FAILED);
            ikd.b().e("BannerDownload", "getAdmView adm scale is not fit");
            return;
        }
        if (this.d.getExt() == null || this.d.getExt().getStoreFlag().intValue() <= 0) {
            if (this.e != null) {
                a();
                this.e.b(this.d, this.a);
                return;
            }
            return;
        }
        AdsProtocolBean.Ext ext = this.d.getExt();
        this.f = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            l(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.d, 6, false, new d());
        }
    }

    public void s() {
        this.g = false;
        AdsDTO adsDTO = this.d;
        if (adsDTO != null) {
            int i = this.h;
            if (i == 3 || i == 2) {
                if (this.e != null) {
                    a();
                    this.e.b(this.d, this.a);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(adsDTO.getAdm())) {
                t();
            } else {
                r();
            }
        }
    }

    public final void t() {
        int i;
        boolean z;
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            this.e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.a);
            return;
        }
        String adImgUrl = adsDTO.getAdImgUrl();
        if ((TextUtils.equals(adsDTO.getMaterialStyle(), "B20301") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20302") || TextUtils.equals(adsDTO.getMaterialStyle(), "B20303")) && adsDTO.getNativeObject() != null) {
            adImgUrl = adsDTO.getNativeObject().getLogoUrl();
            i = 1;
            z = true;
        } else {
            z = false;
            i = 2;
        }
        if (adsDTO.isInteractiveAd()) {
            adImgUrl = adsDTO.getAdImgUrl();
            i = 8;
            z = true;
        }
        if (TextUtils.isEmpty(adImgUrl)) {
            this.e.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_URL_IS_EMPTY, this.a);
            ikd.b().d("BannerDownload", "Not found the render type");
            return;
        }
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            this.f = new AtomicInteger(1);
        } else {
            this.f = new AtomicInteger(2);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                l(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adImgUrl, adsDTO, i, z, new c(i, adsDTO));
        if (DownLoadRequest.q) {
            return;
        }
        p();
    }
}
