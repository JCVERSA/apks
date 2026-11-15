package jb;

import android.content.Context;
import com.google.firebase.abt.AbtException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class b {

    private final kc.b f63096a;

    private final String f63097b;

    private Integer f63098c = null;

    public b(Context context, kc.b bVar, String str) {
        this.f63096a = bVar;
        this.f63097b = str;
    }

    private void a(mb.a.c cVar) {
        ((mb.a) this.f63096a.get()).e(cVar);
    }

    private void b(List list) {
        ArrayDeque arrayDeque = new ArrayDeque(f());
        int i10 = i();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            while (arrayDeque.size() >= i10) {
                k(((mb.a.c) arrayDeque.pollFirst()).f66351b);
            }
            mb.a.c cVarF = aVar.f(this.f63097b);
            a(cVarF);
            arrayDeque.offer(cVarF);
        }
    }

    private static List c(List list) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(a.b((Map) it.next()));
        }
        return arrayList;
    }

    private boolean d(List list, a aVar) {
        String strC = aVar.c();
        String strE = aVar.e();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar2 = (a) it.next();
            if (aVar2.c().equals(strC) && aVar2.e().equals(strE)) {
                return true;
            }
        }
        return false;
    }

    private List f() {
        return ((mb.a) this.f63096a.get()).g(this.f63097b, "");
    }

    private ArrayList g(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!d(list2, aVar)) {
                arrayList.add(aVar);
            }
        }
        return arrayList;
    }

    private ArrayList h(List list, List list2) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            a aVar = (a) it.next();
            if (!d(list2, aVar)) {
                arrayList.add(aVar.f(this.f63097b));
            }
        }
        return arrayList;
    }

    private int i() {
        if (this.f63098c == null) {
            this.f63098c = Integer.valueOf(((mb.a) this.f63096a.get()).f(this.f63097b));
        }
        return this.f63098c.intValue();
    }

    private void k(String str) {
        ((mb.a) this.f63096a.get()).clearConditionalUserProperty(str, null, null);
    }

    private void l(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            k(((mb.a.c) it.next()).f66351b);
        }
    }

    private void n(List list) throws AbtException {
        if (list.isEmpty()) {
            j();
            return;
        }
        List listE = e();
        l(h(listE, list));
        b(g(list, listE));
    }

    private void o() throws AbtException {
        if (this.f63096a.get() == null) {
            throw new AbtException("The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies.");
        }
    }

    public List e() throws AbtException {
        o();
        List listF = f();
        ArrayList arrayList = new ArrayList();
        Iterator it = listF.iterator();
        while (it.hasNext()) {
            arrayList.add(a.a((mb.a.c) it.next()));
        }
        return arrayList;
    }

    public void j() throws AbtException {
        o();
        l(f());
    }

    public void m(List list) throws AbtException {
        o();
        if (list == null) {
            throw new IllegalArgumentException("The replacementExperiments list is null.");
        }
        n(c(list));
    }
}
