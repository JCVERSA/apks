package defpackage;

import android.os.SystemClock;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;

public class rr9 {
    public long a;
    public long b;
    public long c;
    public long d;
    public DatagramSocket e;

    public long a() {
        return this.a;
    }

    public long b() {
        return this.d;
    }

    public final long c(byte[] bArr, int i) {
        int i2 = bArr[i];
        int i3 = bArr[i + 1];
        int i4 = bArr[i + 2];
        int i5 = bArr[i + 3];
        if ((i2 & 128) == 128) {
            i2 = (i2 & 127) + 128;
        }
        if ((i3 & 128) == 128) {
            i3 = (i3 & 127) + 128;
        }
        if ((i4 & 128) == 128) {
            i4 = (i4 & 127) + 128;
        }
        if ((i5 & 128) == 128) {
            i5 = (i5 & 127) + 128;
        }
        return (((long) i2) << 24) + (((long) i3) << 16) + (((long) i4) << 8) + ((long) i5);
    }

    public final long d(byte[] bArr, int i) {
        return ((c(bArr, i) - 2208988800L) * 1000) + ((c(bArr, i + 4) * 1000) / 4294967296L);
    }

    public boolean e(String str, int i) {
        try {
            DatagramSocket datagramSocket = new DatagramSocket();
            this.e = datagramSocket;
            datagramSocket.setSoTimeout(i);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, InetAddress.getByName(str), 123);
            bArr[0] = 27;
            long jCurrentTimeMillis = System.currentTimeMillis();
            long jElapsedRealtime = SystemClock.elapsedRealtime();
            f(bArr, 40, jCurrentTimeMillis);
            this.e.send(datagramPacket);
            this.e.receive(new DatagramPacket(bArr, 48));
            long jElapsedRealtime2 = SystemClock.elapsedRealtime();
            long jD = d(bArr, 24);
            long jD2 = d(bArr, 32);
            long jD3 = d(bArr, 40);
            this.c = jElapsedRealtime2 - jElapsedRealtime;
            long j = ((jD2 - jD) + (jD3 - jCurrentTimeMillis)) / 2;
            this.a = jCurrentTimeMillis + j;
            this.b = j;
            this.d = jElapsedRealtime;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        } finally {
            DatagramSocket datagramSocket2 = this.e;
            if (datagramSocket2 != null) {
                datagramSocket2.close();
            }
        }
    }

    public final void f(byte[] bArr, int i, long j) {
        long j2 = j / 1000;
        long j3 = j - (j2 * 1000);
        long j4 = j2 + 2208988800L;
        bArr[i] = (byte) (j4 >> 24);
        bArr[i + 1] = (byte) (j4 >> 16);
        bArr[i + 2] = (byte) (j4 >> 8);
        bArr[i + 3] = (byte) j4;
        long j5 = (j3 * 4294967296L) / 1000;
        bArr[i + 4] = (byte) (j5 >> 24);
        bArr[i + 5] = (byte) (j5 >> 16);
        bArr[i + 6] = (byte) (j5 >> 8);
        bArr[i + 7] = (byte) j5;
    }
}
