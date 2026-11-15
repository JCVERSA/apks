package s4;

import java.util.Arrays;
import java.util.List;

public class c extends p {
    public c(List list) {
        super(e(list));
    }

    private static y4.a d(y4.a aVar) {
        t4.d dVar = (t4.d) aVar.f76135b;
        t4.d dVar2 = (t4.d) aVar.f76136c;
        if (dVar == null || dVar2 == null || dVar.e().length == dVar2.e().length) {
            return aVar;
        }
        float[] fArrF = f(dVar.e(), dVar2.e());
        return aVar.b(dVar.b(fArrF), dVar2.b(fArrF));
    }

    private static List e(List list) {
        for (int i10 = 0; i10 < list.size(); i10++) {
            list.set(i10, d((y4.a) list.get(i10)));
        }
        return list;
    }

    static float[] f(float[] fArr, float[] fArr2) {
        int length = fArr.length + fArr2.length;
        float[] fArr3 = new float[length];
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        System.arraycopy(fArr2, 0, fArr3, fArr.length, fArr2.length);
        Arrays.sort(fArr3);
        float f10 = Float.NaN;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            float f11 = fArr3[i11];
            if (f11 != f10) {
                fArr3[i10] = f11;
                i10++;
                f10 = fArr3[i11];
            }
        }
        return Arrays.copyOfRange(fArr3, 0, i10);
    }

    @Override
    public p4.a a() {
        return new p4.e(this.f71550a);
    }

    @Override
    public List b() {
        return super.b();
    }

    @Override
    public boolean c() {
        return super.c();
    }

    @Override
    public String toString() {
        return super.toString();
    }
}
