package defpackage;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import java.util.ArrayList;
import java.util.Collections;

public final class rr6 extends rm9 {
    public final qw7 o;

    public rr6() {
        super("Mp4WebvttDecoder");
        this.o = new qw7();
    }

    public static jm1 x(qw7 qw7Var, int i) throws SubtitleDecoderException {
        CharSequence charSequenceQ = null;
        jm1.b bVarO = null;
        while (i > 0) {
            if (i < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int iN = qw7Var.n();
            int iN2 = qw7Var.n();
            int i2 = iN - 8;
            String strB = blb.B(qw7Var.d(), qw7Var.e(), i2);
            qw7Var.P(i2);
            i = (i - 8) - i2;
            if (iN2 == 1937011815) {
                bVarO = yic.o(strB);
            } else if (iN2 == 1885436268) {
                charSequenceQ = yic.q(null, strB.trim(), Collections.emptyList());
            }
        }
        if (charSequenceQ == null) {
            charSequenceQ = "";
        }
        return bVarO != null ? bVarO.o(charSequenceQ).a() : yic.l(charSequenceQ);
    }

    @Override
    public l2a v(byte[] bArr, int i, boolean z) throws SubtitleDecoderException {
        this.o.M(bArr, i);
        ArrayList arrayList = new ArrayList();
        while (this.o.a() > 0) {
            if (this.o.a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iN = this.o.n();
            if (this.o.n() == 1987343459) {
                arrayList.add(x(this.o, iN - 8));
            } else {
                this.o.P(iN - 8);
            }
        }
        return new sr6(arrayList);
    }
}
