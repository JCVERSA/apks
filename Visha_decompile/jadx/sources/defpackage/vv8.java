package defpackage;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Stack;

public class vv8 extends po0 {
    public static final int[] i;
    public final int c;
    public final po0 d;
    public final po0 e;
    public final int f;
    public final int g;
    public int h;

    public static class b {
        public final Stack a;

        public b() {
            this.a = new Stack();
        }

        public final po0 b(po0 po0Var, po0 po0Var2) {
            c(po0Var);
            c(po0Var2);
            po0 vv8Var = (po0) this.a.pop();
            while (!this.a.isEmpty()) {
                vv8Var = new vv8((po0) this.a.pop(), vv8Var);
            }
            return vv8Var;
        }

        public final void c(po0 po0Var) {
            if (po0Var.o()) {
                e(po0Var);
                return;
            }
            if (po0Var instanceof vv8) {
                vv8 vv8Var = (vv8) po0Var;
                c(vv8Var.d);
                c(vv8Var.e);
            } else {
                String strValueOf = String.valueOf(po0Var.getClass());
                StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }

        public final int d(int i) {
            int iBinarySearch = Arrays.binarySearch(vv8.i, i);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        public final void e(po0 po0Var) {
            int iD = d(po0Var.size());
            int i = vv8.i[iD + 1];
            if (this.a.isEmpty() || ((po0) this.a.peek()).size() >= i) {
                this.a.push(po0Var);
                return;
            }
            int i2 = vv8.i[iD];
            po0 vv8Var = (po0) this.a.pop();
            while (true) {
                if (this.a.isEmpty() || ((po0) this.a.peek()).size() >= i2) {
                    break;
                } else {
                    vv8Var = new vv8((po0) this.a.pop(), vv8Var);
                }
            }
            vv8 vv8Var2 = new vv8(vv8Var, po0Var);
            while (!this.a.isEmpty()) {
                if (((po0) this.a.peek()).size() >= vv8.i[d(vv8Var2.size()) + 1]) {
                    break;
                } else {
                    vv8Var2 = new vv8((po0) this.a.pop(), vv8Var2);
                }
            }
            this.a.push(vv8Var2);
        }
    }

    public static class c implements Iterator {
        public final Stack b;
        public qm5 c;

        public final qm5 a(po0 po0Var) {
            while (po0Var instanceof vv8) {
                vv8 vv8Var = (vv8) po0Var;
                this.b.push(vv8Var);
                po0Var = vv8Var.d;
            }
            return (qm5) po0Var;
        }

        public final qm5 b() {
            while (!this.b.isEmpty()) {
                qm5 qm5VarA = a(((vv8) this.b.pop()).e);
                if (!qm5VarA.isEmpty()) {
                    return qm5VarA;
                }
            }
            return null;
        }

        @Override
        public qm5 next() {
            qm5 qm5Var = this.c;
            if (qm5Var == null) {
                throw new NoSuchElementException();
            }
            this.c = b();
            return qm5Var;
        }

        @Override
        public boolean hasNext() {
            return this.c != null;
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public c(po0 po0Var) {
            this.b = new Stack();
            this.c = a(po0Var);
        }
    }

    public class d implements po0.a {
        public final c b;
        public po0.a c;
        public int d;

        @Override
        public Byte next() {
            return Byte.valueOf(nextByte());
        }

        @Override
        public boolean hasNext() {
            return this.d > 0;
        }

        @Override
        public byte nextByte() {
            if (!this.c.hasNext()) {
                this.c = this.b.next().iterator();
            }
            this.d--;
            return this.c.nextByte();
        }

        @Override
        public void remove() {
            throw new UnsupportedOperationException();
        }

        public d() {
            c cVar = new c(vv8.this);
            this.b = cVar;
            this.c = cVar.next().iterator();
            this.d = vv8.this.size();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i2 = 1;
        int i3 = 1;
        while (i2 > 0) {
            arrayList.add(Integer.valueOf(i2));
            int i4 = i3 + i2;
            i3 = i2;
            i2 = i4;
        }
        arrayList.add(Integer.MAX_VALUE);
        i = new int[arrayList.size()];
        int i5 = 0;
        while (true) {
            int[] iArr = i;
            if (i5 >= iArr.length) {
                return;
            }
            iArr[i5] = ((Integer) arrayList.get(i5)).intValue();
            i5++;
        }
    }

    public static po0 C(po0 po0Var, po0 po0Var2) {
        vv8 vv8Var = po0Var instanceof vv8 ? (vv8) po0Var : null;
        if (po0Var2.size() == 0) {
            return po0Var;
        }
        if (po0Var.size() != 0) {
            int size = po0Var.size() + po0Var2.size();
            if (size < 128) {
                return D(po0Var, po0Var2);
            }
            if (vv8Var != null && vv8Var.e.size() + po0Var2.size() < 128) {
                po0Var2 = new vv8(vv8Var.d, D(vv8Var.e, po0Var2));
            } else {
                if (vv8Var == null || vv8Var.d.n() <= vv8Var.e.n() || vv8Var.n() <= po0Var2.n()) {
                    return size >= i[Math.max(po0Var.n(), po0Var2.n()) + 1] ? new vv8(po0Var, po0Var2) : new b().b(po0Var, po0Var2);
                }
                po0Var2 = new vv8(vv8Var.d, new vv8(vv8Var.e, po0Var2));
            }
        }
        return po0Var2;
    }

    public static qm5 D(po0 po0Var, po0 po0Var2) {
        int size = po0Var.size();
        int size2 = po0Var2.size();
        byte[] bArr = new byte[size + size2];
        po0Var.l(bArr, 0, 0, size);
        po0Var2.l(bArr, 0, size, size2);
        return new qm5(bArr);
    }

    public final boolean E(po0 po0Var) {
        c cVar = new c(this);
        qm5 qm5Var = (qm5) cVar.next();
        c cVar2 = new c(po0Var);
        qm5 qm5Var2 = (qm5) cVar2.next();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            int size = qm5Var.size() - i2;
            int size2 = qm5Var2.size() - i3;
            int iMin = Math.min(size, size2);
            if (!(i2 == 0 ? qm5Var.z(qm5Var2, i3, iMin) : qm5Var2.z(qm5Var, i2, iMin))) {
                return false;
            }
            i4 += iMin;
            int i5 = this.c;
            if (i4 >= i5) {
                if (i4 == i5) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                qm5Var = (qm5) cVar.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
            if (iMin == size2) {
                qm5Var2 = (qm5) cVar2.next();
                i3 = 0;
            } else {
                i3 += iMin;
            }
        }
    }

    @Override
    public po0.a iterator() {
        return new d();
    }

    public boolean equals(Object obj) {
        int iT;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof po0)) {
            return false;
        }
        po0 po0Var = (po0) obj;
        if (this.c != po0Var.size()) {
            return false;
        }
        if (this.c == 0) {
            return true;
        }
        if (this.h == 0 || (iT = po0Var.t()) == 0 || this.h == iT) {
            return E(po0Var);
        }
        return false;
    }

    public int hashCode() {
        int iR = this.h;
        if (iR == 0) {
            int i2 = this.c;
            iR = r(i2, 0, i2);
            if (iR == 0) {
                iR = 1;
            }
            this.h = iR;
        }
        return iR;
    }

    @Override
    public void m(byte[] bArr, int i2, int i3, int i4) {
        int i5 = i2 + i4;
        int i6 = this.f;
        if (i5 <= i6) {
            this.d.m(bArr, i2, i3, i4);
        } else {
            if (i2 >= i6) {
                this.e.m(bArr, i2 - i6, i3, i4);
                return;
            }
            int i7 = i6 - i2;
            this.d.m(bArr, i2, i3, i7);
            this.e.m(bArr, 0, i3 + i7, i4 - i7);
        }
    }

    @Override
    public int n() {
        return this.g;
    }

    @Override
    public boolean o() {
        return this.c >= i[this.g];
    }

    @Override
    public boolean p() {
        int iS = this.d.s(0, 0, this.f);
        po0 po0Var = this.e;
        return po0Var.s(iS, 0, po0Var.size()) == 0;
    }

    @Override
    public int r(int i2, int i3, int i4) {
        int i5 = i3 + i4;
        int i6 = this.f;
        if (i5 <= i6) {
            return this.d.r(i2, i3, i4);
        }
        if (i3 >= i6) {
            return this.e.r(i2, i3 - i6, i4);
        }
        int i7 = i6 - i3;
        return this.e.r(this.d.r(i2, i3, i7), 0, i4 - i7);
    }

    @Override
    public int s(int i2, int i3, int i4) {
        int i5 = i3 + i4;
        int i6 = this.f;
        if (i5 <= i6) {
            return this.d.s(i2, i3, i4);
        }
        if (i3 >= i6) {
            return this.e.s(i2, i3 - i6, i4);
        }
        int i7 = i6 - i3;
        return this.e.s(this.d.s(i2, i3, i7), 0, i4 - i7);
    }

    @Override
    public int size() {
        return this.c;
    }

    @Override
    public int t() {
        return this.h;
    }

    @Override
    public String v(String str) {
        return new String(u(), str);
    }

    @Override
    public void y(OutputStream outputStream, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f;
        if (i4 <= i5) {
            this.d.y(outputStream, i2, i3);
        } else {
            if (i2 >= i5) {
                this.e.y(outputStream, i2 - i5, i3);
                return;
            }
            int i6 = i5 - i2;
            this.d.y(outputStream, i2, i6);
            this.e.y(outputStream, 0, i3 - i6);
        }
    }

    public vv8(po0 po0Var, po0 po0Var2) {
        this.h = 0;
        this.d = po0Var;
        this.e = po0Var2;
        int size = po0Var.size();
        this.f = size;
        this.c = size + po0Var2.size();
        this.g = Math.max(po0Var.n(), po0Var2.n()) + 1;
    }
}
