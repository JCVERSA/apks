package com.transsion.baselib.report;

import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import com.blankj.utilcode.util.Utils;
import com.therouter.TheRouter;
import com.transsion.memberapi.MemberDetail;
import com.transsion.memberapi.MemberInfo;
import com.transsion.startup.pref.consume.AppStartDotState;
import com.transsnet.loginapi.bean.UserInfo;
import ij.o;
import ij.t;
import ij.u;
import java.util.HashSet;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;

public final class i implements qi.i {

    private HashSet f42206a;

    private final String f42207b;

    private qx.a f42208c;

    private im.b f42209d;

    public i() {
        HashSet hashSet = new HashSet();
        this.f42206a = hashSet;
        this.f42207b = "ext";
        hashSet.add(AppStartDotState.APP_START);
        this.f42206a.add("app_stop");
        this.f42206a.add("download_click");
    }

    @Override
    public Bundle a(String event, Bundle bundle) {
        MemberDetail memberDetailL;
        Integer daysLeft;
        UserInfo userInfoI;
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        bundle.putString("play_mode", String.valueOf(t.f62121a.b()));
        bundle.putString("content_mode", String.valueOf(ij.g.f62108a.b()));
        int iIntValue = 0;
        bundle.putString("family_mode", String.valueOf(com.transsion.baselib.report.launch.b.f42221a.b().getBoolean("k_is_family_mode", false)));
        o oVar = o.f62115a;
        bundle.putString("kids_mode", String.valueOf(oVar.i()));
        String strD = oVar.d();
        if (strD == null) {
            strD = "";
        }
        bundle.putString("kid_id", strD);
        String[] SUPPORTED_64_BIT_ABIS = Build.SUPPORTED_64_BIT_ABIS;
        Intrinsics.g(SUPPORTED_64_BIT_ABIS, "SUPPORTED_64_BIT_ABIS");
        bundle.putString("cpu_64", String.valueOf(!(SUPPORTED_64_BIT_ABIS.length == 0)));
        u uVar = u.f62122a;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        bundle.putString("s_a_m", String.valueOf(uVar.a(applicationA)));
        jg.b.f63119a.a(bundle);
        if (this.f42208c == null) {
            synchronized (this) {
                try {
                    if (this.f42208c == null) {
                        this.f42208c = (qx.a) TheRouter.d(qx.a.class, new Object[0]);
                    }
                    Unit unit = Unit.f64096a;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        if (this.f42209d == null) {
            synchronized (this) {
                try {
                    if (this.f42209d == null) {
                        this.f42209d = (im.b) TheRouter.d(im.b.class, new Object[0]);
                    }
                    Unit unit2 = Unit.f64096a;
                } catch (Throwable th3) {
                    throw th3;
                }
            }
        }
        qx.a aVar = this.f42208c;
        if (aVar != null && (userInfoI = aVar.i()) != null) {
            bundle.putString("myuserid", String.valueOf(userInfoI.getUserId()));
        }
        im.b bVar = this.f42209d;
        if (bVar != null && (memberDetailL = bVar.l()) != null) {
            MemberInfo memberInfo = memberDetailL.getMemberInfo();
            bundle.putBoolean("is_member", memberInfo != null ? memberInfo.isActive() : false);
            MemberInfo memberInfo2 = memberDetailL.getMemberInfo();
            if (memberInfo2 != null && (daysLeft = memberInfo2.getDaysLeft()) != null) {
                iIntValue = daysLeft.intValue();
            }
            bundle.putString("trial_days", String.valueOf(iIntValue));
            MemberInfo memberInfo3 = memberDetailL.getMemberInfo();
            bundle.putString("expiry_date", memberInfo3 != null ? memberInfo3.getExpiryDate() : null);
        }
        if (this.f42206a.contains(event)) {
            String string = bundle.getString(this.f42207b);
            String string2 = bundle.getString("net_state");
            wf.a.f74274a.c("report", "event " + event + " netState:" + string2 + " " + string, true);
        }
        return bundle;
    }

    @Override
    public void b(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
        ej.b.f59709a.d(pageName, event, map);
    }

    @Override
    public Pair getAccount() {
        qx.a aVar = this.f42208c;
        UserInfo userInfoI = aVar != null ? aVar.i() : null;
        if (userInfoI != null) {
            return new Pair(Short.valueOf((short) userInfoI.getUserType()), String.valueOf(userInfoI.getUserId()));
        }
        return null;
    }
}
