package defpackage;

import android.content.Context;
import android.os.Environment;
import com.blankj.utilcode.util.Utils;
import com.transsion.arch.threads.TaskExecutor;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import java.util.regex.Pattern;
import kotlin.Pair;
import kotlin.b;
import kotlin.text.Regex;

public final class ge6 {
    public static final ge6 a = new ge6();
    public static final ConcurrentHashMap b = new ConcurrentHashMap();
    public static final yi5 c = b.a(new c74() {
        @Override
        public final Object invoke() {
            return ge6.v();
        }
    });
    public static Context d;
    public static volatile String e;
    public static volatile String f;

    public static final String l(String str, String str2) {
        if (str == null || str2 == null) {
            return "";
        }
        String strQuote = Pattern.quote(str2);
        y45.i(strQuote, "quote(...)");
        String strReplace = new Regex(strQuote).replace(str, "");
        return ((e == null || !g1a.E(e, strReplace, true)) && (f == null || !g1a.E(f, strReplace, true))) ? "" : "DCIM/Camera/";
    }

    public static final boolean p(String str, boolean z) {
        if (str == null || str.length() == 0) {
            return false;
        }
        if (!z) {
            return true;
        }
        final long jCurrentTimeMillis = System.currentTimeMillis();
        ConcurrentHashMap concurrentHashMap = b;
        Pair pair = (Pair) concurrentHashMap.get(str);
        if (pair != null && jCurrentTimeMillis - ((Number) pair.getSecond()).longValue() < 30000) {
            return ((Boolean) pair.getFirst()).booleanValue();
        }
        boolean zO = a.o(str);
        concurrentHashMap.put(str, abb.a(Boolean.valueOf(zO), Long.valueOf(jCurrentTimeMillis)));
        if (concurrentHashMap.size() > 1000) {
            Set setEntrySet = concurrentHashMap.entrySet();
            final e74 e74Var = new e74() {
                @Override
                public final Object invoke(Object obj) {
                    return Boolean.valueOf(ge6.r(jCurrentTimeMillis, (Map.Entry) obj));
                }
            };
            setEntrySet.removeIf(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ge6.s(e74Var, obj);
                }
            });
        }
        return zO;
    }

    public static boolean q(String str, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = true;
        }
        return p(str, z);
    }

    public static final boolean r(long j, Map.Entry entry) {
        y45.j(entry, "it");
        return j - ((Number) ((Pair) entry.getValue()).getSecond()).longValue() > 30000;
    }

    public static final boolean s(e74 e74Var, Object obj) {
        return ((Boolean) e74Var.invoke(obj)).booleanValue();
    }

    public static final void u() {
        ge6 ge6Var = a;
        e = ge6Var.k();
        f = ge6Var.m(ge6Var.g());
    }

    public static final tt8 v() {
        return new tt8();
    }

    public static final int[] w(String str) {
        return a.i().f(str);
    }

    public final boolean e(String str) {
        y45.j(str, "<this>");
        List listE = uf1.a.e();
        if ((listE instanceof Collection) && listE.isEmpty()) {
            return false;
        }
        Iterator it = listE.iterator();
        while (it.hasNext()) {
            if (((Regex) it.next()).containsMatchIn(str)) {
                return true;
            }
        }
        return false;
    }

    public final boolean f(String str, boolean z) {
        y45.j(str, "<this>");
        if (z) {
            Locale locale = Locale.getDefault();
            y45.i(locale, "getDefault(...)");
            str = str.toLowerCase(locale);
            y45.i(str, "toLowerCase(...)");
        }
        for (String str2 : uf1.a.g()) {
            if (g1a.D(str, str2, false, 2, null)) {
                return true;
            }
        }
        return false;
    }

    public final Context g() {
        Context contextA = d;
        if (contextA == null && (contextA = Utils.a()) == null) {
            throw new RuntimeException("The context of the media framework cannot be null!");
        }
        return contextA;
    }

    public final String h(String str) {
        String strQ = av3.q(str);
        y45.i(strQ, "getLastDir(...)");
        return strQ;
    }

    public final tt8 i() {
        return (tt8) c.getValue();
    }

    public final String j(String str) {
        String strU = av3.u(str);
        y45.i(strU, "getParentDir(...)");
        return strU;
    }

    public final String k() {
        return Environment.getExternalStorageDirectory() + "/DCIM/Camera/";
    }

    public final String m(Context context) {
        File[] externalFilesDirs = context.getExternalFilesDirs("external");
        if (externalFilesDirs == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (File file : externalFilesDirs) {
            if (file != null && !y45.e(file, context.getExternalFilesDir("external"))) {
                String absolutePath = file.getAbsolutePath();
                y45.i(absolutePath, "getAbsolutePath(...)");
                int iS0 = j1a.s0(absolutePath, "/Android/data", 0, false, 6, null);
                if (iS0 >= 0) {
                    String absolutePath2 = file.getAbsolutePath();
                    y45.i(absolutePath2, "getAbsolutePath(...)");
                    String strSubstring = absolutePath2.substring(0, iS0);
                    y45.i(strSubstring, "substring(...)");
                    try {
                        strSubstring = new File(strSubstring).getCanonicalPath();
                    } catch (IOException unused) {
                    }
                    arrayList.add(strSubstring);
                }
            }
        }
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        if (strArr.length == 0) {
            return "";
        }
        return strArr[0] + "/DCIM/Camera/";
    }

    public final void n(Context context) {
        y45.j(context, "context");
        d = context.getApplicationContext();
        t();
    }

    public final boolean o(String str) {
        if (str == null || str.length() == 0) {
            return false;
        }
        return new File(str).exists();
    }

    public final void t() {
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                ge6.u();
            }
        });
    }
}
