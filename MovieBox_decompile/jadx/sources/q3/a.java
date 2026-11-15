package q3;

import androidx.media3.common.util.a1;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import h3.k;
import h3.r;
import h3.s;
import java.util.ArrayList;
import java.util.Collections;

public final class a implements s {

    private final j0 f69331a = new j0();

    private static u1.a d(j0 j0Var, int i10) {
        CharSequence charSequenceR = null;
        u1.a.b bVarP = null;
        while (i10 > 0) {
            androidx.media3.common.util.a.b(i10 >= 8, "Incomplete vtt cue box header found.");
            int iQ = j0Var.q();
            int iQ2 = j0Var.q();
            int i11 = iQ - 8;
            String strI = a1.I(j0Var.e(), j0Var.f(), i11);
            j0Var.X(i11);
            i10 = (i10 - 8) - i11;
            if (iQ2 == 1937011815) {
                bVarP = e.p(strI);
            } else if (iQ2 == 1885436268) {
                charSequenceR = e.r(null, strI.trim(), Collections.emptyList());
            }
        }
        if (charSequenceR == null) {
            charSequenceR = "";
        }
        return bVarP != null ? bVarP.o(charSequenceR).a() : e.m(charSequenceR);
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        this.f69331a.U(bArr, i11 + i10);
        this.f69331a.W(i10);
        ArrayList arrayList = new ArrayList();
        while (this.f69331a.a() > 0) {
            androidx.media3.common.util.a.b(this.f69331a.a() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int iQ = this.f69331a.q();
            if (this.f69331a.q() == 1987343459) {
                arrayList.add(d(this.f69331a, iQ - 8));
            } else {
                this.f69331a.X(iQ - 8);
            }
        }
        mVar.accept(new h3.e(arrayList, C.TIME_UNSET, C.TIME_UNSET));
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
