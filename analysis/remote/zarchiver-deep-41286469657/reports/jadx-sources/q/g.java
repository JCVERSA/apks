package q;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;

public final class g {

    public final HashMap f1352a = new HashMap();

    public static class a {

        public final l f1353a;

        public final j f1354b;

        public final d f1355c;

        public a(l lVar, j jVar, d dVar) {
            this.f1353a = lVar;
            this.f1354b = jVar;
            this.f1355c = dVar;
        }
    }

    public final List<a> a(long j2) {
        p.b bVar;
        short s2 = (short) (255 & (j2 >> 16));
        int i2 = (int) (65535 & j2);
        f fVar = (f) this.f1352a.get(Short.valueOf((short) ((j2 >> 24) & 255)));
        if (fVar == null) {
            return Collections.emptyList();
        }
        l lVar = (l) fVar.f1350d.get(Short.valueOf(s2));
        List<j> list = (List) fVar.f1351e.get(Short.valueOf(s2));
        if (lVar == null || list == null) {
            return Collections.emptyList();
        }
        if (!(i2 < lVar.f1368a.length)) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (j jVar : list) {
            d dVarA = jVar.a(i2);
            if (dVarA != null && (bVar = dVarA.f1343d) != null && (!(bVar instanceof p.b.i) || j2 != (((long) ((p.b.i) bVar).f1313a) & 4294967295L))) {
                arrayList.add(new a(lVar, jVar, dVarA));
            }
        }
        return arrayList;
    }
}
