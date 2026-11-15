package defpackage;

import android.webkit.CookieManager;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.apiinvoke.common.router.ProcessInfo;
import java.util.HashMap;

public class uj1 {
    public static volatile uj1 c;
    public HashMap a = new HashMap();
    public String b;

    public static uj1 c() {
        if (c == null) {
            synchronized (uj1.class) {
                try {
                    if (c == null) {
                        c = new uj1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public String a(String str) {
        HashMap map = this.a;
        return (map == null || map.size() <= 0) ? "" : (String) this.a.get(str);
    }

    public String b(String str) {
        return (CookieManager.getInstance() == null || str == null || str.isEmpty()) ? "" : CookieManager.getInstance().getCookie(str);
    }

    public void d(String str) {
        if (r0a.g(str) || !str.equalsIgnoreCase(this.b)) {
            this.b = str;
            String strB = b(str);
            if (strB == null || strB.isEmpty()) {
                return;
            }
            for (String str2 : strB.split(ProcessInfo.SPLIT_NEW_VERSION)) {
                int i = 0;
                while (str2.length() > i && str2.charAt(i) != '=') {
                    i++;
                }
                String strTrim = str2.substring(0, i).trim();
                String strTrim2 = str2.substring(i + 1, str2.length()).trim();
                LogUtils.j("visha", strTrim, strTrim2);
            }
        }
    }
}
