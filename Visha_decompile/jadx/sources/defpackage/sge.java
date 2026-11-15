package defpackage;

import java.util.List;

public abstract class sge {
    public static void a(tge tgeVar, wge wgeVar, qfg qfgVar) {
        for (int i = 0; i < tgeVar.zza(); i++) {
            long jZzb = tgeVar.zzb(i);
            List listA = tgeVar.a(jZzb);
            if (!listA.isEmpty()) {
                if (i == tgeVar.zza() - 1) {
                    throw new IllegalStateException();
                }
                long jZzb2 = tgeVar.zzb(i + 1) - tgeVar.zzb(i);
                if (jZzb2 > 0) {
                    qfgVar.zza(new qge(listA, jZzb, jZzb2));
                }
            }
        }
    }
}
