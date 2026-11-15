package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;

final class p30 implements q30 {
    @Override
    public final List<InetAddress> a(String str) throws UnknownHostException {
        y45.j(str, "hostname");
        try {
            InetAddress[] allByName = InetAddress.getAllByName(str);
            y45.i(allByName, "getAllByName(...)");
            return defpackage.hi.c1(allByName);
        } catch (NullPointerException e) {
            UnknownHostException unknownHostException = new UnknownHostException("Broken system behaviour for dns lookup of " + str);
            unknownHostException.initCause(e);
            throw unknownHostException;
        }
    }
}
