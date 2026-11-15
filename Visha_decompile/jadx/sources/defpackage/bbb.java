package defpackage;

import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.media3.common.C;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.List;

public final class bbb extends rm9 {
    public final qw7 o;
    public final boolean p;
    public final int q;
    public final int r;
    public final String s;
    public final float t;
    public final int u;

    public bbb(List list) {
        super("Tx3gDecoder");
        this.o = new qw7();
        int size = list.size();
        String str = C.SANS_SERIF_NAME;
        if (size != 1 || (((byte[]) list.get(0)).length != 48 && ((byte[]) list.get(0)).length != 53)) {
            this.q = 0;
            this.r = -1;
            this.s = C.SANS_SERIF_NAME;
            this.p = false;
            this.t = 0.85f;
            this.u = -1;
            return;
        }
        byte[] bArr = (byte[]) list.get(0);
        this.q = bArr[24];
        this.r = ((bArr[26] & 255) << 24) | ((bArr[27] & 255) << 16) | ((bArr[28] & 255) << 8) | (bArr[29] & 255);
        this.s = "Serif".equals(blb.B(bArr, 43, bArr.length - 43)) ? C.SERIF_NAME : str;
        int i = bArr[25] * 20;
        this.u = i;
        boolean z = (bArr[0] & 32) != 0;
        this.p = z;
        if (z) {
            this.t = blb.o(((bArr[11] & 255) | ((bArr[10] & 255) << 8)) / i, 0.0f, 0.95f);
        } else {
            this.t = 0.85f;
        }
    }

    public static void A(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            int i6 = i5 | 33;
            boolean z = (i & 1) != 0;
            boolean z2 = (i & 2) != 0;
            if (z) {
                if (z2) {
                    spannableStringBuilder.setSpan(new StyleSpan(3), i3, i4, i6);
                } else {
                    spannableStringBuilder.setSpan(new StyleSpan(1), i3, i4, i6);
                }
            } else if (z2) {
                spannableStringBuilder.setSpan(new StyleSpan(2), i3, i4, i6);
            }
            boolean z3 = (i & 4) != 0;
            if (z3) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i3, i4, i6);
            }
            if (z3 || z || z2) {
                return;
            }
            spannableStringBuilder.setSpan(new StyleSpan(0), i3, i4, i6);
        }
    }

    public static void B(SpannableStringBuilder spannableStringBuilder, String str, int i, int i2) {
        if (str != C.SANS_SERIF_NAME) {
            spannableStringBuilder.setSpan(new TypefaceSpan(str), i, i2, 16711713);
        }
    }

    public static String C(qw7 qw7Var) throws SubtitleDecoderException {
        char cG;
        y(qw7Var.a() >= 2);
        int I = qw7Var.I();
        if (I == 0) {
            return "";
        }
        return (qw7Var.a() < 2 || !((cG = qw7Var.g()) == 65279 || cG == 65534)) ? qw7Var.A(I, rv0.c) : qw7Var.A(I, rv0.f);
    }

    public static void y(boolean z) throws SubtitleDecoderException {
        if (!z) {
            throw new SubtitleDecoderException("Unexpected subtitle format.");
        }
    }

    public static void z(SpannableStringBuilder spannableStringBuilder, int i, int i2, int i3, int i4, int i5) {
        if (i != i2) {
            spannableStringBuilder.setSpan(new ForegroundColorSpan((i >>> 8) | ((i & 255) << 24)), i3, i4, i5 | 33);
        }
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.o.M(bArr, i);
        String strC = C(this.o);
        if (strC.isEmpty()) {
            return cbb.c;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(strC);
        A(spannableStringBuilder, this.q, 0, 0, spannableStringBuilder.length(), 16711680);
        z(spannableStringBuilder, this.r, -1, 0, spannableStringBuilder.length(), 16711680);
        B(spannableStringBuilder, this.s, 0, spannableStringBuilder.length());
        float fO = this.t;
        while (this.o.a() >= 8) {
            int iE = this.o.e();
            int iN = this.o.n();
            int iN2 = this.o.n();
            if (iN2 == 1937013100) {
                y(this.o.a() >= 2);
                int I = this.o.I();
                for (int i2 = 0; i2 < I; i2++) {
                    x(this.o, spannableStringBuilder);
                }
            } else if (iN2 == 1952608120 && this.p) {
                y(this.o.a() >= 2);
                fO = blb.o(this.o.I() / this.u, 0.0f, 0.95f);
            }
            this.o.O(iE + iN);
        }
        return new cbb(new jm1.b().o(spannableStringBuilder).h(fO, 0).i(0).a());
    }

    public final void x(qw7 qw7Var, SpannableStringBuilder spannableStringBuilder) throws SubtitleDecoderException {
        y(qw7Var.a() >= 12);
        int I = qw7Var.I();
        int I2 = qw7Var.I();
        qw7Var.P(2);
        int iC = qw7Var.C();
        qw7Var.P(1);
        int iN = qw7Var.n();
        if (I2 > spannableStringBuilder.length()) {
            op5.i("Tx3gDecoder", "Truncating styl end (" + I2 + ") to cueText.length() (" + spannableStringBuilder.length() + ").");
            I2 = spannableStringBuilder.length();
        }
        if (I < I2) {
            int i = I2;
            A(spannableStringBuilder, iC, this.q, I, i, 0);
            z(spannableStringBuilder, iN, this.r, I, i, 0);
            return;
        }
        op5.i("Tx3gDecoder", "Ignoring styl with start (" + I + ") >= end (" + I2 + ").");
    }
}
