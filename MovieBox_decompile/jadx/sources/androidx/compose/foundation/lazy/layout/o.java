package androidx.compose.foundation.lazy.layout;

import androidx.compose.ui.layout.p0;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

final class o implements p0 {

    private final LazyLayoutItemContentFactory f2755a;

    private final Map f2756b = new LinkedHashMap();

    public o(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
        this.f2755a = lazyLayoutItemContentFactory;
    }

    @Override
    public void a(p0.a aVar) {
        this.f2756b.clear();
        Iterator it = aVar.iterator();
        while (it.hasNext()) {
            Object objC = this.f2755a.c(it.next());
            Integer num = (Integer) this.f2756b.get(objC);
            int iIntValue = num != null ? num.intValue() : 0;
            if (iIntValue == 7) {
                it.remove();
            } else {
                this.f2756b.put(objC, Integer.valueOf(iIntValue + 1));
            }
        }
    }

    @Override
    public boolean b(Object obj, Object obj2) {
        return Intrinsics.c(this.f2755a.c(obj), this.f2755a.c(obj2));
    }
}
