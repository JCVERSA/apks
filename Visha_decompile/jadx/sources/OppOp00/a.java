package OppOp00;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Base64;

public abstract class a {

    public interface InterfaceC0003a {
        void F(String str);
    }

    public static Bitmap a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        byte[] bArrDecode = Base64.decode(str, 0);
        return BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length);
    }
}
