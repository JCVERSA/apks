package com.yandex.mobile.ads.impl;

import androidx.media3.extractor.OpusUtil;
import com.hisavana.common.constant.ComConstants;
import java.util.ArrayList;
import java.util.Arrays;
import okio.Utf8;

final class hf1 extends y22 {
    private static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    private static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    private boolean n;

    public static boolean b(ag1 ag1Var) {
        byte[] bArr = o;
        if (ag1Var.a() < 8) {
            return false;
        }
        int iD = ag1Var.d();
        byte[] bArr2 = new byte[8];
        ag1Var.a(bArr2, 0, 8);
        ag1Var.e(iD);
        return Arrays.equals(bArr2, bArr);
    }

    @Override
    public final long a(ag1 ag1Var) {
        int i;
        int i2;
        byte[] bArrC = ag1Var.c();
        byte b = bArrC[0];
        int i3 = b & 255;
        int i4 = b & 3;
        if (i4 != 0) {
            i = 2;
            if (i4 != 1 && i4 != 2) {
                i = bArrC[1] & Utf8.REPLACEMENT_BYTE;
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
        return b(((long) i) * ((long) i2));
    }

    @Override
    public final boolean a(ag1 ag1Var, long j, y22.a aVar) throws eg1 {
        byte[] bArr = o;
        if (ag1Var.a() >= 8) {
            int iD = ag1Var.d();
            byte[] bArr2 = new byte[8];
            ag1Var.a(bArr2, 0, 8);
            ag1Var.e(iD);
            if (Arrays.equals(bArr2, bArr)) {
                byte[] bArrCopyOf = Arrays.copyOf(ag1Var.c(), ag1Var.e());
                int i = bArrCopyOf[9] & 255;
                ArrayList arrayListA = if1.a(bArrCopyOf);
                if (aVar.a != null) {
                    return true;
                }
                aVar.a = new jc0.a().e("audio/opus").c(i).l(OpusUtil.SAMPLE_RATE).a(arrayListA).a();
                return true;
            }
        }
        byte[] bArr3 = p;
        if (ag1Var.a() >= 8) {
            int iD2 = ag1Var.d();
            byte[] bArr4 = new byte[8];
            ag1Var.a(bArr4, 0, 8);
            ag1Var.e(iD2);
            if (Arrays.equals(bArr4, bArr3)) {
                if (aVar.a != null) {
                    if (this.n) {
                        return true;
                    }
                    this.n = true;
                    ag1Var.f(8);
                    k01 k01VarA = gj2.a(kk0.b(gj2.a(ag1Var, false, false).a));
                    if (k01VarA == null) {
                        return true;
                    }
                    aVar.a = aVar.a.a().a(k01VarA.a(aVar.a.k)).a();
                    return true;
                }
                throw new IllegalStateException();
            }
        }
        if (aVar.a != null) {
            return false;
        }
        throw new IllegalStateException();
    }

    @Override
    public final void a(boolean z) {
        super.a(z);
        if (z) {
            this.n = false;
        }
    }
}
