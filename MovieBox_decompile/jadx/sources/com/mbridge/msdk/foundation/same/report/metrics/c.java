package com.mbridge.msdk.foundation.same.report.metrics;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.io.Serializable;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

public class c implements Serializable, Cloneable {
    private int A;
    private CampaignEx B;
    private CopyOnWriteArrayList<CampaignEx> C;

    private boolean f34762a;

    private Map<String, Map<String, String>> f34763b;

    private Map<String, Map<String, String>> f34764c;

    private Map<String, Long> f34765d;

    private com.mbridge.msdk.foundation.error.b f34766e;

    private String f34767f;

    private CopyOnWriteArrayList<CampaignEx> f34768g;

    private String f34769h;

    private int f34770i;

    private String f34771j;

    private String f34772k;

    private String f34773l;

    private String f34774m;

    private String f34775n;

    private String f34776o;

    private String f34777p;

    private String f34778q;

    private int f34779r;

    private int f34780s;

    private boolean f34781t;

    private boolean f34782u;

    private boolean f34783v;

    private boolean f34784w;

    private int f34785x;

    private int f34786y;

    private int f34787z;

    public c() {
        this.f34762a = false;
        this.f34763b = new HashMap();
        this.f34764c = new HashMap();
        this.f34765d = new HashMap();
        this.f34767f = "";
        this.f34768g = new CopyOnWriteArrayList<>();
        this.f34779r = -1;
        this.f34781t = false;
        this.f34783v = false;
        this.C = new CopyOnWriteArrayList<>();
    }

    public boolean A() {
        return this.f34782u;
    }

    public boolean B() {
        return this.f34762a;
    }

    public void a(boolean z10) {
        this.f34781t = z10;
    }

    public void b(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.size() > 0) {
                    if (!this.C.isEmpty()) {
                        this.C.clear();
                    }
                    this.C.addAll(list);
                }
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public String c() {
        return this.f34777p;
    }

    @NonNull
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }

    public void d(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            String str2 = this.f34767f + str;
            Map<String, Map<String, String>> map = this.f34763b;
            if (map == null || !map.containsKey(str2)) {
                return;
            }
            this.f34763b.remove(str2);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void e(int i10) {
        this.f34779r = i10;
    }

    public String f() {
        return this.f34771j;
    }

    public List<CampaignEx> g() {
        return this.f34768g;
    }

    public void h(String str) {
        this.f34767f = str;
    }

    public void i(String str) {
        this.f34778q = str;
    }

    public List<CampaignEx> j() {
        return this.C;
    }

    public void k(String str) {
        this.f34775n = str;
    }

    public int l() {
        return this.f34779r;
    }

    public void m(String str) {
        this.f34769h = str;
    }

    public String n() {
        return this.f34776o;
    }

    public String o() {
        return this.f34767f;
    }

    public com.mbridge.msdk.foundation.error.b p() {
        return this.f34766e;
    }

    public Map<String, Map<String, String>> q() {
        return this.f34764c;
    }

    public Map<String, Map<String, String>> r() {
        return this.f34763b;
    }

    public String s() {
        return this.f34772k;
    }

    public String t() {
        return this.f34775n;
    }

    public String u() {
        return this.f34773l;
    }

    public int v() {
        return this.A;
    }

    public String w() {
        Map<String, String> map;
        if (!TextUtils.isEmpty(this.f34769h)) {
            return this.f34769h;
        }
        try {
            if (TextUtils.isEmpty(this.f34769h)) {
                String str = this.f34767f + this.f34778q;
                Map<String, Map<String, String>> map2 = this.f34763b;
                if (map2 != null && map2.containsKey(str) && (map = this.f34763b.get(str)) != null && map.containsKey(MBridgeConstans.PROPERTIES_UNIT_ID)) {
                    this.f34769h = map.get(MBridgeConstans.PROPERTIES_UNIT_ID);
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return this.f34769h;
    }

    public String x() {
        return this.f34774m;
    }

    public boolean y() {
        return this.f34781t;
    }

    public boolean z() {
        return this.f34783v;
    }

    public void a(List<CampaignEx> list) {
        if (list != null) {
            try {
                if (list.isEmpty()) {
                    return;
                }
                if (!this.f34768g.isEmpty()) {
                    this.f34768g.clear();
                }
                this.f34768g.addAll(list);
            } catch (Exception e10) {
                if (MBridgeConstans.DEBUG) {
                    e10.printStackTrace();
                }
            }
        }
    }

    public void c(String str) {
        if (this.f34765d == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f34765d.put(str, Long.valueOf(System.currentTimeMillis()));
    }

    public void e(String str) {
        this.f34777p = str;
    }

    public void f(String str) {
        this.f34771j = str;
    }

    public void g(String str) {
        this.f34776o = str;
    }

    public CampaignEx i() {
        return this.B;
    }

    public void j(String str) {
        this.f34772k = str;
    }

    public int k() {
        return this.f34787z;
    }

    public void l(String str) {
        this.f34773l = str;
    }

    public int m() {
        return this.f34780s;
    }

    public void n(String str) {
        this.f34774m = str;
    }

    public int e() {
        return this.f34786y;
    }

    public void f(int i10) {
        this.f34780s = i10;
    }

    public void g(int i10) {
        this.A = i10;
    }

    public void c(boolean z10) {
        this.f34782u = z10;
    }

    public void c(int i10) {
        this.f34786y = i10;
    }

    public Map<String, String> b(String str) {
        com.mbridge.msdk.foundation.error.b bVarP;
        com.mbridge.msdk.foundation.error.b bVarP2;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        e eVar = new e();
        try {
            this.f34778q = str;
            eVar.a("ts", Long.valueOf(System.currentTimeMillis()));
            if (!TextUtils.isEmpty(w())) {
                eVar.a(MBridgeConstans.PROPERTIES_UNIT_ID, w());
            }
            if (this.f34770i != 0) {
                eVar.a("adtp", Integer.valueOf(a()));
            }
            if (!TextUtils.isEmpty(n())) {
                eVar.a(CampaignEx.JSON_KEY_HB, n());
            }
            if (!TextUtils.isEmpty(f())) {
                eVar.a("bid_tk", f());
            }
            if (!TextUtils.isEmpty(str)) {
                eVar.a("key", str);
            }
            if (Arrays.asList(b.f34749a).contains(str)) {
                eVar.a("from_cache", y() ? "1" : "2");
            }
            if ("2000047".contains(str) && (bVarP2 = p()) != null) {
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(bVarP2.c()));
                eVar.a("reason", bVarP2.g());
                if (!TextUtils.isEmpty(bVarP2.h())) {
                    eVar.a("reason_d", bVarP2.h());
                    eVar.a("type_d", Integer.valueOf(bVarP2.i()));
                }
            }
            if ("2000048".contains(str) && (bVarP = p()) != null && !TextUtils.isEmpty(bVarP.h())) {
                eVar.a(NativeComponentConstants.KEY_COMPONENT_TYPE, Integer.valueOf(bVarP.i()));
                eVar.a("reason", bVarP.h());
            }
            if (this.f34770i == 296) {
                eVar.a("auto_load", c());
                eVar.a("auto_refresh", Integer.valueOf(b()));
                eVar.a("auto_refresh_interval", Integer.valueOf(e()));
                eVar.a("content_type", Integer.valueOf(k()));
                eVar.a("temp_display_type", Integer.valueOf(v()));
            }
            a(eVar);
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
        return eVar.a();
    }

    public void a(CampaignEx campaignEx) {
        this.B = campaignEx;
        if (campaignEx == null) {
            return;
        }
        try {
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList = this.C;
            if (copyOnWriteArrayList != null && !copyOnWriteArrayList.isEmpty()) {
                for (int i10 = 0; i10 < this.C.size(); i10++) {
                    if (this.C.get(i10) != null && this.C.get(i10).getId().equals(campaignEx.getId())) {
                        this.C.set(i10, campaignEx);
                        break;
                    }
                }
            }
            CopyOnWriteArrayList<CampaignEx> copyOnWriteArrayList2 = this.f34768g;
            if (copyOnWriteArrayList2 == null || copyOnWriteArrayList2.isEmpty()) {
                return;
            }
            for (int i11 = 0; i11 < this.f34768g.size(); i11++) {
                if (this.f34768g.get(i11) != null && this.f34768g.get(i11).getId().equals(campaignEx.getId())) {
                    this.f34768g.set(i11, campaignEx);
                    return;
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    public void d(boolean z10) {
        this.f34784w = z10;
    }

    public void d(int i10) {
        this.f34787z = i10;
    }

    public c(boolean z10) {
        this.f34762a = false;
        this.f34763b = new HashMap();
        this.f34764c = new HashMap();
        this.f34765d = new HashMap();
        this.f34767f = "";
        this.f34768g = new CopyOnWriteArrayList<>();
        this.f34779r = -1;
        this.f34781t = false;
        this.f34783v = false;
        this.C = new CopyOnWriteArrayList<>();
        this.f34762a = z10;
    }

    public int a() {
        return this.f34770i;
    }

    public void a(int i10) {
        this.f34770i = i10;
    }

    public void a(String str, e eVar) {
        Map<String, String> map;
        if (TextUtils.isEmpty(str) || eVar == null) {
            return;
        }
        try {
            String str2 = this.f34767f + str;
            Map<String, Map<String, String>> map2 = this.f34763b;
            if (map2 != null) {
                if (map2.containsKey(str2) && (map = this.f34763b.get(str2)) != null) {
                    map.putAll(eVar.a());
                } else {
                    this.f34763b.put(str2, eVar.a());
                }
            }
        } catch (Exception e10) {
            if (MBridgeConstans.DEBUG) {
                e10.printStackTrace();
            }
        }
    }

    private void a(e eVar) {
        if ("2000126".equals(this.f34778q)) {
            String strA = com.mbridge.msdk.foundation.same.net.d.a(f());
            if (eVar != null) {
                eVar.a("dns_ty", Integer.valueOf(com.mbridge.msdk.setting.e.a().a(strA)));
                eVar.a("dns_hs", strA);
            }
        }
    }

    public long a(String str) {
        Map<String, Long> map;
        try {
            if (TextUtils.isEmpty(str) || (map = this.f34765d) == null || !map.containsKey(str)) {
                return 0L;
            }
            Long l10 = this.f34765d.get(str);
            return System.currentTimeMillis() - (l10 != null ? l10.longValue() : 0L);
        } catch (Exception e10) {
            if (!MBridgeConstans.DEBUG) {
                return 0L;
            }
            e10.printStackTrace();
            return 0L;
        }
    }

    public void a(com.mbridge.msdk.foundation.error.b bVar) {
        this.f34766e = bVar;
    }

    public void b(boolean z10) {
        this.f34783v = z10;
    }

    public int b() {
        return this.f34785x;
    }

    public void b(int i10) {
        this.f34785x = i10;
    }
}
