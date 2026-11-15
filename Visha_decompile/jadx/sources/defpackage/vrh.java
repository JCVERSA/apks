package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.client.zzm;
import com.google.android.gms.ads.nonagon.signalgeneration.zzaa;
import com.google.android.gms.internal.ads.zzfgq;

public abstract class vrh {
    public static wrh a(Context context, int i) {
        boolean zBooleanValue;
        if (zzfgq.zza()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                switch (i2) {
                    case 2:
                    case 3:
                    case 6:
                    case 7:
                    case 8:
                        zBooleanValue = ((Boolean) sze.c.e()).booleanValue();
                        break;
                    case 4:
                    case 9:
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        zBooleanValue = ((Boolean) sze.d.e()).booleanValue();
                        break;
                    case 5:
                        zBooleanValue = ((Boolean) sze.b.e()).booleanValue();
                        break;
                }
            } else {
                zBooleanValue = ((Boolean) sze.e.e()).booleanValue();
            }
            if (zBooleanValue) {
                return new yrh(context, i);
            }
        }
        return new vsh();
    }

    public static wrh b(Context context, int i, int i2, zzm zzmVar) {
        wrh wrhVarA = a(context, i);
        if (wrhVarA instanceof yrh) {
            wrhVarA.zzi();
            wrhVarA.c(i2);
            wrhVarA.d(zzaa.zza(zzmVar.zzm));
            String str = zzmVar.zzp;
            if (gsh.e(str)) {
                wrhVarA.zze(str);
            }
        }
        return wrhVarA;
    }
}
