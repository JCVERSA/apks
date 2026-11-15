package com.transsion.dbdata.utils;

import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.utils.BaseConstant;
import defpackage.fi1;
import defpackage.h27;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.function.Predicate;

public abstract class AudioFilterUtils {
    public static volatile boolean a;
    public static long b;
    public static long c;
    public static List d = new ArrayList();
    public static Set e = new HashSet();
    public static Set f = new HashSet();
    public static final int[] g = {0, 100, 500};
    public static final int[] h = {0, 10, 30, 60};
    public static long i;

    public static boolean A(String str) {
        return str == null || str.isEmpty();
    }

    public static boolean B(AudioItem audioItem) {
        if ((!BaseConstant.i.equals(audioItem.parentPath) || w(audioItem.data)) && !v(audioItem.data)) {
            return m(audioItem.size, audioItem.duration, audioItem.parentPath, audioItem.data);
        }
        return false;
    }

    public static void C(String str) {
        l();
        d.remove(str);
        MMKV.p().w("filter_buckets", fi1.e(d));
    }

    public static void D(List list, boolean z) {
        l();
        if (list == null || list.isEmpty()) {
            return;
        }
        list.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AudioFilterUtils.B((AudioItem) obj);
            }
        });
        if (z) {
            h27.c().e(1055, new Object[0]);
        }
    }

    public static void E(String str) {
        l();
        f.remove(str);
        MMKV.p().x("filter_manually_canceled", f);
    }

    public static void F(Set set) {
        l();
        f.removeAll(set);
        MMKV.p().x("filter_manually_canceled", f);
    }

    public static void G(String str) {
        l();
        e.remove(str);
        MMKV.p().x("filter_manually", e);
    }

    public static void H(Set set) {
        l();
        e.removeAll(set);
        MMKV.p().x("filter_manually", e);
    }

    public static long d(int i2) {
        return ((long) i2) * 1000;
    }

    public static void e(String str) {
        l();
        if (d == null) {
            d = new ArrayList();
        }
        d.add(str);
        MMKV.p().w("filter_buckets", fi1.e(d));
    }

    public static void f(int i2) {
        l();
        MMKV.p().t("filter_duration", i2);
        c = ((long) h[i2]) * 1000;
    }

    public static void g(int i2) {
        l();
        MMKV.p().t("filter_size", i2);
        b = d(g[i2]);
    }

    public static void h(String str) {
        l();
        f.add(str);
        MMKV.p().x("filter_manually_canceled", f);
        if (str != null) {
            G(str);
        }
    }

    public static void i(Set set) {
        l();
        if (set == null || set.isEmpty()) {
            return;
        }
        set.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AudioFilterUtils.z((String) obj);
            }
        });
        if (set.isEmpty()) {
            return;
        }
        f.addAll(set);
        MMKV.p().x("filter_manually_canceled", f);
        H(set);
    }

    public static void j(String str) {
        l();
        e.add(str);
        MMKV.p().x("filter_manually", e);
        if (str != null) {
            E(str);
        }
    }

    public static void k(Set set) {
        l();
        if (set == null || set.isEmpty()) {
            return;
        }
        set.removeIf(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return AudioFilterUtils.A((String) obj);
            }
        });
        if (set.isEmpty()) {
            return;
        }
        e.addAll(set);
        MMKV.p().x("filter_manually", e);
        F(set);
    }

    public static void l() {
        t();
    }

    public static boolean m(long j, long j2, String str, String str2) {
        return p(str) || q(j) || n(j2) || o(str2);
    }

    public static boolean n(long j) {
        l();
        return c > j;
    }

    public static boolean o(String str) {
        l();
        Set set = e;
        if (set == null || set.isEmpty()) {
            return false;
        }
        return e.contains(str);
    }

    public static boolean p(String str) {
        l();
        List list = d;
        if (list == null || list.isEmpty()) {
            return false;
        }
        return d.contains(str);
    }

    public static boolean q(long j) {
        l();
        return b > j;
    }

    public static boolean r() {
        List list;
        Set set;
        Set set2;
        l();
        return b > 0 || c > 0 || !(((list = d) == null || list.isEmpty()) && (((set = e) == null || set.isEmpty()) && ((set2 = f) == null || set2.isEmpty())));
    }

    public static boolean s() {
        Set set;
        l();
        Set set2 = e;
        return ((set2 == null || set2.isEmpty()) && ((set = f) == null || set.isEmpty())) ? false : true;
    }

    public static void t() {
        if (a) {
            return;
        }
        synchronized (AudioFilterUtils.class) {
            try {
                if (a) {
                    return;
                }
                if (x()) {
                    try {
                        b = d(g[MMKV.p().g("filter_size", 0)]);
                        c = ((long) h[MMKV.p().g("filter_duration", 0)]) * 1000;
                        List arrayList = (List) fi1.c(MMKV.p().m("filter_buckets", ""), new TypeToken<List<String>>() {
                        }.getType());
                        if (arrayList == null) {
                            arrayList = new ArrayList();
                        }
                        d = arrayList;
                        e = new HashSet(MMKV.p().n("filter_manually", new HashSet()));
                        f = new HashSet(MMKV.p().n("filter_manually_canceled", new HashSet()));
                    } catch (Exception unused) {
                        if (d == null) {
                            d = new ArrayList();
                        }
                        if (e == null) {
                            e = new HashSet();
                        }
                        if (f == null) {
                            f = new HashSet();
                        }
                    }
                    a = true;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void u() {
        t();
    }

    public static boolean v(String str) {
        l();
        Set set = f;
        if (set == null || set.isEmpty()) {
            return false;
        }
        return f.contains(str);
    }

    public static boolean w(String str) {
        l();
        Set set = e;
        if (set == null || set.isEmpty()) {
            return false;
        }
        return e.contains(str);
    }

    public static boolean x() {
        try {
            String strA = MMKV.A();
            return (strA == null || strA.isEmpty()) ? false : true;
        } catch (Throwable unused) {
            return false;
        }
    }

    public static boolean y(String str) {
        return BaseConstant.i.equals(str);
    }

    public static boolean z(String str) {
        return str == null || str.isEmpty();
    }
}
