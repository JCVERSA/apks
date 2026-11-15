package com.yandex.mobile.ads.impl;

import androidx.media3.exoplayer.rtsp.RtspHeaders;
import defpackage.g1a;
import defpackage.y45;
import java.io.IOException;
import java.net.Authenticator;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.PasswordAuthentication;
import java.net.Proxy;
import java.net.SocketAddress;
import java.util.List;

public final class nq0 implements ci {

    public class a {
        public static final int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            a = iArr;
        }
    }

    public nq0(q30 q30Var) {
        y45.j(q30Var, "defaultDns");
    }

    @Override
    public final vp1 a(vs1 vs1Var, vq1 vq1Var) throws IOException {
        Proxy proxyB;
        q30 q30VarC;
        InetAddress address;
        PasswordAuthentication passwordAuthenticationRequestPasswordAuthentication;
        InetAddress address2;
        ab abVarA;
        y45.j(vq1Var, "response");
        List<go> listC = vq1Var.c();
        vp1 vp1VarO = vq1Var.o();
        gi0 gi0VarG = vp1VarO.g();
        boolean z = vq1Var.d() == 407;
        if (vs1Var == null || (proxyB = vs1Var.b()) == null) {
            proxyB = Proxy.NO_PROXY;
        }
        for (go goVar : listC) {
            if (g1a.E("Basic", goVar.c(), true)) {
                if (vs1Var == null || (abVarA = vs1Var.a()) == null || (q30VarC = abVarA.c()) == null) {
                    q30VarC = q30.a;
                }
                if (z) {
                    SocketAddress socketAddressAddress = proxyB.address();
                    y45.h(socketAddressAddress, "null cannot be cast to non-null type java.net.InetSocketAddress");
                    InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
                    String hostName = inetSocketAddress.getHostName();
                    y45.g(proxyB);
                    Proxy.Type type = proxyB.type();
                    if (type != null && a.a[type.ordinal()] == 1) {
                        address2 = (InetAddress) defpackage.i81.o0(q30VarC.a(gi0VarG.g()));
                    } else {
                        SocketAddress socketAddressAddress2 = proxyB.address();
                        y45.h(socketAddressAddress2, "null cannot be cast to non-null type java.net.InetSocketAddress");
                        address2 = ((InetSocketAddress) socketAddressAddress2).getAddress();
                        y45.i(address2, "getAddress(...)");
                    }
                    passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(hostName, address2, inetSocketAddress.getPort(), gi0VarG.k(), goVar.b(), goVar.c(), gi0VarG.m(), Authenticator.RequestorType.PROXY);
                } else {
                    String strG = gi0VarG.g();
                    y45.g(proxyB);
                    Proxy.Type type2 = proxyB.type();
                    if (type2 != null && a.a[type2.ordinal()] == 1) {
                        address = (InetAddress) defpackage.i81.o0(q30VarC.a(gi0VarG.g()));
                    } else {
                        SocketAddress socketAddressAddress3 = proxyB.address();
                        y45.h(socketAddressAddress3, "null cannot be cast to non-null type java.net.InetSocketAddress");
                        address = ((InetSocketAddress) socketAddressAddress3).getAddress();
                        y45.i(address, "getAddress(...)");
                    }
                    passwordAuthenticationRequestPasswordAuthentication = Authenticator.requestPasswordAuthentication(strG, address, gi0VarG.i(), gi0VarG.k(), goVar.b(), goVar.c(), gi0VarG.m(), Authenticator.RequestorType.SERVER);
                }
                if (passwordAuthenticationRequestPasswordAuthentication != null) {
                    String str = z ? "Proxy-Authorization" : RtspHeaders.AUTHORIZATION;
                    String userName = passwordAuthenticationRequestPasswordAuthentication.getUserName();
                    y45.i(userName, "getUserName(...)");
                    char[] password = passwordAuthenticationRequestPasswordAuthentication.getPassword();
                    y45.i(password, "getPassword(...)");
                    return new vp1.a(vp1VarO).b(str, ev.a(userName, new String(password), goVar.a())).a();
                }
            }
        }
        return null;
    }
}
