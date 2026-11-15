package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.text.ttml.TtmlNode;
import defpackage.e1a;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.y45;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.Set;

public final class d52 {
    private final Set<b52> a;
    private final rg1 b;
    private final qj1 c;
    private final e52 d;

    public d52(Set set) {
        this(set, new rg1(), new qj1(), new e52());
    }

    /* JADX WARN: Code duplicated, block: B:25:0x007b  */
    public final na2 a(String str) {
        Long lValueOf;
        na2 na2Var;
        Integer numValueOf;
        Float fP;
        y45.j(str, "rawValue");
        if (this.a.contains(b52.d) && y45.e(TtmlNode.START, str)) {
            return new na2(na2.b.b, 0.0f);
        }
        if (this.a.contains(b52.e) && y45.e(TtmlNode.END, str)) {
            return new na2(na2.b.c, 100.0f);
        }
        if (this.a.contains(b52.c) && g1a.D(str, "%", false, 2, null)) {
            this.b.getClass();
            y45.j(str, "rawValue");
            try {
                String strSubstring = str.substring(0, j1a.g0(str));
                y45.i(strSubstring, "substring(...)");
                fP = e1a.p(strSubstring);
                if (fP != null) {
                    float fFloatValue = fP.floatValue();
                    if (0.0f > fFloatValue || fFloatValue > 100.0f) {
                        fP = null;
                    }
                } else {
                    fP = null;
                }
            } catch (Throwable unused) {
            }
            if (fP != null) {
                na2Var = new na2(na2.b.c, fP.floatValue());
                return na2Var;
            }
            return null;
        }
        if (this.a.contains(b52.f) && g1a.R(str, "#", false, 2, null)) {
            this.c.getClass();
            y45.j(str, "rawValue");
            try {
                String strSubstring2 = str.substring(1);
                y45.i(strSubstring2, "substring(...)");
                int i = Integer.parseInt(strSubstring2);
                numValueOf = i >= 1 ? Integer.valueOf(i) : null;
            } catch (Exception unused2) {
            }
            if (numValueOf != null) {
                na2Var = new na2(na2.b.d, numValueOf.intValue());
                return na2Var;
            }
            return null;
        }
        if (this.a.contains(b52.b)) {
            this.d.getClass();
            y45.j(str, "rawValue");
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("hh:mm:ss", Locale.US);
                lValueOf = Long.valueOf(simpleDateFormat.parse(str).getTime() - simpleDateFormat.parse("00:00:00").getTime());
            } catch (ParseException unused3) {
                lValueOf = null;
            }
            if (lValueOf != null) {
                na2Var = new na2(na2.b.b, lValueOf.longValue());
                return na2Var;
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public d52(Set<? extends b52> set, rg1 rg1Var, qj1 qj1Var, e52 e52Var) {
        y45.j(set, "allowedFormats");
        y45.j(rg1Var, "percentageParser");
        y45.j(qj1Var, "positionParser");
        y45.j(e52Var, "timeParser");
        this.a = set;
        this.b = rg1Var;
        this.c = qj1Var;
        this.d = e52Var;
    }
}
