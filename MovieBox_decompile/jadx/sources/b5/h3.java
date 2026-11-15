package b5;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.List;
import java.util.Map;

public final class h3 extends l {

    private final int f15545c;

    private final List f15546d;

    private final a5.a f15547e;

    private final Object f15548f;

    private final Map f15549g;

    private final Collection f15550h;

    public h3(a5.a aVar, List list, int i10) {
        super(null, null);
        this.f15547e = aVar;
        this.f15545c = i10;
        this.f15546d = list;
        this.f15548f = null;
        this.f15549g = null;
        this.f15550h = null;
    }

    @Override
    public void h(Object obj, Object obj2) {
        JSONArray jSONArray;
        Object relatedArray;
        Map map = this.f15549g;
        if (map != null) {
            map.put(this.f15548f, obj2);
            return;
        }
        Collection collection = this.f15550h;
        if (collection != null) {
            collection.add(obj2);
            return;
        }
        this.f15546d.set(this.f15545c, obj2);
        List list = this.f15546d;
        if (!(list instanceof JSONArray) || (relatedArray = (jSONArray = (JSONArray) list).getRelatedArray()) == null || Array.getLength(relatedArray) <= this.f15545c) {
            return;
        }
        if (jSONArray.getComponentType() != null) {
            obj2 = TypeUtils.h(obj2, jSONArray.getComponentType(), this.f15547e.l());
        }
        Array.set(relatedArray, this.f15545c, obj2);
    }

    public h3(Map map, Object obj) {
        super(null, null);
        this.f15547e = null;
        this.f15545c = -1;
        this.f15546d = null;
        this.f15548f = obj;
        this.f15549g = map;
        this.f15550h = null;
    }

    public h3(Collection collection) {
        super(null, null);
        this.f15547e = null;
        this.f15545c = -1;
        this.f15546d = null;
        this.f15548f = null;
        this.f15549g = null;
        this.f15550h = collection;
    }

    @Override
    public void d(a5.a aVar, Object obj, Type type, Map map) {
    }
}
