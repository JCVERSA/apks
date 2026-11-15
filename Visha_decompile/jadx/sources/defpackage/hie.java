package defpackage;

import java.util.Map;

public abstract class hie {
    public static iie a(iie iieVar, String[] strArr, Map map) {
        int length;
        int i = 0;
        if (iieVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (iie) map.get(strArr[0]);
            }
            if (length2 > 1) {
                iie iieVar2 = new iie();
                while (i < length2) {
                    iieVar2.z((iie) map.get(strArr[i]));
                    i++;
                }
                return iieVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                iieVar.z((iie) map.get(strArr[0]));
                return iieVar;
            }
            if (strArr != null && (length = strArr.length) > 1) {
                while (i < length) {
                    iieVar.z((iie) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return iieVar;
    }
}
