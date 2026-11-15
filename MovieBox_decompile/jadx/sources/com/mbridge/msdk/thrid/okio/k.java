package com.mbridge.msdk.thrid.okio;

import com.cloud.tmc.kernel.utils.UrlUtils;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

public final class k implements s {

    private final e f37615a;

    private final Inflater f37616b;

    private int f37617c;

    private boolean f37618d;

    k(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f37615a = eVar;
        this.f37616b = inflater;
    }

    private void h() throws IOException {
        int i10 = this.f37617c;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f37616b.getRemaining();
        this.f37617c -= remaining;
        this.f37615a.skip(remaining);
    }

    @Override
    public long b(c cVar, long j10) throws IOException {
        boolean zD;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f37618d) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        do {
            zD = d();
            try {
                o oVarB = cVar.b(1);
                int iInflate = this.f37616b.inflate(oVarB.f37632a, oVarB.f37634c, (int) Math.min(j10, 8192 - oVarB.f37634c));
                if (iInflate > 0) {
                    oVarB.f37634c += iInflate;
                    long j11 = iInflate;
                    cVar.f37600b += j11;
                    return j11;
                }
                if (!this.f37616b.finished() && !this.f37616b.needsDictionary()) {
                }
                h();
                if (oVarB.f37633b != oVarB.f37634c) {
                    return -1L;
                }
                cVar.f37599a = oVarB.b();
                p.a(oVarB);
                return -1L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        } while (!zD);
        throw new EOFException("source exhausted prematurely");
    }

    @Override
    public void close() throws IOException {
        if (this.f37618d) {
            return;
        }
        this.f37616b.end();
        this.f37618d = true;
        this.f37615a.close();
    }

    public final boolean d() throws IOException {
        if (!this.f37616b.needsInput()) {
            return false;
        }
        h();
        if (this.f37616b.getRemaining() != 0) {
            throw new IllegalStateException(UrlUtils.QUESTION_MARK);
        }
        if (this.f37615a.f()) {
            return true;
        }
        o oVar = this.f37615a.a().f37599a;
        int i10 = oVar.f37634c;
        int i11 = oVar.f37633b;
        int i12 = i10 - i11;
        this.f37617c = i12;
        this.f37616b.setInput(oVar.f37632a, i11, i12);
        return false;
    }

    @Override
    public t b() {
        return this.f37615a.b();
    }
}
