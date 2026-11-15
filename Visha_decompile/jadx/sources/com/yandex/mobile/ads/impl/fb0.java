package com.yandex.mobile.ads.impl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.location.Location;
import android.net.Uri;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.telephony.CellLocation;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import com.hisavana.common.tracking.TrackingKey;
import com.hunantv.media.player.subtitle.MediaFormat;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import defpackage.c0a;
import defpackage.c74;
import defpackage.f1a;
import defpackage.g1a;
import defpackage.j1a;
import defpackage.ky5;
import defpackage.my5;
import defpackage.pc9;
import defpackage.s86;
import defpackage.u95;
import defpackage.y45;
import defpackage.yi5;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import io.appmetrica.analytics.networktasks.internal.CommonUrlParts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.jvm.internal.Lambda;
import kotlin.sequences.SequencesKt___SequencesKt;

public final class fb0 {
    private final z7 a;
    private final v50 b;
    private final pc9 c;
    private final pc9 d;
    private final yi5 e;

    public static final class a {
        private Integer A;
        private String A0;
        private Integer B;
        private String B0;
        private Float C;
        private String C0;
        private Integer D;
        private String D0;
        private Integer E;
        private String E0;
        private String F;
        private Boolean F0;
        private String G;
        private String G0;
        private v7 H;
        private String H0;
        private Integer I;
        private String I0;
        private Integer J;
        private String J0;
        private String K;
        private String K0;
        private Boolean L;
        private String L0;
        private Boolean M;
        private Boolean M0;
        private String N;
        private Boolean N0;
        private Boolean O;
        private Boolean O0;
        private String P;
        private Integer Q;
        private Boolean R;
        private String S;
        private String T;
        private String U;
        private String V;
        private String W;
        private Long X;
        private String Y;
        private String Z;
        private final boolean a;
        private String a0;
        private String b0;
        private String c0;
        private String d0;
        private String e0;
        private boolean f;
        private String f0;
        private String g0;
        private String h0;
        private Boolean i;
        private String i0;
        private Boolean j;
        private String j0;
        private String k;
        private String k0;
        private Integer l;
        private String l0;
        private boolean m;
        private String m0;
        private String n;
        private List<String> n0;
        private String o;
        private String o0;
        private String p;
        private String p0;
        private String q;
        private String q0;
        private String r;
        private String r0;
        private String s;
        private int s0;
        private String t;
        private float t0;
        private String u;
        private float u0;
        private Integer v;
        private float v0;
        private Integer w;
        private float w0;
        private String x;
        private String x0;
        private String y;
        private String y0;
        private Location z;
        private String z0;
        private final j10 b = new j10(0);
        private final tf c = new tf();
        private final ww1 d = new ww1();
        private final kc e = new kc();
        private final HashMap g = new HashMap();
        private final HashMap h = new HashMap();

        public a(boolean z) {
            this.a = z;
        }

        public final String A() {
            return this.g0;
        }

        public final Boolean A0() {
            return this.i;
        }

        public final Boolean B() {
            return this.M;
        }

        public final String B0() {
            return this.a0;
        }

        public final String C() {
            return this.n;
        }

        public final String C0() {
            return this.s;
        }

        public final String D() {
            return this.o;
        }

        public final String D0() {
            return this.q;
        }

        public final String E() {
            return this.y0;
        }

        public final String E0() {
            return this.E0;
        }

        public final Boolean F() {
            return this.M0;
        }

        public final Boolean F0() {
            return this.O0;
        }

        public final String G() {
            return this.N;
        }

        public final Boolean G0() {
            return this.F0;
        }

        public final Boolean H() {
            return this.L;
        }

        public final Integer H0() {
            return this.v;
        }

        public final boolean I() {
            return this.f;
        }

        public final String I0() {
            return this.K;
        }

        public final String J() {
            return this.d0;
        }

        public final Boolean J0() {
            return this.R;
        }

        public final Integer K() {
            return this.w;
        }

        public final a K0() {
            int i = pw1.l;
            this.j = pw1.a.a().f();
            return this;
        }

        public final String L() {
            return this.P;
        }

        public final a L0() {
            this.B0 = this.c.a();
            return this;
        }

        public final Boolean M() {
            return this.O;
        }

        public final a M0() {
            this.Y = "UTF-8";
            return this;
        }

        public final String N() {
            return this.U;
        }

        public final a N0() {
            this.Z = null;
            return this;
        }

        public final String O() {
            return this.K0;
        }

        public final a O0() {
            or orVar = new or(new ap0());
            y45.j(orVar, "connectedIdsProvider");
            ArrayList arrayListA = orVar.a();
            u95.a aVar = u95.d;
            aVar.a();
            this.f0 = aVar.b(new defpackage.zg(c0a.a), arrayListA);
            return this;
        }

        public final Integer P() {
            return this.J;
        }

        public final a P0() {
            this.z0 = this.d.a();
            this.A0 = this.d.b();
            return this;
        }

        public final String Q() {
            return this.l0;
        }

        public final a Q0() {
            int i = pw1.l;
            this.i = pw1.a.a().j();
            return this;
        }

        public final Location R() {
            return this.z;
        }

        public final a R0() {
            this.a0 = null;
            return this;
        }

        public final String S() {
            return this.j0;
        }

        public final String T() {
            return this.k;
        }

        public final Integer U() {
            return this.D;
        }

        public final Integer V() {
            return this.E;
        }

        public final String W() {
            return this.k0;
        }

        public final String X() {
            return this.F;
        }

        public final String Y() {
            return this.b0;
        }

        public final Boolean Z() {
            return this.N0;
        }

        public final v7 a() {
            return this.H;
        }

        public final String a0() {
            return this.y;
        }

        public final String b() {
            return this.x;
        }

        public final String b0() {
            return this.h0;
        }

        public final String c() {
            return this.u;
        }

        public final String c0() {
            return this.i0;
        }

        public final String d() {
            return this.t;
        }

        public final HashMap d0() {
            return this.h;
        }

        public final String e() {
            return this.r;
        }

        public final List<String> e0() {
            return this.n0;
        }

        public final HashMap f() {
            return this.g;
        }

        public final String f0() {
            return this.C0;
        }

        public final Integer g() {
            return this.l;
        }

        public final String g0() {
            return this.e0;
        }

        public final String h() {
            return this.x0;
        }

        public final String h0() {
            return this.p;
        }

        public final Boolean i() {
            return this.j;
        }

        public final String i0() {
            return this.V;
        }

        public final String j() {
            return this.o0;
        }

        public final float j0() {
            return this.w0;
        }

        public final String k() {
            return this.m0;
        }

        public final float k0() {
            return this.t0;
        }

        public final String l() {
            return this.B0;
        }

        public final float l0() {
            return this.v0;
        }

        public final String m() {
            return this.p0;
        }

        public final float m0() {
            return this.u0;
        }

        public final String n() {
            return this.q0;
        }

        public final Float n0() {
            return this.C;
        }

        public final String o() {
            return this.c0;
        }

        public final int o0() {
            return this.s0;
        }

        public final Integer p() {
            return this.Q;
        }

        public final Integer p0() {
            return this.B;
        }

        public final String q() {
            return this.G;
        }

        public final Integer q0() {
            return this.A;
        }

        public final Integer r() {
            return this.I;
        }

        public final String r0() {
            return this.z0;
        }

        public final String s() {
            return this.Y;
        }

        public final String s0() {
            return this.A0;
        }

        public final boolean t() {
            return this.m;
        }

        public final String t0() {
            return this.J0;
        }

        public final String u() {
            return this.f0;
        }

        public final String u0() {
            return this.I0;
        }

        public final String v() {
            return this.S;
        }

        public final Long v0() {
            return this.X;
        }

        public final String w() {
            return this.T;
        }

        public final String w0() {
            return this.W;
        }

        public final String x() {
            return this.Z;
        }

        public final String x0() {
            return this.G0;
        }

        public final String y() {
            return this.r0;
        }

        public final String y0() {
            return this.L0;
        }

        public final String z() {
            return this.D0;
        }

        public final String z0() {
            return this.H0;
        }

        public final a a(v7 v7Var) {
            String strDecode;
            if (v7Var != null) {
                String strDecode2 = null;
                this.H = this.a ? null : v7Var;
                String strC = v7Var.c();
                if (strC == null || strC.length() == 0) {
                    strDecode = null;
                } else {
                    String strEncode = Uri.encode(strC);
                    if (strEncode != null && strEncode.length() > 1024) {
                        int i = an1.b;
                        an1.a("Exceeded the length of the parameter! The maximum size of the parameter is %s bytes. First %s bytes of the parameter will be used", 1024, 1024);
                        String strEncode2 = Uri.encode(" ");
                        String strSubstring = strEncode.substring(0, 1024);
                        y45.i(strSubstring, "substring(...)");
                        y45.g(strEncode2);
                        boolean zQ = g1a.Q(strEncode, strEncode2, 1024, false, 4, null);
                        int iS0 = j1a.s0(strSubstring, strEncode2, 0, false, 6, null);
                        if (zQ || iS0 < 0) {
                            strEncode = strSubstring;
                        } else {
                            strEncode = strSubstring.substring(0, iS0);
                            y45.i(strEncode, "substring(...)");
                        }
                    }
                    strDecode = Uri.decode(strEncode);
                }
                this.S = strDecode;
                List<String> listD = v7Var.d();
                String string = "";
                if (listD != null) {
                    StringBuilder sb = new StringBuilder();
                    for (String str : listD) {
                        sb.append(string);
                        sb.append(str);
                        sb.append("\n");
                        string = "3";
                    }
                    string = sb.toString();
                    y45.i(string, "toString(...)");
                }
                if (string.length() != 0) {
                    String strEncode3 = Uri.encode(string);
                    if (strEncode3 != null && strEncode3.length() > 2048) {
                        int i2 = an1.b;
                        an1.a("Exceeded the length of the parameter! The maximum size of the parameter is %s bytes. First %s bytes of the parameter will be used", 2048, 2048);
                        String strEncode4 = Uri.encode("\n");
                        strEncode3 = strEncode3.substring(0, 2048);
                        y45.i(strEncode3, "substring(...)");
                        y45.g(strEncode4);
                        int iS1 = j1a.s0(strEncode3, strEncode4, 0, false, 6, null);
                        if (!g1a.D(strEncode3, strEncode4, false, 2, null) && iS1 >= 0) {
                            strEncode3 = strEncode3.substring(0, iS1);
                            y45.i(strEncode3, "substring(...)");
                        }
                    }
                    strDecode2 = Uri.decode(strEncode3);
                }
                this.T = strDecode2;
                this.x0 = b8.a(v7Var.b());
                this.y0 = b8.a(v7Var.e());
                this.b0 = v7Var.g();
                nq1 nq1VarI = v7Var.i();
                if (nq1VarI != null) {
                    this.C0 = b8.a(nq1VarI.a());
                }
                a(b8.a(v7Var.h()));
            }
            return this;
        }

        public final a b(Context context) {
            y45.j(context, "context");
            y45.j(context, "context");
            String packageName = context.getPackageName();
            y45.i(packageName, "getPackageName(...)");
            this.o0 = packageName;
            this.p0 = te.a(context);
            this.q0 = te.b(context);
            return this;
        }

        public final a c(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.m = ((kq) iq.a.a(context)).e();
            return this;
        }

        public final a d(Context context) {
            y45.j(context, "context");
            this.D0 = (new pv(context).a() ? nq1.d : nq1.c).a();
            return this;
        }

        public final a e(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.n = ((kq) iq.a.a(context)).a();
            return this;
        }

        public final a f(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.o = ((kq) iq.a.a(context)).b();
            return this;
        }

        public final a g(Context context) {
            Integer numValueOf;
            Integer numValueOf2;
            y45.j(context, "context");
            y45.j(context, "context");
            String string = null;
            try {
                Object systemService = context.getSystemService("phone");
                y45.h(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                CellLocation cellLocation = ((TelephonyManager) systemService).getCellLocation();
                y45.h(cellLocation, "null cannot be cast to non-null type android.telephony.gsm.GsmCellLocation");
                int cid = ((GsmCellLocation) cellLocation).getCid();
                numValueOf = -1 != cid ? Integer.valueOf(cid & 65535) : null;
            } catch (Exception unused) {
            }
            this.I = numValueOf;
            y45.j(context, "context");
            try {
                Object systemService2 = context.getSystemService("phone");
                y45.h(systemService2, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                CellLocation cellLocation2 = ((TelephonyManager) systemService2).getCellLocation();
                y45.h(cellLocation2, "null cannot be cast to non-null type android.telephony.gsm.GsmCellLocation");
                int lac = ((GsmCellLocation) cellLocation2).getLac();
                numValueOf2 = -1 != lac ? Integer.valueOf(lac & 65535) : null;
            } catch (Exception unused2) {
            }
            this.J = numValueOf2;
            y45.j(context, "context");
            try {
                Object systemService3 = context.getApplicationContext().getSystemService("wifi");
                y45.h(systemService3, "null cannot be cast to non-null type android.net.wifi.WifiManager");
                WifiManager wifiManager = (WifiManager) systemService3;
                if (wifiManager.isWifiEnabled()) {
                    List<ScanResult> scanResults = wifiManager.getScanResults();
                    if (scanResults == null) {
                        scanResults = defpackage.y71.k();
                    }
                    List listT0 = defpackage.i81.T0(scanResults, new hh1());
                    if (!listT0.isEmpty()) {
                        StringBuilder sb = new StringBuilder();
                        int iMin = Math.min(3, listT0.size());
                        int i = 0;
                        while (i < iMin) {
                            sb.append(((ScanResult) listT0.get(i)).BSSID);
                            sb.append(StringUtils.COMMA);
                            sb.append(((ScanResult) listT0.get(i)).level);
                            i++;
                            sb.append(i < iMin ? ProcessInfo.SPLIT_NEW_VERSION : "");
                        }
                        string = sb.toString();
                    }
                }
            } catch (Exception unused3) {
            }
            this.K = string;
            return this;
        }

        public final a h(Context context) {
            y45.j(context, "context");
            int i = xs0.h;
            this.z = this.a ? null : xs0.a.a(context).c();
            return this;
        }

        public final a i(Context context) {
            Integer numR;
            Integer numR2;
            y45.j(context, "context");
            y45.j(context, "context");
            String str = null;
            try {
                Object systemService = context.getSystemService("phone");
                y45.h(systemService, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                String networkOperator = ((TelephonyManager) systemService).getNetworkOperator();
                y45.i(networkOperator, "getNetworkOperator(...)");
                String strSubstring = networkOperator.substring(0, 3);
                y45.i(strSubstring, "substring(...)");
                numR = f1a.r(strSubstring);
            } catch (Exception unused) {
                numR = null;
            }
            this.D = numR;
            y45.j(context, "context");
            try {
                Object systemService2 = context.getSystemService("phone");
                y45.h(systemService2, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                String networkOperator2 = ((TelephonyManager) systemService2).getNetworkOperator();
                y45.i(networkOperator2, "getNetworkOperator(...)");
                String strSubstring2 = networkOperator2.substring(3);
                y45.i(strSubstring2, "substring(...)");
                numR2 = f1a.r(strSubstring2);
            } catch (Exception unused2) {
                numR2 = null;
            }
            this.E = numR2;
            this.F = ih1.a(context);
            y45.j(context, "context");
            try {
                Object systemService3 = context.getSystemService("phone");
                y45.h(systemService3, "null cannot be cast to non-null type android.telephony.TelephonyManager");
                String networkOperatorName = ((TelephonyManager) systemService3).getNetworkOperatorName();
                if (networkOperatorName.length() != 0) {
                    str = networkOperatorName;
                }
            } catch (Exception unused3) {
            }
            this.G = str;
            return this;
        }

        public final a j(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.p = ((kq) iq.a.a(context)).c();
            return this;
        }

        public final a k(Context context) {
            y45.j(context, "context");
            t10 t10VarA = ik2.a(context);
            this.t0 = t10VarA.c();
            this.u0 = t10VarA.e();
            this.v0 = t10VarA.d();
            this.w0 = t10VarA.b();
            return this;
        }

        public final a l(Context context) {
            y45.j(context, "context");
            this.A = Integer.valueOf(wh2.c(context));
            this.B = Integer.valueOf(wh2.b(context));
            this.C = Float.valueOf(eb0.a(context, "context").density);
            this.s0 = wh2.a(context);
            return this;
        }

        public final a m(Context context) {
            y45.j(context, "context");
            int i = pw1.l;
            ju1 ju1VarA = pw1.a.a().a(context);
            if (ju1VarA != null) {
                this.G0 = ju1VarA.O();
            }
            return this;
        }

        public final a n(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.q = ((kq) iq.a.a(context)).f();
            return this;
        }

        public final a o(Context context) {
            y45.j(context, "context");
            this.F0 = Boolean.valueOf(oa.a(context));
            return this;
        }

        public final a c(String str) {
            this.d0 = str;
            return this;
        }

        public final a e(String str) {
            this.k = str;
            return this;
        }

        public final a f(String str) {
            this.e0 = str;
            return this;
        }

        public final a h(String str) {
            this.I0 = str;
            return this;
        }

        public final a j(String str) {
            this.s = str;
            return this;
        }

        public final a d(String str) {
            this.K0 = str;
            return this;
        }

        public final a b(String str) {
            this.c0 = str;
            return this;
        }

        public final a b(Integer num) {
            this.Q = num;
            return this;
        }

        public final a b(boolean z) {
            this.N0 = z ? Boolean.valueOf(z) : null;
            return this;
        }

        public final a b(Map<String, String> map) {
            if (map != null) {
                this.h.putAll(map);
            }
            return this;
        }

        public final a i(String str) {
            this.H0 = str;
            return this;
        }

        public final a g(String str) {
            this.J0 = str;
            return this;
        }

        public final a a(ts tsVar) {
            if (tsVar != null) {
                this.u = tsVar.a();
            }
            return this;
        }

        public final a a(String str) {
            this.t = str;
            return this;
        }

        public final a a(Context context) {
            y45.j(context, "context");
            iq.a.getClass();
            this.r = ((kq) iq.a.a(context)).d();
            return this;
        }

        public final a a(Map<String, String> map) {
            if (map != null) {
                this.g.putAll(map);
            }
            return this;
        }

        public final a a(Integer num) {
            this.l = num;
            return this;
        }

        public final a a(Context context, String str) {
            y45.j(context, "context");
            this.g0 = this.b.b(context);
            this.b.getClass();
            this.h0 = ConstantDeviceInfo.APP_PLATFORM;
            this.b.getClass();
            this.i0 = Build.VERSION.RELEASE;
            this.b.getClass();
            this.j0 = j10.a();
            this.b.getClass();
            this.k0 = Build.MODEL;
            this.l0 = this.b.c(context);
            this.m0 = this.b.a(context);
            this.n0 = this.b.d(context);
            if (this.a) {
                str = null;
            }
            this.r0 = str;
            this.R = Boolean.valueOf(this.b.c());
            return this;
        }

        public final a a(lc lcVar, boolean z) {
            if (lcVar != null) {
                this.L = Boolean.valueOf(lcVar.b());
                this.M = Boolean.valueOf(z);
                String strA = lcVar.a();
                this.e.getClass();
                boolean z2 = (strA == null || strA.length() == 0 || y45.e("00000000-0000-0000-0000-000000000000", strA)) ? false : true;
                if (!this.a && y45.e(this.L, Boolean.FALSE) && z2) {
                    this.N = strA;
                }
            }
            return this;
        }

        public final a a(o50 o50Var) {
            y45.j(o50Var, "environmentConfiguration");
            this.M0 = Boolean.valueOf(o50Var.c());
            return this;
        }

        public final a a(boolean z) {
            this.f = z;
            return this;
        }

        public final a a(lc lcVar) {
            if (lcVar != null) {
                this.O = Boolean.valueOf(lcVar.b());
                String strA = lcVar.a();
                this.e.getClass();
                boolean z = (strA == null || strA.length() == 0 || y45.e("00000000-0000-0000-0000-000000000000", strA)) ? false : true;
                if (!this.a && y45.e(this.O, Boolean.FALSE) && z) {
                    this.P = strA;
                }
            }
            return this;
        }

        public final a a(List<String> list) {
            this.U = list != null ? defpackage.i81.y0(list, StringUtils.COMMA, null, null, 0, null, null, 62, null) : null;
            return this;
        }

        public final a a(int i) {
            String str;
            if (1 == i) {
                str = "portrait";
            } else {
                str = "landscape";
            }
            this.y = str;
            return this;
        }

        public final a a(ca1 ca1Var) {
            if (ca1Var != null) {
                this.V = ca1Var.a();
            }
            return this;
        }

        public final a a(long j) {
            this.X = Long.valueOf(j);
            return this;
        }

        public final a a(Context context, gz1 gz1Var) {
            y45.j(context, "context");
            if (gz1Var != null) {
                this.x = gz1Var.a().a();
                this.v = Integer.valueOf(gz1Var.c(context));
                this.w = Integer.valueOf(gz1Var.a(context));
            }
            return this;
        }

        public final a a(fa1 fa1Var) {
            if (fa1Var != null && fa1.d == fa1Var) {
                this.W = fa1Var.a();
            }
            return this;
        }

        public final a a(hu1 hu1Var) {
            this.L0 = hu1Var != null ? hu1Var.a() : null;
            return this;
        }

        public final a a(Context context, o3 o3Var) {
            String strA;
            y45.j(context, "context");
            y45.j(o3Var, "adConfiguration");
            String strC = o3Var.c();
            int iO = o3Var.o();
            if (strC != null && (strA = new qh2(context).a(new sh2(iO, strC))) != null) {
                this.E0 = strA;
            }
            return this;
        }

        public final a a(Boolean bool) {
            this.O0 = bool;
            return this;
        }
    }

    public static final class b {
        private b() {
        }

        public static a a(Context context, kx1 kx1Var, uq uqVar, uq1 uq1Var, gf1 gf1Var) {
            y45.j(context, "context");
            y45.j(kx1Var, "sensitiveModeChecker");
            y45.j(uqVar, "configuration");
            y45.j(uq1Var, "resourceUtils");
            y45.j(gf1Var, "optOutRepository");
            o50 o50VarB = uqVar.b();
            jc jcVarA = uqVar.a();
            a aVarA = new a(kx1Var.b(context)).b(context).L0().a(jcVarA.a(), jcVarA.b()).a(jcVarA.c());
            y45.j(context, "context");
            Integer numValueOf = null;
            try {
                Intent intentRegisterReceiver = context.getApplicationContext().registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
                if (intentRegisterReceiver != null) {
                    int intExtra = intentRegisterReceiver.getIntExtra(MediaFormat.KEY_LEVEL, -1);
                    int intExtra2 = intentRegisterReceiver.getIntExtra("scale", -1);
                    if (intExtra > -1 && intExtra2 > 0) {
                        numValueOf = Integer.valueOf(s86.c((intExtra / intExtra2) * 100));
                    }
                }
            } catch (Exception unused) {
                sp0.c(new Object[0]);
            }
            a aVarA2 = aVarA.b(numValueOf).M0().g(context).h(context).i(context).l(context).k(context).P0().a(kx1.a(context)).a(oa.a());
            o50VarB.getClass();
            a aVarQ0 = aVarA2.N0().a(context, o50VarB.b()).j(o50VarB.g()).e(o50VarB.e()).a(uqVar.c()).d(context).Q0();
            uq1Var.getClass();
            y45.j(context, "context");
            return aVarQ0.a(context.getResources().getConfiguration().orientation).K0().e(context).f(context).c(context).j(context).n(context).a(context).o(context).m(context).a(o50VarB).b(gf1Var.a()).a(ih1.c(context)).O0();
        }

        public b(int i) {
            this();
        }

        public static a a(Context context, o3 o3Var, kx1 kx1Var) {
            uq1 uq1Var = new uq1();
            gf1 gf1Var = new gf1(context, rs0.a(context));
            y45.j(context, "context");
            y45.j(o3Var, "adConfiguration");
            y45.j(kx1Var, "sensitiveModeChecker");
            y45.j(uq1Var, "resourceUtils");
            y45.j(gf1Var, "optOutRepository");
            return a(context, kx1Var, o3Var.g(), uq1Var, gf1Var).a(o3Var.a()).a(o3Var.b()).a(o3Var.d()).a(o3Var.c()).a(o3Var.p()).a(context, o3Var.r()).a(o3Var.s()).R0().b(o3Var.f()).c(o3Var.l()).f(o3Var.n()).a(o3Var.o()).a(context, o3Var);
        }
    }

    public static final class c extends Lambda implements c74 {
        public c() {
            super(0);
        }

        @Override
        public final Object invoke() {
            return SequencesKt___SequencesKt.P(SequencesKt___SequencesKt.W(fb0.this.c, fb0.this.d), "&", null, null, 0, null, gb0.b, 30, null);
        }
    }

    private fb0(a aVar) {
        z7 z7Var = new z7();
        this.a = z7Var;
        this.b = new v50();
        Map<String, Object> mapE = ky5.e();
        a(mapE, "ad_unit_id", aVar.d());
        a(mapE, "width", aVar.H0());
        a(mapE, "height", aVar.K());
        a(mapE, "ad_size_type", aVar.b());
        a(mapE, "orientation", aVar.a0());
        a(mapE, "ads_count", aVar.g());
        a(mapE, CommonUrlParts.SCREEN_WIDTH, aVar.q0());
        a(mapE, CommonUrlParts.SCREEN_HEIGHT, aVar.p0());
        a(mapE, CommonUrlParts.SCALE_FACTOR, aVar.n0());
        a(mapE, TrackingKey.AD_TYPE, aVar.c());
        a(mapE, DownloadFacadeEnum.NETWORK_TYPE, aVar.X());
        a(mapE, "carrier", aVar.q());
        a(mapE, "dnt", aVar.H());
        a(mapE, "gaid_reset", aVar.B());
        a(mapE, "huawei_dnt", aVar.M());
        a(mapE, "battery_charge", aVar.p());
        a(mapE, "image_sizes", aVar.N());
        a(mapE, "response_ad_format", aVar.i0());
        a(mapE, "ad_source", aVar.w0());
        a(mapE, "debug_uid", aVar.x());
        a(mapE, TranSearchIndexablesContract.TranRawData.COLUMN_USER_ID, aVar.B0());
        a(mapE, "open_bidding_data", aVar.Y());
        a(mapE, "session_random", aVar.v0());
        a(mapE, "charset", aVar.s());
        a(mapE, z7Var.b(), aVar.A());
        a(mapE, z7Var.f(), aVar.b0());
        a(mapE, z7Var.g(), aVar.c0());
        a(mapE, z7Var.d(), aVar.S());
        a(mapE, z7Var.e(), aVar.W());
        a(mapE, z7Var.c(), aVar.J0());
        a(mapE, CommonUrlParts.LOCALE, aVar.Q());
        a(mapE, "content_language", aVar.k());
        List<String> listE0 = aVar.e0();
        a(mapE, "device_languages", listE0 != null ? defpackage.i81.y0(listE0, StringUtils.PROCESS_POSTFIX_DELIMITER, null, null, 0, null, null, 62, null) : null);
        a(mapE, "app_id", aVar.j());
        a(mapE, "app_version_code", aVar.m());
        a(mapE, CommonUrlParts.APP_VERSION, aVar.n());
        a(mapE, "appmetrica_version", aVar.l());
        a(mapE, CommonUrlParts.SCREEN_DPI, Integer.valueOf(aVar.o0()));
        a(mapE, "safe_area_inset_left", Float.valueOf(aVar.k0()));
        a(mapE, "safe_area_inset_top", Float.valueOf(aVar.m0()));
        a(mapE, "safe_area_inset_right", Float.valueOf(aVar.l0()));
        a(mapE, "safe_area_inset_bottom", Float.valueOf(aVar.j0()));
        a(mapE, "user_consent", aVar.A0());
        a(mapE, "gdpr", aVar.C());
        a(mapE, "gdpr_consent", aVar.D());
        a(mapE, "cmp_present", Boolean.valueOf(aVar.t()));
        a(mapE, "parsed_purpose_consents", aVar.h0());
        a(mapE, "parsed_vendor_consents", aVar.D0());
        a(mapE, "addtl_consent", aVar.e());
        a(mapE, "bidding_data", aVar.J());
        a(mapE, "prefetched_mediation_data", aVar.g0());
        a(mapE, "connected_network_ids", aVar.u());
        a(mapE, "sdk_version", aVar.r0());
        a(mapE, "sdk_version_name", aVar.s0());
        a(mapE, "sdk_vendor", "yandex");
        a(mapE, "preferred_theme", aVar.f0());
        a(mapE, "device_theme", aVar.z());
        a(mapE, "age_restricted_user", aVar.i());
        a(mapE, "view_size_info", aVar.E0());
        a(mapE, "web_view_available", aVar.G0());
        a(mapE, "startup_version", aVar.x0());
        a(mapE, "session-data", aVar.u0());
        a(mapE, "user-agent", aVar.z0());
        a(mapE, "server_side_client_ip", aVar.t0());
        a(mapE, "ipv6", aVar.O());
        a(mapE, "stub_reason", aVar.y0());
        a(mapE, "gms_available", aVar.F());
        a(mapE, "opt_out", aVar.Z());
        a(mapE, "vpn_enabled", aVar.F0());
        a(mapE, aVar.d0());
        a(mapE, aVar);
        this.c = my5.D(ky5.d(mapE));
        Map<String, Object> mapE2 = ky5.e();
        for (Map.Entry entry : aVar.f().entrySet()) {
            a(mapE2, (String) entry.getKey(), entry.getValue());
        }
        this.d = my5.D(ky5.d(mapE2));
        this.e = kotlin.b.a(new c());
    }

    public final String toString() {
        return (String) this.e.getValue();
    }

    private final void a(Map<String, Object> map, a aVar) {
        if (aVar.I()) {
            return;
        }
        a(map, "age", aVar.h());
        a(map, "gender", aVar.E());
        a(map, "context_query", aVar.v());
        a(map, "context_taglist", aVar.w());
        a(map, "google_aid", aVar.G());
        a(map, "huawei_oaid", aVar.L());
        a(map, "uuid", aVar.C0());
        a(map, "mauid", aVar.T());
        a(map, "autograb", aVar.o());
        a(map, this.a.a(), aVar.y());
        a(map, "mcc", aVar.U());
        a(map, "mnc", aVar.V());
        a(map, "cellid", aVar.r());
        a(map, "lac", aVar.P());
        a(map, "wifi", aVar.I0());
        v7 v7VarA = aVar.a();
        Location locationF = v7VarA != null ? v7VarA.f() : null;
        if (locationF != null) {
            int i = pw1.l;
            if (pw1.a.a().d()) {
                a(map, "lat", String.valueOf(locationF.getLatitude()));
                a(map, "lon", String.valueOf(locationF.getLongitude()));
                a(map, "location_timestamp", String.valueOf(locationF.getTime()));
                a(map, "precision", String.valueOf((int) locationF.getAccuracy()));
                return;
            }
            return;
        }
        Location locationR = aVar.R();
        if (locationR != null) {
            int i2 = pw1.l;
            if (pw1.a.a().d()) {
                a(map, "lat", String.valueOf(locationR.getLatitude()));
                a(map, "lon", String.valueOf(locationR.getLongitude()));
                a(map, "location_timestamp", String.valueOf(locationR.getTime()));
                a(map, "precision", String.valueOf((int) locationR.getAccuracy()));
            }
        }
    }

    private final void a(Map map, HashMap map2) {
        for (Map.Entry entry : map2.entrySet()) {
            a((Map<String, Object>) map, (String) entry.getKey(), (String) entry.getValue());
        }
    }

    private final void a(Map<String, Object> map, String str, Boolean bool) {
        if (bool != null) {
            a(map, str, Integer.valueOf(bool.booleanValue() ? 1 : 0));
        }
    }

    private final void a(Map<String, Object> map, String str, Object obj) {
        String strEncode;
        if (obj != null) {
            String strEncode2 = Uri.encode(str);
            if (this.b.a(str)) {
                strEncode = Uri.encode(obj.toString());
            } else {
                strEncode = Uri.encode(obj.toString(), StringUtils.PROCESS_POSTFIX_DELIMITER);
            }
            y45.g(strEncode2);
            y45.g(strEncode);
            map.put(strEncode2, strEncode);
        }
    }

    public fb0(a aVar, int i) {
        this(aVar);
    }
}
