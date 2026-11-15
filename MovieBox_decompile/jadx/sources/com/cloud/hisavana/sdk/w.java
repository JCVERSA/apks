package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;

public final class w {

    public static final a f22385d = new a(null);

    private final AdsDTO f22386a;

    private float f22387b;

    private int f22388c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public w(AdsDTO adsDTO) {
        Intrinsics.h(adsDTO, "adsDTO");
        this.f22386a = adsDTO;
    }

    private final int a() {
        return w2.f22392a.e(this.f22386a);
    }

    private final int b(int i10, int i11, int i12) {
        int i13 = i11 + i10;
        int iNextInt = Random.INSTANCE.nextInt(i12 + i13) + 1;
        if (iNextInt <= i10) {
            return 0;
        }
        return iNextInt <= i13 ? 1 : 2;
    }

    private final String c(float f10) {
        return w2.f22392a.b(f10);
    }

    private final String d(int i10) {
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.0");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            decimalFormat.setRoundingMode(RoundingMode.DOWN);
            if (i10 < 1000) {
                return String.valueOf(i10);
            }
            if (i10 < 1000000) {
                return decimalFormat.format(i10 / 1000.0f) + " Thousand";
            }
            return decimalFormat.format(i10 / 1000000.0f) + " Million";
        } catch (Exception unused) {
            return "";
        }
    }

    private final float e() {
        return w2.f22392a.i(this.f22386a);
    }

    public final int f(int i10) {
        if (i10 != 0) {
            if (i10 == 1) {
                return R$drawable.hs_ad_score;
            }
            if (i10 == 2) {
                return R$drawable.hs_ad_download;
            }
        }
        return 0;
    }

    public final int g() {
        ConfigTotalDTO.ExtInfo extInfoM = g1.o().m();
        if (extInfoM == null) {
            b4.b().i("BannerStyleHelper", "extInfo is null, style is OLD");
            return 0;
        }
        float fE = e();
        this.f22387b = fE;
        boolean z10 = fE >= extInfoM.getScoreCount();
        int iA = a();
        this.f22388c = iA;
        int iB = b(extInfoM.getOldStyle(), z10 ? extInfoM.getScoreStyle() : 0, ((long) iA) >= extInfoM.getDownloadCount() ? extInfoM.getDownloadStyle() : 0);
        if (c7.b.l()) {
            b4.b().i("BannerStyleHelper", "score: " + this.f22387b + ", \ndownloadCount: " + this.f22388c + ", \nX: " + extInfoM.getScoreCount() + ", \nY: " + extInfoM.getDownloadCount() + ", \nweightOld: " + extInfoM.getOldStyle() + ", \nweightScore: " + extInfoM.getScoreStyle() + ", \nweightDownload: " + extInfoM.getDownloadStyle() + ", \nrandomStyle: " + iB);
        }
        return iB;
    }

    public final String h(int i10) {
        if (i10 == 0) {
            return "";
        }
        if (i10 != 1) {
            return i10 != 2 ? "" : d(this.f22388c);
        }
        return c(this.f22387b);
    }
}
