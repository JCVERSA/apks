package defpackage;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public class sud {
    public final ReferenceQueue a = new ReferenceQueue();
    public final List b = new LinkedList();

    public List a() {
        ArrayList arrayList = new ArrayList();
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            Object obj = ((Reference) it.next()).get();
            if (obj != null) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    public boolean b(Object obj) {
        if (obj == null) {
            return false;
        }
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            if (obj == ((Reference) it.next()).get()) {
                return true;
            }
        }
        return this.b.add(new WeakReference(obj));
    }

    public void c() {
        while (true) {
            Reference referencePoll = this.a.poll();
            if (referencePoll == null) {
                return;
            } else {
                this.b.remove(referencePoll);
            }
        }
    }

    public void d() {
        c();
        this.b.clear();
    }
}
