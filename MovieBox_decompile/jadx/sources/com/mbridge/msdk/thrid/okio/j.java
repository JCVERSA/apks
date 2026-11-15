package com.mbridge.msdk.thrid.okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

public final class j implements s {

    private final e f37611b;

    private final Inflater f37612c;

    private final k f37613d;

    private int f37610a = 0;

    private final CRC32 f37614e = new CRC32();

    public j(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f37612c = inflater;
        e eVarA = l.a(sVar);
        this.f37611b = eVarA;
        this.f37613d = new k(eVarA, inflater);
    }

    private void a(c cVar, long j10, long j11) {
        o oVar = cVar.f37599a;
        while (true) {
            long j12 = oVar.f37634c - oVar.f37633b;
            if (j10 < j12) {
                break;
            }
            j10 -= j12;
            oVar = oVar.f37637f;
        }
        while (j11 > 0) {
            int i10 = (int) (((long) oVar.f37633b) + j10);
            int iMin = (int) Math.min(oVar.f37634c - i10, j11);
            this.f37614e.update(oVar.f37632a, i10, iMin);
            j11 -= (long) iMin;
            oVar = oVar.f37637f;
            j10 = 0;
        }
    }

    private void d() throws IOException {
        this.f37611b.e(10L);
        byte bF = this.f37611b.a().f(3L);
        boolean z10 = ((bF >> 1) & 1) == 1;
        if (z10) {
            a(this.f37611b.a(), 0L, 10L);
        }
        a("ID1ID2", 8075, this.f37611b.readShort());
        this.f37611b.skip(8L);
        if (((bF >> 2) & 1) == 1) {
            this.f37611b.e(2L);
            if (z10) {
                a(this.f37611b.a(), 0L, 2L);
            }
            long jG = this.f37611b.a().g();
            this.f37611b.e(jG);
            if (z10) {
                a(this.f37611b.a(), 0L, jG);
            }
            this.f37611b.skip(jG);
        }
        if (((bF >> 3) & 1) == 1) {
            long jA = this.f37611b.a((byte) 0);
            if (jA == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f37611b.a(), 0L, jA + 1);
            }
            this.f37611b.skip(jA + 1);
        }
        if (((bF >> 4) & 1) == 1) {
            long jA2 = this.f37611b.a((byte) 0);
            if (jA2 == -1) {
                throw new EOFException();
            }
            if (z10) {
                a(this.f37611b.a(), 0L, jA2 + 1);
            }
            this.f37611b.skip(jA2 + 1);
        }
        if (z10) {
            a("FHCRC", this.f37611b.g(), (short) this.f37614e.getValue());
            this.f37614e.reset();
        }
    }

    private void h() throws IOException {
        a("CRC", this.f37611b.e(), (int) this.f37614e.getValue());
        a("ISIZE", this.f37611b.e(), (int) this.f37612c.getBytesWritten());
    }

    @Override
    public long b(c cVar, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f37610a == 0) {
            d();
            this.f37610a = 1;
        }
        if (this.f37610a == 1) {
            long j11 = cVar.f37600b;
            long jB = this.f37613d.b(cVar, j10);
            if (jB != -1) {
                a(cVar, j11, jB);
                return jB;
            }
            this.f37610a = 2;
        }
        if (this.f37610a == 2) {
            h();
            this.f37610a = 3;
            if (!this.f37611b.f()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override
    public void close() throws IOException {
        this.f37613d.close();
    }

    private void a(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }

    @Override
    public t b() {
        return this.f37611b.b();
    }
}
