package ae;

import com.google.zxing.qrcode.decoder.ErrorCorrectionLevel;
import com.google.zxing.qrcode.decoder.Mode;
import com.google.zxing.qrcode.decoder.g;

public final class b {

    private Mode f296a;

    private ErrorCorrectionLevel f297b;

    private g f298c;

    private int f299d = -1;

    private a f300e;

    public static boolean b(int i10) {
        return i10 >= 0 && i10 < 8;
    }

    public a a() {
        return this.f300e;
    }

    public void c(ErrorCorrectionLevel errorCorrectionLevel) {
        this.f297b = errorCorrectionLevel;
    }

    public void d(int i10) {
        this.f299d = i10;
    }

    public void e(a aVar) {
        this.f300e = aVar;
    }

    public void f(Mode mode) {
        this.f296a = mode;
    }

    public void g(g gVar) {
        this.f298c = gVar;
    }

    public String toString() {
        StringBuilder sb2 = new StringBuilder(200);
        sb2.append("<<\n");
        sb2.append(" mode: ");
        sb2.append(this.f296a);
        sb2.append("\n ecLevel: ");
        sb2.append(this.f297b);
        sb2.append("\n version: ");
        sb2.append(this.f298c);
        sb2.append("\n maskPattern: ");
        sb2.append(this.f299d);
        if (this.f300e == null) {
            sb2.append("\n matrix: null\n");
        } else {
            sb2.append("\n matrix:\n");
            sb2.append(this.f300e);
        }
        sb2.append(">>\n");
        return sb2.toString();
    }
}
