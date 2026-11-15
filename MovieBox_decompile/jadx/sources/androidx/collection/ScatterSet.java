package androidx.collection;

import java.util.Collection;
import java.util.Iterator;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

public abstract class ScatterSet {

    public long[] f1937a;

    public Object[] f1938b;

    public int f1939c;

    public int f1940d;

    public class a implements Set, KMappedMarker {
        public a() {
        }

        public int a() {
            return ScatterSet.this.f1940d;
        }

        @Override
        public boolean contains(Object obj) {
            return ScatterSet.this.a(obj);
        }

        @Override
        public boolean containsAll(Collection elements) {
            Intrinsics.h(elements, "elements");
            ScatterSet scatterSet = ScatterSet.this;
            Iterator it = elements.iterator();
            while (it.hasNext()) {
                if (!scatterSet.a(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override
        public boolean isEmpty() {
            return ScatterSet.this.d();
        }

        @Override
        public final int size() {
            return a();
        }

        @Override
        public Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override
        public Object[] toArray(Object[] array) {
            Intrinsics.h(array, "array");
            return CollectionToArray.b(this, array);
        }
    }

    public ScatterSet(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }

    public static String g(ScatterSet scatterSet, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: joinToString");
        }
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
        return scatterSet.f(charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public final boolean a(Object obj) {
        int iNumberOfTrailingZeros;
        int iHashCode = (obj != null ? obj.hashCode() : 0) * (-862048943);
        int i10 = iHashCode ^ (iHashCode << 16);
        int i11 = i10 & 127;
        int i12 = this.f1939c;
        int i13 = (i10 >>> 7) & i12;
        int i14 = 0;
        loop0: while (true) {
            long[] jArr = this.f1937a;
            int i15 = i13 >> 3;
            int i16 = (i13 & 7) << 3;
            long j10 = ((jArr[i15 + 1] << (64 - i16)) & ((-i16) >> 63)) | (jArr[i15] >>> i16);
            long j11 = (((long) i11) * 72340172838076673L) ^ j10;
            for (long j12 = (~j11) & (j11 - 72340172838076673L) & (-9187201950435737472L); j12 != 0; j12 &= j12 - 1) {
                iNumberOfTrailingZeros = ((Long.numberOfTrailingZeros(j12) >> 3) + i13) & i12;
                if (Intrinsics.c(this.f1938b[iNumberOfTrailingZeros], obj)) {
                    break loop0;
                }
            }
            if ((j10 & ((~j10) << 6) & (-9187201950435737472L)) != 0) {
                iNumberOfTrailingZeros = -1;
                break;
            }
            i14 += 8;
            i13 = (i13 + i14) & i12;
        }
        return iNumberOfTrailingZeros >= 0;
    }

    public final int b() {
        return this.f1939c;
    }

    public final int c() {
        return this.f1940d;
    }

    public final boolean d() {
        return this.f1940d == 0;
    }

    public final boolean e() {
        return this.f1940d != 0;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x005c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:26:0x005e A[LOOP:0: B:14:0x0025->B:26:0x005e, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:30:0x0061 A[SYNTHETIC] */
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ScatterSet)) {
            return false;
        }
        ScatterSet scatterSet = (ScatterSet) obj;
        if (scatterSet.c() != c()) {
            return false;
        }
        Object[] objArr = this.f1938b;
        long[] jArr = this.f1937a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i10 = 0;
            while (true) {
                long j10 = jArr[i10];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    for (int i12 = 0; i12 < i11; i12++) {
                        if ((255 & j10) < 128 && !scatterSet.a(objArr[(i10 << 3) + i12])) {
                            return false;
                        }
                        j10 >>= 8;
                    }
                    if (i11 == 8) {
                        if (i10 != length) {
                            i10++;
                        }
                    }
                } else if (i10 != length) {
                    i10++;
                }
            }
        }
        return true;
    }

    public final String f(CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.f1938b;
        long[] jArr = this.f1937a;
        int length = jArr.length - 2;
        if (length < 0) {
            sb2.append(postfix);
            break;
        }
        int i11 = 0;
        int i12 = 0;
        loop0: while (true) {
            long j10 = jArr[i11];
            if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                int i13 = 8;
                int i14 = 8 - ((~(i11 - length)) >>> 31);
                for (int i15 = 0; i15 < i14; i15++) {
                    if ((j10 & 255) < 128) {
                        Object obj = objArr[(i11 << 3) + i15];
                        if (i12 == i10) {
                            sb2.append(truncated);
                            break loop0;
                        }
                        if (i12 != 0) {
                            sb2.append(separator);
                        }
                        if (function1 == null) {
                            sb2.append(obj);
                        } else {
                            sb2.append((CharSequence) function1.invoke(obj));
                        }
                        i12++;
                        i13 = 8;
                    }
                    j10 >>= i13;
                }
                if (i14 == i13) {
                }
                sb2.append(postfix);
                break;
            }
            if (i11 == length) {
                sb2.append(postfix);
                break;
            }
            i11++;
        }
        String string = sb2.toString();
        Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public int hashCode() {
        Object[] objArr = this.f1938b;
        long[] jArr = this.f1937a;
        int length = jArr.length - 2;
        int i10 = 0;
        if (length >= 0) {
            int i11 = 0;
            int iHashCode = 0;
            while (true) {
                long j10 = jArr[i11];
                if ((((~j10) << 7) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i12 = 8 - ((~(i11 - length)) >>> 31);
                    for (int i13 = 0; i13 < i12; i13++) {
                        if ((255 & j10) < 128) {
                            Object obj = objArr[(i11 << 3) + i13];
                            iHashCode += obj != null ? obj.hashCode() : 0;
                        }
                        j10 >>= 8;
                    }
                    if (i12 != 8) {
                        return iHashCode;
                    }
                }
                if (i11 != length) {
                    i11++;
                } else {
                    i10 = iHashCode;
                }
            }
        }
        return i10;
    }

    public String toString() {
        return g(this, null, "[", "]", 0, null, new Function1<Object, CharSequence>() {
            {
                super(1);
            }

            @Override
            public final CharSequence invoke(Object obj) {
                return obj == ScatterSet.this ? "(this)" : String.valueOf(obj);
            }
        }, 25, null);
    }

    private ScatterSet() {
        this.f1937a = v0.f2044a;
        this.f1938b = n.a.f66844c;
    }
}
