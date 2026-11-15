package defpackage;

import android.os.Build;
import android.text.TextUtils;
import com.tencent.mmkv.MMKV;
import java.util.EnumMap;
import java.util.HashSet;
import java.util.Set;

public class o9 {
    public static final o9 c = new o9();
    public sp4 a;
    public boolean b;

    public o9() {
        this.b = false;
        try {
            this.b = a();
            ja1.Log().e("AdxPreferencesHelper", "mmkv is available: " + this.b);
            if (this.b) {
                this.a = sp4.c();
            }
        } catch (Throwable unused) {
            ja1.Log().e("AdxPreferencesHelper", "init mmkv error, com.tencent.mmkv.MMKV not found!");
            this.a = null;
        }
    }

    public static o9 e() {
        return c;
    }

    public static String t() {
        return vl4.b("hisavana_sdk");
    }

    public final boolean a() {
        try {
            EnumMap enumMap = MMKV.a;
            if (Build.VERSION.SDK_INT < 35) {
                return true;
            }
            String strH = sp4.c().h();
            ja1.Log().e("AdxPreferencesHelper", "mmkvVersion: " + strH);
            if (strH.startsWith("v0.")) {
                return false;
            }
            try {
                if (!strH.startsWith("v1.")) {
                    return true;
                }
                String[] strArrSplit = strH.split("\\.");
                if (strArrSplit.length != 3) {
                    return false;
                }
                int i = Integer.parseInt(strArrSplit[1]);
                return i > 3 || (i == 3 && Integer.parseInt(strArrSplit[2]) >= 14);
            } catch (Throwable th) {
                ja1.Log().w("AdxPreferencesHelper", "checkMMKVAvailable error, e= " + th.getMessage());
                return false;
            }
        } catch (ClassNotFoundException unused) {
        }
    }

    public void b() {
        sp4 sp4Var = this.a;
        if (sp4Var != null) {
            sp4Var.a();
        } else {
            im4.d(t()).b();
        }
    }

    public boolean c(String str) {
        return d(str, false);
    }

    public boolean d(String str, boolean z) {
        sp4 sp4Var = this.a;
        return sp4Var != null ? sp4Var.b(str, z) : im4.d(t()).c(str, z);
    }

    public int f(String str) {
        return g(str, 0);
    }

    public int g(String str, int i) {
        sp4 sp4Var = this.a;
        return sp4Var != null ? sp4Var.d(str, i) : im4.d(t()).e(str, i);
    }

    public long h(String str) {
        return i(str, 0L);
    }

    public long i(String str, long j) {
        sp4 sp4Var = this.a;
        return sp4Var != null ? sp4Var.e(str, j) : im4.d(t()).f(str, j);
    }

    public String j(String str) {
        return k(str, "");
    }

    public String k(String str, String str2) {
        sp4 sp4Var = this.a;
        return sp4Var != null ? sp4Var.f(str, str2) : im4.d(t()).g(str, str2);
    }

    public Set l(String str) {
        return m(str, new HashSet());
    }

    public Set m(String str, Set set) {
        sp4 sp4Var = this.a;
        return sp4Var != null ? sp4Var.g(str, set) : im4.d(t()).h(str, set);
    }

    public boolean n() {
        return this.b;
    }

    public void o(String str, boolean z) {
        sp4 sp4Var = this.a;
        if (sp4Var != null) {
            sp4Var.i(str, z);
        } else {
            im4.d(t()).i(str, z);
        }
    }

    public void p(String str, int i) {
        sp4 sp4Var = this.a;
        if (sp4Var != null) {
            sp4Var.j(str, i);
        } else {
            im4.d(t()).j(str, i);
        }
    }

    public void q(String str, long j) {
        sp4 sp4Var = this.a;
        if (sp4Var != null) {
            sp4Var.k(str, j);
        } else {
            im4.d(t()).k(str, j);
        }
    }

    public void r(String str, String str2) {
        sp4 sp4Var = this.a;
        if (sp4Var == null) {
            im4.d(t()).l(str, str2);
        } else {
            sp4Var.l(str, str2);
        }
    }

    public void s(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        sp4 sp4Var = this.a;
        if (sp4Var != null) {
            sp4Var.m(str);
        } else {
            im4.d(t()).m(str);
        }
    }
}
