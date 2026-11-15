package l7;

import android.util.Log;
import com.cloud.sdk.commonutil.util.c;
import com.cloud.sdk.commonutil.util.e;
import com.tencent.mmkv.MMKV;
import java.util.Set;

public class b {

    private static final b f65643b = new b();

    private MMKV f65644a;

    private b() {
        try {
            MMKV.C(e.a());
            this.f65644a = MMKV.I("HisavanaMMKV");
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "Hisavana MMKV init error " + e10.getMessage());
        }
    }

    public static b c() {
        return f65643b;
    }

    public void a() {
        try {
            this.f65644a.clear();
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "clear " + Log.getStackTraceString(e10));
        }
    }

    public boolean b(String str, boolean z10) {
        try {
            return this.f65644a.getBoolean(str, z10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getBoolean " + Log.getStackTraceString(e10));
            return z10;
        }
    }

    public int d(String str, int i10) {
        try {
            return this.f65644a.getInt(str, i10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getInt " + Log.getStackTraceString(e10));
            return i10;
        }
    }

    public long e(String str, long j10) {
        try {
            return this.f65644a.getLong(str, j10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getLong " + Log.getStackTraceString(e10));
            return j10;
        }
    }

    public String f(String str, String str2) {
        try {
            return this.f65644a.getString(str, str2);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getString " + Log.getStackTraceString(e10));
            return str2;
        }
    }

    public Set g(String str, Set set) {
        try {
            return this.f65644a.getStringSet(str, set);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getStringSet " + Log.getStackTraceString(e10));
            return set;
        }
    }

    public String h() {
        try {
            return MMKV.version();
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "MMKV.version() " + Log.getStackTraceString(e10));
            return "";
        }
    }

    public void i(String str, boolean z10) {
        try {
            this.f65644a.putBoolean(str, z10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "putBoolean " + Log.getStackTraceString(e10));
        }
    }

    public void j(String str, int i10) {
        try {
            this.f65644a.putInt(str, i10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "putInt " + Log.getStackTraceString(e10));
        }
    }

    public void k(String str, long j10) {
        try {
            this.f65644a.putLong(str, j10);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "putLong " + Log.getStackTraceString(e10));
        }
    }

    public void l(String str, String str2) {
        try {
            this.f65644a.putString(str, str2);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "putString " + Log.getStackTraceString(e10));
        }
    }

    public void m(String str) {
        try {
            this.f65644a.M(str);
        } catch (Exception e10) {
            c.Log().e("HisavanaMMKV", "getStringSet " + Log.getStackTraceString(e10));
        }
    }
}
