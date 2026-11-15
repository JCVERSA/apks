package sd;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.FormatException;
import java.util.Map;

public final class r extends w {

    private final w f72027i = new g();

    private static com.google.zxing.j s(com.google.zxing.j jVar) throws FormatException {
        String strF = jVar.f();
        if (strF.charAt(0) != '0') {
            throw FormatException.getFormatInstance();
        }
        com.google.zxing.j jVar2 = new com.google.zxing.j(strF.substring(1), null, jVar.e(), BarcodeFormat.UPC_A);
        if (jVar.d() != null) {
            jVar2.g(jVar.d());
        }
        return jVar2;
    }

    @Override
    public com.google.zxing.j a(com.google.zxing.b bVar, Map map) {
        return s(this.f72027i.a(bVar, map));
    }

    @Override
    public com.google.zxing.j b(com.google.zxing.b bVar) {
        return s(this.f72027i.b(bVar));
    }

    @Override
    public com.google.zxing.j c(int i10, kd.a aVar, Map map) {
        return s(this.f72027i.c(i10, aVar, map));
    }

    @Override
    protected int l(kd.a aVar, int[] iArr, StringBuilder sb2) {
        return this.f72027i.l(aVar, iArr, sb2);
    }

    @Override
    public com.google.zxing.j m(int i10, kd.a aVar, int[] iArr, Map map) {
        return s(this.f72027i.m(i10, aVar, iArr, map));
    }

    @Override
    BarcodeFormat q() {
        return BarcodeFormat.UPC_A;
    }
}
