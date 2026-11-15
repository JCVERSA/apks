package com.bykv.vk.openvk.preload.a;

import java.lang.reflect.Type;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class e {

    private String f19909g;

    private com.bykv.vk.openvk.preload.a.b.c f19903a = com.bykv.vk.openvk.preload.a.b.c.f19810a;

    private q f19904b = q.f19917a;

    private c f19905c = b.f19694a;

    private final Map<Type, f<?>> f19906d = new HashMap();

    private final List<s> f19907e = new ArrayList();

    private final List<s> f19908f = new ArrayList();

    private int f19910h = 2;

    private int f19911i = 2;

    private boolean f19912j = true;

    public final e a(Type type, Object obj) {
        com.bykv.vk.openvk.preload.falconx.a.a.a(true);
        this.f19907e.add(com.bykv.vk.openvk.preload.a.b.a.m.a(com.bykv.vk.openvk.preload.a.c.a.a(type), (r) obj));
        return this;
    }

    public final d a() {
        a aVar;
        a aVar2;
        a aVar3;
        ArrayList arrayList = new ArrayList(this.f19907e.size() + this.f19908f.size() + 3);
        arrayList.addAll(this.f19907e);
        Collections.reverse(arrayList);
        ArrayList arrayList2 = new ArrayList(this.f19908f);
        Collections.reverse(arrayList2);
        arrayList.addAll(arrayList2);
        String str = this.f19909g;
        int i10 = this.f19910h;
        int i11 = this.f19911i;
        if (str != null && !"".equals(str.trim())) {
            aVar = new a(Date.class, str);
            aVar2 = new a(Timestamp.class, str);
            aVar3 = new a(java.sql.Date.class, str);
        } else {
            if (i10 != 2 && i11 != 2) {
                a aVar4 = new a(Date.class, i10, i11);
                a aVar5 = new a(Timestamp.class, i10, i11);
                a aVar6 = new a(java.sql.Date.class, i10, i11);
                aVar = aVar4;
                aVar2 = aVar5;
                aVar3 = aVar6;
            }
            return new d(this.f19903a, this.f19905c, this.f19906d, this.f19912j, this.f19904b, arrayList);
        }
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Date.class, aVar));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(Timestamp.class, aVar2));
        arrayList.add(com.bykv.vk.openvk.preload.a.b.a.m.a(java.sql.Date.class, aVar3));
        return new d(this.f19903a, this.f19905c, this.f19906d, this.f19912j, this.f19904b, arrayList);
    }
}
