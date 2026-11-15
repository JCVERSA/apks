package com.hunantv.imgo.log;

import com.transsion.audiotagger.audio.flac.FlacTagCreator;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.util.List;

public class h {
    private static h g;
    public InetAddress[] a;
    public List<String> b;
    private a c;
    private boolean[] e;
    private int d = 6000;
    private final long[] f = new long[4];

    public interface a {
        void a(String str);

        void b(String str);
    }

    private h() {
    }

    public static h a() {
        if (g == null) {
            synchronized (h.class) {
                try {
                    if (g == null) {
                        g = new h();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return g;
    }

    private boolean c() {
        InetAddress[] inetAddressArr = this.a;
        if (inetAddressArr == null || this.b == null) {
            this.c.a("DNS解析失败,主机地址不可达");
        } else {
            int length = inetAddressArr.length;
            this.e = new boolean[length];
            for (int i = 0; i < length; i++) {
                if (i != 0) {
                    this.c.b("\n");
                }
                this.e[i] = a(this.a[i], this.b.get(i));
            }
            for (boolean z : this.e) {
                if (z) {
                    this.c.a("\n");
                    return true;
                }
            }
        }
        this.c.a("\n");
        return false;
    }

    public boolean b() {
        return c();
    }

    public void a(a aVar) {
        this.c = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean a(InetAddress inetAddress, String str) throws Throwable {
        Object[] objArr;
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        z = false;
        z = false;
        z = false;
        if (inetAddress != null && str != null) {
            InetSocketAddress inetSocketAddress = new InetSocketAddress(inetAddress, 80);
            this.c.b("Connect to host: " + str + "...\n");
            int i = 0;
            while (true) {
                if (i >= 4) {
                    objArr = 0;
                    break;
                }
                a(inetSocketAddress, this.d, i);
                long j = this.f[i];
                if (j == -1) {
                    this.c.b((i + 1) + "'s time=TimeOut,  ");
                    this.d = this.d + FlacTagCreator.DEFAULT_PADDING;
                    if (i > 0 && this.f[i - 1] == -1) {
                        objArr = -1;
                        break;
                    }
                    i++;
                } else {
                    if (j == -2) {
                        this.c.b((i + 1) + "'s time=IOException");
                        if (i > 0 && this.f[i - 1] == -2) {
                            objArr = -2;
                            break;
                        }
                    } else {
                        this.c.b((i + 1) + "'s time=" + this.f[i] + "ms,  ");
                    }
                    i++;
                }
            }
            if (objArr != -1 && objArr != -2) {
                long j2 = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < 4; i3++) {
                    long j3 = this.f[i3];
                    if (j3 > 0) {
                        j2 += j3;
                        i2++;
                    }
                }
                if (i2 > 0) {
                    sb.append("average=" + (j2 / ((long) i2)) + "ms");
                }
                z = true;
            }
        }
        this.c.b(sb.toString());
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v17 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v5, types: [java.net.Socket] */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    private void a(InetSocketAddress inetSocketAddress, int i, int i2) throws Throwable {
        ?? r0 = 0;
        r0 = 0;
        r0 = 0;
        r0 = 0;
        try {
            try {
                try {
                    Socket socket = new Socket();
                    try {
                        long jCurrentTimeMillis = System.currentTimeMillis();
                        socket.connect(inetSocketAddress, i);
                        long jCurrentTimeMillis2 = System.currentTimeMillis();
                        long[] jArr = this.f;
                        jArr[i2] = jCurrentTimeMillis2 - jCurrentTimeMillis;
                        socket.close();
                        r0 = jArr;
                    } catch (SocketTimeoutException e) {
                        e = e;
                        r0 = socket;
                        this.f[i2] = -1;
                        e.printStackTrace();
                        if (r0 != 0) {
                            r0.close();
                            r0 = r0;
                        }
                    } catch (IOException e2) {
                        e = e2;
                        r0 = socket;
                        this.f[i2] = -2;
                        e.printStackTrace();
                        if (r0 != 0) {
                            r0.close();
                            r0 = r0;
                        }
                    } catch (Throwable th) {
                        th = th;
                        r0 = socket;
                        if (r0 != 0) {
                            try {
                                r0.close();
                            } catch (IOException e3) {
                                e3.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e4) {
                    e4.printStackTrace();
                }
            } catch (SocketTimeoutException e5) {
                e = e5;
            } catch (IOException e6) {
                e = e6;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
