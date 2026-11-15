package defpackage;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzhf;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

public final class azi extends p4i {
    public final byte[] e;
    public final DatagramPacket f;
    public Uri g;
    public DatagramSocket h;
    public MulticastSocket i;
    public InetAddress j;
    public boolean k;
    public int l;

    public azi(int i) {
        super(true);
        byte[] bArr = new byte[2000];
        this.e = bArr;
        this.f = new DatagramPacket(bArr, 0, 2000);
    }

    @Override
    public final int b(byte[] bArr, int i, int i2) throws zzhf {
        if (i2 == 0) {
            return 0;
        }
        if (this.l == 0) {
            try {
                DatagramSocket datagramSocket = this.h;
                if (datagramSocket == null) {
                    throw null;
                }
                DatagramPacket datagramPacket = this.f;
                datagramSocket.receive(datagramPacket);
                int length = datagramPacket.getLength();
                this.l = length;
                zzg(length);
            } catch (SocketTimeoutException e) {
                throw new zzhf(e, 2002);
            } catch (IOException e2) {
                throw new zzhf(e2, 2001);
            }
        }
        int length2 = this.f.getLength();
        int i3 = this.l;
        int iMin = Math.min(i3, i2);
        System.arraycopy(this.e, length2 - i3, bArr, i, iMin);
        this.l -= iMin;
        return iMin;
    }

    @Override
    public final long j(cfi cfiVar) throws zzhf {
        Uri uri = cfiVar.a;
        this.g = uri;
        String host = uri.getHost();
        host.getClass();
        int port = this.g.getPort();
        l(cfiVar);
        try {
            this.j = InetAddress.getByName(host);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.j, port);
            if (this.j.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.i = multicastSocket;
                multicastSocket.joinGroup(this.j);
                this.h = this.i;
            } else {
                this.h = new DatagramSocket(inetSocketAddress);
            }
            this.h.setSoTimeout(8000);
            this.k = true;
            m(cfiVar);
            return -1L;
        } catch (IOException e) {
            throw new zzhf(e, 2001);
        } catch (SecurityException e2) {
            throw new zzhf(e2, 2006);
        }
    }

    @Override
    public final Uri zzc() {
        return this.g;
    }

    @Override
    public final void zzd() {
        this.g = null;
        MulticastSocket multicastSocket = this.i;
        if (multicastSocket != null) {
            try {
                InetAddress inetAddress = this.j;
                if (inetAddress == null) {
                    throw null;
                }
                multicastSocket.leaveGroup(inetAddress);
                this.i = null;
            } catch (IOException unused) {
            }
        }
        DatagramSocket datagramSocket = this.h;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.h = null;
        }
        this.j = null;
        this.l = 0;
        if (this.k) {
            this.k = false;
            k();
        }
    }
}
