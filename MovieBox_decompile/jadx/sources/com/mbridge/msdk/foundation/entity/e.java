package com.mbridge.msdk.foundation.entity;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class e {

    private String f34342a;

    private String f34343b;

    private String f34344c;

    private int f34345d;

    private int f34346e;

    private String f34347f;

    private String f34348g;

    private String f34349h;

    private int f34350i;

    private String f34351j;

    private int f34352k;

    private String f34353l;

    private int f34354m;

    private String f34355n;

    private String f34356o;

    private int f34357p;

    private String f34358q;

    public String a() {
        return this.f34342a;
    }

    public String b() {
        return this.f34344c;
    }

    public int c() {
        return this.f34345d;
    }

    public String d() {
        return this.f34343b;
    }

    public void e(int i10) {
        this.f34354m = i10;
    }

    public void f(int i10) {
        this.f34357p = i10;
    }

    public String g() {
        return this.f34348g;
    }

    public void h(String str) {
        this.f34353l = str;
    }

    public void i(String str) {
        this.f34355n = str;
    }

    public String j() {
        return this.f34351j;
    }

    public void k(String str) {
        this.f34358q = str;
    }

    public String l() {
        return this.f34353l;
    }

    public int m() {
        return this.f34354m;
    }

    public String n() {
        return this.f34355n;
    }

    public String o() {
        return this.f34356o;
    }

    public int p() {
        return this.f34357p;
    }

    public String q() {
        return this.f34358q;
    }

    public String toString() {
        return "ClickTime [campaignId=" + this.f34342a + ", click_duration=" + this.f34343b + ", lastUrl=" + this.f34351j + ", code=" + this.f34346e + ", excepiton=" + this.f34348g + ", header=" + this.f34349h + ", content=" + this.f34347f + ", type=" + this.f34357p + ", click_type=" + this.f34345d + "]";
    }

    public void a(int i10) {
        this.f34345d = i10;
    }

    public void b(String str) {
        this.f34344c = str;
    }

    public void c(int i10) {
        this.f34350i = i10;
    }

    public void d(int i10) {
        this.f34352k = i10;
    }

    public int e() {
        return this.f34346e;
    }

    public String f() {
        return this.f34347f;
    }

    public void g(String str) {
        this.f34351j = str;
    }

    public String h() {
        return this.f34349h;
    }

    public int i() {
        return this.f34350i;
    }

    public void j(String str) {
        this.f34356o = str;
    }

    public int k() {
        return this.f34352k;
    }

    public void a(String str) {
        this.f34342a = str;
    }

    public void b(int i10) {
        this.f34346e = i10;
    }

    public void c(String str) {
        this.f34343b = str;
    }

    public void d(String str) {
        this.f34347f = str;
    }

    public void e(String str) {
        this.f34348g = str;
    }

    public void f(String str) {
        this.f34349h = str;
    }

    public static JSONObject a(e eVar) {
        if (eVar == null) {
            return null;
        }
        String strJ = eVar.j();
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("rid", eVar.n());
            jSONObject.put("rid_n", eVar.o());
            jSONObject.put("click_type", eVar.c());
            jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, eVar.p());
            jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
            jSONObject.put("click_duration", eVar.d());
            jSONObject.put("key", "2000012");
            jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
            jSONObject.put("last_url", strJ);
            jSONObject.put("code", eVar.e());
            jSONObject.put("exception", eVar.g());
            jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
            jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
            jSONObject.put(TrackingKey.CLICK_TIME, eVar.b());
            if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                jSONObject.put("network_type", eVar.m());
                jSONObject.put("network_str", eVar.l());
            }
            return jSONObject;
        } catch (Throwable th2) {
            o0.b("ClickTime", th2.getMessage());
            return null;
        }
    }

    public static ArrayList<JSONObject> a(List<e> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        ArrayList<JSONObject> arrayList = new ArrayList<>();
        for (e eVar : list) {
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("rid", eVar.n());
                jSONObject.put("rid_n", eVar.o());
                jSONObject.put(BidResponsedEx.KEY_CID, eVar.a());
                jSONObject.put("click_type", eVar.c());
                jSONObject.put(NativeComponentConstants.KEY_COMPONENT_TYPE, eVar.p());
                jSONObject.put("click_duration", eVar.d());
                jSONObject.put("key", "2000013");
                jSONObject.put(MBridgeConstans.PROPERTIES_UNIT_ID, eVar.q());
                jSONObject.put("last_url", eVar.j());
                jSONObject.put("content", eVar.f());
                jSONObject.put("code", eVar.e());
                jSONObject.put("exception", eVar.g());
                jSONObject.put("header", eVar.h());
                jSONObject.put(CampaignEx.JSON_KEY_LANDING_TYPE, eVar.i());
                jSONObject.put(CampaignEx.JSON_KEY_LINK_TYPE, eVar.k());
                jSONObject.put(TrackingKey.CLICK_TIME, eVar.b());
                if (com.mbridge.msdk.foundation.controller.authoritycontroller.c.m().c(MBridgeConstans.AUTHORITY_GENERAL_DATA)) {
                    jSONObject.put("network_type", eVar.m());
                    jSONObject.put("network_str", eVar.l());
                }
                String strQ = eVar.q();
                if (!TextUtils.isEmpty(strQ)) {
                    String str = com.mbridge.msdk.foundation.controller.a.f34162r.get(strQ);
                    if (str == null) {
                        str = "";
                    }
                    jSONObject.put("u_stid", str);
                }
                arrayList.add(jSONObject);
            } catch (Throwable th2) {
                o0.b("ClickTime", th2.getMessage());
            }
        }
        return arrayList;
    }
}
