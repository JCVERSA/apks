package com.google.android.exoplayer2.source.rtsp;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.UdpDataSource;
import com.google.android.exoplayer2.util.p0;
import com.google.common.primitives.Ints;
import java.util.Map;

final class k0 implements c {

    private final UdpDataSource f25776a;

    private k0 f25777b;

    public k0(long j10) {
        this.f25776a = new UdpDataSource(2000, Ints.d(j10));
    }

    @Override
    public long a(com.google.android.exoplayer2.upstream.n nVar) {
        return this.f25776a.a(nVar);
    }

    @Override
    public String c() {
        int iD = d();
        com.google.android.exoplayer2.util.a.g(iD != -1);
        return p0.C("RTP/AVP;unicast;client_port=%d-%d", Integer.valueOf(iD), Integer.valueOf(iD + 1));
    }

    @Override
    public void close() {
        this.f25776a.close();
        k0 k0Var = this.f25777b;
        if (k0Var != null) {
            k0Var.close();
        }
    }

    @Override
    public int d() {
        int iD = this.f25776a.d();
        if (iD == -1) {
            return -1;
        }
        return iD;
    }

    @Override
    public void e(com.google.android.exoplayer2.upstream.k0 k0Var) {
        this.f25776a.e(k0Var);
    }

    public void f(k0 k0Var) {
        com.google.android.exoplayer2.util.a.a(this != k0Var);
        this.f25777b = k0Var;
    }

    @Override
    public u.b g() {
        return null;
    }

    @Override
    public Map getResponseHeaders() {
        return com.google.android.exoplayer2.upstream.j.a(this);
    }

    @Override
    public Uri getUri() {
        return this.f25776a.getUri();
    }

    @Override
    public int read(byte[] bArr, int i10, int i11) throws UdpDataSource.UdpDataSourceException {
        try {
            return this.f25776a.read(bArr, i10, i11);
        } catch (UdpDataSource.UdpDataSourceException e10) {
            if (e10.reason == 2002) {
                return -1;
            }
            throw e10;
        }
    }
}
