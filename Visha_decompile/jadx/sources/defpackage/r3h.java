package defpackage;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicReference;
import okhttp3.HttpUrl;

public final class r3h {
    public static final AtomicReference b = new AtomicReference();
    public static final AtomicReference c = new AtomicReference();
    public static final AtomicReference d = new AtomicReference();
    public final u2h a;

    public r3h(u2h u2hVar) {
        this.a = u2hVar;
    }

    public static final String f(String str, String[] strArr, String[] strArr2, AtomicReference atomicReference) {
        String str2;
        wd8.l(strArr);
        wd8.l(strArr2);
        wd8.l(atomicReference);
        wd8.a(strArr.length == strArr2.length);
        for (int i = 0; i < strArr.length; i++) {
            Object obj = strArr[i];
            if (str == obj || str.equals(obj)) {
                synchronized (atomicReference) {
                    try {
                        String[] strArr3 = (String[]) atomicReference.get();
                        if (strArr3 == null) {
                            strArr3 = new String[strArr2.length];
                            atomicReference.set(strArr3);
                        }
                        str2 = strArr3[i];
                        if (str2 == null) {
                            str2 = strArr2[i] + "(" + strArr[i] + ")";
                            strArr3[i] = str2;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return str2;
            }
        }
        return str;
    }

    public final String a(Object[] objArr) {
        if (objArr == null) {
            return HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("[");
        for (Object obj : objArr) {
            String strB = obj instanceof Bundle ? b((Bundle) obj) : String.valueOf(obj);
            if (strB != null) {
                if (sb.length() != 1) {
                    sb.append(", ");
                }
                sb.append(strB);
            }
        }
        sb.append("]");
        return sb.toString();
    }

    public final String b(Bundle bundle) {
        String strA;
        if (bundle == null) {
            return null;
        }
        if (!this.a.zza()) {
            return bundle.toString();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Bundle[{");
        for (String str : bundle.keySet()) {
            if (sb.length() != 8) {
                sb.append(", ");
            }
            sb.append(d(str));
            sb.append("=");
            Object obj = bundle.get(str);
            if (obj instanceof Bundle) {
                strA = a(new Object[]{obj});
            } else if (obj instanceof Object[]) {
                strA = a((Object[]) obj);
            } else {
                strA = obj instanceof ArrayList ? a(((ArrayList) obj).toArray()) : String.valueOf(obj);
            }
            sb.append(strA);
        }
        sb.append("}]");
        return sb.toString();
    }

    public final String c(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.zza() ? str : f(str, kqi.c, kqi.a, b);
    }

    public final String d(String str) {
        if (str == null) {
            return null;
        }
        return !this.a.zza() ? str : f(str, jri.b, jri.a, c);
    }

    public final String e(String str) {
        if (str == null) {
            return null;
        }
        if (!this.a.zza()) {
            return str;
        }
        if (!str.startsWith("_exp_")) {
            return f(str, zri.b, zri.a, d);
        }
        return "experiment_id(" + str + ")";
    }
}
