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
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public final class n7d extends bl4 {
    public AdsDTO d;
    public int e;
    public wmd f;
    public final String g = "Rewarded";
    public boolean h;
    public AtomicInteger i;

    public static final class a extends DrawableResponseListener {
        public final int b;
        public final n7d c;
        public final boolean d;
        public final AdsDTO e;

        public a(int i, n7d n7dVar, boolean z, AdsDTO adsDTO) {
            this.b = i;
            this.c = n7dVar;
            this.d = z;
            this.e = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            y45.j(taErrorCode, "adError");
            ikd.b().d(this.c.g, "downloadImg error " + taErrorCode.getErrorCode() + " | " + taErrorCode.getErrorMessage());
            if (this.d) {
                AthenaTracker.X(this.e, 1);
            }
            this.c.n(taErrorCode);
        }

        @Override
        public void g(int i, AdImage adImage) {
            int i2 = this.b;
            if (i2 == 6) {
                this.c.f(i);
            } else if (i2 == 2) {
                this.c.b(i);
            }
            if (!this.d) {
                this.c.o(this.e);
            } else {
                AthenaTracker.X(this.e, 0);
                this.c.p(this.e, adImage);
            }
        }
    }

    public static final class b implements h24 {
        public final AdsDTO b;

        public b(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(boolean z) {
            if (z) {
                n7d.this.o(this.b);
                return;
            }
            n7d n7dVar = n7d.this;
            TaErrorCode taErrorCode = TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED;
            y45.i(taErrorCode, "ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED");
            n7dVar.n(taErrorCode);
        }
    }

    public static final class c implements gob.b {
        public final AdsDTO b;

        public c(AdsDTO adsDTO) {
            this.b = adsDTO;
        }

        @Override
        public void a(TaErrorCode taErrorCode) {
            y45.j(taErrorCode, "error");
            n7d.this.q(this.b, false);
            n7d.this.n(taErrorCode);
        }

        @Override
        public void onSuccess(int i) {
            n7d.this.q(this.b, true);
            n7d.this.e(i);
            n7d.this.A();
            U0.N(this.b);
        }
    }

    public n7d(AdsDTO adsDTO, int i, wmd wmdVar) {
        this.d = adsDTO;
        this.e = i;
        this.f = wmdVar;
    }

    public final void A() {
        List listK;
        wmd wmdVar;
        this.h = false;
        AdsDTO adsDTO = this.d;
        if (adsDTO != null && (wmdVar = this.f) != null) {
            wmdVar.b(adsDTO, this.a);
        }
        if (this.e == 1) {
            AdsDTO adsDTO2 = this.d;
            if (adsDTO2 == null || (listK = x71.e(adsDTO2)) == null) {
                listK = y71.k();
            }
            final List listE1 = i81.e1(listK);
            HSScopeHelper.a.l(new Runnable() {
                @Override
                public final void run() {
                    n7d.s(listE1);
                }
            });
        }
    }

    public final void n(TaErrorCode taErrorCode) {
        this.h = false;
        wmd wmdVar = this.f;
        if (wmdVar != null) {
            wmdVar.a(taErrorCode, this.a);
        }
    }

    public final void o(AdsDTO adsDTO) {
        AtomicInteger atomicInteger = null;
        if (ikd.c()) {
            ikd ikdVarB = ikd.b();
            String str = this.g;
            StringBuilder sb = new StringBuilder();
            sb.append("calcDownloadCount imageCounter ");
            AtomicInteger atomicInteger2 = this.i;
            if (atomicInteger2 == null) {
                y45.B("imageCounter");
                atomicInteger2 = null;
            }
            sb.append(atomicInteger2.get());
            ikdVarB.i(str, sb.toString());
        }
        AtomicInteger atomicInteger3 = this.i;
        if (atomicInteger3 == null) {
            y45.B("imageCounter");
        } else {
            atomicInteger = atomicInteger3;
        }
        if (atomicInteger.decrementAndGet() <= 0) {
            A();
            U0.N(adsDTO);
        }
    }

    public static final void s(List list) {
        y45.j(list, "$temp");
        fx8.a.b(list);
    }

    private final void y() {
        zfb zfbVar;
        AdsDTO adsDTO = this.d;
        if (adsDTO != null) {
            if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
                TaErrorCode taErrorCode = TaErrorCode.ERROR_ADM_URL_IS_EMPTY;
                y45.i(taErrorCode, "ERROR_ADM_URL_IS_EMPTY");
                n(taErrorCode);
            } else {
                this.i = new AtomicInteger(1);
                v(adsDTO);
                String adImgUrl = adsDTO.getAdImgUrl();
                y45.i(adImgUrl, "getAdImgUrl(...)");
                r(adImgUrl, adsDTO, 2);
            }
            zfbVar = zfb.a;
        } else {
            zfbVar = null;
        }
        if (zfbVar == null) {
            TaErrorCode taErrorCode2 = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            y45.i(taErrorCode2, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            n(taErrorCode2);
        }
    }

    private final void z() {
        AdsDTO adsDTO = this.d;
        if (adsDTO != null) {
            gob.a.c(new c(adsDTO), adsDTO);
            return;
        }
        TaErrorCode taErrorCode = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
        y45.i(taErrorCode, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
        n(taErrorCode);
    }

    public final void p(AdsDTO adsDTO, AdImage adImage) {
        if (adImage == null) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED;
            y45.i(taErrorCode, "ERROR_ZIP_MATERIAL_TAKE_FAILED");
            n(taErrorCode);
        } else {
            d45 d45Var = d45.a;
            String filePath = adImage.getFilePath();
            y45.i(filePath, "getFilePath(...)");
            d45Var.h(adsDTO, filePath, new b(adsDTO));
        }
    }

    public final void q(AdsDTO adsDTO, boolean z) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo == null) {
            return;
        }
        videoInfo.setCached(Boolean.valueOf(z));
    }

    public final void r(String str, AdsDTO adsDTO, int i) {
        boolean zIsInteractiveAd = adsDTO.isInteractiveAd();
        int i2 = zIsInteractiveAd ? 8 : 2;
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, i2, zIsInteractiveAd, new a(i2, this, zIsInteractiveAd, adsDTO));
    }

    public final void v(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null) {
            return;
        }
        Integer storeFlag = ext.getStoreFlag();
        y45.i(storeFlag, "getStoreFlag(...)");
        if (storeFlag.intValue() <= 0) {
            ikd.b().d(this.g, "Store flag is not valid, skipping download");
            return;
        }
        String storeImageurl = ext.getStoreImageurl();
        if (storeImageurl == null || storeImageurl.length() == 0) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY;
            y45.i(taErrorCode, "ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY");
            n(taErrorCode);
            return;
        }
        AtomicInteger atomicInteger = this.i;
        if (atomicInteger == null) {
            y45.B("imageCounter");
            atomicInteger = null;
        }
        atomicInteger.incrementAndGet();
        String storeImageurl2 = ext.getStoreImageurl();
        y45.i(storeImageurl2, "getStoreImageurl(...)");
        r(storeImageurl2, adsDTO, 6);
    }

    public final void w() {
        AdsDTO adsDTO = this.d;
        if (adsDTO == null) {
            TaErrorCode taErrorCode = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            y45.i(taErrorCode, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            n(taErrorCode);
            return;
        }
        if (this.h) {
            return;
        }
        this.h = true;
        int i = this.e;
        if (i == 2 || i == 3) {
            a();
            A();
        } else {
            if (true == adsDTO.isVastTypeAd()) {
                z();
                return;
            }
            AdsDTO adsDTO2 = this.d;
            if ((adsDTO2 != null ? adsDTO2.getNativeObject() : null) != null) {
                y();
            }
        }
    }
}
