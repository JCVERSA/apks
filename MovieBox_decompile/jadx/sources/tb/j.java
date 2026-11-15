package tb;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class j {

    private final List f72658a = new ArrayList();

    private final int f72659b;

    public j(int i10) {
        this.f72659b = i10;
    }

    public List a() {
        List listB = b();
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < listB.size(); i10++) {
            arrayList.add(((i) listB.get(i10)).h());
        }
        return arrayList;
    }

    public synchronized List b() {
        return Collections.unmodifiableList(new ArrayList(this.f72658a));
    }

    public synchronized boolean c(List list) {
        this.f72658a.clear();
        if (list.size() <= this.f72659b) {
            return this.f72658a.addAll(list);
        }
        qb.g.f().k("Ignored 0 entries when adding rollout assignments. Maximum allowable: " + this.f72659b);
        return this.f72658a.addAll(list.subList(0, this.f72659b));
    }
}
