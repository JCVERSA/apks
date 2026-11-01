package h1;

import java.util.Comparator;

public final class e implements Comparator {

    public final int f1119a;

    public e(int i2) {
        this.f1119a = i2;
    }

    @Override
    public final int compare(Object obj, Object obj2) {
        switch (this.f1119a) {
            case 0:
                d0.d dVar = (d0.d) obj;
                d0.d dVar2 = (d0.d) obj2;
                if (!dVar.f()) {
                    if (dVar2.f()) {
                        return -1;
                    }
                    return dVar.f539a.compareToIgnoreCase(dVar2.f539a);
                }
                if (!dVar2.f()) {
                    return 1;
                }
                int iCompareToIgnoreCase = ((d0.f) dVar).f552k.f1108c.compareToIgnoreCase(((d0.f) dVar2).f552k.f1108c);
                return iCompareToIgnoreCase != 0 ? iCompareToIgnoreCase : dVar.f539a.compareToIgnoreCase(dVar2.f539a);
            default:
                return a0.c.g((String) obj, (String) obj2);
        }
    }
}
