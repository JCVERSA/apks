package com.yandex.mobile.ads.impl;

import android.content.Context;
import com.transsion.push.PushConstants;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONObject;

public final class sa2 {
    private final hw0 a;
    private final j12 b;
    private final x4 c;
    private final y9 d;
    private final ju1 e;

    public sa2(Context context) {
        hw0 hw0Var = new hw0(context);
        j12 j12Var = new j12();
        x4 x4Var = new x4();
        y9 y9Var = new y9();
        int i = pw1.l;
        this(context, hw0Var, j12Var, x4Var, y9Var, pw1.a.a().a(context));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ArrayList a(List list) {
        Object next;
        Object next2;
        y45.j(list, "videoAds");
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            mb2 mb2Var = (mb2) it.next();
            uu uuVar = (uu) defpackage.i81.q0(mb2Var.e());
            Object ra2Var = null;
            if (uuVar != null) {
                ju1 ju1Var = this.e;
                if (ju1Var != null && ju1Var.G() && mb2Var.o()) {
                    String strK = mb2Var.k();
                    if (strK == null) {
                        strK = "";
                    }
                    ra2Var = new ra2(mb2Var, uuVar, new ew0.a(strK).a(), null, null, null, null);
                } else {
                    ew0 ew0VarA = this.a.a(uuVar);
                    if (ew0VarA != null) {
                        ub2 ub2VarL = mb2Var.l();
                        this.b.getClass();
                        y45.j(ub2VarL, "videoAdExtensions");
                        Iterator<T> it2 = ub2VarL.a().iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it2.next();
                            u70 u70Var = (u70) next;
                            if (y45.e(u70Var.a(), "social_ad_info") && u70Var.b().length() > 0) {
                                break;
                            }
                        }
                        u70 u70Var2 = (u70) next;
                        String strB = u70Var2 != null ? u70Var2.b() : null;
                        i12 i12Var = strB != null ? new i12(strB) : null;
                        this.c.getClass();
                        String strA = x4.a(ub2VarL);
                        this.c.getClass();
                        y45.j(ub2VarL, "videoAdExtensions");
                        String strA2 = x4.a(ub2VarL);
                        JSONObject jSONObjectA = strA2 != null ? vq0.a(strA2) : null;
                        this.d.getClass();
                        y45.j(ub2VarL, "videoAdExtensions");
                        Iterator<T> it3 = ub2VarL.a().iterator();
                        do {
                            if (!it3.hasNext()) {
                                next2 = null;
                                break;
                            }
                            next2 = it3.next();
                        } while (!y45.e(((u70) next2).a(), "AdTune"));
                        u70 u70Var3 = (u70) next2;
                        String strB2 = u70Var3 != null ? u70Var3.b() : null;
                        JSONObject jSONObjectA2 = strB2 != null ? vq0.a(strB2) : null;
                        if (jSONObjectA2 != null) {
                            boolean z = jSONObjectA2.optInt(PushConstants.PUSH_SERVICE_TYPE_SHOW, 0) == 1;
                            String strOptString = jSONObjectA2.optString("token");
                            y45.i(strOptString, "optString(...)");
                            String strOptString2 = jSONObjectA2.optString("advertiserInfo");
                            y45.i(strOptString2, "optString(...)");
                            ra2Var = new w9(strOptString, strOptString2, z);
                        }
                        ra2Var = new ra2(mb2Var, uuVar, ew0VarA, i12Var, strA, jSONObjectA, ra2Var);
                    }
                }
            }
            if (ra2Var != null) {
                arrayList.add(ra2Var);
            }
        }
        return arrayList;
    }

    public sa2(Context context, hw0 hw0Var, j12 j12Var, x4 x4Var, y9 y9Var, ju1 ju1Var) {
        y45.j(context, "context");
        y45.j(hw0Var, "mediaFileProvider");
        y45.j(j12Var, "socialAdInfoProvider");
        y45.j(x4Var, "adInfoProvider");
        y45.j(y9Var, "adTuneInfoProvider");
        this.a = hw0Var;
        this.b = j12Var;
        this.c = x4Var;
        this.d = y9Var;
        this.e = ju1Var;
    }
}
