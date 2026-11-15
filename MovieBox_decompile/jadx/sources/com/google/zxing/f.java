package com.google.zxing;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Map;
import sd.n;

public final class f implements i {

    private static final i[] f32076c = new i[0];

    private Map f32077a;

    private i[] f32078b;

    private j c(b bVar) throws NotFoundException {
        i[] iVarArr = this.f32078b;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                if (Thread.currentThread().isInterrupted()) {
                    throw NotFoundException.getNotFoundInstance();
                }
                try {
                    return iVar.a(bVar, this.f32077a);
                } catch (ReaderException unused) {
                }
            }
            Map map = this.f32077a;
            if (map != null && map.containsKey(DecodeHintType.ALSO_INVERTED)) {
                bVar.a().e();
                for (i iVar2 : this.f32078b) {
                    if (Thread.currentThread().isInterrupted()) {
                        throw NotFoundException.getNotFoundInstance();
                    }
                    try {
                        return iVar2.a(bVar, this.f32077a);
                    } catch (ReaderException unused2) {
                    }
                }
            }
        }
        throw NotFoundException.getNotFoundInstance();
    }

    @Override
    public j a(b bVar, Map map) {
        e(map);
        return c(bVar);
    }

    @Override
    public j b(b bVar) {
        e(null);
        return c(bVar);
    }

    public j d(b bVar) {
        if (this.f32078b == null) {
            e(null);
        }
        return c(bVar);
    }

    public void e(Map map) {
        this.f32077a = map;
        boolean z10 = map != null && map.containsKey(DecodeHintType.TRY_HARDER);
        Collection collection = map == null ? null : (Collection) map.get(DecodeHintType.POSSIBLE_FORMATS);
        ArrayList arrayList = new ArrayList();
        if (collection != null) {
            boolean z11 = collection.contains(BarcodeFormat.UPC_A) || collection.contains(BarcodeFormat.UPC_E) || collection.contains(BarcodeFormat.EAN_13) || collection.contains(BarcodeFormat.EAN_8) || collection.contains(BarcodeFormat.CODABAR) || collection.contains(BarcodeFormat.CODE_39) || collection.contains(BarcodeFormat.CODE_93) || collection.contains(BarcodeFormat.CODE_128) || collection.contains(BarcodeFormat.ITF) || collection.contains(BarcodeFormat.RSS_14) || collection.contains(BarcodeFormat.RSS_EXPANDED);
            if (z11 && !z10) {
                arrayList.add(new n(map));
            }
            if (collection.contains(BarcodeFormat.QR_CODE)) {
                arrayList.add(new zd.a());
            }
            if (collection.contains(BarcodeFormat.DATA_MATRIX)) {
                arrayList.add(new nd.a());
            }
            if (collection.contains(BarcodeFormat.AZTEC)) {
                arrayList.add(new gd.b());
            }
            if (collection.contains(BarcodeFormat.PDF_417)) {
                arrayList.add(new vd.b());
            }
            if (collection.contains(BarcodeFormat.MAXICODE)) {
                arrayList.add(new qd.a());
            }
            if (z11 && z10) {
                arrayList.add(new n(map));
            }
        }
        if (arrayList.isEmpty()) {
            if (!z10) {
                arrayList.add(new n(map));
            }
            arrayList.add(new zd.a());
            arrayList.add(new nd.a());
            arrayList.add(new gd.b());
            arrayList.add(new vd.b());
            arrayList.add(new qd.a());
            if (z10) {
                arrayList.add(new n(map));
            }
        }
        this.f32078b = (i[]) arrayList.toArray(f32076c);
    }

    @Override
    public void reset() {
        i[] iVarArr = this.f32078b;
        if (iVarArr != null) {
            for (i iVar : iVarArr) {
                iVar.reset();
            }
        }
    }
}
