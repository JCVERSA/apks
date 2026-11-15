package defpackage;

import android.graphics.BitmapFactory;
import android.text.TextUtils;
import java.io.File;

public abstract class i18 {
    public static boolean a(String str) {
        return !TextUtils.isEmpty(str) && new File(str).exists();
    }

    public static boolean b(String str) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        options.inSampleSize = 2;
        BitmapFactory.decodeFile(str, options);
        return options.outWidth > 0 && options.outHeight > 0;
    }
}
