package defpackage;

import com.yandex.div.core.view2.CompositeLogId;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentLinkedQueue;

public final class bw2 {
    public final ConcurrentLinkedQueue a = new ConcurrentLinkedQueue();

    public final boolean a(Map map) {
        y45.j(map, "logIds");
        return this.a.add(map);
    }

    public final CompositeLogId b(CompositeLogId compositeLogId) {
        Object next;
        Set setKeySet;
        y45.j(compositeLogId, "logId");
        Iterator it = this.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((Map) next).containsKey(compositeLogId));
        Map map = (Map) next;
        if (map == null || (setKeySet = map.keySet()) == null) {
            return null;
        }
        CompositeLogId[] compositeLogIdArr = (CompositeLogId[]) setKeySet.toArray(new CompositeLogId[0]);
        if (compositeLogIdArr == null) {
            return null;
        }
        for (CompositeLogId compositeLogId2 : compositeLogIdArr) {
            if (y45.e(compositeLogId2, compositeLogId)) {
                return compositeLogId2;
            }
        }
        return null;
    }

    public final void c(CompositeLogId compositeLogId, e74 e74Var) {
        Object next;
        y45.j(compositeLogId, "logId");
        y45.j(e74Var, "emptyTokenCallback");
        Iterator it = this.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (((Map) next).remove(compositeLogId) == null);
        Map map = (Map) next;
        if (map != null && map.isEmpty()) {
            e74Var.invoke(map);
            this.a.remove(map);
        }
    }
}
