package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class djc implements l2a {
    public final List b;
    public final long[] c;
    public final long[] d;

    public djc(List list) {
        this.b = Collections.unmodifiableList(new ArrayList(list));
        this.c = new long[list.size() * 2];
        for (int i = 0; i < list.size(); i++) {
            xic xicVar = (xic) list.get(i);
            int i2 = i * 2;
            long[] jArr = this.c;
            jArr[i2] = xicVar.b;
            jArr[i2 + 1] = xicVar.c;
        }
        long[] jArr2 = this.c;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.d = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    public static int b(xic xicVar, xic xicVar2) {
        return Long.compare(xicVar.b, xicVar2.b);
    }

    @Override
    public List getCues(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < this.b.size(); i++) {
            long[] jArr = this.c;
            int i2 = i * 2;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                xic xicVar = (xic) this.b.get(i);
                jm1 jm1Var = xicVar.a;
                if (jm1Var.f == -3.4028235E38f) {
                    arrayList2.add(xicVar);
                } else {
                    arrayList.add(jm1Var);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return djc.b((xic) obj, (xic) obj2);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            arrayList.add(((xic) arrayList2.get(i3)).a.b().h((-1) - i3, 1).a());
        }
        return arrayList;
    }

    @Override
    public long getEventTime(int i) {
        zi.a(i >= 0);
        zi.a(i < this.d.length);
        return this.d[i];
    }

    @Override
    public int getEventTimeCount() {
        return this.d.length;
    }

    @Override
    public int getNextEventTimeIndex(long j) {
        int iE = blb.e(this.d, j, false, false);
        if (iE < this.d.length) {
            return iE;
        }
        return -1;
    }
}
