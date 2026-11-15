package defpackage;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzah;
import java.util.EnumMap;
import java.util.Iterator;

public final class uee {
    public static final uee b = new uee(null, null);
    public final EnumMap a;

    public uee(Boolean bool, Boolean bool2) {
        EnumMap enumMap = new EnumMap(zzah.class);
        this.a = enumMap;
        enumMap.put(zzah.AD_STORAGE, bool);
        enumMap.put(zzah.ANALYTICS_STORAGE, bool2);
    }

    public static uee a(Bundle bundle) {
        if (bundle == null) {
            return b;
        }
        EnumMap enumMap = new EnumMap(zzah.class);
        for (zzah zzahVar : zzah.values()) {
            enumMap.put(zzahVar, m(bundle.getString(zzahVar.zzd)));
        }
        return new uee(enumMap);
    }

    public static uee b(String str) {
        EnumMap enumMap = new EnumMap(zzah.class);
        if (str != null) {
            int i = 0;
            while (true) {
                zzah[] zzahVarArr = zzah.zzc;
                int length = zzahVarArr.length;
                if (i >= 2) {
                    break;
                }
                zzah zzahVar = zzahVarArr[i];
                int i2 = i + 2;
                if (i2 < str.length()) {
                    char cCharAt = str.charAt(i2);
                    Boolean bool = null;
                    if (cCharAt != '-') {
                        if (cCharAt == '0') {
                            bool = Boolean.FALSE;
                        } else if (cCharAt == '1') {
                            bool = Boolean.TRUE;
                        }
                    }
                    enumMap.put(zzahVar, bool);
                }
                i++;
            }
        }
        return new uee(enumMap);
    }

    public static String f(Bundle bundle) {
        String string;
        for (zzah zzahVar : zzah.values()) {
            if (bundle.containsKey(zzahVar.zzd) && (string = bundle.getString(zzahVar.zzd)) != null && m(string) == null) {
                return string;
            }
        }
        return null;
    }

    public static boolean i(int i, int i2) {
        return i <= i2;
    }

    public static final int l(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public static Boolean m(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final uee c(uee ueeVar) {
        EnumMap enumMap = new EnumMap(zzah.class);
        for (zzah zzahVar : zzah.values()) {
            Boolean bool = (Boolean) this.a.get(zzahVar);
            if (bool == null) {
                bool = (Boolean) ueeVar.a.get(zzahVar);
            }
            enumMap.put(zzahVar, bool);
        }
        return new uee(enumMap);
    }

    public final Boolean d() {
        return (Boolean) this.a.get(zzah.AD_STORAGE);
    }

    public final Boolean e() {
        return (Boolean) this.a.get(zzah.ANALYTICS_STORAGE);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof uee)) {
            return false;
        }
        uee ueeVar = (uee) obj;
        for (zzah zzahVar : zzah.values()) {
            if (l((Boolean) this.a.get(zzahVar)) != l((Boolean) ueeVar.a.get(zzahVar))) {
                return false;
            }
        }
        return true;
    }

    public final String g() {
        StringBuilder sb = new StringBuilder("G1");
        zzah[] zzahVarArr = zzah.zzc;
        int length = zzahVarArr.length;
        for (int i = 0; i < 2; i++) {
            Boolean bool = (Boolean) this.a.get(zzahVarArr[i]);
            sb.append(bool == null ? '-' : bool.booleanValue() ? '1' : '0');
        }
        return sb.toString();
    }

    public final boolean h(zzah zzahVar) {
        Boolean bool = (Boolean) this.a.get(zzahVar);
        return bool == null || bool.booleanValue();
    }

    public final int hashCode() {
        Iterator it = this.a.values().iterator();
        int iL = 17;
        while (it.hasNext()) {
            iL = (iL * 31) + l((Boolean) it.next());
        }
        return iL;
    }

    public final boolean j(uee ueeVar) {
        return k(ueeVar, (zzah[]) this.a.keySet().toArray(new zzah[0]));
    }

    public final boolean k(uee ueeVar, zzah... zzahVarArr) {
        for (zzah zzahVar : zzahVarArr) {
            Boolean bool = (Boolean) this.a.get(zzahVar);
            Boolean bool2 = (Boolean) ueeVar.a.get(zzahVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("settings: ");
        zzah[] zzahVarArrValues = zzah.values();
        int length = zzahVarArrValues.length;
        for (int i = 0; i < length; i++) {
            zzah zzahVar = zzahVarArrValues[i];
            if (i != 0) {
                sb.append(", ");
            }
            sb.append(zzahVar.name());
            sb.append("=");
            Boolean bool = (Boolean) this.a.get(zzahVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(true != bool.booleanValue() ? "denied" : "granted");
            }
        }
        return sb.toString();
    }

    public uee(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(zzah.class);
        this.a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
