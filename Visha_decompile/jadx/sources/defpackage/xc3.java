package defpackage;

import com.lzy.okgo.model.Progress;
import com.yandex.div2.DivData;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

public class xc3 {
    public final Map a = new LinkedHashMap();

    public wc3 a(ei2 ei2Var, DivData divData) {
        wc3 wc3Var;
        y45.j(ei2Var, Progress.TAG);
        synchronized (this.a) {
            try {
                Map map = this.a;
                String strA = ei2Var.a();
                y45.i(strA, "tag.id");
                Object wc3Var2 = map.get(strA);
                if (wc3Var2 == null) {
                    wc3Var2 = new wc3();
                    map.put(strA, wc3Var2);
                }
                ((wc3) wc3Var2).b(divData);
                wc3Var = (wc3) wc3Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return wc3Var;
    }

    public wc3 b(ei2 ei2Var, DivData divData) {
        wc3 wc3Var;
        y45.j(ei2Var, Progress.TAG);
        synchronized (this.a) {
            wc3Var = (wc3) this.a.get(ei2Var.a());
            if (wc3Var != null) {
                wc3Var.b(divData);
            } else {
                wc3Var = null;
            }
        }
        return wc3Var;
    }

    public void c(List list) {
        y45.j(list, "tags");
        if (list.isEmpty()) {
            this.a.clear();
            return;
        }
        Iterator it = list.iterator();
        while (it.hasNext()) {
            this.a.remove(((ei2) it.next()).a());
        }
    }
}
