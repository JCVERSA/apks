package androidx.collection;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

public abstract class m {

    public int[] f1989a;

    public int f1990b;

    public m(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public static String d(m mVar, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, int i11, Object obj) {
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
        return mVar.c(charSequence, charSequence5, charSequence6, i12, charSequence4);
    }

    public final int a(int i10) {
        if (i10 >= 0 && i10 < this.f1990b) {
            return this.f1989a[i10];
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Index ");
        sb2.append(i10);
        sb2.append(" must be in 0..");
        sb2.append(this.f1990b - 1);
        throw new IndexOutOfBoundsException(sb2.toString());
    }

    public final int b() {
        return this.f1990b;
    }

    public final String c(CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        int[] iArr = this.f1989a;
        int i11 = this.f1990b;
        for (int i12 = 0; i12 < i11; i12++) {
            int i13 = iArr[i12];
            if (i12 == i10) {
                sb2.append(truncated);
                String string = sb2.toString();
                Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i12 != 0) {
                sb2.append(separator);
            }
            sb2.append(i13);
        }
        sb2.append(postfix);
        String string2 = sb2.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof m) {
            m mVar = (m) obj;
            int i10 = mVar.f1990b;
            int i11 = this.f1990b;
            if (i10 == i11) {
                int[] iArr = this.f1989a;
                int[] iArr2 = mVar.f1989a;
                IntRange intRangeS = RangesKt.s(0, i11);
                int first = intRangeS.getFirst();
                int last = intRangeS.getLast();
                if (first > last) {
                    return true;
                }
                while (iArr[first] == iArr2[first]) {
                    if (first == last) {
                        return true;
                    }
                    first++;
                }
                return false;
            }
        }
        return false;
    }

    public int hashCode() {
        int[] iArr = this.f1989a;
        int i10 = this.f1990b;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12] * 31;
        }
        return i11;
    }

    public String toString() {
        return d(this, null, "[", "]", 0, null, 25, null);
    }

    private m(int i10) {
        this.f1989a = i10 == 0 ? r.a() : new int[i10];
    }
}
