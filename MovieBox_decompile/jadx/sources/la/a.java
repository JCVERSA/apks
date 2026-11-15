package la;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import com.google.android.exoplayer2.util.s;
import com.google.common.base.c;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import da.h;
import da.i;
import java.util.List;

public final class a extends h {

    private final d0 f65664o;

    private final boolean f65665p;

    private final int f65666q;

    private final int f65667r;

    private final String f65668s;

    private final float f65669t;

    private final int f65670u;

    public a(List list) {
        super("Tx3gDecoder");
        this.f65664o = new d0();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.f65666q = 0;
            this.f65667r = -1;
            this.f65668s = C.SANS_SERIF_NAME;
            this.f65665p = false;
            this.f65669t = 0.85f;
            this.f65670u = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.f65666q = bArr[24];
        this.f65667r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.f65668s = "Serif".equals(p0.E(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i10 = bArr[25] * 20;
        this.f65670u = i10;
        boolean z10 = (bArr[0] & 32) != 0;
        this.f65665p = z10;
        if (z10) {
            this.f65669t = p0.p(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i10, 0.0f, 0.95f);
        } else {
            this.f65669t = 0.85f;
        }
    }

    private static void A(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
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

    private static void B(SpannableStringBuilder spannableStringBuilder, String str, int i10, int i11) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i10, i11, 16711713);
        }
    }

    private static String C(d0 d0Var) throws SubtitleDecoderException {
        char cG;
        y(d0Var.a() >= 2);
        int iJ = d0Var.J();
        if (iJ == 0) {
            return "";
        }
        return (d0Var.a() < 2 || !((cG = d0Var.g()) == 65279 || cG == 65534)) ? d0Var.B(iJ, c.f29403c) : d0Var.B(iJ, c.f29406f);
    }

    private void x(d0 d0Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        y(d0Var.a() >= 12);
        int iJ = d0Var.J();
        int iJ2 = d0Var.J();
        d0Var.Q(2);
        int iD = d0Var.D();
        d0Var.Q(1);
        int iN = d0Var.n();
        if (iJ2 > spannableStringBuilder.length()) {
            s.i("Tx3gDecoder", "Truncating styl end (" + iJ2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            iJ2 = spannableStringBuilder.length();
        }
        if (iJ < iJ2) {
            int i10 = iJ2;
            A(spannableStringBuilder, iD, this.f65666q, iJ, i10, 0);
            z(spannableStringBuilder, iN, this.f65667r, iJ, i10, 0);
            return;
        }
        s.i("Tx3gDecoder", "Ignoring styl with start (" + iJ + ") >= end (" + iJ2 + ").");
    }

    private static void y(boolean z10) throws SubtitleDecoderException {
        if (!z10) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    private static void z(SpannableStringBuilder spannableStringBuilder, int i10, int i11, int i12, int i13, int i14) {
        if (i10 != i11) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i10 >>> 8) | ((i10 & 255) << 24)), i12, i13, i14 | 33);
        }
    }

    @Override
    protected i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        this.f65664o.N(bArr, i10);
        String strC = C(this.f65664o);
        if (strC.isEmpty()) {
            return b.f65671b;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strC);
        A(spannableStringBuilder, this.f65666q, 0, 0, spannableStringBuilder.length(), 16711680);
        z(spannableStringBuilder, this.f65667r, -1, 0, spannableStringBuilder.length(), 16711680);
        B(spannableStringBuilder, this.f65668s, 0, spannableStringBuilder.length());
        float fP = this.f65669t;
        while (this.f65664o.a() >= 8) {
            int iE = this.f65664o.e();
            int iN = this.f65664o.n();
            int iN2 = this.f65664o.n();
            if (iN2 == 1937013100) {
                y(this.f65664o.a() >= 2);
                int iJ = this.f65664o.J();
                for (int i11 = 0; i11 < iJ; i11++) {
                    x(this.f65664o, spannableStringBuilder);
                }
            } else if (iN2 == 1952608120 && this.f65665p) {
                y(this.f65664o.a() >= 2);
                fP = p0.p(this.f65664o.J() / this.f65670u, 0.0f, 0.95f);
            }
            this.f65664o.P(iE + iN);
        }
        return new b(new da.b.C0703b().o(spannableStringBuilder).h(fP, 0).i(0).a());
    }
}
