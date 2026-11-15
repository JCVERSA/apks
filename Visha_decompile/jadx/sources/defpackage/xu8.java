package defpackage;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.yandex.div.core.view2.reuse.b;
import com.yandex.div2.Div;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.Map;

public final class xu8 {
    public final HashMap a = new HashMap();
    public final Map b = new LinkedHashMap();

    public final void a(b bVar) {
        y45.j(bVar, "token");
        int iC = bVar.c();
        HashMap map = this.a;
        Integer numValueOf = Integer.valueOf(iC);
        Object linkedList = map.get(numValueOf);
        if (linkedList == null) {
            linkedList = new LinkedList();
            map.put(numValueOf, linkedList);
        }
        ((LinkedList) linkedList).add(bVar);
    }

    public final void b() {
        this.a.clear();
        this.b.clear();
    }

    public final View c(Div div) {
        b bVar;
        y45.j(div, TtmlNode.TAG_DIV);
        int iL = div.l();
        Map map = this.b;
        Integer numValueOf = Integer.valueOf(iL);
        Object obj = map.get(numValueOf);
        if (obj == null) {
            obj = 0;
            map.put(numValueOf, obj);
        }
        int iIntValue = ((Number) obj).intValue();
        LinkedList linkedList = (LinkedList) this.a.get(Integer.valueOf(iL));
        if (linkedList == null || (bVar = (b) i81.r0(linkedList, iIntValue)) == null) {
            return null;
        }
        this.b.put(Integer.valueOf(iL), Integer.valueOf(iIntValue + 1));
        ViewParent parent = bVar.i().getParent();
        ViewGroup viewGroup = parent instanceof ViewGroup ? (ViewGroup) parent : null;
        if (viewGroup != null) {
            viewGroup.removeView(bVar.i());
        }
        return bVar.i();
    }

    public final boolean d() {
        return this.a.isEmpty();
    }

    public final b e(int i) {
        LinkedList linkedList = (LinkedList) this.a.get(Integer.valueOf(i));
        if (linkedList == null || linkedList.isEmpty()) {
            return null;
        }
        b bVar = (b) linkedList.pop();
        Collection collection = (Collection) this.a.get(Integer.valueOf(i));
        if (collection == null || collection.isEmpty()) {
            this.a.remove(Integer.valueOf(i));
        }
        return bVar;
    }

    public final b f(Div div) {
        y45.j(div, TtmlNode.TAG_DIV);
        return e(div.l());
    }

    public final boolean g(b bVar) {
        Object next;
        y45.j(bVar, "token");
        LinkedList linkedList = (LinkedList) this.a.get(Integer.valueOf(bVar.c()));
        if (linkedList == null) {
            return false;
        }
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            next = it.next();
            if (y45.e(((b) next).i(), bVar.i())) {
                return ccb.a(linkedList).remove(next);
            }
        }
        next = null;
        return ccb.a(linkedList).remove(next);
    }
}
