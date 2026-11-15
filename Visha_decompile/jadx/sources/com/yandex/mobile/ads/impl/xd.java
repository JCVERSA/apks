package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import javax.net.ssl.SSLSocket;

public class xd implements l12 {
    private static final wd f;
    public static final int g = 0;
    private final Class<? super SSLSocket> a;
    private final Method b;
    private final Method c;
    private final Method d;
    private final Method e;

    public static final class a {
        private a() {
        }

        public static xd b(Class cls) {
            Class superclass = cls;
            while (!y45.e(superclass.getSimpleName(), "OpenSSLSocketImpl")) {
                superclass = superclass.getSuperclass();
                if (superclass == null) {
                    throw new AssertionError("No OpenSSLSocketImpl superclass of socket of type " + cls);
                }
            }
            y45.g(superclass);
            return new xd(superclass);
        }

        public a(int i) {
            this();
        }

        public static wd a() {
            return xd.f;
        }
    }

    static {
        y45.j("com.google.android.gms.org.conscrypt", "packageName");
        f = new wd();
    }

    public xd(Class<? super SSLSocket> cls) throws NoSuchMethodException {
        y45.j(cls, "sslSocketClass");
        this.a = cls;
        Method declaredMethod = cls.getDeclaredMethod("setUseSessionTickets", Boolean.TYPE);
        y45.i(declaredMethod, "getDeclaredMethod(...)");
        this.b = declaredMethod;
        this.c = cls.getMethod("setHostname", String.class);
        this.d = cls.getMethod("getAlpnSelectedProtocol", null);
        this.e = cls.getMethod("setAlpnProtocols", byte[].class);
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<? extends mm1> list) {
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        y45.j(sSLSocket, "sslSocket");
        if (this.a.isInstance(sSLSocket)) {
            try {
                this.b.invoke(sSLSocket, Boolean.TRUE);
                if (str != null) {
                    this.c.invoke(sSLSocket, str);
                }
                Method method = this.e;
                int i = rh1.c;
                method.invoke(sSLSocket, rh1.a.b(list));
            } catch (IllegalAccessException e) {
                throw new AssertionError(e);
            } catch (InvocationTargetException e2) {
                throw new AssertionError(e2);
            }
        }
    }

    @Override
    public final String b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        y45.j(sSLSocket, "sslSocket");
        if (!this.a.isInstance(sSLSocket)) {
            return null;
        }
        try {
            byte[] bArr = (byte[]) this.d.invoke(sSLSocket, null);
            if (bArr == null) {
                return null;
            }
            Charset charset = StandardCharsets.UTF_8;
            y45.i(charset, "UTF_8");
            return new String(bArr, charset);
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (NullPointerException e2) {
            if (y45.e(e2.getMessage(), "ssl == null")) {
                return null;
            }
            throw e2;
        } catch (InvocationTargetException e3) {
            throw new AssertionError(e3);
        }
    }

    @Override
    public final boolean a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        return this.a.isInstance(sSLSocket);
    }

    @Override
    public final boolean a() {
        return td.f;
    }
}
