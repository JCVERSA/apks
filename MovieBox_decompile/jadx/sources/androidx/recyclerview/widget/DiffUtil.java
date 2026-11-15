package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public abstract class DiffUtil {

    private static final Comparator f13814a = new Comparator<c>() {
        @Override
        public int compare(c cVar, c cVar2) {
            return cVar.f13817a - cVar2.f13817a;
        }
    };

    public static abstract class a {
        public abstract boolean a(int i10, int i11);

        public abstract boolean b(int i10, int i11);

        public Object c(int i10, int i11) {
            return null;
        }

        public abstract int d();

        public abstract int e();
    }

    static class b {

        private final int[] f13815a;

        private final int f13816b;

        b(int i10) {
            int[] iArr = new int[i10];
            this.f13815a = iArr;
            this.f13816b = iArr.length / 2;
        }

        int[] a() {
            return this.f13815a;
        }

        int b(int i10) {
            return this.f13815a[i10 + this.f13816b];
        }

        void c(int i10, int i11) {
            this.f13815a[i10 + this.f13816b] = i11;
        }
    }

    static class c {

        public final int f13817a;

        public final int f13818b;

        public final int f13819c;

        c(int i10, int i11, int i12) {
            this.f13817a = i10;
            this.f13818b = i11;
            this.f13819c = i12;
        }

        int a() {
            return this.f13817a + this.f13819c;
        }

        int b() {
            return this.f13818b + this.f13819c;
        }
    }

    public static class d {

        private final List f13820a;

        private final int[] f13821b;

        private final int[] f13822c;

        private final a f13823d;

        private final int f13824e;

        private final int f13825f;

        private final boolean f13826g;

        d(a aVar, List list, int[] iArr, int[] iArr2, boolean z10) {
            this.f13820a = list;
            this.f13821b = iArr;
            this.f13822c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f13823d = aVar;
            this.f13824e = aVar.e();
            this.f13825f = aVar.d();
            this.f13826g = z10;
            a();
            e();
        }

        private void a() {
            c cVar = this.f13820a.isEmpty() ? null : (c) this.f13820a.get(0);
            if (cVar == null || cVar.f13817a != 0 || cVar.f13818b != 0) {
                this.f13820a.add(0, new c(0, 0, 0));
            }
            this.f13820a.add(new c(this.f13824e, this.f13825f, 0));
        }

        private void d(int i10) {
            int size = this.f13820a.size();
            int iB = 0;
            for (int i11 = 0; i11 < size; i11++) {
                c cVar = (c) this.f13820a.get(i11);
                while (iB < cVar.f13818b) {
                    if (this.f13822c[iB] == 0 && this.f13823d.b(i10, iB)) {
                        int i12 = this.f13823d.a(i10, iB) ? 8 : 4;
                        this.f13821b[i10] = (iB << 4) | i12;
                        this.f13822c[iB] = (i10 << 4) | i12;
                        return;
                    }
                    iB++;
                }
                iB = cVar.b();
            }
        }

        private void e() {
            for (c cVar : this.f13820a) {
                for (int i10 = 0; i10 < cVar.f13819c; i10++) {
                    int i11 = cVar.f13817a + i10;
                    int i12 = cVar.f13818b + i10;
                    int i13 = this.f13823d.a(i11, i12) ? 1 : 2;
                    this.f13821b[i11] = (i12 << 4) | i13;
                    this.f13822c[i12] = (i11 << 4) | i13;
                }
            }
            if (this.f13826g) {
                f();
            }
        }

        private void f() {
            int iA = 0;
            for (c cVar : this.f13820a) {
                while (iA < cVar.f13817a) {
                    if (this.f13821b[iA] == 0) {
                        d(iA);
                    }
                    iA++;
                }
                iA = cVar.a();
            }
        }

        private static f g(Collection collection, int i10, boolean z10) {
            f fVar;
            Iterator it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    fVar = null;
                    break;
                }
                fVar = (f) it.next();
                if (fVar.f13827a == i10 && fVar.f13829c == z10) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                f fVar2 = (f) it.next();
                if (z10) {
                    fVar2.f13828b--;
                } else {
                    fVar2.f13828b++;
                }
            }
            return fVar;
        }

        public void b(j jVar) {
            int i10;
            androidx.recyclerview.widget.d dVar = jVar instanceof androidx.recyclerview.widget.d ? (androidx.recyclerview.widget.d) jVar : new androidx.recyclerview.widget.d(jVar);
            int i11 = this.f13824e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i12 = this.f13824e;
            int i13 = this.f13825f;
            for (int size = this.f13820a.size() - 1; size >= 0; size--) {
                c cVar = (c) this.f13820a.get(size);
                int iA = cVar.a();
                int iB = cVar.b();
                while (true) {
                    if (i12 <= iA) {
                        break;
                    }
                    i12--;
                    int i14 = this.f13821b[i12];
                    if ((i14 & 12) != 0) {
                        int i15 = i14 >> 4;
                        f fVarG = g(arrayDeque, i15, false);
                        if (fVarG != null) {
                            int i16 = (i11 - fVarG.f13828b) - 1;
                            dVar.onMoved(i12, i16);
                            if ((i14 & 4) != 0) {
                                dVar.onChanged(i16, 1, this.f13823d.c(i12, i15));
                            }
                        } else {
                            arrayDeque.add(new f(i12, (i11 - i12) - 1, true));
                        }
                    } else {
                        dVar.onRemoved(i12, 1);
                        i11--;
                    }
                }
                while (i13 > iB) {
                    i13--;
                    int i17 = this.f13822c[i13];
                    if ((i17 & 12) != 0) {
                        int i18 = i17 >> 4;
                        f fVarG2 = g(arrayDeque, i18, true);
                        if (fVarG2 == null) {
                            arrayDeque.add(new f(i13, i11 - i12, false));
                        } else {
                            dVar.onMoved((i11 - fVarG2.f13828b) - 1, i12);
                            if ((i17 & 4) != 0) {
                                dVar.onChanged(i12, 1, this.f13823d.c(i18, i13));
                            }
                        }
                    } else {
                        dVar.onInserted(i12, 1);
                        i11++;
                    }
                }
                int i19 = cVar.f13817a;
                int i20 = cVar.f13818b;
                for (i10 = 0; i10 < cVar.f13819c; i10++) {
                    if ((this.f13821b[i19] & 15) == 2) {
                        dVar.onChanged(i19, 1, this.f13823d.c(i19, i20));
                    }
                    i19++;
                    i20++;
                }
                i12 = cVar.f13817a;
                i13 = cVar.f13818b;
            }
            dVar.a();
        }

        public void c(RecyclerView.Adapter adapter) {
            b(new androidx.recyclerview.widget.b(adapter));
        }
    }

    public static abstract class e {
        public abstract boolean areContentsTheSame(Object obj, Object obj2);

        public abstract boolean areItemsTheSame(Object obj, Object obj2);

        @Nullable
        public Object getChangePayload(@NonNull Object obj, @NonNull Object obj2) {
            return null;
        }
    }

    private static class f {

        int f13827a;

        int f13828b;

        boolean f13829c;

        f(int i10, int i11, boolean z10) {
            this.f13827a = i10;
            this.f13828b = i11;
            this.f13829c = z10;
        }
    }

    static class g {

        int f13830a;

        int f13831b;

        int f13832c;

        int f13833d;

        public g() {
        }

        int a() {
            return this.f13833d - this.f13832c;
        }

        int b() {
            return this.f13831b - this.f13830a;
        }

        public g(int i10, int i11, int i12, int i13) {
            this.f13830a = i10;
            this.f13831b = i11;
            this.f13832c = i12;
            this.f13833d = i13;
        }
    }

    static class h {

        public int f13834a;

        public int f13835b;

        public int f13836c;

        public int f13837d;

        public boolean f13838e;

        h() {
        }

        int a() {
            return Math.min(this.f13836c - this.f13834a, this.f13837d - this.f13835b);
        }

        boolean b() {
            return this.f13837d - this.f13835b != this.f13836c - this.f13834a;
        }

        boolean c() {
            return this.f13837d - this.f13835b > this.f13836c - this.f13834a;
        }

        c d() {
            if (!b()) {
                int i10 = this.f13834a;
                return new c(i10, this.f13835b, this.f13836c - i10);
            }
            if (this.f13838e) {
                return new c(this.f13834a, this.f13835b, a());
            }
            return c() ? new c(this.f13834a, this.f13835b + 1, a()) : new c(this.f13834a + 1, this.f13835b, a());
        }
    }

    private static h a(g gVar, a aVar, b bVar, b bVar2, int i10) {
        int iB;
        int i11;
        int i12;
        boolean z10 = (gVar.b() - gVar.a()) % 2 == 0;
        int iB2 = gVar.b() - gVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 == i13 || (i14 != i10 && bVar2.b(i14 + 1) < bVar2.b(i14 - 1))) {
                iB = bVar2.b(i14 + 1);
                i11 = iB;
            } else {
                iB = bVar2.b(i14 - 1);
                i11 = iB - 1;
            }
            int i15 = gVar.f13833d - ((gVar.f13831b - i11) - i14);
            int i16 = (i10 == 0 || i11 != iB) ? i15 : i15 + 1;
            while (i11 > gVar.f13830a && i15 > gVar.f13832c && aVar.b(i11 - 1, i15 - 1)) {
                i11--;
                i15--;
            }
            bVar2.c(i14, i11);
            if (z10 && (i12 = iB2 - i14) >= i13 && i12 <= i10 && bVar.b(i12) >= i11) {
                h hVar = new h();
                hVar.f13834a = i11;
                hVar.f13835b = i15;
                hVar.f13836c = iB;
                hVar.f13837d = i16;
                hVar.f13838e = true;
                return hVar;
            }
        }
        return null;
    }

    public static d b(a aVar) {
        return c(aVar, true);
    }

    public static d c(a aVar, boolean z10) {
        int iE = aVar.e();
        int iD = aVar.d();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(new g(0, iE, 0, iD));
        int i10 = ((((iE + iD) + 1) / 2) * 2) + 1;
        b bVar = new b(i10);
        b bVar2 = new b(i10);
        ArrayList arrayList3 = new ArrayList();
        while (!arrayList2.isEmpty()) {
            g gVar = (g) arrayList2.remove(arrayList2.size() - 1);
            h hVarE = e(gVar, aVar, bVar, bVar2);
            if (hVarE != null) {
                if (hVarE.a() > 0) {
                    arrayList.add(hVarE.d());
                }
                g gVar2 = arrayList3.isEmpty() ? new g() : (g) arrayList3.remove(arrayList3.size() - 1);
                gVar2.f13830a = gVar.f13830a;
                gVar2.f13832c = gVar.f13832c;
                gVar2.f13831b = hVarE.f13834a;
                gVar2.f13833d = hVarE.f13835b;
                arrayList2.add(gVar2);
                gVar.f13831b = gVar.f13831b;
                gVar.f13833d = gVar.f13833d;
                gVar.f13830a = hVarE.f13836c;
                gVar.f13832c = hVarE.f13837d;
                arrayList2.add(gVar);
            } else {
                arrayList3.add(gVar);
            }
        }
        Collections.sort(arrayList, f13814a);
        return new d(aVar, arrayList, bVar.a(), bVar2.a(), z10);
    }

    private static h d(g gVar, a aVar, b bVar, b bVar2, int i10) {
        int iB;
        int i11;
        int i12;
        boolean z10 = Math.abs(gVar.b() - gVar.a()) % 2 == 1;
        int iB2 = gVar.b() - gVar.a();
        int i13 = -i10;
        for (int i14 = i13; i14 <= i10; i14 += 2) {
            if (i14 == i13 || (i14 != i10 && bVar.b(i14 + 1) > bVar.b(i14 - 1))) {
                iB = bVar.b(i14 + 1);
                i11 = iB;
            } else {
                iB = bVar.b(i14 - 1);
                i11 = iB + 1;
            }
            int i15 = (gVar.f13832c + (i11 - gVar.f13830a)) - i14;
            int i16 = (i10 == 0 || i11 != iB) ? i15 : i15 - 1;
            while (i11 < gVar.f13831b && i15 < gVar.f13833d && aVar.b(i11, i15)) {
                i11++;
                i15++;
            }
            bVar.c(i14, i11);
            if (z10 && (i12 = iB2 - i14) >= i13 + 1 && i12 <= i10 - 1 && bVar2.b(i12) <= i11) {
                h hVar = new h();
                hVar.f13834a = iB;
                hVar.f13835b = i16;
                hVar.f13836c = i11;
                hVar.f13837d = i15;
                hVar.f13838e = false;
                return hVar;
            }
        }
        return null;
    }

    private static h e(g gVar, a aVar, b bVar, b bVar2) {
        if (gVar.b() >= 1 && gVar.a() >= 1) {
            int iB = ((gVar.b() + gVar.a()) + 1) / 2;
            bVar.c(1, gVar.f13830a);
            bVar2.c(1, gVar.f13831b);
            for (int i10 = 0; i10 < iB; i10++) {
                h hVarD = d(gVar, aVar, bVar, bVar2, i10);
                if (hVarD != null) {
                    return hVarD;
                }
                h hVarA = a(gVar, aVar, bVar, bVar2, i10);
                if (hVarA != null) {
                    return hVarA;
                }
            }
        }
        return null;
    }
}
