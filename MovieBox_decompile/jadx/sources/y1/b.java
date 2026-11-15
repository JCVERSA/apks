package y1;

import android.os.SystemClock;
import android.util.Pair;
import androidx.media3.common.util.a1;
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

    private final Map f76081a;

    private final Map f76082b;

    private final Map f76083c;

    private final Random f76084d;

    public b() {
        this(new Random());
    }

    private static void b(Object obj, long j10, Map map) {
        if (map.containsKey(obj)) {
            j10 = Math.max(j10, ((Long) a1.i((Long) map.get(obj))).longValue());
        }
        map.put(obj, Long.valueOf(j10));
    }

    private List c(List list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        h(jElapsedRealtime, this.f76081a);
        h(jElapsedRealtime, this.f76082b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            z1.b bVar = (z1.b) list.get(i10);
            if (!this.f76081a.containsKey(bVar.f76502b) && !this.f76082b.containsKey(Integer.valueOf(bVar.f76503c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    public static int d(z1.b bVar, z1.b bVar2) {
        int iCompare = Integer.compare(bVar.f76503c, bVar2.f76503c);
        return iCompare != 0 ? iCompare : bVar.f76502b.compareTo(bVar2.f76502b);
    }

    public static int f(List list) {
        HashSet hashSet = new HashSet();
        for (int i10 = 0; i10 < list.size(); i10++) {
            hashSet.add(Integer.valueOf(((z1.b) list.get(i10)).f76503c));
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

    private z1.b k(List list) {
        int i10 = 0;
        for (int i11 = 0; i11 < list.size(); i11++) {
            i10 += ((z1.b) list.get(i11)).f76504d;
        }
        int iNextInt = this.f76084d.nextInt(i10);
        int i12 = 0;
        for (int i13 = 0; i13 < list.size(); i13++) {
            z1.b bVar = (z1.b) list.get(i13);
            i12 += bVar.f76504d;
            if (iNextInt < i12) {
                return bVar;
            }
        }
        return (z1.b) g3.g(list);
    }

    public void e(z1.b bVar, long j10) {
        long jElapsedRealtime = SystemClock.elapsedRealtime() + j10;
        b(bVar.f76502b, jElapsedRealtime, this.f76081a);
        int i10 = bVar.f76503c;
        if (i10 != Integer.MIN_VALUE) {
            b(Integer.valueOf(i10), jElapsedRealtime, this.f76082b);
        }
    }

    public int g(List list) {
        HashSet hashSet = new HashSet();
        List listC = c(list);
        for (int i10 = 0; i10 < listC.size(); i10++) {
            hashSet.add(Integer.valueOf(((z1.b) listC.get(i10)).f76503c));
        }
        return hashSet.size();
    }

    public void i() {
        this.f76081a.clear();
        this.f76082b.clear();
        this.f76083c.clear();
    }

    public z1.b j(List list) {
        List listC = c(list);
        if (listC.size() < 2) {
            return (z1.b) g3.f(listC, null);
        }
        Collections.sort(listC, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return b.d((z1.b) obj, (z1.b) obj2);
            }
        });
        ArrayList arrayList = new ArrayList();
        int i10 = ((z1.b) listC.get(0)).f76503c;
        for (int i11 = 0; i11 < listC.size(); i11++) {
            z1.b bVar = (z1.b) listC.get(i11);
            if (i10 != bVar.f76503c) {
                if (arrayList.size() != 1) {
                    break;
                }
                return (z1.b) listC.get(0);
            }
            arrayList.add(new Pair(bVar.f76502b, Integer.valueOf(bVar.f76504d)));
        }
        z1.b bVar2 = (z1.b) this.f76083c.get(arrayList);
        if (bVar2 != null) {
            return bVar2;
        }
        z1.b bVarK = k(listC.subList(0, arrayList.size()));
        this.f76083c.put(arrayList, bVarK);
        return bVarK;
    }

    b(Random random) {
        this.f76083c = new HashMap();
        this.f76084d = random;
        this.f76081a = new HashMap();
        this.f76082b = new HashMap();
    }
}
