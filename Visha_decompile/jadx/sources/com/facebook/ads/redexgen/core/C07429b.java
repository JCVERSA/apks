package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
import java.util.Map;

public final class C07429b implements InterfaceC2247nl {
    public static String[] A04 = {"DnWOFrWNtrruVDlZPcn7mSzqB1u3fyA1", "4khCAmOyD7V9Z9fo", "Y1he90jrlOSSnjRb2RN33xbae", "sN3uyyiAo7qwm0FA39xGDer", "C", "MIilbOvYRfmfRo2RH", "W4KUp4d37G5W3qTHHFYFOJnsXzg3Y9", "7BjcD7lz4UoePoP5n6bqbpOg1qjeNk3c"};
    public long A00;
    public Uri A01 = Uri.EMPTY;
    public Map<String, List<String>> A02 = Collections.emptyMap();
    public final InterfaceC2247nl A03;

    public C07429b(InterfaceC2247nl interfaceC2247nl) {
        this.A03 = (InterfaceC2247nl) C3M.A01(interfaceC2247nl);
    }

    public final long A00() {
        return this.A00;
    }

    public final Uri A01() {
        return this.A01;
    }

    public final Map<String, List<String>> A02() {
        return this.A02;
    }

    @Override
    public final void A3v(C5H c5h) {
        C3M.A01(c5h);
        this.A03.A3v(c5h);
    }

    @Override
    public final Map<String, List<String>> A8l() {
        return this.A03.A8l();
    }

    @Override
    public final Uri A9H() {
        return this.A03.A9H();
    }

    @Override
    public final long AFy(AnonymousClass56 anonymousClass56) throws IOException {
        this.A01 = anonymousClass56.A06;
        this.A02 = Collections.emptyMap();
        long jAFy = this.A03.AFy(anonymousClass56);
        this.A01 = (Uri) C3M.A01(A9H());
        this.A02 = A8l();
        return jAFy;
    }

    @Override
    public final void close() throws IOException {
        this.A03.close();
    }

    @Override
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.A03.read(bArr, i, i2);
        if (i3 != -1) {
            long j = this.A00;
            long j2 = i3;
            String[] strArr = A04;
            String str = strArr[2];
            String str2 = strArr[1];
            int length = str.length();
            int bytesRead = str2.length();
            if (length == bytesRead) {
                throw new RuntimeException();
            }
            String[] strArr2 = A04;
            strArr2[2] = "l8Xa62wp4MYShhMptlDz52jvD";
            strArr2[1] = "PdriuKYg1yn0hjm9";
            this.A00 = j + j2;
        }
        return i3;
    }
}
