package af;

import android.graphics.Bitmap;
import androidx.core.view.ViewCompat;
import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;

public class b {
    public Bitmap a(kd.b bVar) {
        int iN = bVar.n();
        int iK = bVar.k();
        int[] iArr = new int[iN * iK];
        for (int i10 = 0; i10 < iK; i10++) {
            int i11 = i10 * iN;
            for (int i12 = 0; i12 < iN; i12++) {
                iArr[i11 + i12] = bVar.h(i12, i10) ? ViewCompat.MEASURED_STATE_MASK : -1;
            }
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iN, iK, Bitmap.Config.ARGB_8888);
        bitmapCreateBitmap.setPixels(iArr, 0, iN, 0, 0, iN, iK);
        return bitmapCreateBitmap;
    }

    public kd.b b(String str, BarcodeFormat barcodeFormat, int i10, int i11) throws WriterException {
        try {
            return new com.google.zxing.g().b(str, barcodeFormat, i10, i11);
        } catch (WriterException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new WriterException(e11);
        }
    }
}
