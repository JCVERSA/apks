package defpackage;

import androidx.media3.extractor.OpusUtil;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.common.collect.ImmutableList;
import com.hisavana.common.constant.ComConstants;
import java.util.Arrays;
import java.util.List;
import okio.Utf8;

public final class ss7 extends sy9 {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    public static boolean o(qw7 qw7Var, byte[] bArr) {
        if (qw7Var.a() < bArr.length) {
            return false;
        }
        int iE = qw7Var.e();
        byte[] bArr2 = new byte[bArr.length];
        qw7Var.j(bArr2, 0, bArr.length);
        qw7Var.O(iE);
        return Arrays.equals(bArr2, bArr);
    }

    public static boolean p(qw7 qw7Var) {
        return o(qw7Var, o);
    }

    @Override
    public long f(qw7 qw7Var) {
        return c(n(qw7Var.d()));
    }

    @Override
    public boolean i(qw7 qw7Var, long j, sy9.b bVar) {
        if (o(qw7Var, o)) {
            byte[] bArrCopyOf = Arrays.copyOf(qw7Var.d(), qw7Var.f());
            int iC = ts7.c(bArrCopyOf);
            List listA = ts7.a(bArrCopyOf);
            if (bVar.a != null) {
                return true;
            }
            bVar.a = new k.b().e0("audio/opus").H(iC).f0(OpusUtil.SAMPLE_RATE).T(listA).E();
            return true;
        }
        byte[] bArr = p;
        if (!o(qw7Var, bArr)) {
            zi.i(bVar.a);
            return false;
        }
        zi.i(bVar.a);
        if (this.n) {
            return true;
        }
        this.n = true;
        qw7Var.P(bArr.length);
        Metadata metadataC = agc.c(ImmutableList.copyOf(agc.j(qw7Var, false, false).b));
        if (metadataC == null) {
            return true;
        }
        bVar.a = bVar.a.b().X(metadataC.copyWithAppendedEntriesFrom(bVar.a.k)).E();
        return true;
    }

    @Override
    public void l(boolean z) {
        super.l(z);
        if (z) {
            this.n = false;
        }
    }

    public final long n(byte[] bArr) {
        int i;
        int i2;
        byte b = bArr[0];
        int i3 = b & 255;
        int i4 = b & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = bArr[1] & Utf8.REPLACEMENT_BYTE;
            }
        } else {
            i = 1;
        }
        int i5 = i3 >> 3;
        int i6 = i5 & 3;
        if (i5 >= 16) {
            i2 = 2500 << i6;
        } else if (i5 >= 12) {
            i2 = 10000 << (i5 & 1);
        } else {
            i2 = i6 == 3 ? ComConstants.defScheduleTime : 10000 << i6;
        }
        return ((long) i) * ((long) i2);
    }
}
