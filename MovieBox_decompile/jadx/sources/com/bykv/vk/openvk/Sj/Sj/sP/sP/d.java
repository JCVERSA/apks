package com.bykv.vk.openvk.Sj.Sj.sP.sP;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

public class d {

    private static final Set f19631f = new HashSet();

    private static final Set f19632g = new HashSet();

    private final ArrayList f19633a;

    private final int f19634b;

    private int f19635c = -1;

    private int f19636d;

    private final int f19637e;

    public class a {

        final String f19638a;

        int f19639b;

        a(String str) {
            this.f19638a = str;
        }

        void a() {
            d.f19631f.add(this.f19638a);
        }

        void b() {
            d.f19632g.add(this.f19638a);
        }

        public String toString() {
            return this.f19638a;
        }
    }

    d(List list) {
        if (list.isEmpty()) {
            throw new IllegalArgumentException("urls can't be empty");
        }
        int size = list.size();
        this.f19634b = size;
        this.f19633a = new ArrayList(size);
        Iterator it = list.iterator();
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        while (it.hasNext()) {
            String str = (String) it.next();
            a aVar = new a(str);
            if (f19631f.contains(str)) {
                arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                arrayList2.add(aVar);
            } else if (f19632g.contains(str)) {
                arrayList = arrayList == null ? new ArrayList() : arrayList;
                arrayList.add(aVar);
            } else {
                this.f19633a.add(aVar);
            }
        }
        if (arrayList != null) {
            this.f19633a.addAll(arrayList);
        }
        if (arrayList2 != null) {
            this.f19633a.addAll(arrayList2);
        }
        Integer num = com.bykv.vk.openvk.Sj.Sj.sP.sP.a.f19626h;
        this.f19637e = (num == null || num.intValue() <= 0) ? this.f19634b >= 2 ? 1 : 2 : num.intValue();
    }

    boolean b() {
        return this.f19636d < this.f19637e;
    }

    a d() {
        if (!b()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f19635c + 1;
        if (i10 >= this.f19634b - 1) {
            this.f19635c = -1;
            this.f19636d++;
        } else {
            this.f19635c = i10;
        }
        a aVar = (a) this.f19633a.get(i10);
        aVar.f19639b = (this.f19636d * this.f19634b) + this.f19635c;
        return aVar;
    }

    d(String str) {
        ArrayList arrayList = new ArrayList(1);
        this.f19633a = arrayList;
        arrayList.add(new a(str));
        this.f19634b = 1;
        this.f19637e = 1;
    }
}
