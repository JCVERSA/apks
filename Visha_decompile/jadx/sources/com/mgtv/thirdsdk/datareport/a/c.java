package com.mgtv.thirdsdk.datareport.a;

import android.text.TextUtils;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.BaseApplication;
import com.hunantv.imgo.data.MgtvPlayerConstants;
import com.hunantv.imgo.log.e;
import com.hunantv.imgo.net.ImgoErrorStatisticsData;
import com.hunantv.imgo.net.entity.PlayerAuthRouterEntity;
import com.hunantv.imgo.net.entity.PlayerRealUrlEntity;
import com.hunantv.media.report.ReportParams;
import com.mgtv.task.http.HttpFormatException;
import com.mgtv.thirdsdk.playcore.callback.ImgoPlayerReportInterface;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import org.json.JSONException;

public class c {
    private static final String p = "com.mgtv.thirdsdk.datareport.a.c";
    private static int q;
    protected String e;
    protected ImgoPlayerReportInterface i;
    public boolean o;
    private String r;
    private String s;
    private String t;
    private b v;
    protected boolean a = true;
    protected String b = "";
    protected String c = "";
    protected int d = 0;
    protected int f = 0;
    protected int g = 1;
    protected int h = 0;
    protected boolean j = false;
    protected boolean k = false;
    protected boolean l = true;
    protected boolean m = true;
    protected String n = "vod";
    private String w = "";
    private String x = "";
    private d u = d.a(BaseApplication.getContext());

    public c(ImgoPlayerReportInterface imgoPlayerReportInterface) {
        this.o = false;
        this.i = imgoPlayerReportInterface;
        this.o = false;
    }

    private void h() {
        boolean z;
        if (this.l) {
            g();
            ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
            if (imgoPlayerReportInterface == null || imgoPlayerReportInterface.getReportParams() == null) {
                z = false;
            } else {
                z = this.i.getReportParams().getProxyType() == ReportParams.ProxyType.ONLY_P2P;
            }
            b bVar = new b(z, this.t, false, this.h, this.g, this.i, null, String.valueOf(a()));
            this.v = bVar;
            bVar.b = this.o;
            bVar.d(this.x);
            this.v.d();
            this.l = false;
        }
    }

    public void a(boolean z) {
        this.j = z;
    }

    public void b(boolean z) {
        this.k = z;
    }

    public void c(int i) {
        this.f = i;
    }

    public void d(String str) {
        this.s = str;
    }

    public void e(String str) {
        this.c = str;
    }

    public void f(String str) {
        this.b = str;
    }

    public void g() {
        b bVar = this.v;
        if (bVar != null) {
            bVar.a();
            this.v = null;
        }
    }

    public void a(PlayerRealUrlEntity playerRealUrlEntity) {
        if (playerRealUrlEntity != null) {
            this.t = playerRealUrlEntity.info;
        }
    }

    public void b(int i) {
        this.g = i;
    }

    public void c(String str) {
        this.r = str;
    }

    public void d(boolean z) {
        this.o = z;
        b bVar = this.v;
        if (bVar != null) {
            bVar.b = z;
            bVar.d(this.x);
        }
    }

    public void e() {
        b bVar = this.v;
        if (bVar != null) {
            bVar.a();
            this.v = null;
        }
    }

    public void f() {
        b bVar = this.v;
        if (bVar != null) {
            bVar.b(this.x);
            this.l = true;
        }
    }

    public void a(String str) {
        this.t = str;
    }

    public void b(String str) {
        this.e = str;
    }

    public void c(boolean z) {
        this.a = z;
    }

    public void a(int i) {
        this.h = i;
    }

    public void b() {
        f();
        g();
    }

    public void c() {
        f();
        a(true);
    }

    public int a() {
        ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
        if (imgoPlayerReportInterface != null) {
            if (imgoPlayerReportInterface.isImgoSourceModuleOpen()) {
                return this.i.isAccurateSeekEnable() ? 32 : 30;
            }
            if (this.i.isAccurateSeekEnable()) {
                return 31;
            }
        }
        return 4;
    }

    private void c(int i, int i2) {
        String str = this.t;
        ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
        long j = imgoPlayerReportInterface != null ? imgoPlayerReportInterface.getTimeCostInfo().first_frame_cost_ms : 0L;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("tid=");
        stringBuffer.append(this.e);
        stringBuffer.append("&sid=5&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append("&du=");
        stringBuffer.append(j);
        if (!TextUtils.isEmpty(this.w)) {
            stringBuffer.append(this.w);
        }
        ImgoPlayerReportInterface imgoPlayerReportInterface2 = this.i;
        boolean z = false;
        if (imgoPlayerReportInterface2 != null && imgoPlayerReportInterface2.getReportParams() != null && this.i.getReportParams().getProxyType() == ReportParams.ProxyType.ONLY_P2P) {
            z = true;
        }
        boolean z2 = z;
        e.a(p, "sendCdn3:l==" + str, true);
        this.u.a(z2, 3, 0, this.h, "", stringBuffer.toString(), i, this.f, this.g, this.s, str, false, a(), i2, 2);
    }

    public void b(int i, int i2) {
        e.a(p, "isDispatcherOk:" + this.k, true);
        if (this.k) {
            ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
            c(1, imgoPlayerReportInterface != null ? !imgoPlayerReportInterface.isHardware() ? 1 : 0 : 1);
            this.k = false;
        }
        h();
    }

    public void d(int i) {
        ImgoPlayerReportInterface imgoPlayerReportInterface;
        if (this.v == null || i != 1 || (imgoPlayerReportInterface = this.i) == null || imgoPlayerReportInterface.isBeforeFirstFrame()) {
            return;
        }
        this.v.e();
    }

    public void d() {
        boolean z;
        if (this.j && this.l) {
            if (this.v != null) {
                g();
                ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
                if (imgoPlayerReportInterface == null || imgoPlayerReportInterface.getReportParams() == null) {
                    z = false;
                } else {
                    z = this.i.getReportParams().getProxyType() == ReportParams.ProxyType.ONLY_P2P;
                }
                b bVar = new b(z, this.t, false, this.h, this.g, this.i, null, String.valueOf(a()));
                this.v = bVar;
                bVar.b = this.o;
                bVar.d();
                this.l = false;
            }
            a(false);
        }
    }

    public void a(int i, int i2) {
        if (this.k) {
            a(-1, "3." + i + Consts.DOT + i2, 0);
            this.k = false;
        }
    }

    public void a(int i, int i2, String str) {
        ImgoPlayerReportInterface imgoPlayerReportInterface;
        if (this.v != null && (imgoPlayerReportInterface = this.i) != null && !imgoPlayerReportInterface.isBeforeFirstFrame()) {
            this.v.a("9." + i + Consts.DOT + i2);
            g();
            this.l = true;
        }
        if (this.k) {
            a(-1, "3." + i + Consts.DOT + i2, 1);
            this.k = false;
        }
    }

    public void b(String str, int i) {
        a(str, i, 0, "", "", 1, 200);
        this.k = true;
    }

    public void b(String str, String str2, int i, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        b(str, str2, true, i, bVar);
    }

    private void b(String str, String str2, boolean z, int i, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        if (str.equals(MgtvPlayerConstants.ECODE_CDN2_EXCEPTION)) {
            a(-1, "22.2000", str2, z ? 1 : 0, i, bVar.a);
        } else if (str.equals(MgtvPlayerConstants.ECODE_CDN2_INVALID_ENTITY)) {
            a(-1, "204000", z ? 1 : 0, i, bVar.a);
        } else {
            a(-1, str, z ? 1 : 0, i, bVar.a);
        }
    }

    public void a(String str, int i, int i2) {
        b bVar = this.v;
        if (bVar != null) {
            bVar.a(str, "9." + i + Consts.DOT + i2);
        }
    }

    private void a(int i, String str, String str2, String str3, boolean z, int i2, long j) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("tid=");
        stringBuffer.append(this.e);
        stringBuffer.append("&sid=2&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append(i2);
        stringBuffer.append("&du=");
        stringBuffer.append(j);
        if (!TextUtils.isEmpty(this.w)) {
            stringBuffer.append(this.w);
        }
        this.u.a(com.hunantv.imgo.util.d.a);
        this.u.a(1, i, this.h, str, stringBuffer.toString(), z ? 1 : 0, this.f, this.g, str2, str3, false, -1, 0);
    }

    private void a(int i, String str, String str2, String str3, boolean z, int i2, int i3, Throwable th) {
        StringBuffer stringBuffer = new StringBuffer();
        if (th == null) {
            stringBuffer.append("&sid=2&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i2);
        } else {
            stringBuffer.append("&sid=2&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i2);
            stringBuffer.append("&errormsg=");
            stringBuffer.append(th.getClass().getName());
        }
        this.u.a(com.hunantv.imgo.util.d.a);
        this.u.a(1, i, this.h, str, stringBuffer.toString(), z ? 1 : 0, q, i3, str2, str3, false, -1, 0);
    }

    private void a(int i, String str, int i2) {
        String str2 = this.t;
        ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
        long j = (imgoPlayerReportInterface == null || !imgoPlayerReportInterface.isBeforeFirstFrame()) ? 0L : this.i.getTimeCostInfo().error_cost_ms;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("tid=");
        stringBuffer.append(this.e);
        stringBuffer.append("&sid=5&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append("&du=");
        stringBuffer.append(j);
        if (!TextUtils.isEmpty(this.w)) {
            stringBuffer.append(this.w);
        }
        ImgoPlayerReportInterface imgoPlayerReportInterface2 = this.i;
        boolean z = false;
        if (imgoPlayerReportInterface2 != null && imgoPlayerReportInterface2.getReportParams() != null && this.i.getReportParams().getProxyType() == ReportParams.ProxyType.ONLY_P2P) {
            z = true;
        }
        this.u.a(z);
        this.u.a(3, i, this.h, str, stringBuffer.toString(), i2, this.f, this.g, "", str2, false, a(), 2);
    }

    private void a(PlayerAuthRouterEntity playerAuthRouterEntity, PlayerRealUrlEntity playerRealUrlEntity, int i, String str, int i2, String str2, int i3) {
        String str3;
        String str4;
        if (str != null) {
            str4 = str;
        } else {
            if (playerRealUrlEntity != null) {
                str3 = playerRealUrlEntity.info;
            } else {
                str3 = "";
            }
            str4 = str3;
        }
        int i4 = playerAuthRouterEntity != null ? playerAuthRouterEntity.definition : 1;
        ImgoPlayerReportInterface imgoPlayerReportInterface = this.i;
        long j = (imgoPlayerReportInterface == null || !imgoPlayerReportInterface.isBeforeFirstFrame()) ? 0L : this.i.getTimeCostInfo().error_cost_ms;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("tid=");
        stringBuffer.append(this.e);
        stringBuffer.append("&sid=5&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append("&du=");
        stringBuffer.append(j);
        if (!TextUtils.isEmpty(this.w)) {
            stringBuffer.append(this.w);
        }
        ImgoPlayerReportInterface imgoPlayerReportInterface2 = this.i;
        boolean z = false;
        if (imgoPlayerReportInterface2 != null && imgoPlayerReportInterface2.getReportParams() != null) {
            z = this.i.getReportParams().getProxyType() == ReportParams.ProxyType.ONLY_P2P;
        }
        this.u.a(z);
        this.u.a(3, i2, this.h, str2, stringBuffer.toString(), i3, i, i4, "", str4, false, a(), 2);
    }

    private void a(int i, String str, int i2, int i3, long j) {
        a(i, str, "", i2, i3, j);
    }

    private void a(int i, String str, String str2, int i2, int i3, long j) {
        if (!this.a) {
            String str3 = this.c + this.r + this.b;
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("tid=");
            stringBuffer.append(this.e);
            stringBuffer.append("&sid=4&uuid=");
            stringBuffer.append(com.hunantv.imgo.util.b.n());
            stringBuffer.append("&hc=");
            stringBuffer.append(i3);
            stringBuffer.append("&du=");
            stringBuffer.append(j);
            if (!TextUtils.isEmpty(str2)) {
                stringBuffer.append("&errorMsg=");
                stringBuffer.append(str2);
            }
            if (!TextUtils.isEmpty(this.w)) {
                stringBuffer.append(this.w);
            }
            this.u.a(com.hunantv.imgo.util.d.a);
            this.u.a(2, i, this.h, str, stringBuffer.toString(), i2, this.f, this.g, this.s, str3, false, a(), 1);
        }
        this.a = true;
    }

    private void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, int i2, String str2, String str3, int i3, int i4, long j) {
        int i5 = playerAuthRouterEntity != null ? playerAuthRouterEntity.definition : 1;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("tid=");
        stringBuffer.append(this.e);
        stringBuffer.append("&sid=4&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append(i4);
        stringBuffer.append("&du=");
        stringBuffer.append(j);
        if (!TextUtils.isEmpty(str3)) {
            stringBuffer.append("&errorMsg=");
            stringBuffer.append(str3);
        }
        if (!TextUtils.isEmpty(this.w)) {
            stringBuffer.append(this.w);
        }
        this.u.a(com.hunantv.imgo.util.d.a);
        this.u.a(2, i2, this.h, str2, stringBuffer.toString(), i3, i, i5, this.s, str, false, a(), 1);
    }

    public void a(boolean z, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        if (z) {
            a(0, "105000", this.s, bVar.b, true, 200, bVar.a);
        } else {
            a(0, "102000", "", bVar.b, true, 200, bVar.a);
        }
    }

    public void a(String str, String str2, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        a(0, str, this.s, bVar.b, true, 200, bVar.a);
    }

    public void a(String str, int i) {
        a(0, "", "", str, true, 200, i, (Throwable) null);
    }

    public void a(String str, String str2, boolean z, int i, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        a(-1, str, "", bVar.b, z, i, bVar.a);
    }

    public void a(int i, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        a(0, "", 1, 200, bVar.a);
        this.k = true;
    }

    public void a(String str, int i, int i2, Throwable th) {
        a(0, String.valueOf(i2), "", str, true, 200, i, th);
    }

    public void a(int i, String str, boolean z, Throwable th, int i2) {
        String str2;
        String str3 = "101" + i;
        boolean z2 = true;
        if (th == null) {
            str2 = str3;
        } else {
            if (!(th instanceof SocketTimeoutException)) {
                if (th instanceof UnknownHostException) {
                    str3 = "103001";
                } else if (!(th instanceof ConnectException)) {
                    if (!(th instanceof JSONException) && !(th instanceof HttpFormatException)) {
                        if (th instanceof SSLHandshakeException) {
                            str3 = "104000.1";
                        } else if (th instanceof SSLException) {
                            str3 = "104000.2";
                        } else if ((th instanceof InterruptedIOException) || (th instanceof InterruptedException)) {
                            z2 = false;
                        } else if (th instanceof IOException) {
                            str3 = ImgoErrorStatisticsData.PAY_ERR_4000;
                        }
                    } else {
                        str3 = "102000";
                    }
                }
                str2 = str3;
            }
            str2 = "103000";
        }
        if (z2) {
            a(-1, str2, "", str, z, i, i2, th);
        }
    }

    public void a(String str, int i, int i2, String str2, Throwable th) {
        if (th != null) {
            if (th instanceof SocketTimeoutException) {
                a(str, i, -1, "203000", str2, 1, i2);
                return;
            }
            if (th instanceof HttpFormatException) {
                a(str, i, -1, "202000", str2, 1, i2);
                return;
            }
            a(str, i, -1, "201" + i2, str2, 1, i2);
            return;
        }
        a(str, i, -1, "201" + i2, str2, 1, i2);
    }

    private void a(String str, int i, int i2, String str2, String str3, int i3, int i4) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("&sid=4&uuid=");
        stringBuffer.append(com.hunantv.imgo.util.b.n());
        stringBuffer.append("&hc=");
        stringBuffer.append(i4);
        if (!TextUtils.isEmpty(str3)) {
            stringBuffer.append("&errorMsg=");
            stringBuffer.append(str3);
        }
        this.u.a(com.hunantv.imgo.util.d.a);
        this.u.a(2, i2, this.h, str2, stringBuffer.toString(), i3, q, i, "", str, false, 6, 1);
    }

    public void a(int i, String str, Throwable th, boolean z, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        if (th == null) {
            if (z) {
                return;
            }
            a(-1, "201" + i, 1, i, bVar.a);
            return;
        }
        if (th instanceof SocketTimeoutException) {
            if (z) {
                return;
            }
            a(-1, "203000", 1, i, bVar.a);
        } else if (th instanceof HttpFormatException) {
            a(-1, "202000", 1, i, bVar.a);
        } else {
            if (z) {
                return;
            }
            a(-1, "201" + i, 1, i, bVar.a);
        }
    }

    public void a(String str, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        a(-1, "204000", 1, 200, bVar.a);
    }

    public void a(String str, String str2, int i, com.hunantv.imgo.net.entity.b bVar) {
        this.d++;
        if (bVar == null) {
            return;
        }
        b(str, str2, false, i, bVar);
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, String str2, String str3, boolean z, int i2, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        if (str2.equals(MgtvPlayerConstants.ECODE_CDN2_EXCEPTION)) {
            a(str, playerAuthRouterEntity, i, -1, "22.2000", str3, z ? 1 : 0, i2, bVar.a);
        } else if (str2.equals(MgtvPlayerConstants.ECODE_CDN2_INVALID_ENTITY)) {
            a(str, playerAuthRouterEntity, i, -1, "204000", "", z ? 1 : 0, i2, bVar.a);
        } else {
            a(str, playerAuthRouterEntity, i, -1, str2, "", z ? 1 : 0, i2, bVar.a);
        }
    }

    public void a(String str, PlayerAuthRouterEntity playerAuthRouterEntity, int i, int i2, com.hunantv.imgo.net.entity.b bVar) {
        if (bVar == null) {
            return;
        }
        a(str, playerAuthRouterEntity, i, 0, "", "", 1, 200, bVar.a);
    }

    public void a(PlayerAuthRouterEntity playerAuthRouterEntity, PlayerRealUrlEntity playerRealUrlEntity, int i, String str, int i2, int i3, boolean z) {
        a(playerAuthRouterEntity, playerRealUrlEntity, i, str, -1, "3." + i2 + Consts.DOT + i3, z ? 1 : 0);
    }
}
