package com.google.android.material.internal;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class a {

    private final Map f28312a = new HashMap();

    private final Set f28313b = new HashSet();

    private b f28314c;

    private boolean f28315d;

    private boolean f28316e;

    class C0372a implements l.a {
        C0372a() {
        }

        @Override
        public void a(l lVar, boolean z10) {
            if (!z10) {
                a aVar = a.this;
                if (!aVar.s(lVar, aVar.f28316e)) {
                    return;
                }
            } else if (!a.this.g(lVar)) {
                return;
            }
            a.this.n();
        }
    }

    public interface b {
        void a(Set set);
    }

    public boolean g(l lVar) {
        int id2 = lVar.getId();
        if (this.f28313b.contains(Integer.valueOf(id2))) {
            return false;
        }
        l lVar2 = (l) this.f28312a.get(Integer.valueOf(k()));
        if (lVar2 != null) {
            s(lVar2, false);
        }
        boolean zAdd = this.f28313b.add(Integer.valueOf(id2));
        if (!lVar.isChecked()) {
            lVar.setChecked(true);
        }
        return zAdd;
    }

    public void n() {
        b bVar = this.f28314c;
        if (bVar != null) {
            bVar.a(i());
        }
    }

    public boolean s(l lVar, boolean z10) {
        int id2 = lVar.getId();
        if (!this.f28313b.contains(Integer.valueOf(id2))) {
            return false;
        }
        if (z10 && this.f28313b.size() == 1 && this.f28313b.contains(Integer.valueOf(id2))) {
            lVar.setChecked(true);
            return false;
        }
        boolean zRemove = this.f28313b.remove(Integer.valueOf(id2));
        if (lVar.isChecked()) {
            lVar.setChecked(false);
        }
        return zRemove;
    }

    public void e(l lVar) {
        this.f28312a.put(Integer.valueOf(lVar.getId()), lVar);
        if (lVar.isChecked()) {
            g(lVar);
        }
        lVar.setInternalOnCheckedChangeListener(new C0372a());
    }

    public void f(int i10) {
        l lVar = (l) this.f28312a.get(Integer.valueOf(i10));
        if (lVar != null && g(lVar)) {
            n();
        }
    }

    public void h() {
        boolean zIsEmpty = this.f28313b.isEmpty();
        Iterator it = this.f28312a.values().iterator();
        while (it.hasNext()) {
            s((l) it.next(), false);
        }
        if (zIsEmpty) {
            return;
        }
        n();
    }

    public Set i() {
        return new HashSet(this.f28313b);
    }

    public List j(ViewGroup viewGroup) {
        Set setI = i();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if ((childAt instanceof l) && setI.contains(Integer.valueOf(childAt.getId()))) {
                arrayList.add(Integer.valueOf(childAt.getId()));
            }
        }
        return arrayList;
    }

    public int k() {
        if (!this.f28315d || this.f28313b.isEmpty()) {
            return -1;
        }
        return ((Integer) this.f28313b.iterator().next()).intValue();
    }

    public boolean l() {
        return this.f28316e;
    }

    public boolean m() {
        return this.f28315d;
    }

    public void o(l lVar) {
        lVar.setInternalOnCheckedChangeListener(null);
        this.f28312a.remove(Integer.valueOf(lVar.getId()));
        this.f28313b.remove(Integer.valueOf(lVar.getId()));
    }

    public void p(b bVar) {
        this.f28314c = bVar;
    }

    public void q(boolean z10) {
        this.f28316e = z10;
    }

    public void r(boolean z10) {
        if (this.f28315d != z10) {
            this.f28315d = z10;
            h();
        }
    }
}
