package org.jsoup.nodes;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.jsoup.SerializationException;

public class b implements Iterable, Cloneable {

    private static final String[] f68592d = new String[0];

    private int f68593a = 0;

    String[] f68594b;

    String[] f68595c;

    class a implements Iterator {

        int f68596a = 0;

        a() {
        }

        @Override
        public org.jsoup.nodes.a next() {
            b bVar = b.this;
            String[] strArr = bVar.f68594b;
            int i10 = this.f68596a;
            org.jsoup.nodes.a aVar = new org.jsoup.nodes.a(strArr[i10], bVar.f68595c[i10], bVar);
            this.f68596a++;
            return aVar;
        }

        @Override
        public boolean hasNext() {
            return this.f68596a < b.this.f68593a;
        }

        @Override
        public void remove() {
            b bVar = b.this;
            int i10 = this.f68596a - 1;
            this.f68596a = i10;
            bVar.z(i10);
        }
    }

    public b() {
        String[] strArr = f68592d;
        this.f68594b = strArr;
        this.f68595c = strArr;
    }

    private void c(String str, String str2) {
        i(this.f68593a + 1);
        String[] strArr = this.f68594b;
        int i10 = this.f68593a;
        strArr[i10] = str;
        this.f68595c[i10] = str2;
        this.f68593a = i10 + 1;
    }

    private void i(int i10) {
        org.jsoup.helper.d.d(i10 >= this.f68593a);
        String[] strArr = this.f68594b;
        int length = strArr.length;
        if (length >= i10) {
            return;
        }
        int i11 = length >= 4 ? this.f68593a * 2 : 4;
        if (i10 <= i11) {
            i10 = i11;
        }
        this.f68594b = m(strArr, i10);
        this.f68595c = m(this.f68595c, i10);
    }

    static String j(String str) {
        return str == null ? "" : str;
    }

    private static String[] m(String[] strArr, int i10) {
        String[] strArr2 = new String[i10];
        System.arraycopy(strArr, 0, strArr2, 0, Math.min(strArr.length, i10));
        return strArr2;
    }

    private int u(String str) {
        org.jsoup.helper.d.j(str);
        for (int i10 = 0; i10 < this.f68593a; i10++) {
            if (str.equalsIgnoreCase(this.f68594b[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public void z(int i10) {
        org.jsoup.helper.d.b(i10 >= this.f68593a);
        int i11 = (this.f68593a - i10) - 1;
        if (i11 > 0) {
            String[] strArr = this.f68594b;
            int i12 = i10 + 1;
            System.arraycopy(strArr, i12, strArr, i10, i11);
            String[] strArr2 = this.f68595c;
            System.arraycopy(strArr2, i12, strArr2, i10, i11);
        }
        int i13 = this.f68593a - 1;
        this.f68593a = i13;
        this.f68594b[i13] = null;
        this.f68595c[i13] = null;
    }

    public void A(String str) {
        int iT = t(str);
        if (iT != -1) {
            z(iT);
        }
    }

    public void B(String str) {
        int iU = u(str);
        if (iU != -1) {
            z(iU);
        }
    }

    public void e(b bVar) {
        if (bVar.size() == 0) {
            return;
        }
        i(this.f68593a + bVar.f68593a);
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            x((org.jsoup.nodes.a) it.next());
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f68593a == bVar.f68593a && Arrays.equals(this.f68594b, bVar.f68594b)) {
            return Arrays.equals(this.f68595c, bVar.f68595c);
        }
        return false;
    }

    public List g() {
        ArrayList arrayList = new ArrayList(this.f68593a);
        for (int i10 = 0; i10 < this.f68593a; i10++) {
            arrayList.add(this.f68595c[i10] == null ? new c(this.f68594b[i10]) : new org.jsoup.nodes.a(this.f68594b[i10], this.f68595c[i10], this));
        }
        return Collections.unmodifiableList(arrayList);
    }

    public int hashCode() {
        return (((this.f68593a * 31) + Arrays.hashCode(this.f68594b)) * 31) + Arrays.hashCode(this.f68595c);
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.f68593a = this.f68593a;
            this.f68594b = m(this.f68594b, this.f68593a);
            this.f68595c = m(this.f68595c, this.f68593a);
            return bVar;
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public String n(String str) {
        int iT = t(str);
        return iT == -1 ? "" : j(this.f68595c[iT]);
    }

    public String o(String str) {
        int iU = u(str);
        return iU == -1 ? "" : j(this.f68595c[iU]);
    }

    public boolean p(String str) {
        return t(str) != -1;
    }

    public boolean q(String str) {
        return u(str) != -1;
    }

    public String r() {
        StringBuilder sb2 = new StringBuilder();
        try {
            s(sb2, new Document("").g1());
            return sb2.toString();
        } catch (IOException e10) {
            throw new SerializationException(e10);
        }
    }

    final void s(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        int i10 = this.f68593a;
        for (int i11 = 0; i11 < i10; i11++) {
            String str = this.f68594b[i11];
            String str2 = this.f68595c[i11];
            appendable.append(' ').append(str);
            if (!org.jsoup.nodes.a.k(str, str2, outputSettings)) {
                appendable.append("=\"");
                if (str2 == null) {
                    str2 = "";
                }
                Entities.e(appendable, str2, outputSettings, true, false, false);
                appendable.append('\"');
            }
        }
    }

    public int size() {
        return this.f68593a;
    }

    int t(String str) {
        org.jsoup.helper.d.j(str);
        for (int i10 = 0; i10 < this.f68593a; i10++) {
            if (str.equals(this.f68594b[i10])) {
                return i10;
            }
        }
        return -1;
    }

    public String toString() {
        return r();
    }

    public void v() {
        for (int i10 = 0; i10 < this.f68593a; i10++) {
            String[] strArr = this.f68594b;
            strArr[i10] = sz.b.a(strArr[i10]);
        }
    }

    public b w(String str, String str2) {
        int iT = t(str);
        if (iT != -1) {
            this.f68595c[iT] = str2;
        } else {
            c(str, str2);
        }
        return this;
    }

    public b x(org.jsoup.nodes.a aVar) {
        org.jsoup.helper.d.j(aVar);
        w(aVar.getKey(), aVar.getValue());
        aVar.f68591c = this;
        return this;
    }

    void y(String str, String str2) {
        int iU = u(str);
        if (iU == -1) {
            c(str, str2);
            return;
        }
        this.f68595c[iU] = str2;
        if (this.f68594b[iU].equals(str)) {
            return;
        }
        this.f68594b[iU] = str;
    }
}
