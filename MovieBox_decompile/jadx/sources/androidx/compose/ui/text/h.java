package androidx.compose.ui.text;

import java.util.ArrayList;
import java.util.List;

public abstract class h {
    public static final List b(List list, int i10, int i11) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i12 = 0; i12 < size; i12++) {
            Object obj = list.get(i12);
            AnnotatedString.c cVar = (AnnotatedString.c) obj;
            if (d.k(i10, i11, cVar.f(), cVar.d())) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i13 = 0; i13 < size2; i13++) {
            AnnotatedString.c cVar2 = (AnnotatedString.c) arrayList.get(i13);
            if (i10 > cVar2.f() || cVar2.d() > i11) {
                throw new IllegalArgumentException("placeholder can not overlap with paragraph.");
            }
            arrayList2.add(new AnnotatedString.c(cVar2.e(), cVar2.f() - i10, cVar2.d() - i10));
        }
        return arrayList2;
    }
}
