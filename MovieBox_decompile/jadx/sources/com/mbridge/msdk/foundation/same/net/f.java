package com.mbridge.msdk.foundation.same.net;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.TTAdConstant;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import org.json.JSONObject;

public class f {

    private static volatile AtomicInteger f34600b = new AtomicInteger(1);

    private ThreadPoolExecutor f34601a;

    class a implements ThreadFactory {
        a() {
        }

        @Override
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("SocketThreadPool");
            return threadNewThread;
        }
    }

    class b implements Runnable {

        final c f34603a;

        b(c cVar) {
            this.f34603a = cVar;
        }

        @Override
        public void run() {
            this.f34603a.a();
        }
    }

    private static final class d {

        private static f f34614a = new f(null);
    }

    f(a aVar) {
        this();
    }

    public static f b() {
        return d.f34614a;
    }

    private f() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 5L, TimeUnit.MILLISECONDS, new LinkedBlockingQueue(), new a(), new ThreadPoolExecutor.DiscardPolicy());
        this.f34601a = threadPoolExecutor;
        threadPoolExecutor.allowCoreThreadTimeOut(true);
    }

    public byte[] a(String str) throws IOException {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(byteArrayOutputStream);
        gZIPOutputStream.write(str.getBytes());
        gZIPOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public String a(byte[] bArr) throws IOException {
        if (bArr == null || bArr.length == 0) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        GZIPInputStream gZIPInputStream = new GZIPInputStream(byteArrayInputStream);
        byte[] bArr2 = new byte[1024];
        while (true) {
            int i10 = gZIPInputStream.read(bArr2, 0, 1024);
            if (i10 > 0) {
                byteArrayOutputStream.write(bArr2, 0, i10);
            } else {
                gZIPInputStream.close();
                byteArrayInputStream.close();
                byteArrayOutputStream.flush();
                byteArrayOutputStream.close();
                return byteArrayOutputStream.toString();
            }
        }
    }

    public void a(String str, int i10, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
        this.f34601a.execute(new b(new c(str, i10, str2, z10, bVar)));
    }

    public class c {

        private ByteBuffer f34605a;

        private String f34606b;

        private boolean f34607c;

        private com.mbridge.msdk.foundation.same.net.b f34608d;

        private OutputStream f34609e;

        private int f34610f;

        private Socket f34611g;

        private String f34612h;

        c(String str, int i10, String str2, boolean z10, com.mbridge.msdk.foundation.same.net.b bVar) {
            this.f34606b = str;
            this.f34610f = i10;
            this.f34612h = str2;
            this.f34607c = z10;
            this.f34608d = bVar;
        }

        public void a() {
            int length;
            try {
                Socket socket = new Socket(this.f34606b, this.f34610f);
                this.f34611g = socket;
                socket.setSoTimeout(DefaultLoadControl.DEFAULT_MIN_BUFFER_MS);
                boolean z10 = this.f34606b.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f34645j) || this.f34606b.contains(com.mbridge.msdk.foundation.same.net.utils.d.h().f34647l);
                o0.b("SocketManager", "Socket connect : " + this.f34606b + " : " + this.f34610f + " isAnalytics : " + z10);
                this.f34609e = this.f34611g.getOutputStream();
                ByteBuffer byteBufferWrap = ByteBuffer.wrap(new byte[8]);
                this.f34605a = byteBufferWrap;
                ByteOrder byteOrder = ByteOrder.BIG_ENDIAN;
                byteBufferWrap.order(byteOrder);
                this.f34605a.put((byte) 2);
                if (TextUtils.isEmpty(this.f34612h)) {
                    this.f34605a.put((byte) 1);
                } else {
                    this.f34605a.put(this.f34607c ? (byte) 3 : (byte) 2);
                }
                this.f34605a.putShort((short) f.f34600b.getAndIncrement());
                if (TextUtils.isEmpty(this.f34612h)) {
                    this.f34605a.putInt(0);
                    this.f34609e.write(this.f34605a.array());
                    length = 0;
                } else {
                    byte[] bArrA = this.f34607c ? f.this.a(this.f34612h) : this.f34612h.getBytes();
                    length = bArrA.length;
                    this.f34605a.putInt(length);
                    this.f34609e.write(this.f34605a.array());
                    this.f34609e.write(bArrA);
                }
                this.f34609e.flush();
                o0.a("SocketManager", "Socket Request : header : " + Arrays.toString(this.f34605a.array()) + " length : " + length);
                InputStream inputStream = this.f34611g.getInputStream();
                byte[] bArr = new byte[8];
                inputStream.read(bArr, 0, 8);
                ByteBuffer byteBufferWrap2 = ByteBuffer.wrap(bArr);
                this.f34605a = byteBufferWrap2;
                byteBufferWrap2.order(byteOrder);
                int i10 = this.f34605a.getInt(4);
                byte b10 = bArr[1];
                boolean z11 = b10 == 3;
                boolean z12 = b10 == 2;
                o0.b("SocketManager", "Socket Response : header : " + Arrays.toString(bArr) + " length : " + i10 + " isGzip : " + z11);
                byte[] bArr2 = new byte[i10];
                new DataInputStream(this.f34611g.getInputStream()).readFully(bArr2);
                if (!z11 && i10 > 2 && ((bArr2[0] << 8) | (bArr2[1] & 255)) == 8075) {
                    z11 = true;
                }
                com.mbridge.msdk.foundation.same.net.b bVar = this.f34608d;
                if (bVar == null) {
                    Socket socket2 = this.f34611g;
                    if (socket2 != null) {
                        try {
                            socket2.close();
                            this.f34605a = null;
                            this.f34609e.close();
                            return;
                        } catch (IOException e10) {
                            o0.b("SocketManager", e10.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (z12 && i10 == 0) {
                    bVar.onSuccess(e.a(null, new com.mbridge.msdk.foundation.same.net.toolbox.a(Sdk$SDKError.Reason.AD_ALREADY_LOADED_VALUE, null, null)));
                    Socket socket3 = this.f34611g;
                    if (socket3 != null) {
                        try {
                            socket3.close();
                            this.f34605a = null;
                            this.f34609e.close();
                            return;
                        } catch (IOException e11) {
                            o0.b("SocketManager", e11.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (i10 < 1) {
                    a("The response data less than 1");
                    Socket socket4 = this.f34611g;
                    if (socket4 != null) {
                        try {
                            socket4.close();
                            this.f34605a = null;
                            this.f34609e.close();
                            return;
                        } catch (IOException e12) {
                            o0.b("SocketManager", e12.getMessage());
                            return;
                        }
                    }
                    return;
                }
                if (z10) {
                    if (bArr2[0] == 1) {
                        bVar.onSuccess(e.a(null, new com.mbridge.msdk.foundation.same.net.toolbox.a(200, null, null)));
                    } else {
                        a("The server returns fail");
                    }
                    Socket socket5 = this.f34611g;
                    if (socket5 != null) {
                        try {
                            socket5.close();
                            this.f34605a = null;
                            this.f34609e.close();
                            return;
                        } catch (IOException e13) {
                            o0.b("SocketManager", e13.getMessage());
                            return;
                        }
                    }
                    return;
                }
                try {
                    String strA = z11 ? f.this.a(bArr2) : new String(bArr2);
                    JSONObject jSONObject = !TextUtils.isEmpty(strA) ? new JSONObject(strA) : null;
                    o0.b("SocketManager", "Socket Response length : " + i10 + " " + strA.length());
                    this.f34608d.onSuccess(e.a(jSONObject, new com.mbridge.msdk.foundation.same.net.toolbox.a(200, null, null)));
                } catch (Throwable th2) {
                    String message = th2.getMessage();
                    o0.b("SocketManager", th2.getMessage());
                    if (TextUtils.isEmpty(message)) {
                        message = "The JSON data is illegal";
                    }
                    a(message);
                }
                inputStream.close();
                Socket socket6 = this.f34611g;
                if (socket6 != null) {
                    try {
                        socket6.close();
                        this.f34605a = null;
                        this.f34609e.close();
                    } catch (IOException e14) {
                        o0.b("SocketManager", e14.getMessage());
                    }
                }
            } catch (Throwable th3) {
                try {
                    String message2 = th3.getMessage();
                    o0.a("SocketManager", "Socket exception: " + message2);
                    a(message2);
                } finally {
                    Socket socket7 = this.f34611g;
                    if (socket7 != null) {
                        try {
                            socket7.close();
                            this.f34605a = null;
                            this.f34609e.close();
                        } catch (IOException e15) {
                            o0.b("SocketManager", e15.getMessage());
                        }
                    }
                }
            }
        }

        private void a(String str) {
            if (this.f34608d != null) {
                if (TextUtils.isEmpty(str)) {
                    str = "Unknown exception";
                }
                this.f34608d.onError(new com.mbridge.msdk.foundation.same.net.exception.a(13, new com.mbridge.msdk.foundation.same.net.toolbox.a(TTAdConstant.DEEPLINK_FALLBACK_CODE, str.getBytes(), null)));
            }
        }
    }
}
