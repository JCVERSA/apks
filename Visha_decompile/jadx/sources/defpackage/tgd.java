package defpackage;

import android.text.TextUtils;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.AdImage;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.hisavana.sdk.common.http.DownLoadRequest;
import com.cloud.hisavana.sdk.common.http.listener.DrawableResponseListener;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class tgd extends bl4 {
    public AdsDTO d;
    public AtomicInteger e;
    public wmd f;
    public boolean g = false;
    public int h;

    public class a extends DrawableResponseListener {
        public a() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            tgd.this.h(TaErrorCode.ERROR_STORE_MATERIAL_TAKE_FAILED);
        }

        @Override
        public void g(int i, AdImage adImage) {
            tgd.this.f(i);
            tgd.this.q();
        }
    }

    public class b extends DrawableResponseListener {
        public final AdsDTO b;

        public class a implements h24 {
            public a() {
            }

            @Override
            public void a(boolean z) {
                if (z) {
                    tgd.this.q();
                } else {
                    tgd.this.h(new TaErrorCode(1, ""));
                }
            }
        }

        public b(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            ikd.b().d("SplashLoadManager", "onRequestError " + taErrorCode.getErrorMessage());
            if (this.b.isInteractiveAd()) {
                AthenaTracker.X(this.b, 1);
            }
            tgd.this.h(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            tgd.this.b(i);
            if (adImage != null) {
                if (!this.b.isInteractiveAd()) {
                    tgd.this.q();
                } else {
                    AthenaTracker.X(this.b, 0);
                    d45.a.h(this.b, adImage.getFilePath(), new a());
                }
            }
        }
    }

    public class c implements gob.b {
        public c() {
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            VastData videoInfo;
            if (tgd.this.d != null && (videoInfo = tgd.this.d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.FALSE);
            }
            tgd.this.h(taErrorCode);
        }

        @Override
        public void onSuccess(int i) {
            VastData videoInfo;
            tgd.this.e(i);
            ikd.b().d("SplashLoadManager", "loadVideo() -----> onSuccess");
            if (tgd.this.d != null && (videoInfo = tgd.this.d.getVideoInfo()) != null) {
                videoInfo.setCached(Boolean.TRUE);
            }
            tgd.this.q();
        }
    }

    public tgd(AdsDTO adsDTO, int i, wmd wmdVar) {
        this.d = adsDTO;
        this.h = i;
        this.f = wmdVar;
    }

    public void h(TaErrorCode taErrorCode) {
        this.g = false;
        wmd wmdVar = this.f;
        if (wmdVar != null) {
            this.g = false;
            wmdVar.a(taErrorCode, this.a);
        }
    }

    public static void m(List list) {
        fx8.a.b(list);
    }

    public void q() {
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
        s();
    }

    private void s() {
        AdsDTO adsDTO;
        this.g = false;
        wmd wmdVar = this.f;
        if (wmdVar != null && (adsDTO = this.d) != null) {
            this.g = false;
            wmdVar.b(adsDTO, this.a);
        }
        if (this.h == 1) {
            final ArrayList arrayList = new ArrayList();
            arrayList.add(this.d);
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    tgd.m(arrayList);
                }
            });
        }
    }

    private void u() {
        ikd.b().d("SplashLoadManager", "loadVideo");
        gob.a.c(new c(), this.d);
    }

    public final void i(AdsDTO adsDTO, String str) {
        if (adsDTO == null || TextUtils.isEmpty(str)) {
            return;
        }
        b bVar = new b(adsDTO);
        if (adsDTO.isVastTypeAd()) {
            u();
        } else {
            DownLoadRequest.k(str, adsDTO, adsDTO.isInteractiveAd() ? 8 : 2, adsDTO.isInteractiveAd(), bVar);
        }
    }

    public final boolean n(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext;
        if (adsDTO == null || (ext = adsDTO.getExt()) == null || ext.getStoreFlag().intValue() <= 0) {
            return false;
        }
        if (TextUtils.isEmpty(ext.getStoreImageurl())) {
            h(TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
            return true;
        }
        DownLoadRequest.k(ext.getStoreImageurl(), adsDTO, 6, false, new a());
        return true;
    }

    public void t() {
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            h(TaErrorCode.ERROR_AD_SPLASH_MATERIAL_IS_NULL);
            return;
        }
        if (this.g) {
            return;
        }
        this.g = true;
        int i = this.h;
        if (i == 3 || i == 2) {
            a();
            s();
            return;
        }
        String strA = t6.a.a(adsDTO);
        this.e = new AtomicInteger(2);
        if (!n(this.d)) {
            this.e.decrementAndGet();
        }
        i(this.d, strA);
    }
}
