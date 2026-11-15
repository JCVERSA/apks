package com.squareup.okhttp.internal;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import javax.net.ssl.SSLSocket;
import okio.Buffer;

public class e {

    private static final e f39460a = e();

    private static class a extends e {

        private final d f39461b;

        private final d f39462c;

        private final Method f39463d;

        private final Method f39464e;

        private final d f39465f;

        private final d f39466g;

        public a(d dVar, d dVar2, Method method, Method method2, d dVar3, d dVar4) {
            this.f39461b = dVar;
            this.f39462c = dVar2;
            this.f39463d = method;
            this.f39464e = method2;
            this.f39465f = dVar3;
            this.f39466g = dVar4;
        }

        @Override
        public void c(SSLSocket sSLSocket, String str, List list) {
            if (str != null) {
                this.f39461b.e(sSLSocket, Boolean.TRUE);
                this.f39462c.e(sSLSocket, str);
            }
            d dVar = this.f39466g;
            if (dVar == null || !dVar.g(sSLSocket)) {
                return;
            }
            this.f39466g.f(sSLSocket, e.b(list));
        }

        @Override
        public void d(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
            try {
                socket.connect(inetSocketAddress, i10);
            } catch (AssertionError e10) {
                if (!g.o(e10)) {
                    throw e10;
                }
                throw new IOException(e10);
            } catch (SecurityException e11) {
                IOException iOException = new IOException("Exception in connect");
                iOException.initCause(e11);
                throw iOException;
            }
        }

        @Override
        public String h(SSLSocket sSLSocket) {
            byte[] bArr;
            d dVar = this.f39465f;
            if (dVar == null || !dVar.g(sSLSocket) || (bArr = (byte[]) this.f39465f.f(sSLSocket, new Object[0])) == null) {
                return null;
            }
            return new String(bArr, g.f39600c);
        }
    }

    private static class b extends e {

        private final Method f39467b;

        private final Method f39468c;

        private final Method f39469d;

        private final Class f39470e;

        private final Class f39471f;

        public b(Method method, Method method2, Method method3, Class cls, Class cls2) {
            this.f39467b = method;
            this.f39468c = method2;
            this.f39469d = method3;
            this.f39470e = cls;
            this.f39471f = cls2;
        }

        @Override
        public void a(SSLSocket sSLSocket) {
            try {
                this.f39469d.invoke(null, sSLSocket);
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }

        @Override
        public void c(SSLSocket sSLSocket, String str, List list) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                Protocol protocol = (Protocol) list.get(i10);
                if (protocol != Protocol.HTTP_1_0) {
                    arrayList.add(protocol.toString());
                }
            }
            try {
                this.f39467b.invoke(null, sSLSocket, Proxy.newProxyInstance(e.class.getClassLoader(), new Class[]{this.f39470e, this.f39471f}, new c(arrayList)));
            } catch (IllegalAccessException | InvocationTargetException e10) {
                throw new AssertionError(e10);
            }
        }

        @Override
        public String h(SSLSocket sSLSocket) {
            try {
                c cVar = (c) Proxy.getInvocationHandler(this.f39468c.invoke(null, sSLSocket));
                if (!cVar.f39473b && cVar.f39474c == null) {
                    com.squareup.okhttp.internal.c.logger.log(Level.INFO, "ALPN callback dropped: SPDY and HTTP/2 are disabled. Is alpn-boot on the boot class path?");
                    return null;
                }
                if (cVar.f39473b) {
                    return null;
                }
                return cVar.f39474c;
            } catch (IllegalAccessException | InvocationTargetException unused) {
                throw new AssertionError();
            }
        }
    }

    private static class c implements InvocationHandler {

        private final List f39472a;

        private boolean f39473b;

        private String f39474c;

        public c(List list) {
            this.f39472a = list;
        }

        @Override
        public Object invoke(Object obj, Method method, Object[] objArr) {
            String name = method.getName();
            Class<?> returnType = method.getReturnType();
            if (objArr == null) {
                objArr = g.f39599b;
            }
            if (name.equals("supports") && Boolean.TYPE == returnType) {
                return Boolean.TRUE;
            }
            if (name.equals("unsupported") && Void.TYPE == returnType) {
                this.f39473b = true;
                return null;
            }
            if (name.equals("protocols") && objArr.length == 0) {
                return this.f39472a;
            }
            if ((name.equals("selectProtocol") || name.equals("select")) && String.class == returnType && objArr.length == 1) {
                Object obj2 = objArr[0];
                if (obj2 instanceof List) {
                    List list = (List) obj2;
                    int size = list.size();
                    for (int i10 = 0; i10 < size; i10++) {
                        if (this.f39472a.contains(list.get(i10))) {
                            String str = (String) list.get(i10);
                            this.f39474c = str;
                            return str;
                        }
                    }
                    String str2 = (String) this.f39472a.get(0);
                    this.f39474c = str2;
                    return str2;
                }
            }
            if ((!name.equals("protocolSelected") && !name.equals("selected")) || objArr.length != 1) {
                return method.invoke(this, objArr);
            }
            this.f39474c = (String) objArr[0];
            return null;
        }
    }

    static byte[] b(List list) {
        Buffer buffer = new Buffer();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            Protocol protocol = (Protocol) list.get(i10);
            if (protocol != Protocol.HTTP_1_0) {
                buffer.writeByte(protocol.toString().length());
                buffer.writeUtf8(protocol.toString());
            }
        }
        return buffer.readByteArray();
    }

    private static e e() {
        Method method;
        d dVar;
        Method method2;
        try {
            try {
                try {
                    Class.forName("com.android.org.conscrypt.OpenSSLSocketImpl");
                } catch (ClassNotFoundException unused) {
                    Class<?> cls = Class.forName("org.eclipse.jetty.alpn.ALPN");
                    Class<?> cls2 = Class.forName("org.eclipse.jetty.alpn.ALPN$Provider");
                    return new b(cls.getMethod("put", SSLSocket.class, cls2), cls.getMethod("get", SSLSocket.class), cls.getMethod("remove", SSLSocket.class), Class.forName("org.eclipse.jetty.alpn.ALPN$ClientProvider"), Class.forName("org.eclipse.jetty.alpn.ALPN$ServerProvider"));
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused2) {
                return new e();
            }
        } catch (ClassNotFoundException unused3) {
            Class.forName("org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl");
        }
        d dVar2 = null;
        d dVar3 = new d(null, "setUseSessionTickets", Boolean.TYPE);
        d dVar4 = new d(null, "setHostname", String.class);
        try {
            Class<?> cls3 = Class.forName("android.net.TrafficStats");
            method2 = cls3.getMethod("tagSocket", Socket.class);
            try {
                method = cls3.getMethod("untagSocket", Socket.class);
                try {
                    Class.forName("android.net.Network");
                    dVar = new d(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                    try {
                        dVar2 = new d(null, "setAlpnProtocols", byte[].class);
                    } catch (ClassNotFoundException | NoSuchMethodException unused4) {
                    }
                } catch (ClassNotFoundException | NoSuchMethodException unused5) {
                    dVar = null;
                }
            } catch (ClassNotFoundException | NoSuchMethodException unused6) {
                method = null;
                dVar = null;
            }
        } catch (ClassNotFoundException | NoSuchMethodException unused7) {
            method = null;
            dVar = null;
            method2 = null;
        }
        return new a(dVar3, dVar4, method2, method, dVar, dVar2);
    }

    public static e f() {
        return f39460a;
    }

    public void a(SSLSocket sSLSocket) {
    }

    public void c(SSLSocket sSLSocket, String str, List list) {
    }

    public void d(Socket socket, InetSocketAddress inetSocketAddress, int i10) {
        socket.connect(inetSocketAddress, i10);
    }

    public String g() {
        return "OkHttp";
    }

    public String h(SSLSocket sSLSocket) {
        return null;
    }

    public void i(String str) {
        System.out.println(str);
    }
}
