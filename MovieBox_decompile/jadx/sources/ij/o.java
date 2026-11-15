package ij;

import com.tencent.mmkv.MMKV;
import com.transsion.mb.config.manager.ConfigBean;
import com.transsnet.flow.event.AppScopeVMlProvider;
import com.transsnet.flow.event.FlowEventBus;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

public final class o {

    private static String f62116b;

    public static final o f62115a = new o();

    private static String f62117c = "All";

    private static String f62118d = "UN_GRADE";

    private o() {
    }

    private final boolean h() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_key_kid_mode_ad_switch", false);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return false;
        }
        return boolM1.booleanValue();
    }

    private final void k(String str) {
        f62116b = str == null ? "" : str;
        MMKV mmkvB = com.transsion.baselib.report.launch.b.f42221a.b();
        if (str == null) {
            str = "";
        }
        mmkvB.putString("k_kids_mode_current_kid_id", str);
        n();
    }

    public final void a(String kidId) {
        Intrinsics.h(kidId, "kidId");
        if (!i()) {
            com.transsion.baselib.report.launch.b.f42221a.b().putInt("k_kids_mode_ugc_snapshot", g.f62108a.b() ? 1 : 0);
        }
        if (!h()) {
            rh.b.f71229a.d(true);
        }
        g.f62108a.e(true);
        k(kidId);
        n nVar = new n(kidId);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, nVar, 0L);
    }

    public final void b() {
        rh.b.f71229a.d(false);
        k(null);
        com.transsion.baselib.report.launch.b bVar = com.transsion.baselib.report.launch.b.f42221a;
        int i10 = bVar.b().getInt("k_kids_mode_ugc_snapshot", -1);
        if (i10 != -1) {
            g.f62108a.e(i10 == 1);
            bVar.b().putInt("k_kids_mode_ugc_snapshot", -1);
        }
        n nVar = new n(null);
        FlowEventBus flowEventBus = (FlowEventBus) AppScopeVMlProvider.INSTANCE.getApplicationScopeViewModel(FlowEventBus.class);
        String name = n.class.getName();
        Intrinsics.g(name, "getName(...)");
        flowEventBus.postEvent(name, nVar, 0L);
    }

    public final String c() {
        return String.valueOf(x.f62125a.b());
    }

    public final String d() {
        if (f62116b == null) {
            String string = com.transsion.baselib.report.launch.b.f42221a.b().getString("k_kids_mode_current_kid_id", "");
            f62116b = string != null ? string : "";
        }
        String str = f62116b;
        if (str == null || str.length() == 0) {
            return null;
        }
        return str;
    }

    public final String e() {
        return f62118d;
    }

    public final String f() {
        return f62117c;
    }

    public final boolean g() {
        return !h() && i();
    }

    public final boolean i() {
        String strD = d();
        return !(strD == null || strD.length() == 0);
    }

    public final boolean j() {
        String value;
        Boolean boolM1;
        ConfigBean configBeanC = cm.f.f17019c.a().c("sa_key_kid_mode_feature_enable", true);
        if (configBeanC == null || (value = configBeanC.getValue()) == null || (boolM1 = StringsKt.m1(value)) == null) {
            return false;
        }
        return boolM1.booleanValue();
    }

    public final void l(String str) {
        Intrinsics.h(str, "<set-?>");
        f62118d = str;
    }

    public final void m(String str) {
        Intrinsics.h(str, "<set-?>");
        f62117c = str;
    }

    public final void n() {
        jg.b.a aVar = jg.b.f63119a;
        String strD = d();
        if (strD == null) {
            strD = "";
        }
        aVar.b("X-Child-UID", strD);
    }
}
