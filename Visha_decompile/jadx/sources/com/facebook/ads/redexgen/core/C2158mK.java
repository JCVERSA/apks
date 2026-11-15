package com.facebook.ads.redexgen.core;

import android.net.Uri;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.List;
import java.util.Map;

public final class C2158mK implements InterfaceC0877Ej, CD {
    public static String[] A0E = {"SSDELygzudefytBtRYlDWoyFfpg", "4SEnazR2Nu4dPKZqq", "4H9jqKlT7lQdtxWBQl9xa6akogWkCWsp", "Wknx73gM1GoPE2GN1snRYal1oMjUwY3P", "7txELYcTJwThSLRxJ5dUM1K4qPQ", "gA7GGJKubAjwOro28", "9KdodW4K4GXGszeM7wnefptXiT4TjY3", ""};
    public long A00;
    public AnonymousClass56 A01;
    public H1 A02;
    public boolean A04;
    public final Uri A06;
    public final C3W A07;
    public final C07429b A08;
    public final InterfaceC0817Cb A09;
    public final GY A0A;
    public volatile boolean A0C;
    public final C9A A0D;
    public final C0939Gt A0B = new C0939Gt();
    public boolean A03 = true;
    public final long A05 = CE.A00();

    public C2158mK(C9A c9a, Uri uri, InterfaceC2247nl interfaceC2247nl, InterfaceC0817Cb interfaceC0817Cb, GY gy, C3W c3w) {
        this.A0D = c9a;
        this.A06 = uri;
        this.A08 = new C07429b(interfaceC2247nl);
        this.A09 = interfaceC0817Cb;
        this.A0A = gy;
        this.A07 = c3w;
    }

    public void A04(long j, long j2) {
        this.A0B.A00 = j;
        this.A00 = j2;
        this.A03 = true;
        this.A04 = false;
    }

    @Override
    public final void A4j() {
        this.A0C = true;
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x011b */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void AAi() throws IOException {
        int iAGc = 0;
        while (iAGc == 0 && !this.A0C) {
            long j = this.A0B.A00;
            this.A01 = new AnonymousClass56(this.A06, j, -1L, this.A0D.A0b);
            long jAFy = this.A08.AFy(this.A01);
            if (jAFy != -1) {
                jAFy += j;
                this.A0D.A0G();
            }
            this.A0D.A09 = null;
            InterfaceC2247nl interfaceC2247nl = this.A08;
            if (this.A0D.A09 != null && this.A0D.A09.A01 != -1) {
                final C07429b c07429b = this.A08;
                final int i = this.A0D.A09.A01;
                interfaceC2247nl = new InterfaceC2247nl(c07429b, i, this) {
                    public int A00;
                    public final int A01;
                    public final InterfaceC2247nl A02;
                    public final CD A03;
                    public final byte[] A04;

                    {
                        C3M.A07(i > 0);
                        this.A02 = c07429b;
                        this.A01 = i;
                        this.A03 = this;
                        this.A04 = new byte[1];
                        this.A00 = i;
                    }

                    private boolean A00() throws IOException {
                        int bytesRead = this.A02.read(this.A04, 0, 1);
                        if (bytesRead == -1) {
                            return false;
                        }
                        int bytesRead2 = this.A04[0];
                        int metadataLength = (bytesRead2 & 255) << 4;
                        if (metadataLength == 0) {
                            return true;
                        }
                        int i2 = 0;
                        int i3 = metadataLength;
                        byte[] bArr = new byte[metadataLength];
                        while (i3 > 0) {
                            int bytesRead3 = this.A02.read(bArr, i2, i3);
                            if (bytesRead3 == -1) {
                                return false;
                            }
                            i2 += bytesRead3;
                            i3 -= bytesRead3;
                        }
                        while (metadataLength > 0) {
                            int bytesRead4 = metadataLength - 1;
                            if (bArr[bytesRead4] != 0) {
                                break;
                            }
                            metadataLength--;
                        }
                        if (metadataLength > 0) {
                            this.A03.ADR(new C4J(bArr, metadataLength));
                        }
                        return true;
                    }

                    @Override
                    public final void A3v(C5H c5h) {
                        C3M.A01(c5h);
                        this.A02.A3v(c5h);
                    }

                    @Override
                    public final Map<String, List<String>> A8l() {
                        return this.A02.A8l();
                    }

                    @Override
                    public final Uri A9H() {
                        return this.A02.A9H();
                    }

                    @Override
                    public final long AFy(AnonymousClass56 anonymousClass56) {
                        throw new UnsupportedOperationException();
                    }

                    @Override
                    public final void close() {
                        throw new UnsupportedOperationException();
                    }

                    @Override
                    public final int read(byte[] bArr, int i2, int i3) throws IOException {
                        if (this.A00 == 0) {
                            if (!A00()) {
                                return -1;
                            }
                            this.A00 = this.A01;
                        }
                        int i4 = this.A02.read(bArr, i2, Math.min(this.A00, i3));
                        if (i4 != -1) {
                            int bytesRead = this.A00;
                            this.A00 = bytesRead - i4;
                        }
                        return i4;
                    }
                };
                this.A02 = this.A0D.A0Z();
                this.A02.A6W(C9A.A0g);
            }
            this.A09.AA3(interfaceC2247nl, this.A06, this.A08.A8l(), j, jAFy, this.A0A);
            if (this.A0D.A09 != null) {
                this.A09.A5q();
            }
            if (this.A03) {
                this.A09.AIM(j, this.A00);
                this.A03 = false;
            }
            while (iAGc == 0 && !this.A0C) {
                try {
                    this.A07.A00();
                    iAGc = this.A09.AGc(this.A0B);
                    long position = this.A09.A7S();
                    if (position > this.A0D.A0M + j) {
                        j = position;
                        this.A07.A02();
                        this.A0D.A0O.post(this.A0D.A0a);
                    }
                } catch (InterruptedException unused) {
                    throw new InterruptedIOException();
                }
            }
            if (iAGc == 1) {
                iAGc = 0;
            } else {
                long jA7S = this.A09.A7S();
                String[] strArr = A0E;
                if (strArr[2].charAt(24) != strArr[3].charAt(24)) {
                    throw new RuntimeException();
                }
                A0E[6] = "OKjnlHtv3KbBLefZQYMpPe9SdH47QI1";
                if (jA7S != -1) {
                    this.A0B.A00 = this.A09.A7S();
                }
            }
            AnonymousClass51.A00(this.A08);
        }
    }

    @Override
    public final void ADR(C4J c4j) {
        long jMax;
        if (this.A04) {
            jMax = Math.max(this.A0D.A03(true), this.A00);
        } else {
            jMax = this.A00;
        }
        int iA07 = c4j.A07();
        H1 h1 = (H1) C3M.A01(this.A02);
        h1.AI7(c4j, iA07);
        h1.AIA(jMax, 1, iA07, 0, null);
        this.A04 = true;
    }
}
