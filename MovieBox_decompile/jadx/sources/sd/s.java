package sd;

import com.google.zxing.BarcodeFormat;
import java.util.Map;

public final class s implements com.google.zxing.m {

    private final h f72028a = new h();

    @Override
    public kd.b a(String str, BarcodeFormat barcodeFormat, int i10, int i11, Map map) {
        if (barcodeFormat != BarcodeFormat.UPC_A) {
            throw new IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        return this.f72028a.a('0' + str, BarcodeFormat.EAN_13, i10, i11, map);
    }
}
