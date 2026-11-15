package defpackage;

import com.mgadplus.d.a;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class vad {
    public Executor a;
    public final Map b = new HashMap();

    public vad(Executor executor) {
        this.a = executor;
    }

    public r7d a(w5d w5dVar, r7d r7dVar) {
        return b(Collections.singletonList(w5dVar), r7dVar);
    }

    public r7d b(List list, r7d r7dVar) {
        a aVar = new a();
        if (aVar.g(this.a, list) && r7dVar != null) {
            this.b.put(r7dVar, new WeakReference(aVar));
        }
        return r7dVar;
    }

    public synchronized boolean c(r7d r7dVar) {
        WeakReference weakReference;
        if (r7dVar != null) {
            if (this.b.containsKey(r7dVar) && (weakReference = (WeakReference) this.b.get(r7dVar)) != null) {
                if (weakReference.get() != null) {
                    ((a) weakReference.get()).j();
                    return true;
                }
                this.b.remove(r7dVar);
            }
        }
        return false;
    }
}
