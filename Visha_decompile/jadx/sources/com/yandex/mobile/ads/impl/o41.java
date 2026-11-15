package com.yandex.mobile.ads.impl;

import com.yandex.mobile.ads.impl.o41;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public class o41 implements a81 {
    private final List<ig<?>> a;
    private final w71 b;
    private String c;
    private g71 d;

    /* JADX WARN: Multi-variable type inference failed */
    public o41(List<? extends ig<?>> list, w71 w71Var) {
        y45.j(list, "assets");
        y45.j(w71Var, "nativeAdsConfiguration");
        this.a = list;
        this.b = w71Var;
    }

    public static final boolean a(o41 o41Var, List list) {
        y45.j(o41Var, "this$0");
        y45.j(list, "assets");
        ArrayList<ig<?>> arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ig) obj).f()) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            for (ig<?> igVar : arrayList) {
                g71 g71Var = o41Var.d;
                jg<?> jgVarA = g71Var != null ? g71Var.a(igVar) : null;
                if (jgVarA != null && jgVarA.d()) {
                    return true;
                }
            }
        }
        return false;
    }

    public static final boolean b(o41 o41Var, List list) {
        Object next;
        ig<?> igVar;
        jg<?> jgVarA;
        y45.j(o41Var, "this$0");
        y45.j(list, "assets");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ig) obj).f()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            igVar = (ig) next;
            g71 g71Var = o41Var.d;
            jgVarA = g71Var != null ? g71Var.a(igVar) : null;
            if (jgVarA == null) {
                jgVarA = null;
            }
            if (jgVarA == null) {
                break;
            }
        } while (jgVarA.a(igVar.d()));
        ig igVar2 = (ig) next;
        o41Var.c = igVar2 != null ? igVar2.b() : null;
        return igVar2 == null;
    }

    public static final boolean c(o41 o41Var, List list) {
        Object next;
        jg<?> jgVarA;
        y45.j(o41Var, "this$0");
        y45.j(list, "assets");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ig) obj).f()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ig<?> igVar = (ig) next;
            g71 g71Var = o41Var.d;
            jgVarA = g71Var != null ? g71Var.a(igVar) : null;
            if (jgVarA == null) {
                break;
            }
        } while (jgVarA.e());
        ig igVar2 = (ig) next;
        o41Var.c = igVar2 != null ? igVar2.b() : null;
        return igVar2 == null;
    }

    public final boolean d() {
        return !a(new a81.a() {
            @Override
            public final boolean a(List list) {
                return o41.b(this.a, list);
            }
        });
    }

    public static final boolean d(o41 o41Var, List list) {
        Object next;
        jg<?> jgVarA;
        y45.j(o41Var, "this$0");
        y45.j(list, "assets");
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (((ig) obj).f()) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            ig<?> igVar = (ig) next;
            g71 g71Var = o41Var.d;
            jgVarA = g71Var != null ? g71Var.a(igVar) : null;
            if (jgVarA == null) {
                break;
            }
        } while (jgVarA.b());
        ig igVar2 = (ig) next;
        o41Var.c = igVar2 != null ? igVar2.b() : null;
        return igVar2 == null;
    }

    public final boolean e() {
        return !a(new a81.a() {
            @Override
            public final boolean a(List list) {
                return o41.c(this.a, list);
            }
        });
    }

    public boolean a(a81.a aVar, List<? extends ig<?>> list) {
        y45.j(aVar, "validator");
        y45.j(list, "assets");
        this.b.c();
        return aVar.a(list);
    }

    public final w71 b() {
        return this.b;
    }

    public final boolean c() {
        return !a(new a81.a() {
            @Override
            public final boolean a(List list) {
                return o41.a(this.a, list);
            }
        });
    }

    private final boolean a(a81.a aVar) {
        return this.d != null && a(aVar, this.a);
    }

    @Override
    public final void a(g71 g71Var) {
        this.d = g71Var;
    }

    @Override
    public final qq1 a() {
        return new qq1(this.c, a(new a81.a() {
            @Override
            public final boolean a(List list) {
                return o41.d(this.a, list);
            }
        }));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x003a  */
    /* JADX WARN: Code duplicated, block: B:23:0x0040  */
    /* JADX WARN: Code duplicated, block: B:24:0x0043  */
    /* JADX WARN: Code duplicated, block: B:26:0x0049  */
    /* JADX WARN: Code duplicated, block: B:27:0x004c  */
    @Override
    public final z71 a(boolean z) {
        n92.a aVar;
        List<ig<?>> list = this.a;
        if (!(list instanceof Collection) || !list.isEmpty()) {
            Iterator<T> it = list.iterator();
            int i = 0;
            while (it.hasNext()) {
                if (((ig) it.next()).f() && (i = i + 1) < 0) {
                    defpackage.y71.t();
                }
            }
            if (i >= 2 && c() && !z) {
                aVar = n92.a.h;
            } else if (e()) {
                aVar = n92.a.k;
            } else if (d()) {
                aVar = n92.a.e;
            } else {
                aVar = n92.a.c;
            }
        } else if (e()) {
            aVar = n92.a.k;
        } else if (d()) {
            aVar = n92.a.e;
        } else {
            aVar = n92.a.c;
        }
        return new z71(aVar, this.c);
    }
}
