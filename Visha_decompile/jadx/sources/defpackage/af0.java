package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.transsion.utils.a;
import java.util.concurrent.ExecutionException;

public abstract class af0 {
    /* JADX WARN: Multi-variable type inference failed */
    public static final Bitmap a(Context context, String str, float f, float f2) {
        y45.j(context, "<this>");
        if (str == null || str.length() == 0) {
            return null;
        }
        try {
            return (Bitmap) Glide.with(context).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.NONE).submit(a.d(context, f), a.d(context, f2)).get();
        } catch (InterruptedException e) {
            String message = e.getMessage();
            if (message == null) {
                return null;
            }
            Log.e("BitmapExt", message);
            return null;
        } catch (ExecutionException e2) {
            String message2 = e2.getMessage();
            if (message2 == null) {
                return null;
            }
            Log.e("BitmapExt", message2);
            return null;
        }
    }
}
