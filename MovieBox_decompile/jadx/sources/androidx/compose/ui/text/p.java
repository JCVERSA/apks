package androidx.compose.ui.text;

import java.util.List;
import kotlin.collections.CollectionsKt;

public abstract class p {
    public static final o a(String str, d0 d0Var, List list, List list2, o0.e eVar, androidx.compose.ui.text.font.h.b bVar) {
        return androidx.compose.ui.text.platform.d.a(str, d0Var, list, list2, eVar, bVar);
    }

    public static o b(String str, d0 d0Var, List list, List list2, o0.e eVar, androidx.compose.ui.text.font.h.b bVar, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            list = CollectionsKt.l();
        }
        List list3 = list;
        if ((i10 & 8) != 0) {
            list2 = CollectionsKt.l();
        }
        return a(str, d0Var, list3, list2, eVar, bVar);
    }
}
