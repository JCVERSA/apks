package p4;

import java.util.List;

public class e extends g {

    private final t4.d f69029i;

    public e(List list) {
        super(list);
        int iMax = 0;
        for (int i10 = 0; i10 < list.size(); i10++) {
            t4.d dVar = (t4.d) ((y4.a) list.get(i10)).f76135b;
            if (dVar != null) {
                iMax = Math.max(iMax, dVar.f());
            }
        }
        this.f69029i = new t4.d(new float[iMax], new int[iMax]);
    }

    @Override
    public t4.d i(y4.a aVar, float f10) {
        this.f69029i.g((t4.d) aVar.f76135b, (t4.d) aVar.f76136c, f10);
        return this.f69029i;
    }
}
