package com.mbridge.msdk.foundation.same.directory;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class a {

    private List<a> f34543a;

    private String f34544b;

    private a f34545c;

    private c f34546d;

    public void a(c cVar, String str) {
        a aVar = new a();
        aVar.a(cVar);
        aVar.a(str);
        a(aVar);
    }

    public String b() {
        return this.f34544b;
    }

    public a c() {
        return this.f34545c;
    }

    public c d() {
        return this.f34546d;
    }

    public void b(a aVar) {
        this.f34545c = aVar;
    }

    public void a(a aVar) {
        if (this.f34543a == null) {
            this.f34543a = new ArrayList();
        }
        aVar.b(this);
        this.f34543a.add(aVar);
    }

    public void a(List<a> list) {
        if (list == null || list.size() == 0) {
            return;
        }
        Iterator<a> it = list.iterator();
        while (it.hasNext()) {
            a(it.next());
        }
    }

    public List<a> a() {
        return this.f34543a;
    }

    public void a(String str) {
        this.f34544b = str;
    }

    public void a(c cVar) {
        this.f34546d = cVar;
    }
}
