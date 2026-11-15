package qo;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import java.io.File;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class h {

    public static final a f69927a = new a(null);

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(Context context, String str, b callback) {
            Intrinsics.h(context, "context");
            Intrinsics.h(callback, "callback");
            try {
                Bitmap bitmap = (Bitmap) Glide.with(context).asBitmap().load2(str).diskCacheStrategy(DiskCacheStrategy.ALL).submit(Integer.MIN_VALUE, Integer.MIN_VALUE).get();
                File cacheDir = context.getCacheDir();
                wg.a.C0924a c0924a = wg.a.f74277a;
                if (str == null) {
                    str = "";
                }
                File file = new File(cacheDir, "pic" + c0924a.a(str) + ".jpg");
                if (!file.exists()) {
                    qo.a.c(bitmap, file, 100);
                }
                String absolutePath = file.getAbsolutePath();
                Intrinsics.g(absolutePath, "getAbsolutePath(...)");
                callback.a(absolutePath);
            } catch (Exception unused) {
                callback.a("");
            }
        }

        private a() {
        }
    }

    public interface b {
        void a(String str);
    }
}
