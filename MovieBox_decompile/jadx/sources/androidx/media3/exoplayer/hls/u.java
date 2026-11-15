package androidx.media3.exoplayer.hls;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.p0;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import k2.l0;
import k2.m0;
import k2.s0;

public final class u implements k2.r {

    private static final Pattern f11686i = Pattern.compile("LOCAL:([^,]+)");

    private static final Pattern f11687j = Pattern.compile("MPEGTS:(-?\\d+)");

    private final String f11688a;

    private final p0 f11689b;

    private final h3.s.a f11691d;

    private final boolean f11692e;

    private k2.t f11693f;

    private int f11695h;

    private final j0 f11690c = new j0();

    private byte[] f11694g = new byte[1024];

    public u(String str, p0 p0Var, h3.s.a aVar, boolean z10) {
        this.f11688a = str;
        this.f11689b = p0Var;
        this.f11691d = aVar;
        this.f11692e = z10;
    }

    private s0 a(long j10) {
        s0 s0VarTrack = this.f11693f.track(0, 3);
        s0VarTrack.d(new androidx.media3.common.r.b().u0(MimeTypes.TEXT_VTT).j0(this.f11688a).y0(j10).N());
        this.f11693f.endTracks();
        return s0VarTrack;
    }

    private void g() throws ParserException {
        j0 j0Var = new j0(this.f11694g);
        q3.h.e(j0Var);
        long jH = 0;
        long jD = 0;
        for (String strS = j0Var.s(); !TextUtils.isEmpty(strS); strS = j0Var.s()) {
            if (strS.startsWith("X-TIMESTAMP-MAP")) {
                Matcher matcher = f11686i.matcher(strS);
                if (!matcher.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain local timestamp: " + strS, null);
                }
                Matcher matcher2 = f11687j.matcher(strS);
                if (!matcher2.find()) {
                    throw ParserException.createForMalformedContainer("X-TIMESTAMP-MAP doesn't contain media timestamp: " + strS, null);
                }
                jD = q3.h.d((String) androidx.media3.common.util.a.e(matcher.group(1)));
                jH = p0.h(Long.parseLong((String) androidx.media3.common.util.a.e(matcher2.group(1))));
            }
        }
        Matcher matcherA = q3.h.a(j0Var);
        if (matcherA == null) {
            a(0L);
            return;
        }
        long jD2 = q3.h.d((String) androidx.media3.common.util.a.e(matcherA.group(1)));
        long jB = this.f11689b.b(p0.l((jH + jD2) - jD));
        s0 s0VarA = a(jB - jD2);
        this.f11690c.U(this.f11694g, this.f11695h);
        s0VarA.c(this.f11690c, this.f11695h);
        s0VarA.b(jB, 1, this.f11695h, 0, null);
    }

    @Override
    public boolean b(k2.s sVar) {
        sVar.peekFully(this.f11694g, 0, 6, false);
        this.f11690c.U(this.f11694g, 6);
        if (q3.h.b(this.f11690c)) {
            return true;
        }
        sVar.peekFully(this.f11694g, 6, 3, false);
        this.f11690c.U(this.f11694g, 9);
        return q3.h.b(this.f11690c);
    }

    @Override
    public k2.r c() {
        return k2.q.b(this);
    }

    @Override
    public int d(k2.s sVar, l0 l0Var) throws ParserException {
        androidx.media3.common.util.a.e(this.f11693f);
        int length = (int) sVar.getLength();
        int i10 = this.f11695h;
        byte[] bArr = this.f11694g;
        if (i10 == bArr.length) {
            this.f11694g = Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.f11694g;
        int i11 = this.f11695h;
        int i12 = sVar.read(bArr2, i11, bArr2.length - i11);
        if (i12 != -1) {
            int i13 = this.f11695h + i12;
            this.f11695h = i13;
            if (length == -1 || i13 != length) {
                return 0;
            }
        }
        g();
        return -1;
    }

    @Override
    public void e(k2.t tVar) {
        if (this.f11692e) {
            tVar = new h3.t(tVar, this.f11691d);
        }
        this.f11693f = tVar;
        tVar.d(new m0.b(C.TIME_UNSET));
    }

    @Override
    public List f() {
        return k2.q.a(this);
    }

    @Override
    public void seek(long j10, long j11) {
        throw new IllegalStateException();
    }

    @Override
    public void release() {
    }
}
