package defpackage;

import android.util.Base64;
import com.google.android.gms.internal.ads.zzaz;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;

public abstract class xae {
    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i >>>= 1;
            i2++;
        }
        return i2;
    }

    public static hre b(List list) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < list.size(); i++) {
            String str = (String) list.get(i);
            int i2 = kfh.a;
            String[] strArrSplit = str.split("=", 2);
            if (strArrSplit.length != 2) {
                zrg.f("VorbisUtil", "Failed to parse Vorbis comment: ".concat(str));
            } else if (strArrSplit[0].equals("METADATA_BLOCK_PICTURE")) {
                try {
                    arrayList.add(qce.b(new u4h(Base64.decode(strArrSplit[1], 0))));
                } catch (RuntimeException e) {
                    zrg.g("VorbisUtil", "Failed to parse vorbis picture", e);
                }
            } else {
                arrayList.add(new nde(strArrSplit[0], strArrSplit[1]));
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new hre(arrayList);
    }

    public static uae c(u4h u4hVar, boolean z, boolean z2) throws zzaz {
        if (z) {
            d(3, u4hVar, false);
        }
        String strB = u4hVar.b((int) u4hVar.M(), StandardCharsets.UTF_8);
        int length = strB.length();
        long jM = u4hVar.M();
        String[] strArr = new String[(int) jM];
        int length2 = length + 15;
        for (int i = 0; i < jM; i++) {
            String strB2 = u4hVar.b((int) u4hVar.M(), StandardCharsets.UTF_8);
            strArr[i] = strB2;
            length2 = length2 + 4 + strB2.length();
        }
        if (z2 && (u4hVar.G() & 1) == 0) {
            throw zzaz.zza("framing bit expected to be set", null);
        }
        return new uae(strB, strArr, length2 + 1);
    }

    public static boolean d(int i, u4h u4hVar, boolean z) throws zzaz {
        if (u4hVar.u() < 7) {
            if (z) {
                return false;
            }
            throw zzaz.zza("too short header: " + u4hVar.u(), null);
        }
        if (u4hVar.G() != i) {
            if (z) {
                return false;
            }
            throw zzaz.zza("expected header type ".concat(String.valueOf(Integer.toHexString(i))), null);
        }
        if (u4hVar.G() == 118 && u4hVar.G() == 111 && u4hVar.G() == 114 && u4hVar.G() == 98 && u4hVar.G() == 105 && u4hVar.G() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw zzaz.zza("expected characters 'vorbis'", null);
    }
}
