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
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class q1 extends h0 {

    private AdsDTO f22198d;

    private int f22199e;

    private m3 f22200f;

    private final String f22201g = "Rewarded";

    private boolean f22202h;

    private AtomicInteger f22203i;

    public static final class a extends DrawableResponseListener {

        final int f22204b;

        final q1 f22205c;

        final boolean f22206d;

        final AdsDTO f22207e;

        a(int i10, q1 q1Var, boolean z10, AdsDTO adsDTO) {
            this.f22204b = i10;
            this.f22205c = q1Var;
            this.f22206d = z10;
            this.f22207e = adsDTO;
        }

        @Override
        public void a(TaErrorCode adError) {
            Intrinsics.h(adError, "adError");
            b4.b().d(this.f22205c.f22201g, "downloadImg error " + adError.getErrorCode() + " | " + adError.getErrorMessage());
            if (this.f22206d) {
                AthenaTracker.S(this.f22207e, 1);
            }
            this.f22205c.m(adError);
        }

        @Override
        public void g(int i10, AdImage adImage) {
            int i11 = this.f22204b;
            if (i11 == 6) {
                this.f22205c.f(i10);
            } else if (i11 == 2) {
                this.f22205c.b(i10);
            }
            if (!this.f22206d) {
                this.f22205c.n(this.f22207e);
            } else {
                AthenaTracker.S(this.f22207e, 0);
                this.f22205c.o(this.f22207e, adImage);
            }
        }
    }

    public static final class b implements com.cloud.hisavana.sdk.common.util.n {

        final AdsDTO f22209b;

        b(AdsDTO adsDTO) {
            this.f22209b = adsDTO;
        }

        @Override
        public void a(boolean z10) {
            if (z10) {
                q1.this.n(this.f22209b);
                return;
            }
            q1 q1Var = q1.this;
            TaErrorCode ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED = TaErrorCode.ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED;
            Intrinsics.g(ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED, "ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED");
            q1Var.m(ERROR_ZIP_MATERIAL_DECOMPRESS_FAILED);
        }
    }

    public static final class c implements com.cloud.hisavana.sdk.common.util.p0.b {

        final AdsDTO f22211b;

        c(AdsDTO adsDTO) {
            this.f22211b = adsDTO;
        }

        @Override
        public void a(TaErrorCode error) {
            Intrinsics.h(error, "error");
            q1.this.p(this.f22211b, false);
            q1.this.m(error);
        }

        @Override
        public void b(int i10) {
            q1.this.p(this.f22211b, true);
            q1.this.e(i10);
            q1.this.y();
            J0.M(this.f22211b);
        }
    }

    public q1(AdsDTO adsDTO, int i10, m3 m3Var) {
        this.f22198d = adsDTO;
        this.f22199e = i10;
        this.f22200f = m3Var;
    }

    public final void m(TaErrorCode taErrorCode) {
        this.f22202h = false;
        m3 m3Var = this.f22200f;
        if (m3Var != null) {
            m3Var.a(taErrorCode, this.f21879a);
        }
    }

    public final void n(AdsDTO adsDTO) {
        AtomicInteger atomicInteger = null;
        if (b4.c()) {
            b4 b4VarB = b4.b();
            String str = this.f22201g;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("calcDownloadCount imageCounter ");
            AtomicInteger atomicInteger2 = this.f22203i;
            if (atomicInteger2 == null) {
                Intrinsics.y("imageCounter");
                atomicInteger2 = null;
            }
            sb2.append(atomicInteger2.get());
            b4VarB.i(str, sb2.toString());
        }
        AtomicInteger atomicInteger3 = this.f22203i;
        if (atomicInteger3 == null) {
            Intrinsics.y("imageCounter");
        } else {
            atomicInteger = atomicInteger3;
        }
        if (atomicInteger.decrementAndGet() <= 0) {
            y();
            J0.M(adsDTO);
        }
    }

    public final void o(AdsDTO adsDTO, AdImage adImage) {
        if (adImage == null) {
            TaErrorCode ERROR_ZIP_MATERIAL_TAKE_FAILED = TaErrorCode.ERROR_ZIP_MATERIAL_TAKE_FAILED;
            Intrinsics.g(ERROR_ZIP_MATERIAL_TAKE_FAILED, "ERROR_ZIP_MATERIAL_TAKE_FAILED");
            m(ERROR_ZIP_MATERIAL_TAKE_FAILED);
        } else {
            com.cloud.hisavana.sdk.common.util.z zVar = com.cloud.hisavana.sdk.common.util.z.f21622a;
            String filePath = adImage.getFilePath();
            Intrinsics.g(filePath, "getFilePath(...)");
            zVar.h(adsDTO, filePath, new b(adsDTO));
        }
    }

    public final void p(AdsDTO adsDTO, boolean z10) {
        VastData videoInfo = adsDTO.getVideoInfo();
        if (videoInfo == null) {
            return;
        }
        videoInfo.setCached(Boolean.valueOf(z10));
    }

    private final void q(String str, AdsDTO adsDTO, int i10) {
        boolean zIsInteractiveAd = adsDTO.isInteractiveAd();
        int i11 = zIsInteractiveAd ? 8 : 2;
        DownLoadRequest.k(adsDTO.getAdImgUrl(), adsDTO, i11, zIsInteractiveAd, new a(i11, this, zIsInteractiveAd, adsDTO));
    }

    private final void t(AdsDTO adsDTO) {
        AdsProtocolBean.Ext ext = adsDTO.getExt();
        if (ext == null) {
            return;
        }
        Integer storeFlag = ext.getStoreFlag();
        Intrinsics.g(storeFlag, "getStoreFlag(...)");
        if (storeFlag.intValue() <= 0) {
            b4.b().d(this.f22201g, "Store flag is not valid, skipping download");
            return;
        }
        String storeImageurl = ext.getStoreImageurl();
        if (storeImageurl == null || storeImageurl.length() == 0) {
            TaErrorCode ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY = TaErrorCode.ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY;
            Intrinsics.g(ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY, "ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY");
            m(ERROR_MATERIAL_STORE_IMG_URL_IS_EMPTY);
            return;
        }
        AtomicInteger atomicInteger = this.f22203i;
        if (atomicInteger == null) {
            Intrinsics.y("imageCounter");
            atomicInteger = null;
        }
        atomicInteger.incrementAndGet();
        String storeImageurl2 = ext.getStoreImageurl();
        Intrinsics.g(storeImageurl2, "getStoreImageurl(...)");
        q(storeImageurl2, adsDTO, 6);
    }

    private final void w() {
        Unit unit;
        AdsDTO adsDTO = this.f22198d;
        if (adsDTO != null) {
            if (TextUtils.isEmpty(adsDTO.getAdImgUrl())) {
                TaErrorCode ERROR_ADM_URL_IS_EMPTY = TaErrorCode.ERROR_ADM_URL_IS_EMPTY;
                Intrinsics.g(ERROR_ADM_URL_IS_EMPTY, "ERROR_ADM_URL_IS_EMPTY");
                m(ERROR_ADM_URL_IS_EMPTY);
            } else {
                this.f22203i = new AtomicInteger(1);
                t(adsDTO);
                String adImgUrl = adsDTO.getAdImgUrl();
                Intrinsics.g(adImgUrl, "getAdImgUrl(...)");
                q(adImgUrl, adsDTO, 2);
            }
            unit = Unit.f64096a;
        } else {
            unit = null;
        }
        if (unit == null) {
            TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
        }
    }

    private final void x() {
        AdsDTO adsDTO = this.f22198d;
        if (adsDTO != null) {
            com.cloud.hisavana.sdk.common.util.p0.f21581a.c(new c(adsDTO), adsDTO);
            return;
        }
        TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
        Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
        m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
    }

    public final void y() {
        List listL;
        m3 m3Var;
        this.f22202h = false;
        AdsDTO adsDTO = this.f22198d;
        if (adsDTO != null && (m3Var = this.f22200f) != null) {
            m3Var.b(adsDTO, this.f21879a);
        }
        if (this.f22199e == 1) {
            AdsDTO adsDTO2 = this.f22198d;
            if (adsDTO2 == null || (listL = CollectionsKt.e(adsDTO2)) == null) {
                listL = CollectionsKt.l();
            }
            i0.f21895a.b(CollectionsKt.U0(listL));
        }
    }

    public final void u() {
        AdsDTO adsDTO = this.f22198d;
        if (adsDTO == null) {
            TaErrorCode ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL = TaErrorCode.ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL;
            Intrinsics.g(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL, "ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL");
            m(ERROR_AD_REWARDED_AD_MATERIAL_IS_NULL);
            return;
        }
        if (this.f22202h) {
            return;
        }
        this.f22202h = true;
        int i10 = this.f22199e;
        if (i10 == 2 || i10 == 3) {
            a();
            y();
        } else {
            if (true == adsDTO.isVastTypeAd()) {
                x();
                return;
            }
            AdsDTO adsDTO2 = this.f22198d;
            if ((adsDTO2 != null ? adsDTO2.getNativeObject() : null) != null) {
                w();
            }
        }
    }
}
