package com.tn.tranpay.report;

import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import java.util.HashMap;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final h f40683a = new h();

    private h() {
    }

    public static void f(h hVar, int i10, Boolean bool, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            bool = null;
        }
        hVar.e(i10, bool);
    }

    public final void a(String paymentMethod, boolean z10, boolean z11, boolean z12) {
        Intrinsics.h(paymentMethod, "paymentMethod");
        HashMap map = new HashMap();
        map.put("payment_method", paymentMethod);
        map.put("need_phone", String.valueOf(z10));
        map.put("need_cnic", String.valueOf(z11));
        map.put("auto", String.valueOf(z12));
        e.f40678a.e("cashier_page", "choose_payment_method", map);
    }

    public final void b(String str) {
        HashMap map = new HashMap();
        map.put("is_success", "true");
        if (str == null) {
            str = "";
        }
        map.put(TtmlNode.TAG_REGION, str);
        e.f40678a.e("pay_sdk", "init", map);
    }

    public final void c(boolean z10) {
        HashMap map = new HashMap();
        map.put("is_success", String.valueOf(z10));
        e.f40678a.e("pay_sdk", "load_config", map);
    }

    public final void d(int i10, String str, String str2, String str3, boolean z10) {
        HashMap map = new HashMap();
        map.put("result", String.valueOf(i10));
        if (str == null) {
            str = "";
        }
        map.put("webUrl", str);
        if (str2 == null) {
            str2 = "";
        }
        map.put("rnUrl", str2);
        if (str3 == null) {
            str3 = "";
        }
        map.put("packageName", str3);
        map.put("auto", String.valueOf(z10));
        e.f40678a.e("cashier_page", "open_link", map);
    }

    public final void e(int i10, Boolean bool) {
        HashMap map = new HashMap();
        map.put("resultType", String.valueOf(i10));
        if (bool != null) {
            map.put("reason", bool.booleanValue() ? "cancel" : OfflineConstantsKt.OFFLINE_DOWNLOAD_CHANNEL_MODE_OTHER);
        }
        e.f40678a.e("cashier_page", "pay", map);
    }

    public final void g() {
        e.f40678a.e("retention_dialog", "click_cancel", MapsKt.h());
    }

    public final void h() {
        e.f40678a.e("retention_dialog", "pt", MapsKt.h());
    }

    public final void i() {
        e.f40678a.e("retention_dialog", "click_query", MapsKt.h());
    }

    public final void j(boolean z10, String orderDesc, boolean z11, String txnId) {
        Intrinsics.h(orderDesc, "orderDesc");
        Intrinsics.h(txnId, "txnId");
        HashMap map = new HashMap();
        map.put("is_success", String.valueOf(z10));
        map.put("order_desc", orderDesc);
        map.put("pay_by_local_currency", String.valueOf(z11));
        map.put("txn_id", txnId);
        e.f40678a.e("pay_sdk", "start_pay", map);
    }

    public final void k(boolean z10, String str, String str2, boolean z11) {
        HashMap map = new HashMap();
        map.put("is_success", String.valueOf(z10));
        if (str != null) {
            map.put("phone", str);
        }
        if (str2 != null) {
            map.put("cnic", str2);
        }
        map.put("auto", String.valueOf(z11));
        e.f40678a.e("cashier_page", "submit", map);
    }

    public final void l(String pageName) {
        Intrinsics.h(pageName, "pageName");
        e.f40678a.e(pageName, "pt", MapsKt.h());
    }
}
