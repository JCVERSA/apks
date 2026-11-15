package y9;

import android.os.SystemClock;
import android.util.Pair;
import com.google.android.exoplayer2.util.p0;
import com.google.common.collect.g3;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Random;

public final class b {

    private final Map f76170a;

    private final Map f76171b;

    private final Map f76172c;

    private final Random f76173d;

    public b() {
        this(new Random());
    }

    private static void b(Object obj, long j10, Map map) {
        if (map.containsKey(obj)) {
            j10 = Math.max(j10, ((Long) p0.j((Long) map.get(obj))).longValue());
        }
        map.put(obj, Long.valueOf(j10));
    }

    private List c(List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h(jElapsedRealtime, this.f76170a);
        h(jElapsedRealtime, this.f76171b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            z9.b bVar = (z9.b) list.get(i10);
            if (!this.f76170a.containsKey(bVar.f76636b) && !this.f76171b.containsKey(Integer.valueOf(bVar.f76637c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public static int d(z9.b bVar, z9.b bVar2) {
        int iCompare = Integer.compare(bVar.f76637c, bVar2.f76637c);
        return iCompare != 0 ? iCompare : bVar.f76636b.compareTo(bVar2.f76636b);
    }

    public static int f(List list) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hashSet.add(Integer.valueOf(((z9.b) list.get(i10)).f76637c));
        }
        return hashSet.size();
    }

    private static void h(long j10, Map map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            if (((Long) entry.getValue()).longValue() <= j10) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            map.remove(arrayList.get(i10));
        }
    }

    private z9.b k(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            i10 += ((z9.b) list.get(i11)).f76638d;
        }
        int iNextInt = this.f76173d.nextInt(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            z9.b bVar = (z9.b) list.get(i13);
            i12 += bVar.f76638d;
            if (iNextInt < i12) {
                return bVar;
            }
        }
        return (z9.b) g3.g(list);
    }

    public void e(z9.b bVar, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
        b(bVar.f76636b, jElapsedRealtime, this.f76170a);
        int i10 = bVar.f76637c;
        if (i10 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i10), jElapsedRealtime, this.f76171b);
        }
    }

    public int g(List list) {
        HashSet hashSet = new HashSet();
        List listC = c(list);
        for (int i10 = 0; i10 < listC.size(); i10++) {
            hashSet.add(Integer.valueOf(((z9.b) listC.get(i10)).f76637c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f76170a.clear();
        this.f76171b.clear();
        this.f76172c.clear();
    }

    public z9.b j(List list) {
        List listC = c(list);
        if (listC.size() < 2) {
            return (z9.b) g3.f(listC, null);
        }
        Collections.sort(listC, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return b.d((z9.b) obj, (z9.b) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i10 = ((z9.b) listC.get(0)).f76637c;
        for (int i11 = 0; i11 < listC.size(); i11++) {
            z9.b bVar = (z9.b) listC.get(i11);
            if (i10 != bVar.f76637c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (z9.b) listC.get(0);
            }
            arrayList.add(new Pair(bVar.f76636b, Integer.valueOf(bVar.f76638d)));
        }
        z9.b bVar2 = (z9.b) this.f76172c.get(arrayList);
        if (bVar2 != null) {
            return bVar2;
        }
        z9.b bVarK = k(listC.subList(0, arrayList.size()));
        this.f76172c.put(arrayList, bVarK);
        return bVarK;
    }

    b(Random random) {
        this.f76172c = new HashMap();
        this.f76173d = random;
        this.f76170a = new HashMap();
        this.f76171b = new HashMap();
    }
}
