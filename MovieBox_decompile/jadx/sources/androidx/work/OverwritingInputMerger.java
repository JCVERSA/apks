package androidx.work;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

public final class OverwritingInputMerger extends g {
    @Override
    public d b(List list) {
        d.a aVar = new d.a();
        HashMap map = new HashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            map.putAll(((d) it.next()).h());
        }
        aVar.d(map);
        return aVar.a();
    }
}
