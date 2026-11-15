package f3;

import androidx.media3.common.r;
import androidx.media3.common.util.j0;
import androidx.media3.common.x;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import java.util.Arrays;
import java.util.List;
import k2.k0;
import k2.v0;

final class h extends i {

    private static final byte[] f60010o = {79, 112, 117, 115, 72, 101, 97, 100};

    private static final byte[] f60011p = {79, 112, 117, 115, 84, 97, 103, 115};

    private boolean f60012n;

    h() {
    }

    private static boolean n(j0 j0Var, byte[] bArr) {
        if (j0Var.a() < bArr.length) {
            return false;
        }
        int iF = j0Var.f();
        byte[] bArr2 = new byte[bArr.length];
        j0Var.l(bArr2, 0, bArr.length);
        j0Var.W(iF);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean o(j0 j0Var) {
        return n(j0Var, f60010o);
    }

    @Override
    protected long f(j0 j0Var) {
        return c(k0.e(j0Var.e()));
    }

    @Override
    protected boolean h(j0 j0Var, long j10, i.b bVar) {
        if (n(j0Var, f60010o)) {
            byte[] bArrCopyOf = Arrays.copyOf(j0Var.e(), j0Var.g());
            int iC = k0.c(bArrCopyOf);
            List listA = k0.a(bArrCopyOf);
            if (bVar.f60026a != null) {
                return true;
            }
            bVar.f60026a = new r.b().U("audio/ogg").u0(MimeTypes.AUDIO_OPUS).R(iC).v0(48000).g0(listA).N();
            return true;
        }
        byte[] bArr = f60011p;
        if (!n(j0Var, bArr)) {
            androidx.media3.common.util.a.i(bVar.f60026a);
            return false;
        }
        androidx.media3.common.util.a.i(bVar.f60026a);
        if (this.f60012n) {
            return true;
        }
        this.f60012n = true;
        j0Var.X(bArr.length);
        x xVarD = v0.d(ImmutableList.copyOf(v0.k(j0Var, false, false).f63703b));
        if (xVarD == null) {
            return true;
        }
        bVar.f60026a = bVar.f60026a.b().n0(xVarD.b(bVar.f60026a.f9846l)).N();
        return true;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f60012n = false;
        }
    }
}
