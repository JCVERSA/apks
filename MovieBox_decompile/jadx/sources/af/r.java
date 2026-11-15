package af;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.YuvImage;
import java.io.ByteArrayOutputStream;

public class r {

    private n f338a;

    private int f339b;

    private int f340c;

    private Rect f341d;

    private int f342e = 1;

    private boolean f343f;

    public r(byte[] bArr, int i10, int i11, int i12, int i13) {
        this.f338a = new n(bArr, i10, i11);
        this.f340c = i13;
        this.f339b = i12;
        if (i10 * i11 <= bArr.length) {
            return;
        }
        throw new IllegalArgumentException("Image data does not match the resolution. " + i10 + "x" + i11 + " > " + bArr.length);
    }

    public com.google.zxing.h a() {
        n nVarA = this.f338a.h(this.f340c).a(this.f341d, this.f342e);
        return new com.google.zxing.h(nVarA.b(), nVarA.d(), nVarA.c(), 0, 0, nVarA.d(), nVarA.c(), false);
    }

    public Bitmap b(Rect rect, int i10) {
        if (rect == null) {
            rect = new Rect(0, 0, this.f338a.d(), this.f338a.c());
        } else if (c()) {
            rect = new Rect(rect.top, rect.left, rect.bottom, rect.right);
        }
        YuvImage yuvImage = new YuvImage(this.f338a.b(), this.f339b, this.f338a.d(), this.f338a.c(), null);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        yuvImage.compressToJpeg(rect, 90, byteArrayOutputStream);
        byte[] byteArray = byteArrayOutputStream.toByteArray();
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inSampleSize = i10;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(byteArray, 0, byteArray.length, options);
        if (this.f340c == 0) {
            return bitmapDecodeByteArray;
        }
        Matrix matrix = new Matrix();
        matrix.postRotate(this.f340c);
        return Bitmap.createBitmap(bitmapDecodeByteArray, 0, 0, bitmapDecodeByteArray.getWidth(), bitmapDecodeByteArray.getHeight(), matrix, false);
    }

    public boolean c() {
        return this.f340c % 180 != 0;
    }

    public void d(Rect rect) {
        this.f341d = rect;
    }

    public void e(boolean z10) {
        this.f343f = z10;
    }

    public com.google.zxing.k f(com.google.zxing.k kVar) {
        float fC = (kVar.c() * this.f342e) + this.f341d.left;
        float fD = (kVar.d() * this.f342e) + this.f341d.top;
        if (this.f343f) {
            fC = this.f338a.d() - fC;
        }
        return new com.google.zxing.k(fC, fD);
    }
}
