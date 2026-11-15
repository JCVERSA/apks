package ma;

import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Collections;

public final class a extends da.h {

    private final d0 f66294o;

    public a() {
        super("Mp4WebvttDecoder");
        this.f66294o = new d0();
    }

    private static da.b x(d0 d0Var, int i10) throws SubtitleDecoderException {
        CharSequence charSequenceQ = null;
        da.b.C0703b c0703bO = null;
        while (i10 > 0) {
            if (i10 < 8) {
                throw new SubtitleDecoderException("Incomplete vtt cue box header found.");
            }
            int iN = d0Var.n();
            int iN2 = d0Var.n();
            int i11 = iN - 8;
            String strE = p0.E(d0Var.d(), d0Var.e(), i11);
            d0Var.Q(i11);
            i10 = (i10 - 8) - i11;
            if (iN2 == 1937011815) {
                c0703bO = f.o(strE);
            } else if (iN2 == 1885436268) {
                charSequenceQ = f.q(null, strE.trim(), Collections.emptyList());
            }
        }
        if (charSequenceQ == null) {
            charSequenceQ = "";
        }
        return c0703bO != null ? c0703bO.o(charSequenceQ).a() : f.l(charSequenceQ);
    }

    @Override
    protected da.i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        this.f66294o.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        while (this.f66294o.a() > 0) {
            if (this.f66294o.a() < 8) {
                throw new SubtitleDecoderException("Incomplete Mp4Webvtt Top Level box header found.");
            }
            int iN = this.f66294o.n();
            if (this.f66294o.n() == 1987343459) {
                arrayList.add(x(this.f66294o, iN - 8));
            } else {
                this.f66294o.Q(iN - 8);
            }
        }
        return new b(arrayList);
    }
}
