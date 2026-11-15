package defpackage;

import java.security.Provider;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;

public final class mqi {
    public static final mqi b = new mqi(new nqi());
    public static final mqi c = new mqi(new rqi());
    public final iqi a;

    static {
        new mqi(new tqi());
        new mqi(new sqi());
        new mqi(new oqi());
        new mqi(new qqi());
        new mqi(new pqi());
    }

    public mqi(uqi uqiVar) {
        this.a = !ugi.b() ? "The Android Project".equals(System.getProperty("java.vendor")) ? new fqi(uqiVar, null) : new gqi(uqiVar, null) : new hqi(uqiVar, null);
    }

    public static List b(String... strArr) {
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            Provider provider = Security.getProvider(str);
            if (provider != null) {
                arrayList.add(provider);
            }
        }
        return arrayList;
    }

    public final Object a(String str) {
        return this.a.zza(str);
    }
}
