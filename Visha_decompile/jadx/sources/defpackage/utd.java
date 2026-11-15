package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.U0;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
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

public class utd extends bl4 {
    public AdsDTO d;
    public AtomicInteger e;
    public wmd f;
    public boolean g = false;
    public int h;

    public class a implements gob.b {
        public final AdsDTO a;

        public a(AdsDTO adsDTO) {
            this.a = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            utd.this.j(this.a, false);
            utd.this.h(taErrorCode);
        }

        @Override
        public void onSuccess(int i) {
            utd.this.j(this.a, true);
            utd.this.e(i);
            utd.this.y();
            U0.N(this.a);
        }
    }

    public class b extends DrawableResponseListener {
        public final AdsDTO b;

        public b(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            utd.this.h(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            utd.this.f(i);
            utd.this.i(this.b);
        }
    }

    public class c extends DrawableResponseListener {
        public final AdsDTO b;

        public class a implements h24 {
            public a() {
            }

            @Override
            public void a(boolean z) {
                if (!z) {
                    utd.this.h(TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
                } else {
                    c cVar = c.this;
                    utd.this.i(cVar.b);
                }
            }
        }

        public c(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            if (utd.this.d.isInteractiveAd()) {
                AthenaTracker.X(utd.this.d, 1);
            }
            utd.this.h(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            utd.this.b(i);
            if (!this.b.isInteractiveAd()) {
                utd.this.i(this.b);
                return;
            }
            AthenaTracker.X(utd.this.d, 0);
            if (adImage != null) {
                d45.a.h(this.b, adImage.getFilePath(), new a());
            } else {
                utd.this.h(TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED);
            }
        }
    }

    public class d extends DrawableResponseListener {
        public d() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().e("SplashLoadManager", "load store url error," + taErrorCode);
            utd.this.h(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            utd.this.f(i);
            utd utdVar = utd.this;
            utdVar.i(utdVar.d);
        }
    }

    public utd(AdsDTO adsDTO, int i, wmd wmdVar) {
        this.d = adsDTO;
        this.h = i;
        this.f = wmdVar;
    }

    public void h(TaErrorCode taErrorCode) {
        this.g = false;
        wmd wmdVar = this.f;
        if (wmdVar != null) {
            wmdVar.a(taErrorCode, this.a);
        }
    }

    public void i(AdsDTO adsDTO) {
        ikd ikdVarB = ikd.b();
        StringBuilder sb = new StringBuilder();
        sb.append("calculateDownloadCount imageCounter ");
        AtomicInteger atomicInteger = this.e;
        sb.append(atomicInteger == null ? "null" : Integer.valueOf(atomicInteger.get()));
        ikdVarB.d("SplashLoadManager", sb.toString());
        AtomicInteger atomicInteger2 = this.e;
        if (atomicInteger2 == null || atomicInteger2.decrementAndGet() > 0) {
            return;
        }
        d();
        y();
        U0.N(adsDTO);
    }

    public void j(AdsDTO adsDTO, boolean z) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo != null) {
            videoInfo.setCached(Boolean.valueOf(z));
        }
    }

    public static void k(List list) {
        fx8.a.b(list);
    }

    private void u() {
        ikd.b().d("SplashLoadManager", "interstitial loadAdmAd");
        if (!NetStateManager.checkNetworkState(true)) {
            this.f.a(TaErrorCode.ERROR_DOWNLOAD_NO_NETWORK, this.a);
            return;
        }
        AdsDTO adsDTO = this.d;
        if (adsDTO == null || TextUtils.isEmpty(adsDTO.getAdm())) {
            this.f.a(TaErrorCode.ERROR_MATERIAL_DOWNLOAD_LOCAL_BEAN_NULL, this.a);
            return;
        }
        if (this.d.getExt() == null || this.d.getExt().getStoreFlag().intValue() <= 0) {
            a();
            y();
            return;
        }
        AdsProtocolBean.Ext ext = this.d.getExt();
        if (ext == null || ext.getStoreFlag().intValue() <= 0) {
            return;
        }
        this.e = new AtomicInteger(1);
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            h(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
        } else {
            DownLoadRequest.k(ext.getStoreImageurl(), this.d, 6, false, new d());
        }
    }

    private void w() {
        AdsProtocolBean.Ext ext;
        ikd.b().d("SplashLoadManager", "interstitial loadNormalAd");
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            return;
        }
        if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
            h(TaErrorCode.ERROR_ADM_URL_IS_EMPTY);
            return;
        }
        this.e = new AtomicInteger(1);
        if (adsDTO.getExt() != null && adsDTO.getExt().getStoreFlag().intValue() > 0 && (ext = adsDTO.getExt()) != null && ext.getStoreFlag().intValue() > 0) {
            this.e.addAndGet(1);
            if (TextUtils.isEmpty(ext.getStoreImageurl())) {
                h(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
                return;
            }
            DownLoadRequest.k(ext.getStoreImageurl(), this.d, 6, false, new b(adsDTO));
        }
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), new c(adsDTO));
    }

    private void x() {
        ikd.b().d("SplashLoadManager", "interstitial loadVastAd");
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
        } else {
            gob.a.c(new a(adsDTO), adsDTO);
        }
    }

    public void s() {
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_AD_INTERSTITIAL_MATERIAL_IS_NULL);
            return;
        }
        if (this.g) {
            return;
        }
        this.g = true;
        int i = this.h;
        if (i == 3 || i == 2) {
            a();
            y();
        } else if (adsDTO.isVastTypeAd()) {
            x();
        } else if (TextUtils.isEmpty(this.d.getAdm())) {
            w();
        } else {
            u();
        }
    }

    public final void y() {
        AdsDTO adsDTO;
        this.g = false;
        wmd wmdVar = this.f;
        if (wmdVar != null && (adsDTO = this.d) != null) {
            wmdVar.b(adsDTO, this.a);
        }
        if (this.h == 1) {
            final ArrayList arrayList = new ArrayList();
            arrayList.add(this.d);
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    utd.k(arrayList);
                }
            });
        }
    }
}
