package com.yandex.div.core.state;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.livecaption.constant.ICode;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import defpackage.abb;
import defpackage.c74;
import defpackage.d81;
import defpackage.i81;
import defpackage.j1a;
import defpackage.s15;
import defpackage.uq2;
import defpackage.wn8;
import defpackage.x71;
import defpackage.y45;
import defpackage.y71;
import defpackage.yi5;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import kotlin.Pair;
import kotlin.b;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.io.IOUtils;

public final class DivStatePath {
    public static final a f = new a(null);
    public final long a;
    public final List b;
    public final List c;
    public final yi5 d;
    public final yi5 e;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static final int d(DivStatePath divStatePath, DivStatePath divStatePath2) {
            if (divStatePath.k() != divStatePath2.k()) {
                return (int) (divStatePath.k() - divStatePath2.k());
            }
            y45.i(divStatePath, "lhs");
            int size = divStatePath.b.size();
            y45.i(divStatePath2, "rhs");
            int iMin = Math.min(size, divStatePath2.b.size());
            for (int i = 0; i < iMin; i++) {
                Pair pair = (Pair) divStatePath.b.get(i);
                Pair pair2 = (Pair) divStatePath2.b.get(i);
                int iCompareTo = uq2.c(pair).compareTo(uq2.c(pair2));
                if (iCompareTo != 0) {
                    return iCompareTo;
                }
                int iCompareTo2 = uq2.d(pair).compareTo(uq2.d(pair2));
                if (iCompareTo2 != 0) {
                    return iCompareTo2;
                }
            }
            return divStatePath.b.size() - divStatePath2.b.size();
        }

        public final Comparator c() {
            return new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    return DivStatePath.a.d((DivStatePath) obj, (DivStatePath) obj2);
                }
            };
        }

        public final List e(List list, List list2, boolean z) {
            Iterator it = list2.iterator();
            int iG = 0;
            while (it.hasNext()) {
                iG = DivStatePath.f.g(list, (Pair) it.next(), iG);
            }
            if (z) {
                iG++;
            }
            return list.subList(0, iG);
        }

        public final List f(DivStatePath divStatePath, DivStatePath divStatePath2) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            for (Object obj : divStatePath.b) {
                int i2 = i + 1;
                if (i < 0) {
                    y71.u();
                }
                Pair pair = (Pair) obj;
                Pair pair2 = (Pair) i81.r0(divStatePath2.b, i);
                if (pair2 == null || !y45.e(pair, pair2)) {
                    break;
                }
                arrayList.add(pair);
                i = i2;
            }
            return arrayList;
        }

        public final int g(List list, Pair pair, int i) {
            int size = list.size() - 1;
            while (i < size) {
                if (y45.e(list.get(i), uq2.c(pair))) {
                    int i2 = i + 1;
                    if (y45.e(list.get(i2), uq2.d(pair))) {
                        return i2;
                    }
                }
                i++;
            }
            return list.size();
        }

        public final DivStatePath h(long j, Div div) {
            y45.j(div, TtmlNode.TAG_DIV);
            List listQ = y71.q(String.valueOf(j));
            if (div instanceof Div.n) {
                listQ.add(DivPathUtils.i(DivPathUtils.a, ((Div.n) div).c(), null, 1, null));
            }
            return new DivStatePath(j, y71.k(), listQ);
        }

        public final DivStatePath i(long j) {
            return new DivStatePath(j, new ArrayList(), null, 4, null);
        }

        public final DivStatePath j(DivData.State state) {
            y45.j(state, ICode.CALL.CALL_KEY_STATE);
            return h(state.b, state.a);
        }

        public final DivStatePath k(DivStatePath divStatePath, DivStatePath divStatePath2) {
            y45.j(divStatePath, "somePath");
            y45.j(divStatePath2, "otherPath");
            if (divStatePath.k() != divStatePath2.k()) {
                return null;
            }
            List listF = f(divStatePath, divStatePath2);
            return new DivStatePath(divStatePath.k(), listF, e(divStatePath.g(), listF, true));
        }

        public final DivStatePath l(String str) throws PathFormatException {
            y45.j(str, "path");
            ArrayList arrayList = new ArrayList();
            List listO0 = j1a.O0(str, new String[]{"/"}, false, 0, 6, null);
            try {
                long j = Long.parseLong((String) listO0.get(0));
                if (listO0.size() % 2 != 1) {
                    throw new PathFormatException("Must be even number of states in path: " + str, null, 2, null);
                }
                s15 s15VarP = wn8.p(wn8.q(1, listO0.size()), 2);
                int iB = s15VarP.b();
                int iC = s15VarP.c();
                int iF = s15VarP.f();
                if ((iF > 0 && iB <= iC) || (iF < 0 && iC <= iB)) {
                    while (true) {
                        arrayList.add(abb.a(listO0.get(iB), listO0.get(iB + 1)));
                        if (iB == iC) {
                            break;
                        }
                        iB += iF;
                    }
                }
                return new DivStatePath(j, arrayList, listO0);
            } catch (NumberFormatException e) {
                throw new PathFormatException("Top level id must be number: " + str, e);
            }
        }

        public a() {
        }
    }

    public DivStatePath(long j, List list, List list2) {
        y45.j(list, "states");
        y45.j(list2, "path");
        this.a = j;
        this.b = list;
        this.c = list2;
        this.d = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                return i81.y0(this.this$0.g(), "/", null, null, 0, null, null, 62, null);
            }
        });
        this.e = b.a(new c74() {
            {
                super(0);
            }

            @Override
            public final String invoke() {
                if (this.this$0.b.isEmpty()) {
                    return String.valueOf(this.this$0.k());
                }
                StringBuilder sb = new StringBuilder();
                sb.append(this.this$0.k());
                sb.append(IOUtils.DIR_SEPARATOR_UNIX);
                List<Pair> list3 = this.this$0.b;
                ArrayList arrayList = new ArrayList();
                for (Pair pair : list3) {
                    d81.C(arrayList, y71.n(uq2.c(pair), uq2.d(pair)));
                }
                sb.append(i81.y0(arrayList, "/", null, null, 0, null, null, 62, null));
                return sb.toString();
            }
        });
    }

    public static final DivStatePath o(String str) {
        return f.l(str);
    }

    public final DivStatePath b(String str, String str2) {
        y45.j(str, "divId");
        y45.j(str2, "stateId");
        ArrayList arrayList = new ArrayList(this.b.size() + 1);
        arrayList.addAll(this.b);
        arrayList.add(abb.a(str, str2));
        return new DivStatePath(this.a, arrayList, d(str2));
    }

    public final DivStatePath c(String str) {
        y45.j(str, "divId");
        return new DivStatePath(this.a, this.b, d(str));
    }

    public final List d(String str) {
        ArrayList arrayList = new ArrayList(this.c.size() + 1);
        arrayList.addAll(this.c);
        arrayList.add(str);
        return arrayList;
    }

    public final String e() {
        return (String) this.d.getValue();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DivStatePath)) {
            return false;
        }
        DivStatePath divStatePath = (DivStatePath) obj;
        return this.a == divStatePath.a && y45.e(this.b, divStatePath.b) && y45.e(this.c, divStatePath.c);
    }

    public final String f() {
        if (this.b.isEmpty()) {
            return null;
        }
        return uq2.d((Pair) i81.A0(this.b));
    }

    public final List g() {
        return this.c;
    }

    public final String h() {
        if (this.b.isEmpty()) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        long j = this.a;
        List list = this.b;
        sb.append(new DivStatePath(j, list.subList(0, list.size() - 1), null, 4, null).j());
        sb.append(IOUtils.DIR_SEPARATOR_UNIX);
        sb.append(uq2.c((Pair) i81.A0(this.b)));
        return sb.toString();
    }

    public int hashCode() {
        return (((Long.hashCode(this.a) * 31) + this.b.hashCode()) * 31) + this.c.hashCode();
    }

    public final List i() {
        return this.b;
    }

    public final String j() {
        return (String) this.e.getValue();
    }

    public final long k() {
        return this.a;
    }

    public final boolean l(DivStatePath divStatePath) {
        y45.j(divStatePath, "other");
        if (this.a != divStatePath.a || this.b.size() >= divStatePath.b.size()) {
            return false;
        }
        int i = 0;
        for (Object obj : this.b) {
            int i2 = i + 1;
            if (i < 0) {
                y71.u();
            }
            Pair pair = (Pair) obj;
            Pair pair2 = (Pair) divStatePath.b.get(i);
            if (!y45.e(uq2.c(pair), uq2.c(pair2)) || !y45.e(uq2.d(pair), uq2.d(pair2))) {
                return false;
            }
            i = i2;
        }
        return true;
    }

    public final boolean m() {
        return this.b.isEmpty();
    }

    public final DivStatePath n() {
        if (m()) {
            return this;
        }
        List listE1 = i81.e1(this.b);
        listE1.remove(y71.m(listE1));
        return new DivStatePath(this.a, listE1, f.e(this.c, this.b, false));
    }

    public String toString() {
        return e();
    }

    public DivStatePath(long j, List list, List list2, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this(j, (i & 2) != 0 ? y71.k() : list, (i & 4) != 0 ? x71.e(String.valueOf(j)) : list2);
    }
}
