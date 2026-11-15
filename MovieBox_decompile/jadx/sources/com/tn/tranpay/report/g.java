package com.tn.tranpay.report;

import android.app.Application;
import android.os.Bundle;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.libraries.places.api.model.PlaceTypes;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.entity.RewardPlus;
import com.tn.tranpay.TranPay;
import com.tn.tranpay.TranPayConfiguration;
import com.tn.tranpay.device.TNDeviceHelper;
import com.transsion.startup.pref.consume.AppStartDotState;
import java.util.HashSet;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

public final class g implements f {

    private HashSet f40682a;

    public g() {
        HashSet hashSet = new HashSet();
        this.f40682a = hashSet;
        hashSet.add(AppStartDotState.APP_START);
        this.f40682a.add("app_stop");
    }

    private final void c(Bundle bundle) {
        bundle.putString("device_id", TNDeviceHelper.f40534a.c());
        TranPayConfiguration tranPayConfiguration = TranPayConfiguration.f40495a;
        bundle.putString("app_id", tranPayConfiguration.h());
        bundle.putString("channel", tranPayConfiguration.j());
        bundle.putString("app_version", d());
        bundle.putString("sdk_version", TranPay.f40491a.e());
        String strL = tranPayConfiguration.l();
        if (strL == null) {
            strL = "";
        }
        bundle.putString("m_id", strL);
        String strS = tranPayConfiguration.s();
        if (strS == null) {
            strS = "";
        }
        bundle.putString("pay_order_id", strS);
        String strT = tranPayConfiguration.t();
        if (strT == null) {
            strT = "";
        }
        bundle.putString("txn_id", strT);
        String strK = tranPayConfiguration.k();
        if (strK == null) {
            strK = "";
        }
        bundle.putString(PlaceTypes.COUNTRY, strK);
        String strM = tranPayConfiguration.m();
        if (strM == null) {
            strM = "";
        }
        bundle.putString("currency", strM);
        String strG = tranPayConfiguration.g();
        bundle.putString(RewardPlus.AMOUNT, strG != null ? strG : "");
        bundle.putString(CampaignEx.JSON_KEY_TIMESTAMP, String.valueOf(System.currentTimeMillis()));
    }

    private final String d() {
        try {
            Application applicationD = TranPay.f40491a.d();
            String str = applicationD.getPackageManager().getPackageInfo(applicationD.getPackageName(), 0).versionName;
            Intrinsics.g(str, "{\n            // 使用 Tran… 0).versionName\n        }");
            return str;
        } catch (Exception unused) {
            return TmcConstants.ROUTE_UNKNOWN;
        }
    }

    @Override
    public Bundle a(String event, Bundle bundle) {
        Intrinsics.h(event, "event");
        Intrinsics.h(bundle, "bundle");
        c(bundle);
        return bundle;
    }

    @Override
    public void b(String pageName, String event, Map map) {
        Intrinsics.h(pageName, "pageName");
        Intrinsics.h(event, "event");
        Intrinsics.h(map, "map");
    }
}
