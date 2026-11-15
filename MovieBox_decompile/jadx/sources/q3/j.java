package q3;

import androidx.media3.common.util.a1;
import h3.k;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

final class j implements k {

    private final List f69383a;

    private final long[] f69384b;

    private final long[] f69385c;

    public j(List list) {
        this.f69383a = Collections.unmodifiableList(new ArrayList(list));
        this.f69384b = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            d dVar = (d) list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f69384b;
            jArr[i11] = dVar.f69354b;
            jArr[i11 + 1] = dVar.f69355c;
        }
        long[] jArr2 = this.f69384b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f69385c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    public static int b(d dVar, d dVar2) {
        return Long.compare(dVar.f69354b, dVar2.f69354b);
    }

    @Override
    public List getCues(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f69383a.size(); i10++) {
            long[] jArr = this.f69384b;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                d dVar = (d) this.f69383a.get(i10);
                u1.a aVar = dVar.f69353a;
                if (aVar.f72944e == -3.4028235E38f) {
                    arrayList2.add(dVar);
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return j.b((d) obj, (d) obj2);
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            arrayList.add(((d) arrayList2.get(i12)).f69353a.a().h((-1) - i12, 1).a());
        }
        return arrayList;
    }

    @Override
    public long getEventTime(int i10) {
        androidx.media3.common.util.a.a(i10 >= 0);
        androidx.media3.common.util.a.a(i10 < this.f69385c.length);
        return this.f69385c[i10];
    }

    @Override
    public int getEventTimeCount() {
        return this.f69385c.length;
    }

    @Override
    public int getNextEventTimeIndex(long j10) {
        int iD = a1.d(this.f69385c, j10, false, false);
        if (iD < this.f69385c.length) {
            return iD;
        }
        return -1;
    }
}
