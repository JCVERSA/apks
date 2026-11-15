package org.jsoup.nodes;

import defpackage.dnb;
import defpackage.m0a;
import defpackage.tw7;
import defpackage.v17;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.io.IOUtils;
import org.jsoup.SerializationException;

public class b implements Iterable, Cloneable {
    public int b = 0;
    public String[] c = new String[3];
    public String[] d = new String[3];

    public class a implements Iterator {
        public int b = 0;

        public a() {
        }

        @Override
        public org.jsoup.nodes.a next() {
            b bVar = b.this;
            String[] strArr = bVar.c;
            int i = this.b;
            org.jsoup.nodes.a aVar = new org.jsoup.nodes.a(strArr[i], bVar.d[i], bVar);
            this.b++;
            return aVar;
        }

        @Override
        public boolean hasNext() {
            while (this.b < b.this.b) {
                b bVar = b.this;
                if (!bVar.z(bVar.c[this.b])) {
                    break;
                }
                this.b++;
            }
            return this.b < b.this.b;
        }

        @Override
        public void remove() {
            b bVar = b.this;
            int i = this.b - 1;
            this.b = i;
            bVar.F(i);
        }
    }

    public static String n(String str) {
        return str == null ? "" : str;
    }

    public static String y(String str) {
        return IOUtils.DIR_SEPARATOR_UNIX + str;
    }

    public void A() {
        for (int i = 0; i < this.b; i++) {
            String[] strArr = this.c;
            strArr[i] = v17.a(strArr[i]);
        }
    }

    public b B(String str, String str2) {
        dnb.i(str);
        int iW = w(str);
        if (iW != -1) {
            this.d[iW] = str2;
        } else {
            j(str, str2);
        }
        return this;
    }

    public b C(org.jsoup.nodes.a aVar) {
        dnb.i(aVar);
        B(aVar.getKey(), aVar.getValue());
        aVar.d = this;
        return this;
    }

    public void E(String str, String str2) {
        int iX = x(str);
        if (iX == -1) {
            j(str, str2);
            return;
        }
        this.d[iX] = str2;
        if (this.c[iX].equals(str)) {
            return;
        }
        this.c[iX] = str;
    }

    public final void F(int i) {
        dnb.b(i >= this.b);
        int i2 = (this.b - i) - 1;
        if (i2 > 0) {
            String[] strArr = this.c;
            int i3 = i + 1;
            System.arraycopy(strArr, i3, strArr, i, i2);
            String[] strArr2 = this.d;
            System.arraycopy(strArr2, i3, strArr2, i, i2);
        }
        int i4 = this.b - 1;
        this.b = i4;
        this.c[i4] = null;
        this.d[i4] = null;
    }

    public void G(String str) {
        int iW = w(str);
        if (iW != -1) {
            F(iW);
        }
    }

    public void H(String str) {
        int iX = x(str);
        if (iX != -1) {
            F(iX);
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
        if (this.b == bVar.b && Arrays.equals(this.c, bVar.c)) {
            return Arrays.equals(this.d, bVar.d);
        }
        return false;
    }

    public int hashCode() {
        return (((this.b * 31) + Arrays.hashCode(this.c)) * 31) + Arrays.hashCode(this.d);
    }

    public boolean isEmpty() {
        return this.b == 0;
    }

    @Override
    public Iterator iterator() {
        return new a();
    }

    public b j(String str, String str2) {
        m(this.b + 1);
        String[] strArr = this.c;
        int i = this.b;
        strArr[i] = str;
        this.d[i] = str2;
        this.b = i + 1;
        return this;
    }

    public void k(b bVar) {
        if (bVar.size() == 0) {
            return;
        }
        m(this.b + bVar.b);
        Iterator it = bVar.iterator();
        while (it.hasNext()) {
            C((org.jsoup.nodes.a) it.next());
        }
    }

    public List l() {
        ArrayList arrayList = new ArrayList(this.b);
        for (int i = 0; i < this.b; i++) {
            if (!z(this.c[i])) {
                arrayList.add(new org.jsoup.nodes.a(this.c[i], this.d[i], this));
            }
        }
        return Collections.unmodifiableList(arrayList);
    }

    public final void m(int i) {
        dnb.c(i >= this.b);
        String[] strArr = this.c;
        int length = strArr.length;
        if (length >= i) {
            return;
        }
        int i2 = length >= 3 ? this.b * 2 : 3;
        if (i <= i2) {
            i = i2;
        }
        this.c = (String[]) Arrays.copyOf(strArr, i);
        this.d = (String[]) Arrays.copyOf(this.d, i);
    }

    public b clone() {
        try {
            b bVar = (b) super.clone();
            bVar.b = this.b;
            this.c = (String[]) Arrays.copyOf(this.c, this.b);
            this.d = (String[]) Arrays.copyOf(this.d, this.b);
            return bVar;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    /* JADX WARN: Code duplicated, block: B:20:0x0037  */
    public int p(tw7 tw7Var) {
        String str;
        int i = 0;
        if (isEmpty()) {
            return 0;
        }
        boolean zD = tw7Var.d();
        int i2 = 0;
        while (i < this.c.length) {
            int i3 = i + 1;
            int i4 = i3;
            while (true) {
                String[] strArr = this.c;
                if (i4 >= strArr.length || (str = strArr[i4]) == null) {
                    break;
                }
                if (zD && strArr[i].equals(str)) {
                    i2++;
                    F(i4);
                    i4--;
                } else if (!zD) {
                    String[] strArr2 = this.c;
                    if (strArr2[i].equalsIgnoreCase(strArr2[i4])) {
                        i2++;
                        F(i4);
                        i4--;
                    }
                }
                i4++;
            }
            i = i3;
        }
        return i2;
    }

    public String q(String str) {
        int iW = w(str);
        return iW == -1 ? "" : n(this.d[iW]);
    }

    public String r(String str) {
        int iX = x(str);
        return iX == -1 ? "" : n(this.d[iX]);
    }

    public boolean s(String str) {
        return w(str) != -1;
    }

    public int size() {
        return this.b;
    }

    public boolean t(String str) {
        return x(str) != -1;
    }

    public String toString() {
        return u();
    }

    public String u() {
        StringBuilder sbB = m0a.b();
        try {
            v(sbB, new Document("").x1());
            return m0a.m(sbB);
        } catch (IOException e) {
            throw new SerializationException(e);
        }
    }

    public final void v(Appendable appendable, Document.OutputSettings outputSettings) throws IOException {
        int i = this.b;
        for (int i2 = 0; i2 < i; i2++) {
            if (!z(this.c[i2])) {
                String str = this.c[i2];
                String str2 = this.d[i2];
                appendable.append(' ').append(str);
                if (!org.jsoup.nodes.a.j(str, str2, outputSettings)) {
                    appendable.append("=\"");
                    if (str2 == null) {
                        str2 = "";
                    }
                    Entities.g(appendable, str2, outputSettings, true, false, false);
                    appendable.append('\"');
                }
            }
        }
    }

    public int w(String str) {
        dnb.i(str);
        for (int i = 0; i < this.b; i++) {
            if (str.equals(this.c[i])) {
                return i;
            }
        }
        return -1;
    }

    public final int x(String str) {
        dnb.i(str);
        for (int i = 0; i < this.b; i++) {
            if (str.equalsIgnoreCase(this.c[i])) {
                return i;
            }
        }
        return -1;
    }

    public final boolean z(String str) {
        return str != null && str.length() > 1 && str.charAt(0) == '/';
    }
}
