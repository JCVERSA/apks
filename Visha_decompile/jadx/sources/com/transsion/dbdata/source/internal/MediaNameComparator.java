package com.transsion.dbdata.source.internal;

import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.source.internal.MediaNameComparator;
import defpackage.bc7;
import defpackage.c74;
import defpackage.e74;
import defpackage.el0;
import defpackage.i81;
import defpackage.mc2;
import defpackage.nk1;
import defpackage.vmb;
import defpackage.y45;
import defpackage.zfb;
import java.text.Collator;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicLong;
import kotlin.NoWhenBranchMatchedException;
import kotlin.comparisons.a;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;

public final class MediaNameComparator {
    public static final MediaNameComparator a = new MediaNameComparator();
    public static final ConcurrentHashMap[] b;
    public static final AtomicLong c;
    public static final Collator d;
    public static j e;
    public static final nk1 f;
    public static final bc7 g;

    public static abstract class a implements Comparable {

        public static final class C0216a extends a {
            public final long b;

            public C0216a(long j) {
                super(null);
                this.b = j;
            }

            @Override
            public int compareTo(a aVar) {
                y45.j(aVar, "other");
                if (aVar instanceof b) {
                    return 1;
                }
                if (aVar instanceof C0216a) {
                    return y45.m(this.b, ((C0216a) aVar).b);
                }
                throw new NoWhenBranchMatchedException();
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0216a) && this.b == ((C0216a) obj).b;
            }

            public int hashCode() {
                return Long.hashCode(this.b);
            }

            public String toString() {
                return "NumericSegment(value=" + this.b + ")";
            }
        }

        public static final class b extends a {
            public final String b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public b(String str) {
                super(null);
                y45.j(str, "text");
                this.b = str;
            }

            @Override
            public int compareTo(a aVar) {
                y45.j(aVar, "other");
                if (aVar instanceof b) {
                    return MediaNameComparator.d.compare(this.b, ((b) aVar).b);
                }
                if (aVar instanceof C0216a) {
                    return -1;
                }
                throw new NoWhenBranchMatchedException();
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof b) && y45.e(this.b, ((b) obj).b);
            }

            public int hashCode() {
                return this.b.hashCode();
            }

            public String toString() {
                return "TextSegment(text=" + this.b + ")";
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public static final class b {
        public final List a;
        public volatile long b;

        public b(List list, long j) {
            y45.j(list, "segments");
            this.a = list;
            this.b = j;
        }

        public final long a() {
            return this.b;
        }

        public final List b() {
            return this.a;
        }

        public final void c(long j) {
            this.b = j;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return y45.e(this.a, bVar.a) && this.b == bVar.b;
        }

        public int hashCode() {
            return (this.a.hashCode() * 31) + Long.hashCode(this.b);
        }

        public String toString() {
            return "SortKey(segments=" + this.a + ", lastAccess=" + this.b + ")";
        }
    }

    static {
        ConcurrentHashMap[] concurrentHashMapArr = new ConcurrentHashMap[16];
        for (int i = 0; i < 16; i++) {
            concurrentHashMapArr[i] = new ConcurrentHashMap(100);
        }
        b = concurrentHashMapArr;
        c = new AtomicLong(0L);
        Collator collator = Collator.getInstance(Locale.CHINA);
        collator.setStrength(3);
        collator.setDecomposition(1);
        y45.i(collator, "apply(...)");
        d = collator;
        f = d.a(mc2.a());
        g = new bc7(32, new c74() {
            @Override
            public final Object invoke() {
                return MediaNameComparator.n();
            }
        }, new e74() {
            @Override
            public final Object invoke(Object obj) {
                return MediaNameComparator.o((List) obj);
            }
        });
        a.q();
        vmb.a("MediaNameComparator", "MediaNameComparator initialized with 16 shards");
    }

    public static final List n() {
        return new ArrayList();
    }

    public static final zfb o(List list) {
        y45.j(list, "it");
        list.clear();
        return zfb.a;
    }

    public final void e(ConcurrentHashMap concurrentHashMap, String str, b bVar) {
        if (concurrentHashMap.size() < 100) {
            concurrentHashMap.put(str, bVar);
        }
    }

    public final int f(ConcurrentHashMap concurrentHashMap) {
        int size = concurrentHashMap.size();
        if (size <= 60) {
            return 0;
        }
        Set setEntrySet = concurrentHashMap.entrySet();
        y45.i(setEntrySet, "<get-entries>(...)");
        List listT0 = i81.T0(i81.b1(setEntrySet), new Comparator() {
            @Override
            public final int compare(T t, T t2) {
                return a.d(Long.valueOf(((MediaNameComparator.b) ((Map.Entry) t).getValue()).a()), Long.valueOf(((MediaNameComparator.b) ((Map.Entry) t2).getValue()).a()));
            }
        });
        int iMin = Math.min(size - 60, listT0.size());
        int i = 0;
        for (int i2 = 0; i2 < iMin; i2++) {
            Object obj = listT0.get(i2);
            y45.i(obj, "get(...)");
            Map.Entry entry = (Map.Entry) obj;
            if (concurrentHashMap.remove(entry.getKey(), entry.getValue())) {
                i++;
            }
        }
        return i;
    }

    public final int g(MediaItem mediaItem, MediaItem mediaItem2) {
        if (mediaItem == mediaItem2) {
            return 0;
        }
        if (mediaItem == null) {
            return -1;
        }
        if (mediaItem2 == null) {
            return 1;
        }
        String str = mediaItem.displayName;
        String str2 = mediaItem2.displayName;
        if (str == str2 || y45.e(str, str2)) {
            return 0;
        }
        if (str == null || str.length() == 0) {
            return -1;
        }
        if (str2 == null || str2.length() == 0) {
            return 1;
        }
        try {
            return h(m(str), m(str2));
        } catch (Exception e2) {
            vmb.d("MediaNameComparator", "Error comparing items: " + str + " vs " + str2, e2);
            return d.compare(str, str2);
        }
    }

    public final int h(b bVar, b bVar2) {
        List listB = bVar.b();
        List listB2 = bVar2.b();
        int iMin = Math.min(listB.size(), listB2.size());
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = ((a) listB.get(i)).compareTo(listB2.get(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        return y45.l(listB.size(), listB2.size());
    }

    public final List i(String str) {
        List listB1;
        List list = (List) g.a();
        try {
            try {
                int length = str.length();
                int i = 0;
                while (i < length) {
                    int i2 = i;
                    while (i2 < length && !Character.isDigit(str.charAt(i2))) {
                        i2++;
                    }
                    if (i2 > i) {
                        String strSubstring = str.substring(i, i2);
                        y45.i(strSubstring, "substring(...)");
                        list.add(new a.b(strSubstring));
                    }
                    if (i2 >= length || !Character.isDigit(str.charAt(i2))) {
                        i = i2;
                    } else {
                        i = i2;
                        while (i < length && Character.isDigit(str.charAt(i))) {
                            i++;
                        }
                        String strSubstring2 = str.substring(i2, i);
                        y45.i(strSubstring2, "substring(...)");
                        try {
                            list.add(new a.C0216a(Long.parseLong(strSubstring2)));
                        } catch (NumberFormatException e2) {
                            vmb.d("MediaNameComparator", "Error parsing number: " + strSubstring2, e2);
                            list.add(new a.b(strSubstring2));
                        }
                    }
                }
                listB1 = i81.b1(list);
            } catch (Exception e3) {
                vmb.d("MediaNameComparator", "Error computing sort key segments for: " + str, e3);
                list.clear();
                list.add(new a.b(str));
                listB1 = i81.b1(list);
            }
            return listB1;
        } finally {
            g.b(list);
        }
    }

    public final long j(String str) {
        int length = str.length();
        long jCharAt = 2166136261L;
        for (int i = 0; i < length; i++) {
            jCharAt = (jCharAt ^ ((long) str.charAt(i))) * 16777619;
        }
        return jCharAt;
    }

    public final String k(String str) {
        return str.length() <= 80 ? str : String.valueOf(j(str));
    }

    public final int l(String str) {
        return str.hashCode() & 15;
    }

    public final b m(String str) {
        String strK = k(str);
        ConcurrentHashMap concurrentHashMap = b[l(strK)];
        b bVar = (b) concurrentHashMap.get(strK);
        if (bVar != null) {
            bVar.c(c.incrementAndGet());
            return bVar;
        }
        Locale locale = Locale.ROOT;
        y45.i(locale, "ROOT");
        String lowerCase = str.toLowerCase(locale);
        y45.i(lowerCase, "toLowerCase(...)");
        b bVar2 = new b(i(lowerCase), c.incrementAndGet());
        e(concurrentHashMap, strK, bVar2);
        return bVar2;
    }

    public final void p() {
        int iF = 0;
        for (int i = 0; i < 16; i++) {
            ConcurrentHashMap concurrentHashMap = b[i];
            if (concurrentHashMap.size() > 100) {
                iF += f(concurrentHashMap);
            }
        }
        if (iF > 0) {
            vmb.a("MediaNameComparator", "Background cleanup completed, removed " + iF + " entries");
        }
    }

    public final void q() {
        e = el0.d(f, null, null, new MediaNameComparator$startBackgroundCleanup$1(null), 3, null);
    }
}
