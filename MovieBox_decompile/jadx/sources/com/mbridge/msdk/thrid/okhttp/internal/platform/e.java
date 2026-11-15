package com.mbridge.msdk.thrid.okhttp.internal.platform;

import com.mbridge.msdk.thrid.okhttp.u;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.List;
import javax.net.ssl.SSLSocket;

class e extends g {

    private final Method f37403c;

    private final Method f37404d;

    private final Method f37405e;

    private final Class<?> f37406f;

    private final Class<?> f37407g;

    private static class a implements InvocationHandler {

        private final List<String> f37408a;

        boolean f37409b;

        String f37410c;

        a(List<String> list) {
            this.f37408a = list;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = com.mbridge.msdk.thrid.okhttp.internal.c.f37070b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f37409b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f37408a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f37408a.contains(list.get(i10))) {
                            String str = (String) list.get(i10);
                            this.f37410c = str;
                            return str;
                        }
                    }
                    String str2 = this.f37408a.get(0);
                    this.f37410c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f37410c = (String) objArr[0];
            return null;
        }
    }

    e(Method method, Method method2, Method method3, Class<?> cls, Class<?> cls2) {
        this.f37403c = method;
        this.f37404d = method2;
        this.f37405e = method3;
        this.f37406f = cls;
        this.f37407g = cls2;
    }

    public static g h() {
        try {
            Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
            Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
            return new e(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return null;
        }
    }

    @Override
    public void a(SSLSocket sSLSocket, String str, List<u> list) {
        try {
            this.f37403c.invoke(null, sSLSocket, Proxy.newProxyInstance(g.class.getClassLoader(), new Class[]{this.f37406f, this.f37407g}, new a(g.a(list))));
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to set alpn", (Exception) e10);
        }
    }

    @Override
    public String b(SSLSocket sSLSocket) {
        try {
            a aVar = (a) Proxy.getInvocationHandler(this.f37404d.invoke(null, sSLSocket));
            boolean z10 = aVar.f37409b;
            if (!z10 && aVar.f37410c == null) {
                g.d().a(4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?", (Throwable) null);
                return null;
            }
            if (z10) {
                return null;
            }
            return aVar.f37410c;
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to get selected protocol", (Exception) e10);
        }
    }

    @Override
    public void a(SSLSocket sSLSocket) {
        try {
            this.f37405e.invoke(null, sSLSocket);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw com.mbridge.msdk.thrid.okhttp.internal.c.a("unable to remove alpn", (Exception) e10);
        }
    }
}
