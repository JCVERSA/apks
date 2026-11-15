package com.yandex.div.core.view2.reuse;

import android.view.View;
import android.view.ViewGroup;
import com.yandex.div.core.state.DivStatePath;
import com.yandex.div.core.view2.Div2View;
import com.yandex.div.core.view2.divs.BaseDivViewExtensionsKt;
import com.yandex.div2.Div;
import com.yandex.div2.DivData;
import defpackage.bh2;
import defpackage.hh2;
import defpackage.i81;
import defpackage.no8;
import defpackage.o07;
import defpackage.oj3;
import defpackage.rg2;
import defpackage.xu8;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class RebindTask {
    public static final a m = new a(null);
    public final Div2View a;
    public final rg2 b;
    public final oj3 c;
    public final oj3 d;
    public final com.yandex.div.core.view2.reuse.a e;
    public final Set f;
    public final List g;
    public final List h;
    public final List i;
    public final Map j;
    public boolean k;
    public final xu8 l;

    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0000\u0018\u00002\u00060\u0001j\u0002`\u0002B\u0011\u0012\n\u0010\u0003\u001a\u0006\u0012\u0002\b\u00030\u0004¢\u0006\u0002\u0010\u0005R\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\t¨\u0006\n"}, d2 = {"Lcom/yandex/div/core/view2/reuse/RebindTask$UnsupportedElementException;", "Ljava/lang/IllegalArgumentException;", "Lkotlin/IllegalArgumentException;", "type", "Ljava/lang/Class;", "(Ljava/lang/Class;)V", "message", "", "getMessage", "()Ljava/lang/String;", "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class UnsupportedElementException extends IllegalArgumentException {
        private final String message;

        public UnsupportedElementException(Class<?> cls) {
            y45.j(cls, "type");
            this.message = cls + " is unsupported by complex rebind";
        }

        @Override
        public String getMessage() {
            return this.message;
        }
    }

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    public RebindTask(Div2View div2View, rg2 rg2Var, oj3 oj3Var, oj3 oj3Var2, com.yandex.div.core.view2.reuse.a aVar) {
        y45.j(div2View, "div2View");
        y45.j(rg2Var, "divBinder");
        y45.j(oj3Var, "oldResolver");
        y45.j(oj3Var2, "newResolver");
        y45.j(aVar, "reporter");
        this.a = div2View;
        this.b = rg2Var;
        this.c = oj3Var;
        this.d = oj3Var2;
        this.e = aVar;
        this.f = new LinkedHashSet();
        this.g = new ArrayList();
        this.h = new ArrayList();
        this.i = new ArrayList();
        this.j = new LinkedHashMap();
        this.l = new xu8();
    }

    public final boolean a(DivData divData, DivData divData2, ViewGroup viewGroup) {
        Div div;
        Div div2;
        DivData.State stateStateToBind = this.a.stateToBind(divData);
        if (stateStateToBind == null || (div = stateStateToBind.a) == null) {
            this.e.s();
            return false;
        }
        b bVar = new b(bh2.t(div, this.c), 0, viewGroup, null);
        DivData.State stateStateToBind2 = this.a.stateToBind(divData2);
        if (stateStateToBind2 == null || (div2 = stateStateToBind2.a) == null) {
            this.e.s();
            return false;
        }
        o07 o07Var = new o07(bh2.t(div2, this.d), 0, null);
        if (bVar.e(o07Var)) {
            e(bVar, o07Var);
        } else {
            c(bVar);
            d(o07Var);
        }
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            b bVarG = ((o07) it.next()).g();
            if (bVarG == null) {
                this.e.w();
                return false;
            }
            this.l.g(bVarG);
            this.f.add(bVarG);
        }
        return true;
    }

    public final void b() {
        this.k = false;
        this.l.b();
        this.f.clear();
        this.h.clear();
        this.i.clear();
    }

    public final void c(b bVar) {
        String id = bVar.b().b().getId();
        if (id != null) {
            this.j.put(id, bVar);
        } else {
            this.h.add(bVar);
        }
        Iterator it = b.g(bVar, null, 1, null).iterator();
        while (it.hasNext()) {
            c((b) it.next());
        }
    }

    public final void d(o07 o07Var) {
        Object next;
        Iterator it = this.h.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!((b) next).e(o07Var));
        b bVar = (b) next;
        if (bVar != null) {
            this.h.remove(bVar);
            e(bVar, o07Var);
            return;
        }
        String id = o07Var.b().b().getId();
        b bVar2 = id != null ? (b) this.j.get(id) : null;
        if (id == null || bVar2 == null || !y45.e(bVar2.b().getClass(), o07Var.b().getClass()) || !hh2.f(hh2.a, bVar2.b().b(), o07Var.b().b(), this.c, this.d, null, 16, null)) {
            this.i.add(o07Var);
        } else {
            this.j.remove(id);
            this.g.add(no8.a(bVar2, o07Var));
        }
        Iterator it2 = o07Var.f().iterator();
        while (it2.hasNext()) {
            d((o07) it2.next());
        }
    }

    public final void e(b bVar, o07 o07Var) {
        Object next;
        b bVarA = no8.a(bVar, o07Var);
        o07Var.i(bVarA);
        List listE1 = i81.e1(o07Var.f());
        ArrayList arrayList = new ArrayList();
        for (b bVar2 : bVar.f(bVarA)) {
            Iterator it = listE1.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!((o07) next).e(bVar2));
            o07 o07Var2 = (o07) next;
            if (o07Var2 != null) {
                e(bVar2, o07Var2);
                listE1.remove(o07Var2);
            } else {
                arrayList.add(bVar2);
            }
        }
        if (listE1.size() != arrayList.size()) {
            this.f.add(bVarA);
        } else {
            this.l.a(bVarA);
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            c((b) it2.next());
        }
        Iterator it3 = listE1.iterator();
        while (it3.hasNext()) {
            d((o07) it3.next());
        }
    }

    public final boolean f() {
        return this.k;
    }

    public final xu8 g() {
        return this.l;
    }

    public final boolean h(DivData divData, DivData divData2, ViewGroup viewGroup, DivStatePath divStatePath) {
        boolean zA;
        y45.j(divData, "oldDivData");
        y45.j(divData2, "newDivData");
        y45.j(viewGroup, "rootView");
        y45.j(divStatePath, "path");
        b();
        this.k = true;
        try {
            zA = a(divData, divData2, viewGroup);
        } catch (UnsupportedElementException e) {
            this.e.t(e);
            zA = false;
        }
        if (zA) {
            return i(divStatePath);
        }
        return false;
    }

    public final boolean i(DivStatePath divStatePath) {
        if (this.f.isEmpty() && this.l.d()) {
            this.e.n();
            return false;
        }
        for (b bVar : this.h) {
            j(bVar.b(), bVar.i());
            this.a.unbindViewFromDiv$div_release(bVar.i());
        }
        for (b bVar2 : this.j.values()) {
            j(bVar2.b(), bVar2.i());
            this.a.unbindViewFromDiv$div_release(bVar2.i());
        }
        for (b bVar3 : this.f) {
            if (!i81.d0(this.f, bVar3.h())) {
                com.yandex.div.core.view2.a aVarZ = BaseDivViewExtensionsKt.Z(bVar3.i());
                if (aVarZ == null) {
                    aVarZ = this.a.getBindingContext();
                }
                this.b.b(aVarZ, bVar3.i(), bVar3.d().c(), divStatePath);
            }
        }
        for (b bVar4 : this.g) {
            if (!i81.d0(this.f, bVar4.h())) {
                com.yandex.div.core.view2.a aVarZ2 = BaseDivViewExtensionsKt.Z(bVar4.i());
                if (aVarZ2 == null) {
                    aVarZ2 = this.a.getBindingContext();
                }
                this.b.b(aVarZ2, bVar4.i(), bVar4.d().c(), divStatePath);
            }
        }
        b();
        this.e.b();
        return true;
    }

    public final void j(Div div, View view) {
        if (div instanceof Div.c ? true : div instanceof Div.r) {
            this.a.getReleaseViewVisitor$div_release().b(view);
        }
    }
}
