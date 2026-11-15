package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ReaderException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;

public final class o extends p {

    private static final w[] f72024b = new w[0];

    private final w[] f72025a;

    public o(Map map) {
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            if (collection.contains(BarcodeFormat.EAN_13)) {
                arrayList.add(new g());
            } else if (collection.contains(BarcodeFormat.UPC_A)) {
                arrayList.add(new r());
            }
            if (collection.contains(BarcodeFormat.EAN_8)) {
                arrayList.add(new i());
            }
            if (collection.contains(BarcodeFormat.UPC_E)) {
                arrayList.add(new y());
            }
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new g());
            arrayList.add(new i());
            arrayList.add(new y());
        }
        this.f72025a = (w[]) arrayList.toArray(f72024b);
    }

    @Override
    public com.google.zxing.j c(int i10, kd.a aVar, Map map) throws NotFoundException {
        int[] iArrP = w.p(aVar);
        for (w wVar : this.f72025a) {
            try {
                com.google.zxing.j jVarM = wVar.m(i10, aVar, iArrP, map);
                boolean z10 = jVarM.b() == BarcodeFormat.EAN_13 && jVarM.f().charAt(0) == '0';
                Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
                boolean z11 = collection == null || collection.contains(BarcodeFormat.UPC_A);
                if (!z10 || !z11) {
                    return jVarM;
                }
                com.google.zxing.j jVar = new com.google.zxing.j(jVarM.f().substring(1), jVarM.c(), jVarM.e(), BarcodeFormat.UPC_A);
                jVar.g(jVarM.d());
                return jVar;
            } catch (ReaderException unused) {
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override
    public void reset() {
        for (w wVar : this.f72025a) {
            wVar.reset();
        }
    }
}
