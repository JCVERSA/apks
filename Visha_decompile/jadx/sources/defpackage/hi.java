package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

public abstract class hi extends fi {

    public static final class a implements Iterable, qe5 {
        public final Object[] b;

        public a(Object[] objArr) {
            this.b = objArr;
        }

        @Override
        public Iterator iterator() {
            return xg.a(this.b);
        }
    }

    public static final class b implements pc9 {
        public final Object[] a;

        public b(Object[] objArr) {
            this.a = objArr;
        }

        @Override
        public Iterator iterator() {
            return xg.a(this.a);
        }
    }

    public static Integer A0(int[] iArr) {
        y45.j(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        int i = iArr[0];
        int iB0 = b0(iArr);
        int i2 = 1;
        if (1 <= iB0) {
            while (true) {
                int i3 = iArr[i2];
                if (i > i3) {
                    i = i3;
                }
                if (i2 == iB0) {
                    break;
                }
                i2++;
            }
        }
        return Integer.valueOf(i);
    }

    public static final void B0(float[] fArr, int i, int i2) {
        y45.j(fArr, "<this>");
        g3.Companion.d(i, i2, fArr.length);
        int i3 = (i + i2) / 2;
        if (i == i3) {
            return;
        }
        int i4 = i2 - 1;
        while (i < i3) {
            float f = fArr[i];
            fArr[i] = fArr[i4];
            fArr[i4] = f;
            i4--;
            i++;
        }
    }

    public static final void C0(int[] iArr, int i, int i2) {
        y45.j(iArr, "<this>");
        g3.Companion.d(i, i2, iArr.length);
        int i3 = (i + i2) / 2;
        if (i == i3) {
            return;
        }
        int i4 = i2 - 1;
        while (i < i3) {
            int i5 = iArr[i];
            iArr[i] = iArr[i4];
            iArr[i4] = i5;
            i4--;
            i++;
        }
    }

    public static final void D0(long[] jArr, int i, int i2) {
        y45.j(jArr, "<this>");
        g3.Companion.d(i, i2, jArr.length);
        int i3 = (i + i2) / 2;
        if (i == i3) {
            return;
        }
        int i4 = i2 - 1;
        while (i < i3) {
            long j = jArr[i];
            jArr[i] = jArr[i4];
            jArr[i4] = j;
            i4--;
            i++;
        }
    }

    public static char E0(char[] cArr) {
        y45.j(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static Object F0(Object[] objArr) {
        y45.j(objArr, "<this>");
        int length = objArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return objArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static Object G0(Object[] objArr) {
        y45.j(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static void H0(float[] fArr, int i, int i2) {
        y45.j(fArr, "<this>");
        fi.C(fArr, i, i2);
        B0(fArr, i, i2);
    }

    public static void I0(int[] iArr, int i, int i2) {
        y45.j(iArr, "<this>");
        fi.D(iArr, i, i2);
        C0(iArr, i, i2);
    }

    public static Iterable J(Object[] objArr) {
        y45.j(objArr, "<this>");
        return objArr.length == 0 ? y71.k() : new a(objArr);
    }

    public static void J0(long[] jArr, int i, int i2) {
        y45.j(jArr, "<this>");
        fi.E(jArr, i, i2);
        D0(jArr, i, i2);
    }

    public static pc9 K(Object[] objArr) {
        y45.j(objArr, "<this>");
        return objArr.length == 0 ? zc9.i() : new b(objArr);
    }

    public static final Object[] K0(Object[] objArr, Comparator comparator) {
        y45.j(objArr, "<this>");
        y45.j(comparator, "comparator");
        if (objArr.length == 0) {
            return objArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        y45.i(objArrCopyOf, "copyOf(...)");
        fi.G(objArrCopyOf, comparator);
        return objArrCopyOf;
    }

    public static boolean L(byte[] bArr, byte b2) {
        y45.j(bArr, "<this>");
        return g0(bArr, b2) >= 0;
    }

    public static List L0(Object[] objArr, Comparator comparator) {
        y45.j(objArr, "<this>");
        y45.j(comparator, "comparator");
        return fi.f(K0(objArr, comparator));
    }

    public static boolean M(char[] cArr, char c) {
        y45.j(cArr, "<this>");
        return h0(cArr, c) >= 0;
    }

    public static List M0(byte[] bArr, int i) {
        y45.j(bArr, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        }
        if (i == 0) {
            return y71.k();
        }
        if (i >= bArr.length) {
            return W0(bArr);
        }
        if (i == 1) {
            return x71.e(Byte.valueOf(bArr[0]));
        }
        ArrayList arrayList = new ArrayList(i);
        int i2 = 0;
        for (byte b2 : bArr) {
            arrayList.add(Byte.valueOf(b2));
            i2++;
            if (i2 == i) {
                break;
            }
        }
        return arrayList;
    }

    public static boolean N(int[] iArr, int i) {
        y45.j(iArr, "<this>");
        return i0(iArr, i) >= 0;
    }

    public static final List N0(Object[] objArr, int i) {
        y45.j(objArr, "<this>");
        if (i < 0) {
            throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
        }
        if (i == 0) {
            return y71.k();
        }
        int length = objArr.length;
        if (i >= length) {
            return c1(objArr);
        }
        if (i == 1) {
            return x71.e(objArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = length - i; i2 < length; i2++) {
            arrayList.add(objArr[i2]);
        }
        return arrayList;
    }

    public static boolean O(long[] jArr, long j) {
        y45.j(jArr, "<this>");
        return j0(jArr, j) >= 0;
    }

    public static boolean[] O0(Boolean[] boolArr) {
        y45.j(boolArr, "<this>");
        int length = boolArr.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = boolArr[i].booleanValue();
        }
        return zArr;
    }

    public static boolean P(Object[] objArr, Object obj) {
        y45.j(objArr, "<this>");
        return k0(objArr, obj) >= 0;
    }

    public static final Collection P0(int[] iArr, Collection collection) {
        y45.j(iArr, "<this>");
        y45.j(collection, "destination");
        for (int i : iArr) {
            collection.add(Integer.valueOf(i));
        }
        return collection;
    }

    public static boolean Q(short[] sArr, short s) {
        y45.j(sArr, "<this>");
        return l0(sArr, s) >= 0;
    }

    public static final Collection Q0(Object[] objArr, Collection collection) {
        y45.j(objArr, "<this>");
        y45.j(collection, "destination");
        for (Object obj : objArr) {
            collection.add(obj);
        }
        return collection;
    }

    public static List R(Object[] objArr, int i) {
        y45.j(objArr, "<this>");
        if (i >= 0) {
            return N0(objArr, wn8.d(objArr.length - i, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i + " is less than zero.").toString());
    }

    public static double[] R0(Double[] dArr) {
        y45.j(dArr, "<this>");
        int length = dArr.length;
        double[] dArr2 = new double[length];
        for (int i = 0; i < length; i++) {
            dArr2[i] = dArr[i].doubleValue();
        }
        return dArr2;
    }

    public static List S(Object[] objArr) {
        y45.j(objArr, "<this>");
        return (List) T(objArr, new ArrayList());
    }

    public static float[] S0(Float[] fArr) {
        y45.j(fArr, "<this>");
        int length = fArr.length;
        float[] fArr2 = new float[length];
        for (int i = 0; i < length; i++) {
            fArr2[i] = fArr[i].floatValue();
        }
        return fArr2;
    }

    public static final Collection T(Object[] objArr, Collection collection) {
        y45.j(objArr, "<this>");
        y45.j(collection, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                collection.add(obj);
            }
        }
        return collection;
    }

    public static HashSet T0(int[] iArr) {
        y45.j(iArr, "<this>");
        return (HashSet) P0(iArr, new HashSet(ky5.g(iArr.length)));
    }

    public static float U(float[] fArr) {
        y45.j(fArr, "<this>");
        if (fArr.length != 0) {
            return fArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static HashSet U0(Object[] objArr) {
        y45.j(objArr, "<this>");
        return (HashSet) Q0(objArr, new HashSet(ky5.g(objArr.length)));
    }

    public static int V(int[] iArr) {
        y45.j(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static int[] V0(Integer[] numArr) {
        y45.j(numArr, "<this>");
        int length = numArr.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = numArr[i].intValue();
        }
        return iArr;
    }

    public static Object W(Object[] objArr) {
        y45.j(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static List W0(byte[] bArr) {
        y45.j(bArr, "<this>");
        int length = bArr.length;
        if (length != 0) {
            return length != 1 ? g1(bArr) : x71.e(Byte.valueOf(bArr[0]));
        }
        return y71.k();
    }

    public static Integer X(int[] iArr) {
        y45.j(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[0]);
    }

    public static List X0(char[] cArr) {
        y45.j(cArr, "<this>");
        int length = cArr.length;
        if (length != 0) {
            return length != 1 ? h1(cArr) : x71.e(Character.valueOf(cArr[0]));
        }
        return y71.k();
    }

    public static Object Y(Object[] objArr) {
        y45.j(objArr, "<this>");
        if (objArr.length == 0) {
            return null;
        }
        return objArr[0];
    }

    public static List Y0(double[] dArr) {
        y45.j(dArr, "<this>");
        int length = dArr.length;
        if (length != 0) {
            return length != 1 ? i1(dArr) : x71.e(Double.valueOf(dArr[0]));
        }
        return y71.k();
    }

    public static u15 Z(int[] iArr) {
        y45.j(iArr, "<this>");
        return new u15(0, b0(iArr));
    }

    public static List Z0(float[] fArr) {
        y45.j(fArr, "<this>");
        int length = fArr.length;
        if (length != 0) {
            return length != 1 ? j1(fArr) : x71.e(Float.valueOf(fArr[0]));
        }
        return y71.k();
    }

    public static int a0(float[] fArr) {
        y45.j(fArr, "<this>");
        return fArr.length - 1;
    }

    public static List a1(int[] iArr) {
        y45.j(iArr, "<this>");
        int length = iArr.length;
        if (length != 0) {
            return length != 1 ? k1(iArr) : x71.e(Integer.valueOf(iArr[0]));
        }
        return y71.k();
    }

    public static int b0(int[] iArr) {
        y45.j(iArr, "<this>");
        return iArr.length - 1;
    }

    public static List b1(long[] jArr) {
        y45.j(jArr, "<this>");
        int length = jArr.length;
        if (length != 0) {
            return length != 1 ? l1(jArr) : x71.e(Long.valueOf(jArr[0]));
        }
        return y71.k();
    }

    public static int c0(long[] jArr) {
        y45.j(jArr, "<this>");
        return jArr.length - 1;
    }

    public static List c1(Object[] objArr) {
        y45.j(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? m1(objArr) : x71.e(objArr[0]);
        }
        return y71.k();
    }

    public static int d0(Object[] objArr) {
        y45.j(objArr, "<this>");
        return objArr.length - 1;
    }

    public static List d1(short[] sArr) {
        y45.j(sArr, "<this>");
        int length = sArr.length;
        if (length != 0) {
            return length != 1 ? n1(sArr) : x71.e(Short.valueOf(sArr[0]));
        }
        return y71.k();
    }

    public static Integer e0(int[] iArr, int i) {
        y45.j(iArr, "<this>");
        if (i < 0 || i >= iArr.length) {
            return null;
        }
        return Integer.valueOf(iArr[i]);
    }

    public static List e1(boolean[] zArr) {
        y45.j(zArr, "<this>");
        int length = zArr.length;
        if (length != 0) {
            return length != 1 ? o1(zArr) : x71.e(Boolean.valueOf(zArr[0]));
        }
        return y71.k();
    }

    public static Object f0(Object[] objArr, int i) {
        y45.j(objArr, "<this>");
        if (i < 0 || i >= objArr.length) {
            return null;
        }
        return objArr[i];
    }

    public static long[] f1(Long[] lArr) {
        y45.j(lArr, "<this>");
        int length = lArr.length;
        long[] jArr = new long[length];
        for (int i = 0; i < length; i++) {
            jArr[i] = lArr[i].longValue();
        }
        return jArr;
    }

    public static final int g0(byte[] bArr, byte b2) {
        y45.j(bArr, "<this>");
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            if (b2 == bArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final List g1(byte[] bArr) {
        y45.j(bArr, "<this>");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b2 : bArr) {
            arrayList.add(Byte.valueOf(b2));
        }
        return arrayList;
    }

    public static final int h0(char[] cArr, char c) {
        y45.j(cArr, "<this>");
        int length = cArr.length;
        for (int i = 0; i < length; i++) {
            if (c == cArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final List h1(char[] cArr) {
        y45.j(cArr, "<this>");
        ArrayList arrayList = new ArrayList(cArr.length);
        for (char c : cArr) {
            arrayList.add(Character.valueOf(c));
        }
        return arrayList;
    }

    public static int i0(int[] iArr, int i) {
        y45.j(iArr, "<this>");
        int length = iArr.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (i == iArr[i2]) {
                return i2;
            }
        }
        return -1;
    }

    public static final List i1(double[] dArr) {
        y45.j(dArr, "<this>");
        ArrayList arrayList = new ArrayList(dArr.length);
        for (double d : dArr) {
            arrayList.add(Double.valueOf(d));
        }
        return arrayList;
    }

    public static final int j0(long[] jArr, long j) {
        y45.j(jArr, "<this>");
        int length = jArr.length;
        for (int i = 0; i < length; i++) {
            if (j == jArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final List j1(float[] fArr) {
        y45.j(fArr, "<this>");
        ArrayList arrayList = new ArrayList(fArr.length);
        for (float f : fArr) {
            arrayList.add(Float.valueOf(f));
        }
        return arrayList;
    }

    public static int k0(Object[] objArr, Object obj) {
        y45.j(objArr, "<this>");
        int i = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i < length) {
                if (objArr[i] == null) {
                    return i;
                }
                i++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i < length2) {
            if (y45.e(obj, objArr[i])) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static final List k1(int[] iArr) {
        y45.j(iArr, "<this>");
        ArrayList arrayList = new ArrayList(iArr.length);
        for (int i : iArr) {
            arrayList.add(Integer.valueOf(i));
        }
        return arrayList;
    }

    public static final int l0(short[] sArr, short s) {
        y45.j(sArr, "<this>");
        int length = sArr.length;
        for (int i = 0; i < length; i++) {
            if (s == sArr[i]) {
                return i;
            }
        }
        return -1;
    }

    public static final List l1(long[] jArr) {
        y45.j(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j : jArr) {
            arrayList.add(Long.valueOf(j));
        }
        return arrayList;
    }

    public static final Appendable m0(byte[] bArr, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) throws IOException {
        y45.j(bArr, "<this>");
        y45.j(appendable, "buffer");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        appendable.append(charSequence2);
        int i2 = 0;
        for (byte b2 : bArr) {
            i2++;
            if (i2 > 1) {
                appendable.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            if (e74Var != null) {
                appendable.append((CharSequence) e74Var.invoke(Byte.valueOf(b2)));
            } else {
                appendable.append(String.valueOf((int) b2));
            }
        }
        if (i >= 0 && i2 > i) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
        return appendable;
    }

    public static List m1(Object[] objArr) {
        y45.j(objArr, "<this>");
        return new ArrayList(y71.h(objArr));
    }

    public static final Appendable n0(Object[] objArr, Appendable appendable, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) throws IOException {
        y45.j(objArr, "<this>");
        y45.j(appendable, "buffer");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        appendable.append(charSequence2);
        int i2 = 0;
        for (Object obj : objArr) {
            i2++;
            if (i2 > 1) {
                appendable.append(charSequence);
            }
            if (i >= 0 && i2 > i) {
                break;
            }
            w0a.a(appendable, obj, e74Var);
        }
        if (i >= 0 && i2 > i) {
            appendable.append(charSequence4);
        }
        appendable.append(charSequence3);
        return appendable;
    }

    public static final List n1(short[] sArr) {
        y45.j(sArr, "<this>");
        ArrayList arrayList = new ArrayList(sArr.length);
        for (short s : sArr) {
            arrayList.add(Short.valueOf(s));
        }
        return arrayList;
    }

    public static final List o1(boolean[] zArr) {
        y45.j(zArr, "<this>");
        ArrayList arrayList = new ArrayList(zArr.length);
        for (boolean z : zArr) {
            arrayList.add(Boolean.valueOf(z));
        }
        return arrayList;
    }

    public static final String p0(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) {
        y45.j(bArr, "<this>");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        return ((StringBuilder) m0(bArr, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, e74Var)).toString();
    }

    public static Set p1(Object[] objArr) {
        y45.j(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? (Set) Q0(objArr, new LinkedHashSet(ky5.g(objArr.length))) : xe9.d(objArr[0]);
        }
        return ye9.f();
    }

    public static String q0(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var) {
        y45.j(objArr, "<this>");
        y45.j(charSequence, "separator");
        y45.j(charSequence2, "prefix");
        y45.j(charSequence3, "postfix");
        y45.j(charSequence4, "truncated");
        return ((StringBuilder) n0(objArr, new StringBuilder(), charSequence, charSequence2, charSequence3, i, charSequence4, e74Var)).toString();
    }

    public static Iterable q1(final Object[] objArr) {
        y45.j(objArr, "<this>");
        return new nz4(new c74() {
            @Override
            public final Object invoke() {
                return hi.r1(objArr);
            }
        });
    }

    public static String r0(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            e74Var = null;
        }
        return p0(bArr, charSequence, charSequence5, charSequence6, i3, charSequence7, e74Var);
    }

    public static final Iterator r1(Object[] objArr) {
        return xg.a(objArr);
    }

    public static String s0(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i, CharSequence charSequence4, e74 e74Var, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i2 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i2 & 4) == 0 ? charSequence3 : "";
        if ((i2 & 8) != 0) {
            i = -1;
        }
        int i3 = i;
        if ((i2 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i2 & 32) != 0) {
            e74Var = null;
        }
        return q0(objArr, charSequence, charSequence5, charSequence6, i3, charSequence7, e74Var);
    }

    public static List s1(Object[] objArr, Object[] objArr2) {
        y45.j(objArr, "<this>");
        y45.j(objArr2, "other");
        int iMin = Math.min(objArr.length, objArr2.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i = 0; i < iMin; i++) {
            arrayList.add(abb.a(objArr[i], objArr2[i]));
        }
        return arrayList;
    }

    public static int t0(int[] iArr) {
        y45.j(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[b0(iArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object u0(Object[] objArr) {
        y45.j(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[d0(objArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static final int v0(int[] iArr, int i) {
        y45.j(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i2 = length - 1;
                if (i == iArr[length]) {
                    return length;
                }
                if (i2 >= 0) {
                    length = i2;
                }
            }
        }
        return -1;
    }

    public static List w0(Object[] objArr, e74 e74Var) {
        y45.j(objArr, "<this>");
        y45.j(e74Var, "transform");
        ArrayList arrayList = new ArrayList(objArr.length);
        for (Object obj : objArr) {
            arrayList.add(e74Var.invoke(obj));
        }
        return arrayList;
    }

    public static Float x0(Float[] fArr) {
        y45.j(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float fFloatValue = fArr[0].floatValue();
        int iD0 = d0(fArr);
        int i = 1;
        if (1 <= iD0) {
            while (true) {
                fFloatValue = Math.max(fFloatValue, fArr[i].floatValue());
                if (i == iD0) {
                    break;
                }
                i++;
            }
        }
        return Float.valueOf(fFloatValue);
    }

    public static Object y0(Object[] objArr, Comparator comparator) {
        y45.j(objArr, "<this>");
        y45.j(comparator, "comparator");
        if (objArr.length == 0) {
            return null;
        }
        Object obj = objArr[0];
        int iD0 = d0(objArr);
        int i = 1;
        if (1 <= iD0) {
            while (true) {
                Object obj2 = objArr[i];
                if (comparator.compare(obj, obj2) < 0) {
                    obj = obj2;
                }
                if (i == iD0) {
                    break;
                }
                i++;
            }
        }
        return obj;
    }

    public static Float z0(Float[] fArr) {
        y45.j(fArr, "<this>");
        if (fArr.length == 0) {
            return null;
        }
        float fFloatValue = fArr[0].floatValue();
        int iD0 = d0(fArr);
        int i = 1;
        if (1 <= iD0) {
            while (true) {
                fFloatValue = Math.min(fFloatValue, fArr[i].floatValue());
                if (i == iD0) {
                    break;
                }
                i++;
            }
        }
        return Float.valueOf(fFloatValue);
    }
}
