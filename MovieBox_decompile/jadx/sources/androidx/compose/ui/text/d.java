package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

public abstract class d {

    private static final AnnotatedString f5777a = new AnnotatedString("", null, null, 6, null);

    public static final boolean f(int i10, int i11, int i12, int i13) {
        if (i10 > i12 || i13 > i11) {
            return false;
        }
        if (i11 == i13) {
            if ((i12 == i13) != (i10 == i11)) {
                return false;
            }
        }
        return true;
    }

    public static final List g(List list, int i10, int i11) {
        if (i10 > i11) {
            throw new IllegalArgumentException(("start (" + i10 + ") should be less than or equal to end (" + i11 + ')').toString());
        }
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = list.get(i12);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (k(i10, i11, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.c(cVar2.e(), Math.max(i10, cVar2.f()) - i10, Math.min(i11, cVar2.d()) - i10, cVar2.g()));
        }
        if (arrayList2.isEmpty()) {
            return null;
        }
        return arrayList2;
    }

    public static final List h(AnnotatedString annotatedString, int i10, int i11) {
        List listB;
        if (i10 == i11 || (listB = annotatedString.b()) == null) {
            return null;
        }
        if (i10 == 0 && i11 >= annotatedString.i().length()) {
            return listB;
        }
        ArrayList arrayList = new ArrayList(listB.size());
        int size = listB.size();
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = listB.get(i12);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (k(i10, i11, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.c(cVar2.e(), RangesKt.l(cVar2.f(), i10, i11) - i10, RangesKt.l(cVar2.d(), i10, i11) - i10, cVar2.g()));
        }
        return arrayList2;
    }

    public static final List i(AnnotatedString annotatedString, int i10, int i11) {
        List listF;
        if (i10 == i11 || (listF = annotatedString.f()) == null) {
            return null;
        }
        if (i10 == 0 && i11 >= annotatedString.i().length()) {
            return listF;
        }
        ArrayList arrayList = new ArrayList(listF.size());
        int size = listF.size();
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = listF.get(i12);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (k(i10, i11, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.c(cVar2.e(), RangesKt.l(cVar2.f(), i10, i11) - i10, RangesKt.l(cVar2.d(), i10, i11) - i10));
        }
        return arrayList2;
    }

    public static final List j(AnnotatedString annotatedString, int i10, int i11) {
        List listH;
        if (i10 == i11 || (listH = annotatedString.h()) == null) {
            return null;
        }
        if (i10 == 0 && i11 >= annotatedString.i().length()) {
            return listH;
        }
        ArrayList arrayList = new ArrayList(listH.size());
        int size = listH.size();
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = listH.get(i12);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (k(i10, i11, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i13);
            arrayList2.add(new AnnotatedString.c(cVar2.e(), RangesKt.l(cVar2.f(), i10, i11) - i10, RangesKt.l(cVar2.d(), i10, i11) - i10));
        }
        return arrayList2;
    }

    public static final boolean k(int i10, int i11, int i12, int i13) {
        return Math.max(i10, i12) < Math.min(i11, i13) || f(i10, i11, i12, i13) || f(i12, i13, i10, i11);
    }

    public static final List l(AnnotatedString annotatedString, r rVar) {
        int length = annotatedString.i().length();
        List listF = annotatedString.f();
        if (listF == null) {
            listF = CollectionsKt.l();
        }
        ArrayList arrayList = new ArrayList();
        int size = listF.size();
        int i10 = 0;
        int i11 = 0;
        while (i10 < size) {
            AnnotatedString.c cVar = (AnnotatedString.c) listF.get(i10);
            r rVar2 = (r) cVar.a();
            int iB = cVar.b();
            int iC = cVar.c();
            if (iB != i11) {
                arrayList.add(new AnnotatedString.c(rVar, i11, iB));
            }
            arrayList.add(new AnnotatedString.c(rVar.l(rVar2), iB, iC));
            i10++;
            i11 = iC;
        }
        if (i11 != length) {
            arrayList.add(new AnnotatedString.c(rVar, i11, length));
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new AnnotatedString.c(rVar, 0, 0));
        }
        return arrayList;
    }

    public static final AnnotatedString m(AnnotatedString annotatedString, int i10, int i11) {
        String strSubstring;
        if (i10 != i11) {
            strSubstring = annotatedString.i().substring(i10, i11);
            Intrinsics.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        } else {
            strSubstring = "";
        }
        return new AnnotatedString(strSubstring, j(annotatedString, i10, i11), null, null, 12, null);
    }
}
