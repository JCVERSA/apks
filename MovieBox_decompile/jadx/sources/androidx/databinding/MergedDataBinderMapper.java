package androidx.databinding;

import android.util.Log;
import android.view.View;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

public class MergedDataBinderMapper extends e {

    private Set f8221a = new HashSet();

    private List f8222b = new CopyOnWriteArrayList();

    private List f8223c = new CopyOnWriteArrayList();

    private boolean e() {
        boolean z10 = false;
        for (String str : this.f8223c) {
            try {
                Class<?> cls = Class.forName(str);
                if (e.class.isAssignableFrom(cls)) {
                    d((e) cls.newInstance());
                    this.f8223c.remove(str);
                    z10 = true;
                }
            } catch (ClassNotFoundException unused) {
            } catch (IllegalAccessException e10) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e10);
            } catch (InstantiationException e11) {
                Log.e("MergedDataBinderMapper", "unable to add feature mapper for " + str, e11);
            }
        }
        return z10;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        Iterator it = this.f8222b.iterator();
        while (it.hasNext()) {
            ((e) it.next()).b(fVar, view, i10);
        }
        if (e()) {
            b(fVar, view, i10);
        }
        return null;
    }

    @Override
    public int c(String str) {
        Iterator it = this.f8222b.iterator();
        while (it.hasNext()) {
            int iC = ((e) it.next()).c(str);
            if (iC != 0) {
                return iC;
            }
        }
        if (e()) {
            return c(str);
        }
        return 0;
    }

    public void d(e eVar) {
        if (this.f8221a.add(eVar.getClass())) {
            this.f8222b.add(eVar);
            Iterator it = eVar.a().iterator();
            while (it.hasNext()) {
                d((e) it.next());
            }
        }
    }
}
