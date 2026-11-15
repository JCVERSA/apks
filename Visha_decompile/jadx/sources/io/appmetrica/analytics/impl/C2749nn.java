package io.appmetrica.analytics.impl;

import com.alibaba.android.arouter.utils.Consts;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class C2749nn {
    public final C2500dn a;
    public final S b;
    public final List c;
    public final String d;
    public final String e;
    public final Map f;
    public final String g;
    public final Boolean h;

    public C2749nn(C2500dn c2500dn, S s, ArrayList arrayList, String str, String str2, Map map, String str3, Boolean bool) {
        this.a = c2500dn;
        this.b = s;
        this.c = arrayList;
        this.d = str;
        this.e = str2;
        this.f = map;
        this.g = str3;
        this.h = bool;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        C2500dn c2500dn = this.a;
        if (c2500dn != null) {
            for (C2548fl c2548fl : c2500dn.c) {
                sb.append("at " + c2548fl.a + Consts.DOT + c2548fl.e + "(" + c2548fl.b + StringUtils.PROCESS_POSTFIX_DELIMITER + c2548fl.c + StringUtils.PROCESS_POSTFIX_DELIMITER + c2548fl.d + ")\n");
            }
        }
        return "UnhandledException{exception=" + this.a + "\n" + sb.toString() + '}';
    }
}
