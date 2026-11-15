package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

public class fu8 {
    public final int a;
    public final String b;
    public final Map c;
    public final String d;
    public final String e;

    public fu8(int i, String str, Map map, String str2, String str3) {
        this.a = i;
        this.b = str;
        this.c = map == null ? Collections.emptyMap() : map;
        this.d = str2 == null ? "" : str2;
        this.e = str3;
    }

    public String a(String str) {
        for (Map.Entry entry : this.c.entrySet()) {
            String str2 = (String) entry.getKey();
            if (str2 != null && str2.equalsIgnoreCase(str) && !((List) entry.getValue()).isEmpty()) {
                return (String) ((List) entry.getValue()).get(0);
            }
        }
        return null;
    }

    public String b() {
        return this.e;
    }

    public String c() {
        return this.d;
    }

    public int d() {
        return this.a;
    }

    public Map e() {
        return this.c;
    }

    public String f() {
        return this.b;
    }
}
