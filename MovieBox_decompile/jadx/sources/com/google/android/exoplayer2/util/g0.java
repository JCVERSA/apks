package com.google.android.exoplayer2.util;

import android.os.SystemClock;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.google.android.exoplayer2.upstream.Loader;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

public abstract class g0 {

    private static final Object f26806a = new Object();

    private static final Object f26807b = new Object();

    private static boolean f26808c = false;

    private static long f26809d = 0;

    private static String f26810e = "time.android.com";

    public interface b {
        void a(IOException iOException);

        void onInitialized();
    }

    private static void g(byte b10, byte b11, int i10, long j10) throws IOException {
        if (b10 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b11 != 4 && b11 != 5) {
            throw new IOException("SNTP: Untrusted mode: " + ((int) b11));
        }
        if (i10 != 0 && i10 <= 15) {
            if (j10 == 0) {
                throw new IOException("SNTP: Zero transmitTime");
            }
        } else {
            throw new IOException("SNTP: Untrusted stratum: " + i10);
        }
    }

    public static long h() {
        long j10;
        synchronized (f26807b) {
            try {
                j10 = f26808c ? f26809d : C.TIME_UNSET;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public static String i() {
        String str;
        synchronized (f26807b) {
            str = f26810e;
        }
        return str;
    }

    public static void j(Loader loader, b bVar) {
        if (k()) {
            if (bVar != null) {
                bVar.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.m(new d(), new c(bVar), 1);
        }
    }

    public static boolean k() {
        boolean z10;
        synchronized (f26807b) {
            z10 = f26808c;
        }
        return z10;
    }

    public static long l() throws UnknownHostException {
        InetAddress byName = InetAddress.getByName(i());
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
            bArr[0] = 27;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            o(bArr, 40, jCurrentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long j10 = jCurrentTimeMillis + (jElapsedRealtime2 - jElapsedRealtime);
            byte b10 = bArr[0];
            int i10 = bArr[1] & 255;
            long jN = n(bArr, 24);
            long jN2 = n(bArr, 32);
            long jN3 = n(bArr, 40);
            g((byte) ((b10 >> 6) & 3), (byte) (b10 & 7), i10, jN3);
            long j11 = (j10 + (((jN2 - jN) + (jN3 - j10)) / 2)) - jElapsedRealtime2;
            datagramSocket.close();
            return j11;
        } catch (Throwable th2) {
            try {
                datagramSocket.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    private static long m(byte[] bArr, int i10) {
        int i11 = bArr[i10];
        int i12 = bArr[i10 + 1];
        int i13 = bArr[i10 + 2];
        int i14 = bArr[i10 + 3];
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        if ((i14 & 128) == 128) {
            i14 = (i14 & 127) + 128;
        }
        return (((long) i11) << 24) + (((long) i12) << 16) + (((long) i13) << 8) + ((long) i14);
    }

    private static long n(byte[] bArr, int i10) {
        long jM = m(bArr, i10);
        long jM2 = m(bArr, i10 + 4);
        if (jM == 0 && jM2 == 0) {
            return 0L;
        }
        return ((jM - 2208988800L) * 1000) + ((jM2 * 1000) / TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE);
    }

    private static void o(byte[] bArr, int i10, long j10) {
        if (j10 == 0) {
            Arrays.fill(bArr, i10, i10 + 8, (byte) 0);
            return;
        }
        long j11 = j10 / 1000;
        long j12 = j10 - (j11 * 1000);
        long j13 = j11 + 2208988800L;
        bArr[i10] = (byte) (j13 >> 24);
        bArr[i10 + 1] = (byte) (j13 >> 16);
        bArr[i10 + 2] = (byte) (j13 >> 8);
        bArr[i10 + 3] = (byte) j13;
        long j14 = (j12 * TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE) / 1000;
        bArr[i10 + 4] = (byte) (j14 >> 24);
        bArr[i10 + 5] = (byte) (j14 >> 16);
        bArr[i10 + 6] = (byte) (j14 >> 8);
        bArr[i10 + 7] = (byte) (Math.random() * 255.0d);
    }

    private static final class d implements Loader.d {
        private d() {
        }

        @Override
        public void load() {
            synchronized (g0.f26806a) {
                synchronized (g0.f26807b) {
                    if (g0.f26808c) {
                        return;
                    }
                    long jL = g0.l();
                    synchronized (g0.f26807b) {
                        long unused = g0.f26809d = jL;
                        boolean unused2 = g0.f26808c = true;
                    }
                }
            }
        }

        @Override
        public void cancelLoad() {
        }
    }

    private static final class c implements Loader.b {

        private final b f26811a;

        public c(b bVar) {
            this.f26811a = bVar;
        }

        @Override
        public void l(Loader.d dVar, long j10, long j11) {
            if (this.f26811a != null) {
                if (g0.k()) {
                    this.f26811a.onInitialized();
                } else {
                    this.f26811a.a(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override
        public Loader.c n(Loader.d dVar, long j10, long j11, IOException iOException, int i10) {
            b bVar = this.f26811a;
            if (bVar != null) {
                bVar.a(iOException);
            }
            return Loader.f26474f;
        }

        @Override
        public void j(Loader.d dVar, long j10, long j11, boolean z10) {
        }
    }
}
