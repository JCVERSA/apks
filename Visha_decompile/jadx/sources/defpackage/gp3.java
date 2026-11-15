package defpackage;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import com.blankj.utilcode.util.LogUtils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.just.agentweb.DefaultWebClient;
import com.transsion.playercommon.core.MainApp;

public class gp3 {

    public class a extends SimpleTarget {
        public final b b;

        public a(b bVar) {
            this.b = bVar;
        }

        @Override
        public void onResourceReady(Bitmap bitmap, Transition transition) {
            LogUtils.j("FaviconsServiceManager", "onResourceReady,width:" + bitmap.getWidth() + " height:" + bitmap.getHeight());
            b bVar = this.b;
            if (bVar != null) {
                bVar.a(bitmap);
            }
        }

        @Override
        public void onLoadFailed(Drawable drawable) {
            LogUtils.j("FaviconsServiceManager", "onLoadFailed:" + drawable);
            b bVar = this.b;
            if (bVar != null) {
                bVar.b();
            }
        }
    }

    public interface b {
        void a(Bitmap bitmap);

        void b();
    }

    public static final class c {
        public static final gp3 a = new gp3();
    }

    public static gp3 b() {
        return c.a;
    }

    public void a(String str, b bVar) {
        if (r0a.g(str)) {
            Log.w("FaviconsServiceManager", "getFavicons: url is empty");
            return;
        }
        if (!str.contains(DefaultWebClient.HTTP_SCHEME) && !str.contains("https://")) {
            str = DefaultWebClient.HTTP_SCHEME + str;
        }
        Uri uri = Uri.parse(str);
        if (uri == null) {
            LogUtils.j("FaviconsServiceManager", "onReceivedIcon:uri is null");
            return;
        }
        String str2 = String.format("https://www.google.com/s2/favicons?domain=%s&sz=128", uri.getHost());
        LogUtils.j("FaviconsServiceManager", "load favicon:" + str2 + " url:" + str);
        Glide.with(MainApp.f()).asBitmap().load2(str2).diskCacheStrategy(DiskCacheStrategy.DATA).into(new a(bVar));
    }
}
