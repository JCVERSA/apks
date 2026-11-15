package defpackage;

import android.os.Bundle;
import android.os.SystemClock;
import androidx.core.os.BundleKt;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.cookie.SerializableCookie;

public abstract class dk3 {
    public static final Bundle a(uq6 uq6Var) {
        y45.j(uq6Var, "<this>");
        return BundleKt.bundleOf(abb.a("usage", Integer.valueOf(uq6Var.G())), abb.a("call_id", uq6Var.a()), abb.a("call_result_code", Integer.valueOf(uq6Var.b())), abb.a("error_code", Integer.valueOf(uq6Var.m())), abb.a("error_msg", uq6Var.n()), abb.a("server_api", uq6Var.B()), abb.a("complete_api", uq6Var.i()), abb.a("ip_address", uq6Var.q()), abb.a("req_time", Long.valueOf(uq6Var.w())), abb.a("dns_time", Long.valueOf(uq6Var.l())), abb.a("tcp_time", Long.valueOf(uq6Var.E())), abb.a("ssl_time", Long.valueOf(uq6Var.D())), abb.a("send_time", Long.valueOf(uq6Var.A())), abb.a("wait_time", Long.valueOf(uq6Var.H())), abb.a("rec_time", Long.valueOf(uq6Var.u())), abb.a("req_body_size", Long.valueOf(uq6Var.v())), abb.a("res_body_size", Long.valueOf(uq6Var.y())), abb.a("cdn_req_time", Long.valueOf(uq6Var.e())), abb.a("cdn_down_time", Long.valueOf(uq6Var.c())), abb.a("cdn_speed", uq6Var.f()), abb.a("cdn_provider", uq6Var.d()), abb.a("country", uq6Var.k()), abb.a(SerializableCookie.HOST, uq6Var.o()), abb.a(TrackingKey.IS_OFFLINE, Integer.valueOf(uq6Var.r())), abb.a("channel", uq6Var.g()), abb.a("sdk_version", uq6Var.z()), abb.a("server_time", Long.valueOf(uq6Var.C())), abb.a("protocol", uq6Var.t()), abb.a("compare_tag", uq6Var.h()), abb.a("http_type", Integer.valueOf(uq6Var.p())), abb.a("content_encoding", uq6Var.j()), abb.a("tls_version", uq6Var.F()), abb.a("request_downgrade", Integer.valueOf(uq6Var.x())));
    }

    public static final void b(String str) {
        y45.j(str, "<this>");
        wlb.a.j("NetworkMonitor", "=======/ " + str + " /=======");
    }

    public static final void c(String str) {
        y45.j(str, "<this>");
        wlb.a.h("NetworkMonitor", "=======/ " + str + " /=======");
    }

    public static final long d() {
        return SystemClock.elapsedRealtime();
    }

    public static final long e(long j) {
        return d() - j;
    }

    public static final String f(Exception exc) {
        y45.j(exc, "<this>");
        if (exc.getMessage() == null) {
            return "";
        }
        String message = exc.getMessage();
        y45.g(message);
        int iMin = Integer.min(message.length(), 200);
        String message2 = exc.getMessage();
        y45.g(message2);
        String strSubstring = message2.substring(0, iMin);
        y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final void g(uq6 uq6Var) {
        String str;
        y45.j(uq6Var, "<this>");
        wlb.a.h("NetworkMonitor", uq6Var.toString());
        if (yr4.b(uq6Var.o()) || fy7.a(uq6Var.s()) || xd9.a(uq6Var.B())) {
            str = "process_black";
        } else {
            str = (yr4.c(uq6Var.o()) || fy7.b(uq6Var.s()) || xd9.b(uq6Var.B())) ? "process_white" : "process";
        }
        new wj(str, 1814).c(a(uq6Var), null).b();
    }
}
