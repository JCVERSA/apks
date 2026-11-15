package q3;

import android.text.TextUtils;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.j0;
import androidx.media3.common.util.m;
import h3.k;
import h3.r;
import h3.s;
import java.util.ArrayList;

public final class g implements s {

    private final j0 f69380a = new j0();

    private final b f69381b = new b();

    private static int d(j0 j0Var) {
        int i10 = -1;
        int iF = 0;
        while (i10 == -1) {
            iF = j0Var.f();
            String strS = j0Var.s();
            if (strS == null) {
                i10 = 0;
            } else if ("STYLE".equals(strS)) {
                i10 = 2;
            } else {
                i10 = strS.startsWith("NOTE") ? 1 : 3;
            }
        }
        j0Var.W(iF);
        return i10;
    }

    private static void e(j0 j0Var) {
        while (!TextUtils.isEmpty(j0Var.s())) {
        }
    }

    @Override
    public k a(byte[] bArr, int i10, int i11) {
        return r.a(this, bArr, i10, i11);
    }

    @Override
    public void b(byte[] bArr, int i10, int i11, s.b bVar, m mVar) {
        d dVarN;
        this.f69380a.U(bArr, i11 + i10);
        this.f69380a.W(i10);
        ArrayList arrayList = new ArrayList();
        try {
            h.e(this.f69380a);
            while (!TextUtils.isEmpty(this.f69380a.s())) {
            }
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                int iD = d(this.f69380a);
                if (iD == 0) {
                    h3.i.c(new j(arrayList2), bVar, mVar);
                    return;
                }
                if (iD == 1) {
                    e(this.f69380a);
                } else if (iD == 2) {
                    if (!arrayList2.isEmpty()) {
                        throw new IllegalArgumentException("A style block was found after the first cue.");
                    }
                    this.f69380a.s();
                    arrayList.addAll(this.f69381b.d(this.f69380a));
                } else if (iD == 3 && (dVarN = e.n(this.f69380a, arrayList)) != null) {
                    arrayList2.add(dVarN);
                }
            }
        } catch (ParserException e10) {
            throw new IllegalArgumentException(e10);
        }
    }

    @Override
    public int c() {
        return 1;
    }

    @Override
    public void reset() {
        r.b(this);
    }
}
