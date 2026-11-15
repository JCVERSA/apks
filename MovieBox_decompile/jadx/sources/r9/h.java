package r9;

import com.google.android.exoplayer2.audio.c0;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.p1;
import com.google.android.exoplayer2.util.d0;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.DefaultLoadControl;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import i9.h0;
import java.util.Arrays;
import java.util.List;
import okio.Utf8;

final class h extends i {

    private static final byte[] f70907o = {79, 112, 117, 115, 72, 101, 97, 100};

    private static final byte[] f70908p = {79, 112, 117, 115, 84, 97, 103, 115};

    private boolean f70909n;

    h() {
    }

    private long n(byte[] bArr) {
        int i10;
        int i11;
        byte b10 = bArr[0];
        int i12 = b10 & 255;
        int i13 = b10 & 3;
        if (i13 != 0) {
            i10 = 2;
            if (i13 != 1 && i13 != 2) {
                i10 = bArr[1] & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i10 = 1;
        }
        int i14 = i12 >> 3;
        int i15 = i14 & 3;
        if (i14 >= 16) {
            i11 = DefaultLoadControl.DEFAULT_BUFFER_FOR_PLAYBACK_MS << i15;
        } else if (i14 >= 12) {
            i11 = 10000 << (i14 & 1);
        } else {
            i11 = i15 == 3 ? 60000 : 10000 << i15;
        }
        return ((long) i10) * ((long) i11);
    }

    private static boolean o(d0 d0Var, byte[] bArr) {
        if (d0Var.a() < bArr.length) {
            return false;
        }
        int iE = d0Var.e();
        byte[] bArr2 = new byte[bArr.length];
        d0Var.j(bArr2, 0, bArr.length);
        d0Var.P(iE);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean p(d0 d0Var) {
        return o(d0Var, f70907o);
    }

    @Override
    protected long f(d0 d0Var) {
        return c(n(d0Var.d()));
    }

    @Override
    protected boolean h(d0 d0Var, long j10, i.b bVar) {
        if (o(d0Var, f70907o)) {
            byte[] bArrCopyOf = Arrays.copyOf(d0Var.d(), d0Var.f());
            int iC = c0.c(bArrCopyOf);
            List listA = c0.a(bArrCopyOf);
            if (bVar.f70923a != null) {
                return true;
            }
            bVar.f70923a = new p1.b().e0(MimeTypes.AUDIO_OPUS).H(iC).f0(48000).T(listA).E();
            return true;
        }
        byte[] bArr = f70908p;
        if (!o(d0Var, bArr)) {
            com.google.android.exoplayer2.util.a.i(bVar.f70923a);
            return false;
        }
        com.google.android.exoplayer2.util.a.i(bVar.f70923a);
        if (this.f70909n) {
            return true;
        }
        this.f70909n = true;
        d0Var.Q(bArr.length);
        Metadata metadataC = h0.c(ImmutableList.copyOf(h0.j(d0Var, false, false).f61933b));
        if (metadataC == null) {
            return true;
        }
        bVar.f70923a = bVar.f70923a.b().X(metadataC.copyWithAppendedEntriesFrom(bVar.f70923a.f24899j)).E();
        return true;
    }

    @Override
    protected void l(boolean z10) {
        super.l(z10);
        if (z10) {
            this.f70909n = false;
        }
    }
}
