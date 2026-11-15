package androidx.media3.exoplayer.util;

import android.os.SystemClock;
import androidx.media3.exoplayer.upstream.Loader;
import androidx.media3.exoplayer.upstream.o;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.SocketTimeoutException;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

public abstract class d {

    private static final Object f12727a = new Object();

    private static final Object f12728b = new Object();

    private static boolean f12729c = false;

    private static long f12730d = 0;

    private static String f12731e = "time.android.com";

    private static int f12732f = 1000;

    private static long f12733g = -9223372036854775807L;

    private static long f12734h = -9223372036854775807L;

    public interface b {
        void a(IOException iOException);

        void onInitialized();
    }

    private static void h(byte b10, byte b11, int i10, long j10) throws IOException {
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

    public static long i() {
        long j10;
        synchronized (f12728b) {
            try {
                j10 = f12729c ? f12730d : C.TIME_UNSET;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return j10;
    }

    public static String j() {
        String str;
        synchronized (f12728b) {
            str = f12731e;
        }
        return str;
    }

    public static int k() {
        int i10;
        synchronized (f12728b) {
            i10 = f12732f;
        }
        return i10;
    }

    public static void l(Loader loader, b bVar) {
        if (m()) {
            if (bVar != null) {
                bVar.onInitialized();
            }
        } else {
            if (loader == null) {
                loader = new Loader("SntpClient");
            }
            loader.m(new C0098d(), new c(bVar), 1);
        }
    }

    public static boolean m() {
        boolean z10;
        synchronized (f12728b) {
            try {
                if (f12734h != C.TIME_UNSET && f12733g != C.TIME_UNSET) {
                    f12729c = f12729c && SystemClock.elapsedRealtime() - f12734h < f12733g;
                }
                z10 = f12729c;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return z10;
    }

    public static long n() {
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(k());
            InetAddress[] allByName = InetAddress.getAllByName(j());
            int length = allByName.length;
            SocketTimeoutException socketTimeoutException = null;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                byte[] bArr = new byte[48];
                DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, allByName[i10], Sdk$SDKError.Reason.INVALID_RI_ENDPOINT_VALUE);
                bArr[0] = 27;
                long jCurrentTimeMillis = System.currentTimeMillis();
                long jElapsedRealtime = SystemClock.elapsedRealtime();
                q(bArr, 40, jCurrentTimeMillis);
                datagramSocket.send(datagramPacket);
                try {
                    datagramSocket.receive(new DatagramPacket(bArr, 48));
                    long jElapsedRealtime2 = SystemClock.elapsedRealtime();
                    long j10 = jCurrentTimeMillis + (jElapsedRealtime2 - jElapsedRealtime);
                    byte b10 = bArr[0];
                    int i12 = bArr[1] & 255;
                    long jP = p(bArr, 24);
                    long jP2 = p(bArr, 32);
                    long jP3 = p(bArr, 40);
                    h((byte) ((b10 >> 6) & 3), (byte) (b10 & 7), i12, jP3);
                    long j11 = (j10 + (((jP2 - jP) + (jP3 - j10)) / 2)) - jElapsedRealtime2;
                    datagramSocket.close();
                    return j11;
                } catch (SocketTimeoutException e10) {
                    if (socketTimeoutException == null) {
                        socketTimeoutException = e10;
                    } else {
                        socketTimeoutException.addSuppressed(e10);
                    }
                    int i13 = i11 + 1;
                    if (i11 >= 10) {
                        throw ((SocketTimeoutException) androidx.media3.common.util.a.e(socketTimeoutException));
                    }
                    i10++;
                    i11 = i13;
                }
            }
            throw ((SocketTimeoutException) androidx.media3.common.util.a.e(socketTimeoutException));
        } catch (Throwable th2) {
            try {
                datagramSocket.close();
                throw th2;
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
                throw th2;
            }
        }
    }

    private static long o(byte[] bArr, int i10) {
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

    private static long p(byte[] bArr, int i10) {
        long jO = o(bArr, i10);
        long jO2 = o(bArr, i10 + 4);
        if (jO == 0 && jO2 == 0) {
            return 0L;
        }
        return ((jO - 2208988800L) * 1000) + ((jO2 * 1000) / TmcConstants.TEMP_FILE_RUNTIME_MAX_SIZE);
    }

    private static void q(byte[] bArr, int i10, long j10) {
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

    private static final class C0098d implements Loader.d {
        private C0098d() {
        }

        @Override
        public void load() {
            synchronized (d.f12727a) {
                synchronized (d.f12728b) {
                    if (d.f12729c) {
                        return;
                    }
                    long jN = d.n();
                    synchronized (d.f12728b) {
                        long unused = d.f12734h = SystemClock.elapsedRealtime();
                        long unused2 = d.f12730d = jN;
                        boolean unused3 = d.f12729c = true;
                    }
                }
            }
        }

        @Override
        public void cancelLoad() {
        }
    }

    private static final class c implements Loader.b {

        private final b f12735a;

        public c(b bVar) {
            this.f12735a = bVar;
        }

        @Override
        public Loader.c k(Loader.d dVar, long j10, long j11, IOException iOException, int i10) {
            b bVar = this.f12735a;
            if (bVar != null) {
                bVar.a(iOException);
            }
            return Loader.f12637f;
        }

        @Override
        public void o(Loader.d dVar, long j10, long j11, int i10) {
            o.a(this, dVar, j10, j11, i10);
        }

        @Override
        public void p(Loader.d dVar, long j10, long j11) {
            if (this.f12735a != null) {
                if (d.m()) {
                    this.f12735a.onInitialized();
                } else {
                    this.f12735a.a(new IOException(new ConcurrentModificationException()));
                }
            }
        }

        @Override
        public void q(Loader.d dVar, long j10, long j11, boolean z10) {
        }
    }
}
