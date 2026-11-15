package com.yandex.mobile.ads.impl;

import androidx.core.app.NotificationCompat;
import defpackage.y45;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.util.List;

public abstract class w50 {
    public static final a a = new a();

    public static final class a extends w50 {
    }

    public interface b {
        w50 a(nn nnVar);
    }

    public static void a(nn nnVar) {
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
    }

    public static void b(zn1 zn1Var, InetSocketAddress inetSocketAddress, Proxy proxy) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
    }

    public static void a(nn nnVar, IOException iOException) {
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
        y45.j(iOException, "ioe");
    }

    public static void a(zn1 zn1Var, InetSocketAddress inetSocketAddress, Proxy proxy) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
    }

    public static void a(zn1 zn1Var, InetSocketAddress inetSocketAddress, Proxy proxy, IOException iOException) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
        y45.j(inetSocketAddress, "inetSocketAddress");
        y45.j(proxy, "proxy");
        y45.j(iOException, "ioe");
    }

    public static void a(nn nnVar, ao1 ao1Var) {
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
        y45.j(ao1Var, "connection");
    }

    public static void a(nn nnVar, String str, List list) {
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
        y45.j(str, "domainName");
        y45.j(list, "inetAddressList");
    }

    public static void a(nn nnVar, String str) {
        y45.j(nnVar, NotificationCompat.CATEGORY_CALL);
        y45.j(str, "domainName");
    }

    public static void a(zn1 zn1Var) {
        y45.j(zn1Var, NotificationCompat.CATEGORY_CALL);
    }
}
