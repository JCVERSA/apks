package com.yandex.mobile.ads.impl;

import android.content.Context;
import defpackage.y45;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.Iterator;

public final class eu1 {
    private final g5 a;
    private final kx1 b;
    private final d32 c;

    public eu1(g5 g5Var) {
        this(g5Var, new kx1(), new d32());
    }

    public final String a(Context context, jc jcVar, o50 o50Var, dl dlVar, hu1 hu1Var) {
        String hostAddress;
        int i;
        y45.j(context, "context");
        y45.j(jcVar, "advertisingConfiguration");
        y45.j(o50Var, "environmentConfiguration");
        g5 g5Var = this.a;
        f5 f5Var = f5.A;
        g5Var.getClass();
        y45.j(f5Var, "adLoadingPhaseType");
        g5Var.a(f5Var, null);
        uq uqVar = new uq(jcVar, o50Var);
        sx1.a.getClass();
        String strA = ((tx1) sx1.a.a(context)).a();
        String strA2 = zc.a().a();
        ox1.a.getClass();
        String strA3 = ox1.a.a(context).a();
        try {
            Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
            y45.i(networkInterfaces, "getNetworkInterfaces(...)");
            Iterator itY = defpackage.a81.y(networkInterfaces);
            while (true) {
                if (itY.hasNext()) {
                    Enumeration<InetAddress> inetAddresses = ((NetworkInterface) itY.next()).getInetAddresses();
                    y45.i(inetAddresses, "getInetAddresses(...)");
                    Iterator itY2 = defpackage.a81.y(inetAddresses);
                    while (true) {
                        if (itY2.hasNext()) {
                            InetAddress inetAddress = (InetAddress) itY2.next();
                            if (inetAddress instanceof Inet6Address) {
                                Inet6Address inet6Address = (Inet6Address) inetAddress;
                                y45.j(inet6Address, "<this>");
                                byte[] address = inet6Address.getAddress();
                                if (address != null && ((i = address[0] & 240) == 32 || i == 48)) {
                                    hostAddress = ((Inet6Address) inetAddress).getHostAddress();
                                }
                            }
                        }
                        hostAddress = null;
                    }
                } else {
                    hostAddress = null;
                }
                kx1 kx1Var = this.b;
                uq1 uq1Var = new uq1();
                gf1 gf1Var = new gf1(context, rs0.a(context));
                y45.j(context, "context");
                y45.j(kx1Var, "sensitiveModeChecker");
                y45.j(uqVar, "configuration");
                y45.j(uq1Var, "resourceUtils");
                y45.j(gf1Var, "optOutRepository");
                String strA4 = this.c.a(context, new fb0(fb0.b.a(context, kx1Var, uqVar, uq1Var, gf1Var).a(dlVar != null ? dlVar.a() : null).a(context, dlVar != null ? dlVar.c() : null).h(strA).i(strA2).g(strA3).d(hostAddress).a(hu1Var).a(dlVar != null ? dlVar.b() : null), 0).toString());
                g5Var.a(f5Var);
                return strA4;
            }
        } catch (Throwable unused) {
        }
    }

    public eu1(g5 g5Var, kx1 kx1Var, d32 d32Var) {
        y45.j(g5Var, "adLoadingPhasesManager");
        y45.j(kx1Var, "sensitiveModeChecker");
        y45.j(d32Var, "stringEncryptor");
        this.a = g5Var;
        this.b = kx1Var;
        this.c = d32Var;
    }
}
