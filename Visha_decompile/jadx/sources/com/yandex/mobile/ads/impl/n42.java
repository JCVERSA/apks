package com.yandex.mobile.ads.impl;

import com.lzy.okgo.cookie.SerializableCookie;
import defpackage.y45;
import java.net.InetSocketAddress;
import java.net.Socket;

public final class n42 implements ct {
    @Override
    public final boolean a(String str) {
        Socket socket;
        y45.j(str, SerializableCookie.HOST);
        try {
            socket = new Socket();
            try {
                socket.connect(new InetSocketAddress(str, 80), 5000);
                boolean zIsConnected = socket.isConnected();
                try {
                    socket.close();
                } catch (Throwable unused) {
                    sp0.c(new Object[0]);
                }
                return zIsConnected;
            } catch (Throwable unused2) {
                try {
                    sp0.c(new Object[0]);
                    if (socket != null) {
                        try {
                        } catch (Throwable unused3) {
                            sp0.c(new Object[0]);
                        }
                    }
                    return false;
                } finally {
                    if (socket != null) {
                        try {
                            socket.close();
                        } catch (Throwable unused4) {
                            sp0.c(new Object[0]);
                        }
                    }
                }
            }
        } catch (Throwable unused5) {
            socket = null;
        }
    }
}
