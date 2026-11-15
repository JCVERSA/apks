package androidx.collection;

import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

public abstract class ObjectList {

    public Object[] f1935a;

    public int f1936b;

    public ObjectList(int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10);
    }

    public static String d(ObjectList objectList, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, int i10, CharSequence charSequence4, Function1 function1, int i11, Object obj) {
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
        return objectList.c(charSequence, charSequence5, charSequence6, i12, charSequence7, function1);
    }

    public final boolean a(Object obj) {
        return b(obj) >= 0;
    }

    public final int b(Object obj) {
        int i10 = 0;
        if (obj == null) {
            Object[] objArr = this.f1935a;
            int i11 = this.f1936b;
            while (i10 < i11) {
                if (objArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        Object[] objArr2 = this.f1935a;
        int i12 = this.f1936b;
        while (i10 < i12) {
            if (obj.equals(objArr2[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public final String c(CharSequence separator, CharSequence prefix, CharSequence postfix, int i10, CharSequence truncated, Function1 function1) {
        Intrinsics.h(separator, "separator");
        Intrinsics.h(prefix, "prefix");
        Intrinsics.h(postfix, "postfix");
        Intrinsics.h(truncated, "truncated");
        StringBuilder sb2 = new StringBuilder();
        sb2.append(prefix);
        Object[] objArr = this.f1935a;
        int i11 = this.f1936b;
        for (int i12 = 0; i12 < i11; i12++) {
            Object obj = objArr[i12];
            if (i12 == i10) {
                sb2.append(truncated);
                String string = sb2.toString();
                Intrinsics.g(string, "StringBuilder().apply(builderAction).toString()");
                return string;
            }
            if (i12 != 0) {
                sb2.append(separator);
            }
            if (function1 == null) {
                sb2.append(obj);
            } else {
                sb2.append((CharSequence) function1.invoke(obj));
            }
        }
        sb2.append(postfix);
        String string2 = sb2.toString();
        Intrinsics.g(string2, "StringBuilder().apply(builderAction).toString()");
        return string2;
    }

    public boolean equals(Object obj) {
        if (obj instanceof ObjectList) {
            ObjectList objectList = (ObjectList) obj;
            int i10 = objectList.f1936b;
            int i11 = this.f1936b;
            if (i10 == i11) {
                Object[] objArr = this.f1935a;
                Object[] objArr2 = objectList.f1935a;
                IntRange intRangeS = RangesKt.s(0, i11);
                int iF = intRangeS.getFirst();
                int i12 = intRangeS.getLast();
                if (iF > i12) {
                    return true;
                }
                while (Intrinsics.c(objArr[iF], objArr2[iF])) {
                    if (iF == i12) {
                        return true;
                    }
                    iF++;
                }
                return false;
            }
        }
        return false;
    }

    public int hashCode() {
        Object[] objArr = this.f1935a;
        int i10 = this.f1936b;
        int iHashCode = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            Object obj = objArr[i11];
            iHashCode += (obj != null ? obj.hashCode() : 0) * 31;
        }
        return iHashCode;
    }

    public String toString() {
        return d(this, null, "[", "]", 0, null, new Function1<Object, CharSequence>() {
            {
                super(1);
            }

            @Override
            public final CharSequence invoke(Object obj) {
                return obj == ObjectList.this ? "(this)" : String.valueOf(obj);
            }
        }, 25, null);
    }

    private ObjectList(int i10) {
        this.f1935a = i10 == 0 ? r0.f2017a : new Object[i10];
    }
}
