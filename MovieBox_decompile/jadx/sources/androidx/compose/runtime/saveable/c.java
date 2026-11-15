package androidx.compose.runtime.saveable;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

final class c implements b {

    private final Function1 f3601a;

    private final Map f3602b;

    private final Map f3603c;

    public static final class a implements b.a {

        final String f3605b;

        final Function0 f3606c;

        a(String str, Function0 function0) {
            this.f3605b = str;
            this.f3606c = function0;
        }

        @Override
        public void unregister() {
            List list = (List) c.this.f3603c.remove(this.f3605b);
            if (list != null) {
                list.remove(this.f3606c);
            }
            if (list == null || list.isEmpty()) {
                return;
            }
            c.this.f3603c.put(this.f3605b, list);
        }
    }

    public c(Map map, Function1 function1) {
        Map mapW;
        this.f3601a = function1;
        this.f3602b = (map == null || (mapW = MapsKt.w(map)) == null) ? new LinkedHashMap() : mapW;
        this.f3603c = new LinkedHashMap();
    }

    @Override
    public boolean a(Object obj) {
        return ((Boolean) this.f3601a.invoke(obj)).booleanValue();
    }

    @Override
    public b.a b(String str, Function0 function0) {
        if (SaveableStateRegistryKt.c(str)) {
            throw new IllegalArgumentException("Registered key is empty or blank");
        }
        Map map = this.f3603c;
        Object arrayList = map.get(str);
        if (arrayList == null) {
            arrayList = new ArrayList();
            map.put(str, arrayList);
        }
        ((List) arrayList).add(function0);
        return new a(str, function0);
    }

    @Override
    public Map e() {
        Map mapW = MapsKt.w(this.f3602b);
        for (Map.Entry entry : this.f3603c.entrySet()) {
            String str = (String) entry.getKey();
            List list = (List) entry.getValue();
            if (list.size() == 1) {
                Object objInvoke = ((Function0) list.get(0)).invoke();
                if (objInvoke == null) {
                    continue;
                } else {
                    if (!a(objInvoke)) {
                        throw new IllegalStateException(RememberSaveableKt.b(objInvoke).toString());
                    }
                    mapW.put(str, CollectionsKt.h(objInvoke));
                }
            } else {
                int size = list.size();
                ArrayList arrayList = new ArrayList(size);
                for (int i10 = 0; i10 < size; i10++) {
                    Object objInvoke2 = ((Function0) list.get(i10)).invoke();
                    if (objInvoke2 != null && !a(objInvoke2)) {
                        throw new IllegalStateException(RememberSaveableKt.b(objInvoke2).toString());
                    }
                    arrayList.add(objInvoke2);
                }
                mapW.put(str, arrayList);
            }
        }
        return mapW;
    }

    @Override
    public Object f(String str) {
        List list = (List) this.f3602b.remove(str);
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1) {
            this.f3602b.put(str, list.subList(1, list.size()));
        }
        return list.get(0);
    }
}
