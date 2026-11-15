package kotlin.collections;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import kotlin.UByteArray;
import kotlin.UIntArray;
import kotlin.ULongArray;
import kotlin.UShortArray;
import kotlin.Unit;
import kotlin.collections.unsigned.UArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public class e extends d {
    public static String c(Object[] objArr) {
        if (objArr == null) {
            return "null";
        }
        StringBuilder sb2 = new StringBuilder((RangesKt.h(objArr.length, 429496729) * 5) + 2);
        d(objArr, sb2, new ArrayList());
        return sb2.toString();
    }

    private static final void d(Object[] objArr, StringBuilder sb2, List list) {
        if (list.contains(objArr)) {
            sb2.append("[...]");
            return;
        }
        list.add(objArr);
        sb2.append('[');
        int length = objArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 != 0) {
                sb2.append(", ");
            }
            Object obj = objArr[i10];
            if (obj == null) {
                sb2.append("null");
            } else if (obj instanceof Object[]) {
                d((Object[]) obj, sb2, list);
                Unit unit = Unit.f64096a;
            } else if (obj instanceof byte[]) {
                String string = Arrays.toString((byte[]) obj);
                Intrinsics.g(string, "toString(...)");
                sb2.append(string);
            } else if (obj instanceof short[]) {
                String string2 = Arrays.toString((short[]) obj);
                Intrinsics.g(string2, "toString(...)");
                sb2.append(string2);
            } else if (obj instanceof int[]) {
                String string3 = Arrays.toString((int[]) obj);
                Intrinsics.g(string3, "toString(...)");
                sb2.append(string3);
            } else if (obj instanceof long[]) {
                String string4 = Arrays.toString((long[]) obj);
                Intrinsics.g(string4, "toString(...)");
                sb2.append(string4);
            } else if (obj instanceof float[]) {
                String string5 = Arrays.toString((float[]) obj);
                Intrinsics.g(string5, "toString(...)");
                sb2.append(string5);
            } else if (obj instanceof double[]) {
                String string6 = Arrays.toString((double[]) obj);
                Intrinsics.g(string6, "toString(...)");
                sb2.append(string6);
            } else if (obj instanceof char[]) {
                String string7 = Arrays.toString((char[]) obj);
                Intrinsics.g(string7, "toString(...)");
                sb2.append(string7);
            } else if (obj instanceof boolean[]) {
                String string8 = Arrays.toString((boolean[]) obj);
                Intrinsics.g(string8, "toString(...)");
                sb2.append(string8);
            } else if (obj instanceof UByteArray) {
                sb2.append(UArraysKt.a(((UByteArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof UShortArray) {
                sb2.append(UArraysKt.c(((UShortArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof UIntArray) {
                sb2.append(UArraysKt.b(((UIntArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else if (obj instanceof ULongArray) {
                sb2.append(UArraysKt.d(((ULongArray) obj).getCom.google.android.libraries.places.api.model.PlaceTypes.STORAGE java.lang.String()));
            } else {
                sb2.append(obj.toString());
            }
        }
        sb2.append(']');
        list.remove(CollectionsKt.n(list));
    }
}
