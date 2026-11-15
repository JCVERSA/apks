package o3;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import androidx.media3.common.util.u;
import com.google.common.collect.ImmutableList;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.e;
import h3.k;
import h3.r;
import h3.s;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;

public final class a implements s {

    private final j0 f67447a = new j0();

    private final boolean f67448b;

    private final int f67449c;

    private final int f67450d;

    private final String f67451e;

    private final float f67452f;

    private final int f67453g;

    public a(List list) {
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f67449c = 0;
            this.f67450d = -1;
            this.f67451e = C.SANS_SERIF_NAME;
            this.f67448b = false;
            this.f67452f = 0.85f;
            this.f67453g = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f67449c = bArr[24];
        this.f67450d = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f67451e = "Serif".equals(a1.I(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i10 = bArr[25] * 20;
        this.f67453g = i10;
        boolean z10 = (bArr[0] & 32) != 0;
        this.f67448b = z10;
        if (z10) {
            this.f67452f = a1.o(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.f67452f = 0.85f;
        }
    }

    private void d(j0 j0Var, SpannableStringBuilder spannableStringBuilder) {
        androidx.media3.common.util.a.a(j0Var.a() >= 12);
        int iP = j0Var.P();
        int iP2 = j0Var.P();
        j0Var.X(2);
        int iH = j0Var.H();
        j0Var.X(1);
        int iQ = j0Var.q();
        if (iP2 > spannableStringBuilder.length()) {
            u.h("Tx3gParser", "Truncating styl end (" + iP2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iP2 = spannableStringBuilder.length();
        }
        if (iP < iP2) {
            int i10 = iP2;
            f(spannableStringBuilder, iH, this.f67449c, iP, i10, 0);
            e(spannableStringBuilder, iQ, this.f67450d, iP, i10, 0);
            return;
        }
        u.h("Tx3gParser", "Ignoring styl with start (" + iP + ") >= end (" + iP2 + ").");
    }

    private static void e(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    private static void f(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            int i15 = i14 | 33;
            boolean z10 = (i10 & 1) != 0;
            boolean z11 = (i10 & 2) != 0;
            if (z10) {
                if (z11) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i12, i13, i15);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i12, i13, i15);
                }
            } else if (z11) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i12, i13, i15);
            }
            boolean z12 = (i10 & 4) != 0;
            if (z12) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i12, i13, i15);
            }
            if (z12 || z10 || z11) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i12, i13, i15);
        }
    }

    private static void g(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String h(j0 j0Var) {
        androidx.media3.common.util.a.a(j0Var.a() >= 2);
        int iP = j0Var.P();
        if (iP == 0) {
            return "";
        }
        int iF = j0Var.f();
        Charset charsetR = j0Var.R();
        int iF2 = iP - (j0Var.f() - iF);
        if (charsetR == null) {
            charsetR = StandardCharsets.UTF_8;
        }
        return j0Var.F(iF2, charsetR);
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        this.f67447a.U(bArr, i10 + i11);
        this.f67447a.W(i10);
        String strH = h(this.f67447a);
        if (strH.isEmpty()) {
            mVar.accept(new e(ImmutableList.of(), C.TIME_UNSET, C.TIME_UNSET));
            return;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strH);
        f(spannableStringBuilder, this.f67449c, 0, 0, spannableStringBuilder.length(), 16711680);
        e(spannableStringBuilder, this.f67450d, -1, 0, spannableStringBuilder.length(), 16711680);
        g(spannableStringBuilder, this.f67451e, 0, spannableStringBuilder.length());
        float fO = this.f67452f;
        while (this.f67447a.a() >= 8) {
            int iF = this.f67447a.f();
            int iQ = this.f67447a.q();
            int iQ2 = this.f67447a.q();
            if (iQ2 == 1937013100) {
                androidx.media3.common.util.a.a(this.f67447a.a() >= 2);
                int iP = this.f67447a.P();
                for (int i12 = 0; i12 < iP; i12++) {
                    d(this.f67447a, spannableStringBuilder);
                }
            } else if (iQ2 == 1952608120 && this.f67448b) {
                androidx.media3.common.util.a.a(this.f67447a.a() >= 2);
                fO = a1.o(this.f67447a.P() / this.f67453g, 0.0f, 0.95f);
            }
            this.f67447a.W(iF + iQ);
        }
        mVar.accept(new e(ImmutableList.of(new u1.a.b().o(spannableStringBuilder).h(fO, 0).i(0).a()), C.TIME_UNSET, C.TIME_UNSET));
    }

    @Override
    public int c() {
        return 2;
    }

    @Override
    public void reset() {
        r.b(this);
    }
}
