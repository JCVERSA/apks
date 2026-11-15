package com.google.firebase.remoteconfig.internal;

import android.util.Log;
import com.google.android.gms.common.util.BiConsumer;
import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.Executor;
import java.util.regex.Pattern;
import org.json.JSONException;

public class m {

    public static final Charset f31705e = Charset.forName("UTF-8");

    static final Pattern f31706f = Pattern.compile("^(1|true|t|yes|y|on)$", 2);

    static final Pattern f31707g = Pattern.compile("^(0|false|f|no|n|off|)$", 2);

    private final Set f31708a = new HashSet();

    private final Executor f31709b;

    private final e f31710c;

    private final e f31711d;

    public m(Executor executor, e eVar, e eVar2) {
        this.f31709b = executor;
        this.f31710c = eVar;
        this.f31711d = eVar2;
    }

    private void c(final String str, final f fVar) {
        if (fVar == null) {
            return;
        }
        synchronized (this.f31708a) {
            try {
                for (final BiConsumer biConsumer : this.f31708a) {
                    this.f31709b.execute(new Runnable() {
                        @Override
                        public final void run() {
                            biConsumer.accept(str, fVar);
                        }
                    });
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private static f e(e eVar) {
        return eVar.f();
    }

    private static Set f(e eVar) {
        HashSet hashSet = new HashSet();
        f fVarE = e(eVar);
        if (fVarE == null) {
            return hashSet;
        }
        Iterator<String> itKeys = fVarE.g().keys();
        while (itKeys.hasNext()) {
            hashSet.add(itKeys.next());
        }
        return hashSet;
    }

    private static TreeSet h(String str, f fVar) {
        TreeSet treeSet = new TreeSet();
        Iterator<String> itKeys = fVar.g().keys();
        while (itKeys.hasNext()) {
            String next = itKeys.next();
            if (next.startsWith(str)) {
                treeSet.add(next);
            }
        }
        return treeSet;
    }

    private static Long j(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return Long.valueOf(fVarE.g().getLong(str));
        } catch (JSONException unused) {
            return null;
        }
    }

    private static String l(e eVar, String str) {
        f fVarE = e(eVar);
        if (fVarE == null) {
            return null;
        }
        try {
            return fVarE.g().getString(str);
        } catch (JSONException unused) {
            return null;
        }
    }

    private static void o(String str, String str2) {
        Log.w("FirebaseRemoteConfig", String.format("No value of type '%s' exists for parameter key '%s'.", str2, str));
    }

    public void b(BiConsumer biConsumer) {
        synchronized (this.f31708a) {
            this.f31708a.add(biConsumer);
        }
    }

    public Map d() {
        HashSet<String> hashSet = new HashSet();
        hashSet.addAll(f(this.f31710c));
        hashSet.addAll(f(this.f31711d));
        HashMap map = new HashMap();
        for (String str : hashSet) {
            map.put(str, m(str));
        }
        return map;
    }

    public Set g(String str) {
        if (str == null) {
            str = "";
        }
        TreeSet treeSet = new TreeSet();
        f fVarE = e(this.f31710c);
        if (fVarE != null) {
            treeSet.addAll(h(str, fVarE));
        }
        f fVarE2 = e(this.f31711d);
        if (fVarE2 != null) {
            treeSet.addAll(h(str, fVarE2));
        }
        return treeSet;
    }

    public long i(String str) {
        Long lJ = j(this.f31710c, str);
        if (lJ != null) {
            c(str, e(this.f31710c));
            return lJ.longValue();
        }
        Long lJ2 = j(this.f31711d, str);
        if (lJ2 != null) {
            return lJ2.longValue();
        }
        o(str, "Long");
        return 0L;
    }

    public String k(String str) {
        String strL = l(this.f31710c, str);
        if (strL != null) {
            c(str, e(this.f31710c));
            return strL;
        }
        String strL2 = l(this.f31711d, str);
        if (strL2 != null) {
            return strL2;
        }
        o(str, "String");
        return "";
    }

    public ad.k m(String str) {
        String strL = l(this.f31710c, str);
        if (strL != null) {
            c(str, e(this.f31710c));
            return new t(strL, 2);
        }
        String strL2 = l(this.f31711d, str);
        if (strL2 != null) {
            return new t(strL2, 1);
        }
        o(str, "FirebaseRemoteConfigValue");
        return new t("", 0);
    }
}
