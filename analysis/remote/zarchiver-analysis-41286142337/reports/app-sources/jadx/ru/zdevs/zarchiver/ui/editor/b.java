package ru.zdevs.zarchiver.ui.editor;

import android.os.Build;
import android.text.Editable;
import android.text.InputFilter;
import android.text.Selection;
import android.text.SpanWatcher;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import java.lang.reflect.Array;
import java.text.CharacterIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;

public final class b implements Editable {

    public final ru.zdevs.zarchiver.ui.editor.e f1855a;

    public final ArrayList f1856b = new ArrayList();

    public int f1857c = 0;

    public d f1858d = null;

    public boolean f1859e = false;

    public int f1860f = 0;

    public final int[] f1861g = new int[2];

    public final int[] f1862h = new int[2];

    public final e[] f1863i = new e[10];

    public final IdentityHashMap<Object, Integer> f1864j = new IdentityHashMap<>();

    public final ru.zdevs.zarchiver.ui.editor.a f1865k;

    public d1.b f1866l;

    public byte f1867m;

    public static class a {

        public final ArrayList f1868a;

        public final int[] f1869b = new int[2];

        public int f1870c;

        public a(int i2) {
            this.f1868a = new ArrayList(i2);
        }
    }

    public static class C0037b implements CharacterIterator {

        public char[] f1871a = new char[0];

        public int f1874d = 0;

        public int f1872b = 0;

        public int f1873c = 0;

        @Override
        public final Object clone() {
            throw new InternalError();
        }

        @Override
        public final char current() {
            int i2 = this.f1874d;
            if (i2 == this.f1873c) {
                return (char) 65535;
            }
            return this.f1871a[i2];
        }

        @Override
        public final char first() {
            this.f1874d = this.f1872b;
            return current();
        }

        @Override
        public final int getBeginIndex() {
            return this.f1872b;
        }

        @Override
        public final int getEndIndex() {
            return this.f1873c;
        }

        @Override
        public final int getIndex() {
            return this.f1874d;
        }

        @Override
        public final char last() {
            int i2 = this.f1872b;
            int i3 = this.f1873c;
            if (i2 == i3) {
                this.f1874d = i3;
                return (char) 65535;
            }
            int i4 = i3 - 1;
            this.f1874d = i4;
            return this.f1871a[i4];
        }

        @Override
        public final char next() {
            int i2 = this.f1874d + 1;
            this.f1874d = i2;
            int i3 = this.f1873c;
            if (i2 < i3) {
                return this.f1871a[i2];
            }
            this.f1874d = i3;
            return (char) 65535;
        }

        @Override
        public final char previous() {
            int i2 = this.f1874d;
            if (i2 <= this.f1872b) {
                return (char) 65535;
            }
            char[] cArr = this.f1871a;
            int i3 = i2 - 1;
            this.f1874d = i3;
            return cArr[i3];
        }

        @Override
        public final char setIndex(int i2) {
            if (this.f1872b > i2 || i2 > this.f1873c) {
                throw new IllegalArgumentException("invalid position");
            }
            this.f1874d = i2;
            return current();
        }
    }

    public static class c implements CharSequence {

        public final char[] f1875a;

        public final int f1876b;

        public final int f1877c;

        public c(char[] cArr, int i2, int i3) {
            this.f1875a = cArr;
            this.f1876b = i2;
            this.f1877c = i3;
        }

        @Override
        public final char charAt(int i2) {
            b.a(i2, this.f1877c);
            return this.f1875a[this.f1876b + i2];
        }

        @Override
        public final int length() {
            return this.f1877c;
        }

        @Override
        public final CharSequence subSequence(int i2, int i3) {
            b.b(i2, i3, this.f1877c, "subSequence");
            return new c(this.f1875a, this.f1876b + i2, i3 - i2);
        }

        @Override
        public final String toString() {
            return new String(this.f1875a, this.f1876b, this.f1877c);
        }
    }

    public static class e {

        public final Object f1887a;

        public int f1888b;

        public int f1889c;

        public int f1890d;

        public e(Object obj, int i2, int i3, int i4) {
            this.f1887a = obj;
            this.f1888b = i2;
            this.f1889c = i3;
            this.f1890d = i4;
        }
    }

    public b(ru.zdevs.zarchiver.ui.editor.e eVar) {
        this.f1855a = eVar;
        if (Build.VERSION.SDK_INT < 24) {
            this.f1865k = new ru.zdevs.zarchiver.ui.editor.a.b();
        } else {
            this.f1865k = new ru.zdevs.zarchiver.ui.editor.a.C0036a();
        }
        this.f1867m = (byte) 0;
    }

    public static void a(int i2, int i3) {
        if (i2 < 0) {
            throw new IndexOutOfBoundsException("charAt: " + i2 + " < 0");
        }
        if (i2 < i3) {
            return;
        }
        throw new IndexOutOfBoundsException("charAt: " + i2 + " >= length " + i3);
    }

    public static void b(int i2, int i3, int i4, String str) {
        if (i3 < i2) {
            throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") has end before start");
        }
        if (i2 > i4 || i3 > i4) {
            throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") ends beyond length " + i4);
        }
        if (i2 >= 0) {
            return;
        }
        throw new IndexOutOfBoundsException(str + " (" + i2 + ", " + i3 + ") starts before 0");
    }

    public static int c(d dVar, int i2, int i3, char c2) {
        int i4 = i2;
        while (true) {
            if (i4 >= 0 && i4 < dVar.f1881d) {
                char c3 = dVar.f1880c[i4];
                if ((c2 == 0 && !Character.isLetter(c3) && !Character.isDigit(c3) && c3 != '-' && c3 != '_') || (c2 != 0 && c2 != c3)) {
                    break;
                }
                i4 += i3;
            } else {
                return Math.max(i4, 0);
            }
        }
        return (i3 != -1 || i4 >= i2) ? i4 : i4 + 1;
    }

    public static int m(Object obj) {
        if (obj == Selection.SELECTION_START) {
            return 0;
        }
        return obj == Selection.SELECTION_END ? 1 : -1;
    }

    @Override
    public final Appendable append(char c2) {
        append(c2);
        return this;
    }

    @Override
    public final synchronized char charAt(int i2) {
        d dVar;
        a(i2, this.f1857c);
        d dVar2 = this.f1858d;
        if (dVar2 == null || !dVar2.d(i2)) {
            int iF = f(i2);
            d dVarD = d(iF);
            this.f1858d = dVarD;
            if (dVarD == null) {
                throw new IndexOutOfBoundsException("charAt: line " + iF + " not found");
            }
        }
        dVar = this.f1858d;
        return dVar.f1880c[i2 - dVar.f1878a];
    }

    @Override
    public final synchronized void clear() {
        this.f1856b.clear();
        this.f1857c = 0;
        k(0, 0);
        clearSpans();
        q(0, false, false, false);
    }

    @Override
    public final void clearSpans() {
        int[] iArr = this.f1861g;
        boolean z2 = iArr[0] != -1;
        iArr[1] = -1;
        iArr[0] = -1;
        this.f1864j.clear();
        Arrays.fill(this.f1863i, (Object) null);
        if (z2) {
            n(1);
        }
    }

    public final synchronized d d(int i2) {
        if (i2 >= 0) {
            if (i2 < this.f1856b.size()) {
                return (d) this.f1856b.get(i2);
            }
        }
        return null;
    }

    @Override
    public final Editable delete(int i2, int i3) {
        replace(i2, i3, "", 0, 0);
        return this;
    }

    public final synchronized d e(int i2, int i3) {
        if (i2 < this.f1856b.size()) {
            return (d) this.f1856b.get(i2);
        }
        if (i3 >= 0) {
            return k(i2, i3);
        }
        return new d(0, 0);
    }

    public final synchronized int f(int i2) {
        int i3;
        Iterator it = this.f1856b.iterator();
        i3 = 0;
        while (it.hasNext() && !((d) it.next()).d(i2)) {
            i3++;
        }
        return i3;
    }

    public final synchronized int g(int i2, int[] iArr) {
        int i3;
        Iterator it = this.f1856b.iterator();
        int i4 = 0;
        i3 = 0;
        while (it.hasNext()) {
            int i5 = ((d) it.next()).f1882e;
            i4 += i5;
            if (i2 < i4) {
                if (iArr == null) {
                    break;
                }
                iArr[0] = (i2 + i5) - i4;
                break;
            }
            i3++;
        }
        return i3;
    }

    @Override
    public final synchronized void getChars(int i2, int i3, char[] cArr, int i4) {
        int i5;
        b(i2, i3, this.f1857c, "getChars");
        int iF = f(i2);
        int iF2 = f(i3 - 1);
        if (iF == iF2) {
            d dVarE = e(iF, -1);
            System.arraycopy(dVarE.f1880c, i2 - dVarE.f1878a, cArr, i4, i3 - i2);
        } else {
            for (int i6 = iF; i6 <= iF2; i6++) {
                d dVarE2 = e(i6, -1);
                if (i6 == iF) {
                    int i7 = i2 - dVarE2.f1878a;
                    i5 = dVarE2.f1881d - i7;
                    System.arraycopy(dVarE2.f1880c, i7, cArr, i4, i5);
                } else if (i6 == iF2) {
                    i5 = i3 - dVarE2.f1878a;
                    System.arraycopy(dVarE2.f1880c, 0, cArr, i4, i5);
                } else {
                    i5 = dVarE2.f1881d;
                    System.arraycopy(dVarE2.f1880c, 0, cArr, i4, i5);
                }
                i4 += i5;
            }
        }
    }

    @Override
    public final InputFilter[] getFilters() {
        return new InputFilter[0];
    }

    @Override
    public final int getSpanEnd(Object obj) {
        int iM = m(obj);
        if (iM >= 0) {
            return this.f1861g[iM];
        }
        e eVarH = h(obj);
        if (eVarH == null) {
            return -1;
        }
        return eVarH.f1889c;
    }

    @Override
    public final int getSpanFlags(Object obj) {
        int iM = m(obj);
        if (iM >= 0) {
            return this.f1862h[iM];
        }
        e eVarH = h(obj);
        if (eVarH == null) {
            return 0;
        }
        return eVarH.f1890d;
    }

    @Override
    public final int getSpanStart(Object obj) {
        int iM = m(obj);
        if (iM >= 0) {
            return this.f1861g[iM];
        }
        e eVarH = h(obj);
        if (eVarH == null) {
            return -1;
        }
        return eVarH.f1888b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final <T> T[] getSpans(int i2, int i3, Class<T> cls) {
        if (cls != null) {
            int i4 = 2;
            int i5 = Object.class == cls ? 2 : 0;
            e[] eVarArr = this.f1863i;
            for (e eVar : eVarArr) {
                if (eVar != null && (Object.class == cls || cls.isInstance(eVar.f1887a))) {
                    i5++;
                }
            }
            if (i5 > 0) {
                T[] tArr = (T[]) ((Object[]) Array.newInstance((Class<?>) cls, i5));
                if (Object.class == cls) {
                    tArr[0] = Selection.SELECTION_START;
                    tArr[1] = Selection.SELECTION_END;
                } else {
                    i4 = 0;
                }
                for (e eVar2 : eVarArr) {
                    if (eVar2 != null) {
                        Object obj = eVar2.f1887a;
                        if (Object.class == cls || cls.isInstance(obj)) {
                            tArr[i4] = obj;
                            i4++;
                        }
                    }
                }
                return tArr;
            }
        }
        return (T[]) ((Object[]) Array.newInstance((Class<?>) cls, 0));
    }

    public final e h(Object obj) {
        Integer num = this.f1864j.get(obj);
        if (num == null) {
            return null;
        }
        return this.f1863i[num.intValue()];
    }

    public final synchronized CharSequence i(int i2) {
        int iMin;
        int i3;
        int i4 = this.f1861g[0];
        if (i4 >= 0 && i2 != 0) {
            d dVarD = d(f(i4));
            if (dVarD == null) {
                return "";
            }
            if (i2 > 0) {
                i3 = i4 - dVarD.f1878a;
                iMin = Math.min(i2, dVarD.f1881d - i3);
            } else {
                int i5 = i4 - dVarD.f1878a;
                iMin = Math.min(i5, -i2);
                i3 = i5 - iMin;
            }
            if (iMin <= 0) {
                return "";
            }
            return new c(dVarD.f1880c, i3, iMin);
        }
        return "";
    }

    @Override
    public final Editable insert(int i2, CharSequence charSequence, int i3, int i4) {
        replace(i2, i2, charSequence, i3, i4);
        return this;
    }

    public final synchronized int[] j(int i2) {
        int i3;
        d dVarD = d(f(i2));
        if (dVarD == null) {
            return new int[]{i2, i2};
        }
        int i4 = i2 - dVarD.f1878a;
        int iC = c(dVarD, i4, -1, (char) 0);
        int iC2 = c(dVarD, i4, 1, (char) 0);
        if (iC == i4 && iC2 == i4 && (i3 = dVarD.f1881d - (dVarD.f1879b & 1)) > 0) {
            if (i4 + 1 > i3) {
                i4--;
            }
            char c2 = dVarD.f1880c[i4];
            int iC3 = c(dVarD, i4, -1, c2);
            iC2 = c(dVarD, i4, 1, c2);
            iC = iC3;
        }
        int i5 = dVarD.f1878a;
        return new int[]{iC + i5, i5 + iC2};
    }

    public final synchronized d k(int i2, int i3) {
        d dVar;
        dVar = new d(i3, 0);
        if (i2 == this.f1856b.size()) {
            this.f1856b.add(dVar);
            dVar.f1878a = this.f1857c;
        } else {
            this.f1856b.add(i2, dVar);
        }
        return dVar;
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0046  */
    /* JADX WARN: Code duplicated, block: B:23:0x0051  */
    public final void l(CharSequence charSequence, int i2, int i3, int i4) {
        char[] cArr;
        int i5;
        char cCharAt;
        do {
            int i6 = i3;
            do {
                if (i6 >= i4) {
                    i6 = -1;
                    break;
                } else {
                    cCharAt = charSequence.charAt(i6);
                    i6++;
                }
            } while (cCharAt != '\n');
            if (i6 != -1) {
                int i7 = i6 - i3;
                d dVarK = k(i2, i7);
                TextUtils.getChars(charSequence, i3, i6, dVarK.f1880c, 0);
                dVarK.f1881d = i7;
                dVarK.i(dVarK.f1880c[i7 - 1] == '\n');
                i2++;
                i3 = i6;
            } else {
                int i8 = i4 - i3;
                d dVarE = e(i2, i8);
                int i9 = dVarE.f1881d;
                if (i9 <= 0) {
                    char[] cArr2 = dVarE.f1880c;
                    if (cArr2.length < i8) {
                        cArr = new char[i9 + i8 + 10];
                        TextUtils.getChars(charSequence, i3, i4, cArr, 0);
                        i5 = dVarE.f1881d;
                        if (i5 > 0) {
                            System.arraycopy(dVarE.f1880c, 0, cArr, i8, i5);
                        }
                        dVarE.f1880c = cArr;
                        dVarE.f1881d += i8;
                    } else {
                        TextUtils.getChars(charSequence, i3, i4, cArr2, 0);
                        dVarE.f1881d = i8;
                    }
                } else {
                    cArr = new char[i9 + i8 + 10];
                    TextUtils.getChars(charSequence, i3, i4, cArr, 0);
                    i5 = dVarE.f1881d;
                    if (i5 > 0) {
                        System.arraycopy(dVarE.f1880c, 0, cArr, i8, i5);
                    }
                    dVarE.f1880c = cArr;
                    dVarE.f1881d += i8;
                }
                dVarE.i(dVarE.f1880c[dVarE.f1881d - 1] == '\n');
                dVarE.f1885h = null;
                dVarE.f1882e = 0;
                i3 = i4;
            }
        } while (i3 < i4);
    }

    @Override
    public final int length() {
        return this.f1857c;
    }

    public final void n(int i2) {
        if (this.f1859e) {
            this.f1860f = i2 | this.f1860f;
        } else {
            ((EditableView) this.f1855a).n(i2);
        }
    }

    @Override
    public final int nextSpanTransition(int i2, int i3, Class cls) {
        return i3;
    }

    public final void o(StringBuilder sb) {
        d dVar = new d(sb, sb.length());
        dVar.f1878a = this.f1857c;
        synchronized (this.f1865k) {
            this.f1867m = dVar.f(this.f1865k, this.f1866l, this.f1867m, false);
        }
        ((EditableView) this.f1855a).m(dVar);
        synchronized (this) {
            if (this.f1857c == 0 && !this.f1856b.isEmpty()) {
                this.f1856b.clear();
            }
            this.f1856b.add(dVar);
        }
        this.f1857c += dVar.f1881d;
    }

    public final boolean p(int i2) {
        d1.b aVar;
        if (i2 > 0) {
            d1.b bVar = this.f1866l;
            if (bVar != null && bVar.c() == i2) {
                return false;
            }
            if (i2 == 11) {
                aVar = new d1.a(i2, 1);
            } else {
                aVar = (i2 == 12 || i2 == 13) ? new d1.a(i2, 0) : new d1.c(i2);
            }
            this.f1866l = aVar;
        } else {
            if (this.f1866l == null) {
                return false;
            }
            this.f1866l = null;
        }
        d1.b bVar2 = this.f1866l;
        this.f1867m = bVar2 != null ? bVar2.d((byte) 0) : (byte) 0;
        r(true, false, false);
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:16:0x002e  */
    public final synchronized void q(int i2, boolean z2, boolean z3, boolean z4) {
        byte bF;
        int i3;
        byte[] bArr;
        byte[] bArr2;
        try {
            int size = this.f1856b.size();
            if (i2 >= size) {
                return;
            }
            d1.b bVar = this.f1866l;
            int i4 = 0;
            b = 0;
            b = 0;
            byte b2 = 0;
            if (bVar == null) {
                bF = 0;
            } else if (i2 > 0) {
                d dVar = (d) this.f1856b.get(i2 - 1);
                int i5 = dVar.f1884g;
                if (i5 <= 0 || (bArr2 = dVar.f1886i) == null) {
                    bF = 0;
                } else {
                    bF = bArr2[i5 - 1];
                }
            } else {
                bF = bVar.d((byte) 0);
            }
            if (i2 >= 0) {
                d dVar2 = (d) this.f1856b.get(i2);
                synchronized (this.f1865k) {
                    d1.b bVar2 = this.f1866l;
                    if (bVar2 != null && (i3 = dVar2.f1884g) > 0 && (bArr = dVar2.f1886i) != null) {
                        b2 = bArr[i3 - 1];
                    }
                    bF = dVar2.f(this.f1865k, bVar2, bF, z4);
                    if (b2 != bF) {
                        z2 = true;
                    }
                }
                ((EditableView) this.f1855a).m(dVar2);
                i4 = dVar2.f1878a + dVar2.f1881d;
            }
            for (int i6 = i2 + 1; i6 < size; i6++) {
                d dVar3 = (d) this.f1856b.get(i6);
                dVar3.f1878a = i4;
                i4 += dVar3.f1881d;
                if (dVar3.f1885h == null || z2) {
                    synchronized (this.f1865k) {
                        bF = dVar3.f(this.f1865k, this.f1866l, bF, z4);
                    }
                }
                if (dVar3.f1882e == 0 || z3) {
                    ((EditableView) this.f1855a).m(dVar3);
                }
            }
            this.f1867m = bF;
            this.f1857c = i4;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void r(boolean z2, boolean z3, boolean z4) {
        if (this.f1857c != 0) {
            if (z4) {
                synchronized (this.f1865k) {
                    int size = this.f1856b.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        d dVar = (d) this.f1856b.get(i2);
                        for (int i3 = 0; i3 < dVar.f1884g; i3++) {
                            int[] iArr = dVar.f1885h;
                            iArr[i3] = iArr[i3] & 8388607;
                        }
                    }
                }
            }
            q(-1, z2, z3 || z4, !z4);
        }
    }

    @Override
    public final void removeSpan(Object obj) {
        int iM = m(obj);
        if (iM >= 0) {
            this.f1861g[iM] = -1;
            if (iM == 1) {
                n(1);
                return;
            }
            return;
        }
        Integer numRemove = this.f1864j.remove(obj);
        if (numRemove != null) {
            this.f1863i[numRemove.intValue()] = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:100:0x018b  */
    /* JADX WARN: Code duplicated, block: B:102:0x018e  */
    /* JADX WARN: Code duplicated, block: B:105:0x0195 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:115:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:122:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:93:0x0157 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:115:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0172 A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:115:0x000d }] */
    /* JADX WARN: Code duplicated, block: B:98:0x017f A[Catch: all -> 0x01a9, TryCatch #0 {, blocks: (B:4:0x000d, B:10:0x001e, B:17:0x0030, B:24:0x003f, B:28:0x004f, B:30:0x0059, B:32:0x005d, B:34:0x006a, B:37:0x0093, B:39:0x009d, B:41:0x00a1, B:43:0x00a6, B:45:0x00ac, B:47:0x00b2, B:49:0x00bb, B:51:0x00c0, B:52:0x00c8, B:57:0x00dc, B:59:0x00e0, B:63:0x00ed, B:65:0x00f2, B:67:0x00f6, B:71:0x0103, B:73:0x0108, B:75:0x0110, B:77:0x0120, B:80:0x012c, B:82:0x0132, B:91:0x014c, B:93:0x0157, B:94:0x0163, B:96:0x0172, B:98:0x017f, B:103:0x018f, B:105:0x0195, B:106:0x01a0, B:107:0x01a3, B:55:0x00cf, B:56:0x00d7, B:36:0x0077, B:27:0x0049, B:13:0x0026), top: B:115:0x000d }] */
    /* JADX WARN: Instruction removed from duplicated block: B:96:0x0172, please report this as an issue */
    @Override
    public final synchronized Editable replace(int i2, int i3, CharSequence charSequence, int i4, int i5) {
        boolean z2;
        int i6;
        int i7;
        int[] iArr;
        Spanned spanned;
        int i8;
        int spanStart;
        int spanEnd;
        char cCharAt;
        a0.b.d(charSequence.subSequence(i4, i5));
        int i9 = i3 - i2;
        int i10 = i5 - i4;
        if (i9 == 0 && i10 == 0) {
            return this;
        }
        int iF = f(i2);
        int iF2 = i2 == i3 ? iF : f(i3);
        int i11 = i4;
        do {
            if (i11 >= i5) {
                i11 = -1;
                break;
            }
            cCharAt = charSequence.charAt(i11);
            i11++;
        } while (cCharAt != '\n');
        int i12 = (i11 == -1 ? i5 : i11) - i4;
        d dVarE = e(iF, i12);
        d dVarE2 = iF == iF2 ? dVarE : e(iF2, 0);
        int i13 = i2 - dVarE.f1878a;
        int i14 = i3 - dVarE2.f1878a;
        if (i11 != -1) {
            int i15 = dVarE2.f1881d;
            if (i14 == i15) {
                dVarE2.i(true);
                if (iF2 == this.f1856b.size() - 1) {
                    k(iF2 + 1, 10);
                }
                z2 = true;
            } else {
                int i16 = i15 - i14;
                d dVarK = k(iF2 + 1, i16);
                dVarK.f1881d = i16;
                dVarK.i(true);
                System.arraycopy(dVarE2.f1880c, i14, dVarK.f1880c, 0, dVarK.f1881d);
                z2 = false;
            }
            n(4);
        } else {
            i9 = i9;
            i10 = i10;
            z2 = true;
        }
        int i17 = i13 + i12;
        int i18 = (z2 ? dVarE2.f1881d - i14 : 0) + i17;
        char[] cArr = dVarE.f1880c;
        if (cArr.length < i18) {
            char[] cArr2 = new char[i18 + 10];
            if (i13 > 0) {
                System.arraycopy(cArr, 0, cArr2, 0, i13);
            }
            TextUtils.getChars(charSequence, i4, i12, cArr2, i13);
            if (z2) {
                System.arraycopy(dVarE2.f1880c, i14, cArr2, i17, dVarE2.f1881d - i14);
            }
            dVarE.f1880c = cArr2;
        } else {
            i11 = i11;
            if (z2) {
                System.arraycopy(dVarE2.f1880c, i14, cArr, i17, dVarE2.f1881d - i14);
            }
            TextUtils.getChars(charSequence, i4, i12, dVarE.f1880c, i13);
        }
        dVarE.f1881d = i18;
        dVarE.i(i18 > 0 && dVarE.f1880c[i18 - 1] == '\n');
        if (dVarE != dVarE2) {
            int i19 = dVarE2.f1881d;
            dVarE2.i(i19 > 0 && dVarE2.f1880c[i19 - 1] == '\n');
        }
        if (iF < iF2 && iF2 < this.f1856b.size()) {
            List listSubList = this.f1856b.subList(iF + 1, iF2 + 1);
            if (!listSubList.isEmpty()) {
                listSubList.clear();
                n(4);
            }
        }
        int i20 = i11;
        if (i20 != -1) {
            i6 = i5;
            if (i20 + 1 < i6) {
                l(charSequence, iF + 1, i20, i6);
                n(4);
            }
        } else {
            i6 = i5;
        }
        if (i9 <= 1) {
            i7 = i10;
            boolean z3 = i7 <= 1;
            q(iF, false, false, z3);
            iArr = this.f1861g;
            if (iArr[0] != -1) {
                int i21 = i2 + i7;
                iArr[0] = i21;
                iArr[1] = i21;
                n(257);
            }
            this.f1864j.clear();
            Arrays.fill(this.f1863i, (Object) null);
            if (charSequence instanceof Spanned) {
                spanned = (Spanned) charSequence;
                for (Object obj : spanned.getSpans(i4, i6, Object.class)) {
                    spanStart = spanned.getSpanStart(obj);
                    spanEnd = spanned.getSpanEnd(obj);
                    if (spanStart < i4) {
                        spanStart = i4;
                    }
                    if (spanEnd > i6) {
                        spanEnd = i6;
                    }
                    if (getSpanStart(obj) < 0) {
                        setSpan(obj, i2 + spanStart, i2 + spanEnd, spanned.getSpanFlags(obj));
                    }
                }
            }
            n(2);
            return this;
        }
        i7 = i10;
        q(iF, false, false, z3);
        iArr = this.f1861g;
        if (iArr[0] != -1) {
            int i22 = i2 + i7;
            iArr[0] = i22;
            iArr[1] = i22;
            n(257);
        }
        this.f1864j.clear();
        Arrays.fill(this.f1863i, (Object) null);
        if (charSequence instanceof Spanned) {
            spanned = (Spanned) charSequence;
            while (i8 < r5) {
                spanStart = spanned.getSpanStart(obj);
                spanEnd = spanned.getSpanEnd(obj);
                if (spanStart < i4) {
                    spanStart = i4;
                }
                if (spanEnd > i6) {
                    spanEnd = i6;
                }
                if (getSpanStart(obj) < 0) {
                    setSpan(obj, i2 + spanStart, i2 + spanEnd, spanned.getSpanFlags(obj));
                }
            }
        }
        n(2);
        return this;
    }

    @Override
    public final void setFilters(InputFilter[] inputFilterArr) {
    }

    @Override
    public final void setSpan(Object obj, int i2, int i3, int i4) {
        int iM = m(obj);
        int i5 = 0;
        if (iM >= 0) {
            int[] iArr = this.f1861g;
            iArr[iM] = i2;
            this.f1862h[iM] = i4;
            if (iM == 1) {
                int i6 = iArr[0];
                int i7 = iArr[1];
                if (i6 > i7 && i7 != -1) {
                    iArr[0] = i7;
                    iArr[1] = i6;
                }
                n(1);
                return;
            }
            return;
        }
        e eVarH = h(obj);
        if (eVarH != null) {
            eVarH.f1888b = i2;
            eVarH.f1889c = i3;
            eVarH.f1890d = i4;
        } else {
            e eVar = new e(obj, i2, i3, i4);
            while (true) {
                e[] eVarArr = this.f1863i;
                if (i5 >= eVarArr.length) {
                    break;
                }
                if (eVarArr[i5] == null) {
                    eVarArr[i5] = eVar;
                    this.f1864j.put(eVar.f1887a, Integer.valueOf(i5));
                    break;
                }
                i5++;
            }
        }
        boolean z2 = obj instanceof SpanWatcher;
        boolean z3 = obj instanceof TextWatcher;
    }

    @Override
    public final synchronized CharSequence subSequence(int i2, int i3) {
        if (i2 == i3) {
            return "";
        }
        int iF = f(i2);
        int iF2 = f(i3 - 1);
        if (iF == iF2) {
            d dVarE = e(iF, -1);
            return new c(dVarE.f1880c, i2 - dVarE.f1878a, i3 - i2);
        }
        StringBuilder sb = new StringBuilder();
        for (int i4 = iF; i4 <= iF2; i4++) {
            d dVarD = d(i4);
            if (dVarD == null) {
                break;
            }
            if (i4 == iF) {
                int i5 = i2 - dVarD.f1878a;
                sb.append(dVarD.f1880c, i5, dVarD.f1881d - i5);
            } else if (i4 == iF2) {
                sb.append(dVarD.f1880c, 0, Math.min(i3 - dVarD.f1878a, dVarD.f1881d));
            } else {
                sb.append(dVarD.f1880c, 0, dVarD.f1881d);
            }
        }
        return sb;
    }

    @Override
    public final String toString() {
        return "";
    }

    @Override
    public final Appendable append(CharSequence charSequence) {
        append(charSequence);
        return this;
    }

    @Override
    public final Editable insert(int i2, CharSequence charSequence) {
        replace(i2, i2, charSequence, 0, charSequence.length());
        return this;
    }

    @Override
    public final Appendable append(CharSequence charSequence, int i2, int i3) {
        append(charSequence, i2, i3);
        return this;
    }

    @Override
    public final Editable append(char c2) {
        append((CharSequence) String.valueOf(c2));
        return this;
    }

    @Override
    public final Editable append(CharSequence charSequence) {
        int i2 = this.f1857c;
        replace(i2, i2, charSequence, 0, charSequence.length());
        return this;
    }

    public static class d {

        public int f1878a;

        public int f1879b;

        public char[] f1880c;

        public int f1881d;

        public int f1882e;

        public int f1883f;

        public int f1884g;

        public int[] f1885h;

        public byte[] f1886i;

        public d(int i2, int i3) {
            this.f1879b = i3;
            this.f1880c = new char[i2];
            this.f1881d = 0;
            this.f1885h = null;
            this.f1883f = 0;
            this.f1882e = 0;
        }

        /* JADX WARN: Code duplicated, block: B:11:0x0016  */
        public final int a(c1.e eVar, int i2, int i3, float f2) {
            int i4;
            if (i2 == i3) {
                return 0;
            }
            int i5 = this.f1881d;
            if (i3 != i5 || i3 <= 0) {
                i4 = i3;
            } else {
                int i6 = i3 - 1;
                if (this.f1880c[i6] == '\n') {
                    i4 = i6;
                } else {
                    i4 = i3;
                }
            }
            char[] cArr = this.f1880c;
            if (cArr[i2] != '\t' || i5 >= 1024) {
                return eVar.a(cArr, i2, i4, i2, i4, f2);
            }
            int i7 = (int) f2;
            if (eVar.f461e == 0) {
                eVar.f461e = (int) (eVar.f457a.measureText(" ") * 3.0f);
            }
            int i8 = eVar.f461e;
            return Math.min((i7 / i8) + (i7 % i8 > i8 / 2 ? 1 : 0), i4);
        }

        public final int b(int i2) {
            return this.f1885h[i2 + 1] & 8388607;
        }

        public final int c(int i2) {
            return this.f1885h[i2] & 8388607;
        }

        public final boolean d(int i2) {
            int i3 = this.f1878a;
            return i2 >= i3 && i2 <= (i3 + this.f1881d) - (this.f1879b & 1);
        }

        public final boolean e(int i2, int i3) {
            int[] iArr = this.f1885h;
            int i4 = iArr[i3 + 1] & 8388607;
            return i2 >= (iArr[i3] & 8388607) && i2 <= i4 - (i4 == this.f1881d ? this.f1879b & 1 : 1);
        }

        public final byte f(ru.zdevs.zarchiver.ui.editor.a aVar, d1.b bVar, byte b2, boolean z2) {
            this.f1884g = 0;
            int[] iArr = this.f1885h;
            if (iArr == null) {
                this.f1885h = new int[10];
                this.f1886i = bVar != null ? new byte[10] : null;
            } else if (bVar == null) {
                this.f1886i = null;
            } else if (this.f1886i == null) {
                this.f1886i = new byte[iArr.length];
            }
            this.f1879b &= -3;
            char[] cArr = this.f1880c;
            int i2 = this.f1881d;
            C0037b c0037b = aVar.f1852a;
            c0037b.f1871a = cArr;
            c0037b.f1874d = 0;
            c0037b.f1872b = 0;
            c0037b.f1873c = i2;
            aVar.c(c0037b);
            int i3 = -1;
            int i4 = 1;
            int iA = aVar.a();
            int i5 = 0;
            int i6 = -1;
            boolean z3 = true;
            int i7 = 0;
            char c2 = 0;
            byte bE = 0;
            boolean z4 = false;
            byte bD = b2;
            while (iA != i3) {
                if (iA <= 0 || this.f1885h[i6] + i4 != iA) {
                    if (bVar != null) {
                        bE = bVar.e(bD);
                    }
                    c2 = 0;
                    z4 = false;
                } else {
                    char[] cArr2 = this.f1880c;
                    int i8 = iA - 1;
                    char c3 = cArr2[i8];
                    if (bVar != null) {
                        bE = bVar.a(bD, c3, cArr2, i8);
                    }
                    if (z3) {
                        z3 = c3 == '\t';
                    }
                    if (c2 != 0 && c2 == c3 && bE == bD) {
                        int[] iArr2 = this.f1885h;
                        iArr2[i6] = iArr2[i6] + i4;
                        if (bVar != null) {
                            this.f1886i[i6] = bE;
                        }
                    } else {
                        boolean z5 = (!Character.isWhitespace(c3) || c3 == '\t' || c3 == '\n') ? false : true;
                        if (z4 && z5) {
                            int[] iArr3 = this.f1885h;
                            iArr3[i6] = iArr3[i6] + i4;
                            if (bVar != null) {
                                this.f1886i[i6] = bE;
                            }
                        } else {
                            z4 = z5;
                            c2 = c3;
                        }
                    }
                    iA = aVar.b();
                    i3 = -1;
                    i4 = 1;
                }
                int i9 = this.f1884g;
                if (i9 >= this.f1885h.length) {
                    int iMax = Math.max((this.f1881d - (i9 * 200)) / 200, 10);
                    this.f1885h = Arrays.copyOf(this.f1885h, this.f1884g + iMax);
                    if (bVar != null) {
                        this.f1886i = Arrays.copyOf(this.f1886i, this.f1884g + iMax);
                    }
                }
                if (z2) {
                    if (i5 != 0 && i6 > 0) {
                        int[] iArr4 = this.f1885h;
                        int i10 = iArr4[i6];
                        int i11 = i6 - 1;
                        int i12 = iArr4[i11];
                        int i13 = i10 - i12;
                        if (i13 > i4 && i13 == (i7 & 8388607) - (i5 & 8388607)) {
                            iArr4[i11] = i12 | (i5 & (-8388608));
                        }
                    }
                    i5 = i7;
                    i7 = this.f1885h[this.f1884g];
                }
                int[] iArr5 = this.f1885h;
                int i14 = this.f1884g;
                iArr5[i14] = iA;
                if (bVar != null && i14 > 0) {
                    if ((bE & 64) != 0) {
                        this.f1886i[i6] = bD;
                        bD = (byte) (bE & (-65));
                    } else {
                        this.f1886i[i6] = bE;
                        bD = bE;
                    }
                }
                this.f1884g = i14 + 1;
                i6++;
                iA = aVar.b();
                i3 = -1;
                i4 = 1;
            }
            if (z2 && i5 != 0 && i6 > 0) {
                int[] iArr6 = this.f1885h;
                int i15 = iArr6[i6];
                int i16 = i6 - 1;
                int i17 = iArr6[i16];
                int i18 = i15 - i17;
                if (i18 > 1 && i18 == (i7 & 8388607) - (i5 & 8388607)) {
                    iArr6[i16] = (i5 & (-8388608)) | i17;
                }
            }
            int i19 = this.f1884g;
            if (i19 == 1) {
                int[] iArr7 = this.f1885h;
                iArr7[i19] = iArr7[i6];
                this.f1884g = i19 + 1;
                i6++;
            }
            int i20 = this.f1884g + 1;
            while (true) {
                int[] iArr8 = this.f1885h;
                if (i20 >= iArr8.length) {
                    break;
                }
                iArr8[i20] = 0;
                i20++;
            }
            if (bVar != null) {
                bD = bVar.d(bD);
            }
            if (bVar != null && this.f1884g > 0) {
                this.f1886i[i6] = bD;
            }
            if (!z3 && this.f1881d < 1024) {
                this.f1879b |= 2;
            }
            return bD;
        }

        public final int g(c1.e eVar, int i2) {
            int[] iArr = this.f1885h;
            int i3 = iArr[i2];
            int i4 = (-8388608) & i3;
            if (i4 > 0) {
                return i4 >>> 23;
            }
            int i5 = i3 & 8388607;
            int iH = h(eVar, i5, (iArr[i2 + 1] & 8388607) - i5);
            if (iH <= 511) {
                int[] iArr2 = this.f1885h;
                iArr2[i2] = iArr2[i2] | (iH << 23);
            }
            return iH;
        }

        public final int h(c1.e eVar, int i2, int i3) {
            if (i3 == 0) {
                return 0;
            }
            char[] cArr = this.f1880c;
            if (cArr[i2] != '\t' || this.f1881d >= 1024) {
                return (int) eVar.d(i2, i3, cArr, this.f1881d);
            }
            if (eVar.f461e == 0) {
                eVar.f461e = (int) (eVar.f457a.measureText(" ") * 3.0f);
            }
            return eVar.f461e * i3;
        }

        public final void i(boolean z2) {
            if (z2) {
                this.f1879b |= 1;
            } else {
                this.f1879b &= -2;
            }
        }

        public d(StringBuilder sb, int i2) {
            this.f1881d = i2 + 0;
            this.f1879b = (i2 <= 0 || sb.charAt(i2 + (-1)) != '\n') ? 0 : 1;
            char[] cArr = new char[this.f1881d];
            this.f1880c = cArr;
            TextUtils.getChars(sb, 0, i2, cArr, 0);
            this.f1885h = null;
            this.f1883f = 0;
            this.f1882e = 0;
        }
    }

    @Override
    public final Editable append(CharSequence charSequence, int i2, int i3) {
        int i4 = this.f1857c;
        replace(i4, i4, charSequence, i2, i3);
        return this;
    }

    @Override
    public final Editable replace(int i2, int i3, CharSequence charSequence) {
        replace(i2, i3, charSequence, 0, charSequence.length());
        return this;
    }
}
