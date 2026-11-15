package ma;

import com.google.android.exoplayer2.util.p0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

final class k implements da.i {

    private final List f66347a;

    private final long[] f66348b;

    private final long[] f66349c;

    public k(List list) {
        this.f66347a = Collections.unmodifiableList(new ArrayList(list));
        this.f66348b = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = (e) list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f66348b;
            jArr[i11] = eVar.f66318b;
            jArr[i11 + 1] = eVar.f66319c;
        }
        long[] jArr2 = this.f66348b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f66349c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    public static int b(e eVar, e eVar2) {
        return Long.compare(eVar.f66318b, eVar2.f66318b);
    }

    @Override
    public List getCues(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f66347a.size(); i10++) {
            long[] jArr = this.f66348b;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                e eVar = (e) this.f66347a.get(i10);
                da.b bVar = eVar.f66317a;
                if (bVar.f58928e == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(bVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return k.b((e) obj, (e) obj2);
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((e) arrayList2.get(i12)).f66317a.b().h((-1) - i12, 1).a());
        }
        return arrayList;
    }

    @Override
    public long getEventTime(int i10) {
        com.google.android.exoplayer2.util.a.a(i10 >= 0);
        com.google.android.exoplayer2.util.a.a(i10 < this.f66349c.length);
        return this.f66349c[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f66349c.length;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iE = p0.e(this.f66349c, j10, false, false);
        if (iE < this.f66349c.length) {
            return iE;
        }
        return -1;
    }
}
