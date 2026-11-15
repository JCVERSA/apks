package kotlin.collections;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

public class g extends ArraysKt___ArraysJvmKt {
    public static List A0(byte[] bArr, int i10) {
        Intrinsics.h(bArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return CollectionsKt.l();
        }
        if (i10 >= bArr.length) {
            return E0(bArr);
        }
        if (i10 == 1) {
            return CollectionsKt.e(Byte.valueOf(bArr[0]));
        }
        ArrayList arrayList = new ArrayList(i10);
        int i11 = 0;
        for (byte b10 : bArr) {
            arrayList.add(Byte.valueOf(b10));
            i11++;
            if (i11 == i10) {
                break;
            }
        }
        return arrayList;
    }

    public static final List B0(Object[] objArr, int i10) {
        Intrinsics.h(objArr, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
        }
        if (i10 == 0) {
            return CollectionsKt.l();
        }
        int length = objArr.length;
        if (i10 >= length) {
            return ArraysKt.G0(objArr);
        }
        if (i10 == 1) {
            return CollectionsKt.e(objArr[length - 1]);
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i11 = length - i10; i11 < length; i11++) {
            arrayList.add(objArr[i11]);
        }
        return arrayList;
    }

    public static final Collection C0(int[] iArr, Collection destination) {
        Intrinsics.h(iArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (int i10 : iArr) {
            destination.add(Integer.valueOf(i10));
        }
        return destination;
    }

    public static final Collection D0(Object[] objArr, Collection destination) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (Object obj : objArr) {
            destination.add(obj);
        }
        return destination;
    }

    public static final List E0(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length;
        if (length != 0) {
            return length != 1 ? H0(bArr) : CollectionsKt.e(Byte.valueOf(bArr[0]));
        }
        return CollectionsKt.l();
    }

    public static List F0(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length;
        if (length != 0) {
            return length != 1 ? I0(jArr) : CollectionsKt.e(Long.valueOf(jArr[0]));
        }
        return CollectionsKt.l();
    }

    public static List G0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? ArraysKt.J0(objArr) : CollectionsKt.e(objArr[0]);
        }
        return CollectionsKt.l();
    }

    public static boolean H(byte[] bArr, byte b10) {
        Intrinsics.h(bArr, "<this>");
        return ArraysKt.a0(bArr, b10) >= 0;
    }

    public static final List H0(byte[] bArr) {
        Intrinsics.h(bArr, "<this>");
        ArrayList arrayList = new ArrayList(bArr.length);
        for (byte b10 : bArr) {
            arrayList.add(Byte.valueOf(b10));
        }
        return arrayList;
    }

    public static boolean I(char[] cArr, char c10) {
        Intrinsics.h(cArr, "<this>");
        return b0(cArr, c10) >= 0;
    }

    public static final List I0(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        ArrayList arrayList = new ArrayList(jArr.length);
        for (long j10 : jArr) {
            arrayList.add(Long.valueOf(j10));
        }
        return arrayList;
    }

    public static boolean J(int[] iArr, int i10) {
        Intrinsics.h(iArr, "<this>");
        return ArraysKt.c0(iArr, i10) >= 0;
    }

    public static List J0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new ArrayList(j.i(objArr));
    }

    public static boolean K(long[] jArr, long j10) {
        Intrinsics.h(jArr, "<this>");
        return ArraysKt.d0(jArr, j10) >= 0;
    }

    public static Set K0(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        if (length != 0) {
            return length != 1 ? (Set) C0(iArr, new LinkedHashSet(MapsKt.e(iArr.length))) : SetsKt.d(Integer.valueOf(iArr[0]));
        }
        return SetsKt.f();
    }

    public static boolean L(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        return ArraysKt.e0(objArr, obj) >= 0;
    }

    public static final Set L0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        int length = objArr.length;
        if (length != 0) {
            return length != 1 ? (Set) D0(objArr, new LinkedHashSet(MapsKt.e(objArr.length))) : SetsKt.d(objArr[0]);
        }
        return SetsKt.f();
    }

    public static boolean M(short[] sArr, short s10) {
        Intrinsics.h(sArr, "<this>");
        return ArraysKt.f0(sArr, s10) >= 0;
    }

    public static Iterable M0(final Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return new IndexingIterable(new Function0() {
            @Override
            public final Object invoke() {
                return g.N0(objArr);
            }
        });
    }

    public static final boolean N(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        return g0(zArr, z10) >= 0;
    }

    public static final Iterator N0(Object[] objArr) {
        return ArrayIteratorKt.a(objArr);
    }

    public static List O(Object[] objArr, int i10) {
        Intrinsics.h(objArr, "<this>");
        if (i10 >= 0) {
            return B0(objArr, RangesKt.e(objArr.length - i10, 0));
        }
        throw new IllegalArgumentException(("Requested element count " + i10 + " is less than zero.").toString());
    }

    public static List P(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return (List) Q(objArr, new ArrayList());
    }

    public static final Collection Q(Object[] objArr, Collection destination) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(destination, "destination");
        for (Object obj : objArr) {
            if (obj != null) {
                destination.add(obj);
            }
        }
        return destination;
    }

    public static int R(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        if (iArr.length != 0) {
            return iArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Object S(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[0];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static Integer T(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        if (iArr.length == 0) {
            return null;
        }
        return Integer.valueOf(iArr[0]);
    }

    public static Object U(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length == 0) {
            return null;
        }
        return objArr[0];
    }

    public static IntRange V(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return new IntRange(0, ArraysKt.W(iArr));
    }

    public static int W(int[] iArr) {
        Intrinsics.h(iArr, "<this>");
        return iArr.length - 1;
    }

    public static int X(long[] jArr) {
        Intrinsics.h(jArr, "<this>");
        return jArr.length - 1;
    }

    public static int Y(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        return objArr.length - 1;
    }

    public static Object Z(Object[] objArr, int i10) {
        Intrinsics.h(objArr, "<this>");
        if (i10 < 0 || i10 >= objArr.length) {
            return null;
        }
        return objArr[i10];
    }

    public static int a0(byte[] bArr, byte b10) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (b10 == bArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int b0(char[] cArr, char c10) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (c10 == cArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static int c0(int[] iArr, int i10) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (i10 == iArr[i11]) {
                return i11;
            }
        }
        return -1;
    }

    public static int d0(long[] jArr, long j10) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (j10 == jArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static int e0(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        int i10 = 0;
        if (obj == null) {
            int length = objArr.length;
            while (i10 < length) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = objArr.length;
        while (i10 < length2) {
            if (Intrinsics.c(obj, objArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int f0(short[] sArr, short s10) {
        Intrinsics.h(sArr, "<this>");
        int length = sArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (s10 == sArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int g0(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        int length = zArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (z10 == zArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final Appendable h0(byte[] bArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) throws IOException {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (byte b10 : bArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            if (function1 != null) {
                buffer.append((CharSequence) function1.invoke(Byte.valueOf(b10)));
            } else {
                buffer.append(String.valueOf((int) b10));
            }
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final Appendable i0(Object[] objArr, Appendable buffer, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) throws IOException {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(buffer, "buffer");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        buffer.append(prefix);
        int i11 = 0;
        for (Object obj : objArr) {
            i11++;
            if (i11 > 1) {
                buffer.append(separator);
            }
            if (i10 >= 0 && i11 > i10) {
                break;
            }
            StringsKt.a(buffer, obj, function1);
        }
        if (i10 >= 0 && i11 > i10) {
            buffer.append(truncated);
        }
        buffer.append(postfix);
        return buffer;
    }

    public static final String j0(byte[] bArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) {
        Intrinsics.h(bArr, "<this>");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        return ((StringBuilder) h0(bArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, function1)).toString();
    }

    public static final String k0(Object[] objArr, CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        return ((StringBuilder) i0(objArr, new StringBuilder(), separator, prefix, postfix, i10, truncated, function1)).toString();
    }

    public static String l0(byte[] bArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            function1 = null;
        }
        return j0(bArr, charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public static String m0(Object[] objArr, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            charSequence = ", ";
        }
        CharSequence charSequence5 = (i11 & 2) != 0 ? "" : charSequence2;
        CharSequence charSequence6 = (i11 & 4) == 0 ? charSequence3 : "";
        if ((i11 & 8) != 0) {
            i10 = -1;
        }
        int i12 = i10;
        if ((i11 & 16) != 0) {
            charSequence4 = "...";
        }
        CharSequence charSequence7 = charSequence4;
        if ((i11 & 32) != 0) {
            function1 = null;
        }
        return k0(objArr, charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public static Object n0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length != 0) {
            return objArr[ArraysKt.Y(objArr)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static int o0(byte[] bArr, byte b10) {
        Intrinsics.h(bArr, "<this>");
        int length = bArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (b10 == bArr[length]) {
                    return length;
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return -1;
    }

    public static final int p0(char[] cArr, char c10) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (c10 == cArr[length]) {
                    return length;
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return -1;
    }

    public static int q0(int[] iArr, int i10) {
        Intrinsics.h(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i11 = length - 1;
                if (i10 == iArr[length]) {
                    return length;
                }
                if (i11 >= 0) {
                    length = i11;
                }
            }
        }
        return -1;
    }

    public static int r0(long[] jArr, long j10) {
        Intrinsics.h(jArr, "<this>");
        int length = jArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (j10 == jArr[length]) {
                    return length;
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return -1;
    }

    public static int s0(Object[] objArr, Object obj) {
        Intrinsics.h(objArr, "<this>");
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i10 = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i10 >= 0) {
                        length = i10;
                    }
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i11 = length2 - 1;
                    if (Intrinsics.c(obj, objArr[length2])) {
                        return length2;
                    }
                    if (i11 < 0) {
                        break;
                    }
                    length2 = i11;
                }
            }
        }
        return -1;
    }

    public static int t0(short[] sArr, short s10) {
        Intrinsics.h(sArr, "<this>");
        int length = sArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (s10 == sArr[length]) {
                    return length;
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return -1;
    }

    public static final int u0(boolean[] zArr, boolean z10) {
        Intrinsics.h(zArr, "<this>");
        int length = zArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (z10 == zArr[length]) {
                    return length;
                }
                if (i10 >= 0) {
                    length = i10;
                }
            }
        }
        return -1;
    }

    public static Object v0(Object[] objArr, Random random) {
        Intrinsics.h(objArr, "<this>");
        Intrinsics.h(random, "random");
        if (objArr.length != 0) {
            return objArr[random.nextInt(objArr.length)];
        }
        throw new NoSuchElementException("Array is empty.");
    }

    public static char w0(char[] cArr) {
        Intrinsics.h(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static Object x0(Object[] objArr) {
        Intrinsics.h(objArr, "<this>");
        if (objArr.length == 1) {
            return objArr[0];
        }
        return null;
    }

    public static List y0(Comparable[] comparableArr) {
        Intrinsics.h(comparableArr, "<this>");
        return ArraysKt.g(z0(comparableArr));
    }

    public static final Comparable[] z0(Comparable[] comparableArr) {
        Intrinsics.h(comparableArr, "<this>");
        if (comparableArr.length == 0) {
            return comparableArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(comparableArr, comparableArr.length);
        Intrinsics.g(objArrCopyOf, "copyOf(...)");
        Comparable[] comparableArr2 = (Comparable[]) objArrCopyOf;
        ArraysKt.D(comparableArr2);
        return comparableArr2;
    }
}
