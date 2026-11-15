package com.yandex.mobile.ads.impl;

import defpackage.y45;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.SSLSocket;

public final class qq0 extends rh1 {
    private final Method d;
    private final Method e;
    private final Method f;
    private final Class<?> g;
    private final Class<?> h;

    public static final class a implements InvocationHandler {
        private final List<String> a;
        private boolean b;
        private String c;

        public a(ArrayList arrayList) {
            y45.j(arrayList, "protocols");
            this.a = arrayList;
        }

        public final String a() {
            return this.c;
        }

        public final boolean b() {
            return this.b;
        }

        @Override
        public final Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            y45.j(obj, "proxy");
            y45.j(method, "method");
            if (objArr == null) {
                objArr = new Object[0];
            }
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (y45.e(name, "supports") && y45.e(Boolean.TYPE, returnType)) {
                return Boolean.TRUE;
            }
            if (y45.e(name, "unsupported") && y45.e(Void.TYPE, returnType)) {
                this.b = true;
                return null;
            }
            if (y45.e(name, "protocols") && objArr.length == 0) {
                return this.a;
            }
            if ((y45.e(name, "selectProtocol") || y45.e(name, "select")) && y45.e(String.class, returnType) && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    y45.h(obj2, "null cannot be cast to non-null type kotlin.collections.List<*>");
                    List list = (List) obj2;
                    int size = list.size();
                    if (size >= 0) {
                        int i = 0;
                        while (true) {
                            Object obj3 = list.get(i);
                            y45.h(obj3, "null cannot be cast to non-null type kotlin.String");
                            String str = (String) obj3;
                            if (this.a.contains(str)) {
                                this.c = str;
                                return str;
                            }
                            if (i != size) {
                                i++;
                            }
                        }
                    }
                    String str2 = this.a.get(0);
                    this.c = str2;
                    return str2;
                }
            }
            if ((!y45.e(name, "protocolSelected") && !y45.e(name, "selected")) || objArr.length != 1) {
                return method.invoke(this, Arrays.copyOf(objArr, objArr.length));
            }
            Object obj4 = objArr[0];
            y45.h(obj4, "null cannot be cast to non-null type kotlin.String");
            this.c = (String) obj4;
            return null;
        }
    }

    public static final class b {
        public static qq0 a() {
            String property = System.getProperty("java.specification.version", "unknown");
            try {
                y45.g(property);
                if (Integer.parseInt(property) >= 9) {
                    return null;
                }
            } catch (NumberFormatException unused) {
            }
            try {
                Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN", true, null);
                Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider", true, null);
                Class<?> cls3 = Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider", true, null);
                Class<?> cls4 = Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider", true, null);
                Method method = cls.getMethod("put", SSLSocket.class, cls2);
                Method method2 = cls.getMethod("get", SSLSocket.class);
                Method method3 = cls.getMethod("remove", SSLSocket.class);
                y45.g(method);
                y45.g(method2);
                y45.g(method3);
                y45.g(cls3);
                y45.g(cls4);
                return new qq0(method, method2, method3, cls3, cls4);
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return null;
            }
        }
    }

    public qq0(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        y45.j(method, "putMethod");
        y45.j(method2, "getMethod");
        y45.j(method3, "removeMethod");
        y45.j(cls, "clientProviderClass");
        y45.j(cls2, "serverProviderClass");
        this.d = method;
        this.e = method2;
        this.f = method3;
        this.g = cls;
        this.h = cls2;
    }

    @Override
    public final void a(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        try {
            this.f.invoke(null, sSLSocket);
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to remove ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to remove ALPN", e2);
        }
    }

    @Override
    public final String b(SSLSocket sSLSocket) {
        y45.j(sSLSocket, "sslSocket");
        try {
            InvocationHandler invocationHandler = Proxy.getInvocationHandler(this.e.invoke(null, sSLSocket));
            y45.h(invocationHandler, "null cannot be cast to non-null type com.monetization.ads.embedded.okhttp.src.main.kotlin.okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider");
            a aVar = (a) invocationHandler;
            if (!aVar.b() && aVar.a() == null) {
                rh1.a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (aVar.b()) {
                return null;
            }
            return aVar.a();
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to get ALPN selected protocol", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to get ALPN selected protocol", e2);
        }
    }

    @Override
    public final void a(SSLSocket sSLSocket, String str, List<? extends mm1> list) {
        y45.j(sSLSocket, "sslSocket");
        y45.j(list, "protocols");
        y45.j(list, "protocols");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((mm1) obj) != mm1.d) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(defpackage.z71.v(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(((mm1) it.next()).toString());
        }
        try {
            this.d.invoke(null, sSLSocket, Proxy.newProxyInstance(rh1.class.getClassLoader(), new Class[]{this.g, this.h}, new a(arrayList2)));
        } catch (IllegalAccessException e) {
            throw new AssertionError("failed to set ALPN", e);
        } catch (InvocationTargetException e2) {
            throw new AssertionError("failed to set ALPN", e2);
        }
    }
}
