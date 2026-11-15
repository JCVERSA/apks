package com.yandex.mobile.ads.impl;

import com.hisavana.common.tracking.TrackingKey;
import defpackage.y45;
import io.appmetrica.analytics.plugins.PluginErrorDetails;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public final class er1 {
    private final kr1 a;
    private final b71 b;

    public er1() {
        this(new kr1(), new b71());
    }

    public final pp1 a(o8 o8Var, o3 o3Var, y61 y61Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = a(o8Var, o3Var);
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        if (y61Var != null) {
            List<String> listA = this.b.a(y61Var);
            if (!listA.isEmpty()) {
                pp1Var.a(listA, "image_sizes");
            }
            this.b.getClass();
            y45.j(y61Var, "responseBody");
            List<g41> listE = y61Var.e();
            ArrayList arrayList = new ArrayList(defpackage.z71.v(listE, 10));
            Iterator<T> it = listE.iterator();
            while (it.hasNext()) {
                arrayList.add(((g41) it.next()).g().a());
            }
            if (!arrayList.isEmpty()) {
                pp1Var.a(arrayList, "native_ad_types");
            }
            this.b.getClass();
            y45.j(y61Var, "responseBody");
            List<g41> listE2 = y61Var.e();
            ArrayList arrayList2 = new ArrayList();
            Iterator<T> it2 = listE2.iterator();
            while (it2.hasNext()) {
                String strA = ((g41) it2.next()).a();
                if (strA != null) {
                    arrayList2.add(strA);
                }
            }
            if (!arrayList2.isEmpty()) {
                pp1Var.a(arrayList2, "ad_ids");
            }
        }
        return qp1.a(pp1VarA, pp1Var);
    }

    public final pp1 b(o8<?> o8Var, o3 o3Var) {
        y45.j(o3Var, "adConfiguration");
        pp1 pp1VarA = a(o8Var, o3Var);
        pp1VarA.b(o8Var != null ? o8Var.d() : null, "ad_id");
        return pp1VarA;
    }

    public er1(kr1 kr1Var, b71 b71Var) {
        y45.j(kr1Var, "responseTypeProvider");
        y45.j(b71Var, "nativeAdResponseDataProvider");
        this.a = kr1Var;
        this.b = b71Var;
    }

    public final pp1 a(o8<?> o8Var, y61 y61Var, o3 o3Var, g41 g41Var) {
        y45.j(o3Var, "adConfiguration");
        y45.j(g41Var, PluginErrorDetails.Platform.NATIVE);
        pp1 pp1VarA = a(o8Var, o3Var);
        if (y61Var != null) {
            List<String> listA = this.b.a(y61Var);
            if (!listA.isEmpty()) {
                pp1VarA.a(listA, "image_sizes");
            }
        }
        pp1VarA.b(g41Var.a(), "ad_id");
        return pp1VarA;
    }

    private final pp1 a(o8<?> o8Var, o3 o3Var) {
        String strC;
        String strC2;
        String strA;
        String str;
        Map<String, ? extends Object> mapS;
        ts tsVarN;
        pp1 pp1Var = new pp1(new LinkedHashMap(), 2);
        if (o8Var == null || !o8Var.O()) {
            pp1Var.b(o8Var != null ? o8Var.o() : null, "ad_type_format");
            pp1Var.b(o8Var != null ? o8Var.H() : null, "product_type");
        }
        if (o8Var == null || (strC = o8Var.p()) == null) {
            strC = o3Var.c();
        }
        pp1Var.b(strC, "block_id");
        if (o8Var == null || (strC2 = o8Var.p()) == null) {
            strC2 = o3Var.c();
        }
        pp1Var.b(strC2, "ad_unit_id");
        pp1Var.b(o8Var != null ? o8Var.m() : null, "ad_source");
        if (o8Var == null || (tsVarN = o8Var.n()) == null || (strA = tsVarN.a()) == null) {
            strA = o3Var.b().a();
        }
        pp1Var.b(strA, TrackingKey.AD_TYPE);
        pp1Var.a(o8Var != null ? o8Var.w() : null, "design");
        pp1Var.a(o8Var != null ? o8Var.b() : null);
        pp1Var.a(o8Var != null ? o8Var.L() : null, "server_log_id");
        this.a.getClass();
        if ((o8Var != null ? o8Var.D() : null) != null) {
            str = "mediation";
        } else {
            if ((o8Var != null ? o8Var.I() : null) != null) {
                str = "ad";
            } else {
                str = "empty";
            }
        }
        pp1Var.b(str, "response_type");
        if (o8Var != null && (mapS = o8Var.s()) != null) {
            pp1Var.a(mapS);
        }
        pp1Var.a(o8Var != null ? o8Var.a() : null);
        return pp1Var;
    }
}
