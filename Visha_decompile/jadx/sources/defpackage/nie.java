package defpackage;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.regex.Pattern;

public final class nie implements bhe {
    public final u4h a = new u4h();

    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        fyf fyfVarP;
        u4h u4hVar = this.a;
        u4hVar.j(bArr, i2 + i);
        u4hVar.l(i);
        ArrayList arrayList = new ArrayList();
        while (u4hVar.u() > 0) {
            n7g.e(u4hVar.u() >= 8, "Incomplete Mp4Webvtt Top Level box header found.");
            int iA = u4hVar.A() - 8;
            if (u4hVar.A() == 1987343459) {
                CharSequence charSequenceA = null;
                zvf zvfVarB = null;
                while (iA > 0) {
                    n7g.e(iA >= 8, "Incomplete vtt cue box header found.");
                    int iA2 = u4hVar.A();
                    int iA3 = u4hVar.A();
                    int i3 = iA - 8;
                    int i4 = iA2 - 8;
                    String strC = kfh.c(u4hVar.n(), u4hVar.w(), i4);
                    u4hVar.m(i4);
                    if (iA3 == 1937011815) {
                        zvfVarB = wie.b(strC);
                    } else if (iA3 == 1885436268) {
                        charSequenceA = wie.a(null, strC.trim(), Collections.emptyList());
                    }
                    iA = i3 - i4;
                }
                if (charSequenceA == null) {
                    charSequenceA = "";
                }
                if (zvfVarB != null) {
                    zvfVarB.l(charSequenceA);
                    fyfVarP = zvfVarB.p();
                } else {
                    Pattern pattern = wie.a;
                    uie uieVar = new uie();
                    uieVar.c = charSequenceA;
                    fyfVarP = uieVar.a().p();
                }
                arrayList.add(fyfVarP);
            } else {
                u4hVar.m(iA);
            }
        }
        qfgVar.zza(new qge(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }
}
