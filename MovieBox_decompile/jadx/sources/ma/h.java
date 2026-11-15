package ma;

import android.text.TextUtils;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.text.SubtitleDecoderException;
import com.google.android.exoplayer2.util.d0;
import java.util.ArrayList;

public final class h extends da.h {

    private final d0 f66344o;

    private final c f66345p;

    public h() {
        super("WebvttDecoder");
        this.f66344o = new d0();
        this.f66345p = new c();
    }

    private static int x(d0 d0Var) {
        int i10 = -1;
        int iE = 0;
        while (i10 == -1) {
            iE = d0Var.e();
            String strP = d0Var.p();
            if (strP == null) {
                i10 = 0;
            } else if ("STYLE".equals(strP)) {
                i10 = 2;
            } else {
                i10 = strP.startsWith("NOTE") ? 1 : 3;
            }
        }
        d0Var.P(iE);
        return i10;
    }

    private static void y(d0 d0Var) {
        while (!TextUtils.isEmpty(d0Var.p())) {
        }
    }

    @Override
    protected da.i w(byte[] bArr, int i10, boolean z10) throws SubtitleDecoderException {
        e eVarM;
        this.f66344o.N(bArr, i10);
        ArrayList arrayList = new ArrayList();
        try {
            i.e(this.f66344o);
            while (!TextUtils.isEmpty(this.f66344o.p())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iX = x(this.f66344o);
                if (iX == 0) {
                    return new k(arrayList2);
                }
                if (iX == 1) {
                    y(this.f66344o);
                } else if (iX == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new SubtitleDecoderException("A style block was found after the first cue.");
                    }
                    this.f66344o.p();
                    arrayList.addAll(this.f66345p.d(this.f66344o));
                } else if (iX == 3 && (eVarM = f.m(this.f66344o, arrayList)) != null) {
                    arrayList2.add(eVarM);
                }
            }
        } catch (ParserException e10) {
            throw new SubtitleDecoderException(e10);
        }
    }
}
