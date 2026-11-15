package defpackage;

import androidx.media3.common.C;
import java.util.ArrayList;
import java.util.zip.Inflater;

public final class phe implements bhe {
    public final u4h a = new u4h();
    public final u4h b = new u4h();
    public final ohe c = new ohe();
    public Inflater d;

    @Override
    public final void a(byte[] bArr, int i, int i2, wge wgeVar, qfg qfgVar) {
        u4h u4hVar = this.a;
        u4hVar.j(bArr, i2 + i);
        u4hVar.l(i);
        if (this.d == null) {
            this.d = new Inflater();
        }
        u4h u4hVar2 = this.b;
        if (kfh.o(u4hVar, u4hVar2, this.d)) {
            u4hVar.j(u4hVar2.n(), u4hVar2.x());
        }
        ohe oheVar = this.c;
        oheVar.e();
        ArrayList arrayList = new ArrayList();
        while (u4hVar.u() >= 3) {
            int iX = u4hVar.x();
            int iG = u4hVar.G();
            int iK = u4hVar.K();
            int iW = u4hVar.w() + iK;
            fyf fyfVarA = null;
            if (iW > iX) {
                u4hVar.l(iX);
            } else {
                if (iG != 128) {
                    switch (iG) {
                        case 20:
                            ohe.d(oheVar, u4hVar, iK);
                            break;
                        case 21:
                            ohe.b(oheVar, u4hVar, iK);
                            break;
                        case 22:
                            ohe.c(oheVar, u4hVar, iK);
                            break;
                    }
                } else {
                    fyfVarA = oheVar.a();
                    oheVar.e();
                }
                u4hVar.l(iW);
            }
            if (fyfVarA != null) {
                arrayList.add(fyfVarA);
            }
        }
        qfgVar.zza(new qge(arrayList, C.TIME_UNSET, C.TIME_UNSET));
    }
}
