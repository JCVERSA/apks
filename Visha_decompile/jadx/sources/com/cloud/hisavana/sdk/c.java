package com.cloud.hisavana.sdk;

import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.ConfigTotalDTO;
import defpackage.cgc;
import defpackage.ikd;
import defpackage.r6;
import defpackage.y45;
import java.math.RoundingMode;
import java.text.DecimalFormat;
import java.text.DecimalFormatSymbols;
import java.util.Locale;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.random.Random;

public final class c {
    public static final a d = new a(null);
    public final AdsDTO a;
    public float b;
    public int c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public c(AdsDTO adsDTO) {
        y45.j(adsDTO, "adsDTO");
        this.a = adsDTO;
    }

    public final int a() {
        return w.a.f(this.a);
    }

    public final int b(boolean z, boolean z2) {
        if (z && z2) {
            return Random.Default.nextInt(2) == 1 ? 1 : 2;
        }
        return z ? 1 : 2;
    }

    public final String c(float f) {
        return w.a.b(f);
    }

    public final String d(int i) {
        if (i == 0) {
            return "0";
        }
        try {
            DecimalFormat decimalFormat = new DecimalFormat("#.0");
            decimalFormat.setDecimalFormatSymbols(new DecimalFormatSymbols(Locale.US));
            decimalFormat.setRoundingMode(RoundingMode.DOWN);
            if (i < 1000) {
                return String.valueOf(i);
            }
            if (i < 1000000) {
                return decimalFormat.format(i / 1000.0f) + 'K';
            }
            return decimalFormat.format(i / 1000000.0f) + 'M';
        } catch (Exception unused) {
            return "";
        }
    }

    public final float e() {
        return w.a.j(this.a);
    }

    public final int f(int i) {
        if (i != 0) {
            if (i == 1) {
                return R.drawable.hs_ad_score;
            }
            if (i == 2) {
                return R.drawable.hs_ad_download;
            }
        }
        return 0;
    }

    public final int g() {
        ConfigTotalDTO.ExtInfo extInfoL = cgc.n().l();
        if (extInfoL == null) {
            extInfoL = new ConfigTotalDTO.ExtInfo();
        }
        float fE = e();
        this.b = fE;
        boolean z = fE >= extInfoL.getScoreCount();
        int iA = a();
        this.c = iA;
        boolean z2 = ((long) iA) >= extInfoL.getDownloadCount();
        if (!z && !z2) {
            return 1;
        }
        int iB = b(z, z2);
        if (r6.p()) {
            ikd.b().i("BannerStyleHelper", "score: " + this.b + ", \ndownloadCount: " + this.c + ", \nX: " + extInfoL.getScoreCount() + ", \nY: " + extInfoL.getDownloadCount() + ", \nweightOld: " + extInfoL.getOldStyle() + ", \nweightScore: " + extInfoL.getScoreStyle() + ", \nweightDownload: " + extInfoL.getDownloadStyle() + ", \nrandomStyle: " + iB);
        }
        return iB;
    }

    public final String h(int i) {
        if (i == 0) {
            return "";
        }
        if (i != 1) {
            return i != 2 ? "" : d(this.c);
        }
        return c(this.b);
    }
}
