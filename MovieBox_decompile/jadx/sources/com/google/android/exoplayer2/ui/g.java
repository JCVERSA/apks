package com.google.android.exoplayer2.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.exoplayer2.p1;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.util.Locale;

public class g implements o0 {

    private final Resources f26350a;

    public g(Resources resources) {
        this.f26350a = (Resources) com.google.android.exoplayer2.util.a.e(resources);
    }

    private String b(p1 p1Var) {
        int i10 = p1Var.f24914y;
        if (i10 == -1 || i10 < 1) {
            return "";
        }
        if (i10 == 1) {
            return this.f26350a.getString(R$string.exo_track_mono);
        }
        if (i10 == 2) {
            return this.f26350a.getString(R$string.exo_track_stereo);
        }
        if (i10 == 6 || i10 == 7) {
            return this.f26350a.getString(R$string.exo_track_surround_5_point_1);
        }
        return i10 != 8 ? this.f26350a.getString(R$string.exo_track_surround) : this.f26350a.getString(R$string.exo_track_surround_7_point_1);
    }

    private String c(p1 p1Var) {
        int i10 = p1Var.f24897h;
        return i10 == -1 ? "" : this.f26350a.getString(R$string.exo_track_bitrate, Float.valueOf(i10 / 1000000.0f));
    }

    private String d(p1 p1Var) {
        return TextUtils.isEmpty(p1Var.f24891b) ? "" : p1Var.f24891b;
    }

    private String e(p1 p1Var) {
        String strJ = j(f(p1Var), h(p1Var));
        return TextUtils.isEmpty(strJ) ? d(p1Var) : strJ;
    }

    private String f(p1 p1Var) {
        String str = p1Var.f24892c;
        if (TextUtils.isEmpty(str) || C.LANGUAGE_UNDETERMINED.equals(str)) {
            return "";
        }
        Locale localeForLanguageTag = com.google.android.exoplayer2.util.p0.f26854a >= 21 ? Locale.forLanguageTag(str) : new Locale(str);
        Locale localeR = com.google.android.exoplayer2.util.p0.R();
        String displayName = localeForLanguageTag.getDisplayName(localeR);
        if (TextUtils.isEmpty(displayName)) {
            return "";
        }
        try {
            int iOffsetByCodePoints = displayName.offsetByCodePoints(0, 1);
            return displayName.substring(0, iOffsetByCodePoints).toUpperCase(localeR) + displayName.substring(iOffsetByCodePoints);
        } catch (IndexOutOfBoundsException unused) {
            return displayName;
        }
    }

    private String g(p1 p1Var) {
        int i10 = p1Var.f24906q;
        int i11 = p1Var.f24907r;
        return (i10 == -1 || i11 == -1) ? "" : this.f26350a.getString(R$string.exo_track_resolution, Integer.valueOf(i10), Integer.valueOf(i11));
    }

    private String h(p1 p1Var) {
        String string = (p1Var.f24894e & 2) != 0 ? this.f26350a.getString(R$string.exo_track_role_alternate) : "";
        if ((p1Var.f24894e & 4) != 0) {
            string = j(string, this.f26350a.getString(R$string.exo_track_role_supplementary));
        }
        if ((p1Var.f24894e & 8) != 0) {
            string = j(string, this.f26350a.getString(R$string.exo_track_role_commentary));
        }
        return (p1Var.f24894e & 1088) != 0 ? j(string, this.f26350a.getString(R$string.exo_track_role_closed_captions)) : string;
    }

    private static int i(p1 p1Var) {
        int iK = com.google.android.exoplayer2.util.w.k(p1Var.f24901l);
        if (iK != -1) {
            return iK;
        }
        if (com.google.android.exoplayer2.util.w.n(p1Var.f24898i) != null) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.w.c(p1Var.f24898i) != null) {
            return 1;
        }
        if (p1Var.f24906q == -1 && p1Var.f24907r == -1) {
            return (p1Var.f24914y == -1 && p1Var.f24915z == -1) ? -1 : 1;
        }
        return 2;
    }

    private String j(String... strArr) {
        String string = "";
        for (String str : strArr) {
            if (str.length() > 0) {
                string = TextUtils.isEmpty(string) ? str : this.f26350a.getString(R$string.exo_item_list, string, str);
            }
        }
        return string;
    }

    @Override
    public String a(p1 p1Var) {
        String strJ;
        int i10 = i(p1Var);
        if (i10 == 2) {
            strJ = j(h(p1Var), g(p1Var), c(p1Var));
        } else {
            strJ = i10 == 1 ? j(e(p1Var), b(p1Var), c(p1Var)) : e(p1Var);
        }
        return strJ.length() == 0 ? this.f26350a.getString(R$string.exo_track_unknown) : strJ;
    }
}
