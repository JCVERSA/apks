package tb;

import com.google.firebase.crashlytics.internal.common.CommonUtils;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

class d {

    private final Map f72623a = new HashMap();

    private final int f72624b;

    private final int f72625c;

    public d(int i10, int i11) {
        this.f72624b = i10;
        this.f72625c = i11;
    }

    private String b(String str) {
        if (str != null) {
            return c(str, this.f72625c);
        }
        throw new IllegalArgumentException("Custom attribute key must not be null.");
    }

    public static String c(String str, int i10) {
        if (str == null) {
            return str;
        }
        String strTrim = str.trim();
        return strTrim.length() > i10 ? strTrim.substring(0, i10) : strTrim;
    }

    public synchronized Map a() {
        return Collections.unmodifiableMap(new HashMap(this.f72623a));
    }

    public synchronized boolean d(String str, String str2) {
        String strB = b(str);
        if (this.f72623a.size() >= this.f72624b && !this.f72623a.containsKey(strB)) {
            qb.g.f().k("Ignored entry \"" + str + "\" when adding custom keys. Maximum allowable: " + this.f72624b);
            return false;
        }
        String strC = c(str2, this.f72625c);
        if (CommonUtils.y((String) this.f72623a.get(strB), strC)) {
            return false;
        }
        Map map = this.f72623a;
        if (str2 == null) {
            strC = "";
        }
        map.put(strB, strC);
        return true;
    }

    public synchronized void e(Map map) {
        try {
            int i10 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String strB = b((String) entry.getKey());
                if (this.f72623a.size() < this.f72624b || this.f72623a.containsKey(strB)) {
                    String str = (String) entry.getValue();
                    this.f72623a.put(strB, str == null ? "" : c(str, this.f72625c));
                } else {
                    i10++;
                }
            }
            if (i10 > 0) {
                qb.g.f().k("Ignored " + i10 + " entries when adding custom keys. Maximum allowable: " + this.f72624b);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
