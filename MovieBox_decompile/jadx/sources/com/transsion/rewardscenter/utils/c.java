package com.transsion.rewardscenter.utils;

import com.therouter.TheRouter;
import com.transsnet.loginapi.bean.Country;
import com.transsnet.loginapi.bean.UserInfo;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;

public final class c {

    public static final c f49291a = new c();

    private static final Regex f49292b = new Regex("^\\d{7,15}$");

    public static final int f49293c = 8;

    private c() {
    }

    public final Triple a() {
        b bVar = b.f49288a;
        String strC = bVar.c();
        String strD = bVar.d();
        String strE = bVar.e();
        wf.a.C0922a c0922a = wf.a.f74274a;
        wf.a.C0922a.f(c0922a, "RewardsCenter", "getPhoneInfo mmkv: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
        qx.a aVar = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
        if (aVar != null) {
            if (StringsKt.q0(strE)) {
                UserInfo userInfoI = aVar.i();
                String phone = userInfoI != null ? userInfoI.getPhone() : null;
                if (phone == null) {
                    phone = "";
                }
                if (StringsKt.q0(strC)) {
                    String cc2 = userInfoI != null ? userInfoI.getCc() : null;
                    strC = cc2 == null ? "" : cc2;
                }
                strE = phone;
            }
            wf.a.C0922a.f(c0922a, "RewardsCenter", "getPhoneInfo userInfo: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
            if (StringsKt.q0(strC) || StringsKt.q0(strD)) {
                Country countryF = aVar.f();
                wf.a.C0922a.f(c0922a, "RewardsCenter", "getPhoneInfo --> country: " + countryF, false, 4, null);
                if (StringsKt.q0(strC)) {
                    strC = countryF != null ? countryF.getCode() : null;
                    if (strC == null) {
                        strC = "";
                    }
                }
                if (StringsKt.q0(strD)) {
                    String code = countryF != null ? countryF.getCode() : null;
                    if (code == null) {
                        code = "";
                    }
                    if (Intrinsics.c(strC, code)) {
                        String country_s = countryF != null ? countryF.getCountry_s() : null;
                        strD = country_s == null ? "" : country_s;
                    }
                }
            }
            wf.a.C0922a.f(c0922a, "RewardsCenter", "getPhoneInfo result: " + ((Object) strC) + ", " + ((Object) strD) + ", " + ((Object) strE), false, 4, null);
        }
        return new Triple(strC, strD, strE);
    }

    public final boolean b(String number) {
        Intrinsics.h(number, "number");
        return f49292b.matches(number);
    }
}
