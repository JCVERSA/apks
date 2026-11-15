package defpackage;

import defpackage.qie;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

public final class zie implements tge {
    public final List a;
    public final long[] b;
    public final long[] c;

    public zie(List list) {
        this.a = Collections.unmodifiableList(new ArrayList(list));
        int size = list.size();
        this.b = new long[size + size];
        for (int i = 0; i < list.size(); i++) {
            qie qieVar = (qie) list.get(i);
            long[] jArr = this.b;
            int i2 = i + i;
            jArr[i2] = qieVar.b;
            jArr[i2 + 1] = qieVar.c;
        }
        long[] jArr2 = this.b;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.c = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override
    public final List a(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            List list = this.a;
            if (i >= list.size()) {
                break;
            }
            long[] jArr = this.b;
            int i2 = i + i;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                qie qieVar = (qie) list.get(i);
                fyf fyfVar = qieVar.a;
                if (fyfVar.e == -3.4028235E38f) {
                    arrayList2.add(qieVar);
                } else {
                    arrayList.add(fyfVar);
                }
            }
            i++;
        }
        Collections.sort(arrayList2, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((qie) obj).b, ((qie) obj2).b);
            }
        });
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            zvf zvfVarB = ((qie) arrayList2.get(i3)).a.b();
            zvfVarB.e((-1) - i3, 1);
            arrayList.add(zvfVarB.p());
        }
        return arrayList;
    }

    @Override
    public final int zza() {
        return this.c.length;
    }

    @Override
    public final long zzb(int i) {
        n7g.d(i >= 0);
        long[] jArr = this.c;
        n7g.d(i < jArr.length);
        return jArr[i];
    }
}
