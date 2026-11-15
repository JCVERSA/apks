package androidx.media3.datasource;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;
import w1.h;

public final class UdpDataSource extends w1.a {

    private final int f10397e;

    private final byte[] f10398f;

    private final DatagramPacket f10399g;

    private Uri f10400h;

    private DatagramSocket f10401i;

    private MulticastSocket f10402j;

    private InetAddress f10403k;

    private boolean f10404l;

    private int f10405m;

    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override
    public long a(h hVar) throws UdpDataSourceException {
        Uri uri = hVar.f74097a;
        this.f10400h = uri;
        String str = (String) androidx.media3.common.util.a.e(uri.getHost());
        int port = this.f10400h.getPort();
        f(hVar);
        try {
            this.f10403k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f10403k, port);
            if (this.f10403k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f10402j = multicastSocket;
                multicastSocket.joinGroup(this.f10403k);
                this.f10401i = this.f10402j;
            } else {
                this.f10401i = new DatagramSocket(inetSocketAddress);
            }
            this.f10401i.setSoTimeout(this.f10397e);
            this.f10404l = true;
            g(hVar);
            return -1L;
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10, 2001);
        } catch (SecurityException e11) {
            throw new UdpDataSourceException(e11, 2006);
        }
    }

    @Override
    public void close() {
        this.f10400h = null;
        MulticastSocket multicastSocket = this.f10402j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) androidx.media3.common.util.a.e(this.f10403k));
            } catch (IOException unused) {
            }
            this.f10402j = null;
        }
        DatagramSocket datagramSocket = this.f10401i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f10401i = null;
        }
        this.f10403k = null;
        this.f10405m = 0;
        if (this.f10404l) {
            this.f10404l = false;
            e();
        }
    }

    @Override
    public Uri getUri() {
        return this.f10400h;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws UdpDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f10405m == 0) {
            try {
                ((DatagramSocket) androidx.media3.common.util.a.e(this.f10401i)).receive(this.f10399g);
                int length = this.f10399g.getLength();
                this.f10405m = length;
                d(length);
            } catch (SocketTimeoutException e10) {
                throw new UdpDataSourceException(e10, 2002);
            } catch (IOException e11) {
                throw new UdpDataSourceException(e11, 2001);
            }
        }
        int length2 = this.f10399g.getLength();
        int i12 = this.f10405m;
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f10398f, length2 - i12, bArr, i10, iMin);
        this.f10405m -= iMin;
        return iMin;
    }

    public UdpDataSource(int i10) {
        this(i10, 8000);
    }

    public UdpDataSource(int i10, int i11) {
        super(true);
        this.f10397e = i11;
        byte[] bArr = new byte[i10];
        this.f10398f = bArr;
        this.f10399g = new DatagramPacket(bArr, 0, i10);
    }
}
