package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketTimeoutException;

public final class UdpDataSource extends f {

    private final int f26488e;

    private final byte[] f26489f;

    private final DatagramPacket f26490g;

    private Uri f26491h;

    private DatagramSocket f26492i;

    private MulticastSocket f26493j;

    private InetAddress f26494k;

    private boolean f26495l;

    private int f26496m;

    public static final class UdpDataSourceException extends DataSourceException {
        public UdpDataSourceException(Throwable th2, int i10) {
            super(th2, i10);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override
    public long a(n nVar) throws UdpDataSourceException {
        Uri uri = nVar.f26665a;
        this.f26491h = uri;
        String str = (String) com.google.android.exoplayer2.util.a.e(uri.getHost());
        int port = this.f26491h.getPort();
        j(nVar);
        try {
            this.f26494k = InetAddress.getByName(str);
            InetSocketAddress inetSocketAddress = new InetSocketAddress(this.f26494k, port);
            if (this.f26494k.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(inetSocketAddress);
                this.f26493j = multicastSocket;
                multicastSocket.joinGroup(this.f26494k);
                this.f26492i = this.f26493j;
            } else {
                this.f26492i = new DatagramSocket(inetSocketAddress);
            }
            this.f26492i.setSoTimeout(this.f26488e);
            this.f26495l = true;
            k(nVar);
            return -1L;
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10, 2001);
        } catch (SecurityException e11) {
            throw new UdpDataSourceException(e11, 2006);
        }
    }

    @Override
    public void close() {
        this.f26491h = null;
        MulticastSocket multicastSocket = this.f26493j;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup((InetAddress) com.google.android.exoplayer2.util.a.e(this.f26494k));
            } catch (IOException unused) {
            }
            this.f26493j = null;
        }
        DatagramSocket datagramSocket = this.f26492i;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f26492i = null;
        }
        this.f26494k = null;
        this.f26496m = 0;
        if (this.f26495l) {
            this.f26495l = false;
            i();
        }
    }

    public int d() {
        DatagramSocket datagramSocket = this.f26492i;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }

    @Override
    public Uri getUri() {
        return this.f26491h;
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws UdpDataSourceException {
        if (i11 == 0) {
            return 0;
        }
        if (this.f26496m == 0) {
            try {
                ((DatagramSocket) com.google.android.exoplayer2.util.a.e(this.f26492i)).receive(this.f26490g);
                int length = this.f26490g.getLength();
                this.f26496m = length;
                h(length);
            } catch (SocketTimeoutException e10) {
                throw new UdpDataSourceException(e10, 2002);
            } catch (IOException e11) {
                throw new UdpDataSourceException(e11, 2001);
            }
        }
        int length2 = this.f26490g.getLength();
        int i12 = this.f26496m;
        int iMin = Math.min(i12, i11);
        System.arraycopy(this.f26489f, length2 - i12, bArr, i10, iMin);
        this.f26496m -= iMin;
        return iMin;
    }

    public UdpDataSource(int i10) {
        this(i10, 8000);
    }

    public UdpDataSource(int i10, int i11) {
        super(true);
        this.f26488e = i11;
        byte[] bArr = new byte[i10];
        this.f26489f = bArr;
        this.f26490g = new DatagramPacket(bArr, 0, i10);
    }
}
