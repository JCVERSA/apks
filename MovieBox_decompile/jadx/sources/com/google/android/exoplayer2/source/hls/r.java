package com.google.android.exoplayer2.source.hls;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.l0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.a0;
import i9.b0;
import i9.e0;
import java.util.Arrays;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public final class r implements i9.l {

    private static final Pattern f25529g = Pattern.compile("LOCAL:([^,]+)");

    private static final Pattern f25530h = Pattern.compile("MPEGTS:(-?\\d+)");

    private final String f25531a;

    private final l0 f25532b;

    private i9.n f25534d;

    private int f25536f;

    private final d0 f25533c = new d0();

    private byte[] f25535e = new byte[1024];

    public r(String str, l0 l0Var) {
        this.f25531a = str;
        this.f25532b = l0Var;
    }

    private e0 a(long j10) {
        e0 e0VarTrack = this.f25534d.track(0, 3);
        e0VarTrack.d(new p1.b().e0(MimeTypes.TEXT_VTT).V(this.f25531a).i0(j10).E());
        this.f25534d.endTracks();
        return e0VarTrack;
    }

    private void e() throws ParserException {
        d0 d0Var = new d0(this.f25535e);
        ma.i.e(d0Var);
        long jF = 0;
        long jD = 0;
        for (String strP = d0Var.p(); !TextUtils.isEmpty(strP); strP = d0Var.p()) {
            if (strP.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f25529g.matcher(strP);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strP, null);
                }
                Matcher matcher2 = f25530h.matcher(strP);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strP, null);
                }
                jD = ma.i.d((String) com.google.android.exoplayer2.util.a.e(matcher.group(1)));
                jF = l0.f(Long.parseLong((String) com.google.android.exoplayer2.util.a.e(matcher2.group(1))));
            }
        }
        Matcher matcherA = ma.i.a(d0Var);
        if (matcherA == null) {
            a(0L);
            return;
        }
        long jD2 = ma.i.d((String) com.google.android.exoplayer2.util.a.e(matcherA.group(1)));
        long jB = this.f25532b.b(l0.j((jF + jD2) - jD));
        e0 e0VarA = a(jB - jD2);
        this.f25533c.N(this.f25535e, this.f25536f);
        e0VarA.c(this.f25533c, this.f25536f);
        e0VarA.e(jB, 1, this.f25536f, 0, null);
    }

    @Override
    public void b(i9.n nVar) {
        this.f25534d = nVar;
        nVar.g(new b0.b(C.TIME_UNSET));
    }

    @Override
    public boolean c(i9.m mVar) {
        mVar.peekFully(this.f25535e, 0, 6, false);
        this.f25533c.N(this.f25535e, 6);
        if (ma.i.b(this.f25533c)) {
            return true;
        }
        mVar.peekFully(this.f25535e, 6, 3, false);
        this.f25533c.N(this.f25535e, 9);
        return ma.i.b(this.f25533c);
    }

    @Override
    public int d(i9.m mVar, a0 a0Var) throws ParserException {
        com.google.android.exoplayer2.util.a.e(this.f25534d);
        int length = (int) mVar.getLength();
        int i10 = this.f25536f;
        byte[] bArr = this.f25535e;
        if (i10 == bArr.length) {
            this.f25535e = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f25535e;
        int i11 = this.f25536f;
        int i12 = mVar.read(bArr2, i11, bArr2.length - i11);
        if (i12 != -1) {
            int i13 = this.f25536f + i12;
            this.f25536f = i13;
            if (length == -1 || i13 != length) {
                return 0;
            }
        }
        e();
        return -1;
    }

    @Override
    public void seek(long j10, long j11) {
        throw new IllegalStateException();
    }

    @Override
    public void release() {
    }
}
