package com.bykv.vk.openvk.preload.b;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public abstract class l<IN, OUT> extends d<IN, OUT> {

    private Map<String, a> f19946d;

    public static final class a {

        List<h> f19947a = new ArrayList();

        public final a a(h hVar) {
            this.f19947a.add(hVar);
            return this;
        }

        public final a a(List<h> list) {
            this.f19947a.addAll(list);
            return this;
        }
    }

    l() {
    }

    final Map<String, a> a() {
        return this.f19946d;
    }

    static boolean a(List<h> list) {
        return !list.isEmpty() && list.get(list.size() - 1).f19934a == f.class;
    }

    public static final class b {

        private Map<String, a> f19948a = new HashMap();

        private com.bykv.vk.openvk.preload.b.b.a f19949b;

        public final a a(String str) {
            if (this.f19948a.containsKey(str)) {
                throw new IllegalArgumentException("duplicated branch name");
            }
            a aVar = new a();
            this.f19948a.put(str, aVar);
            return aVar;
        }

        public final h a(Class<? extends l> cls) {
            return h.a.a().a(cls).a(this.f19948a).a(this.f19949b).b();
        }
    }

    @Override
    protected final void a(Object... objArr) {
        Object obj;
        super.a(objArr);
        if (objArr != null && objArr.length == 1 && (obj = objArr[0]) != null) {
            try {
                this.f19946d = (Map) obj;
                return;
            } catch (ClassCastException e10) {
                throw new IllegalArgumentException(e10);
            }
        }
        throw new IllegalStateException("args error");
    }
}
