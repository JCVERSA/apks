package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.transsion.glide.load.model.LocalMediaLoadInfo;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.security.MessageDigest;
import java.util.Objects;

public abstract class z7c {
    public static int a = -1;
    public static int b = -1;

    public static class a implements Key {
        public String a;
        public long b;

        public a(String str, long j) {
            this.a = str;
            this.b = j;
        }

        @Override
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            if (this.b != aVar.b) {
                return false;
            }
            return Objects.equals(this.a, aVar.a);
        }

        @Override
        public int hashCode() {
            String str = this.a;
            int iHashCode = str != null ? str.hashCode() : 0;
            long j = this.b;
            return (iHashCode * 31) + ((int) (j ^ (j >>> 32)));
        }

        public String toString() {
            return "VideoThumbCacheKey{path=" + this.a + "  timeStamp=" + this.b + '}';
        }

        @Override
        public void updateDiskCacheKey(MessageDigest messageDigest) {
            messageDigest.update(toString().getBytes(Key.CHARSET));
        }
    }

    public static void a(Context context, Uri uri, long j, Drawable drawable, ImageView imageView) {
        b(context, uri, j, drawable, imageView, true);
    }

    public static void b(Context context, Uri uri, long j, Drawable drawable, ImageView imageView, boolean z) {
        try {
            if (a == -1) {
                a = (com.transsion.utils.a.m(context) * 160) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            if (b == -1) {
                b = (com.transsion.utils.a.m(context) * 90) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            String string = "";
            if (z) {
                RequestBuilder requestBuilderOverride = Glide.with(context).asBitmap().load(uri == null ? "" : uri.toString()).override(a, b);
                if (uri != null) {
                    string = uri.toString();
                }
                requestBuilderOverride.signature(new a(string, j)).placeholder(drawable).into(imageView);
                return;
            }
            RequestBuilder<Bitmap> requestBuilderLoad = Glide.with(context).asBitmap().load(uri == null ? "" : uri.toString());
            if (uri != null) {
                string = uri.toString();
            }
            requestBuilderLoad.signature(new a(string, j)).placeholder(drawable).into(imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void c(Context context, LocalMediaLoadInfo localMediaLoadInfo, Drawable drawable, ImageView imageView) {
        d(context, localMediaLoadInfo, drawable, imageView, true);
    }

    public static void d(Context context, LocalMediaLoadInfo localMediaLoadInfo, Drawable drawable, ImageView imageView, boolean z) {
        try {
            if (a == -1) {
                a = (com.transsion.utils.a.m(context) * 160) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            if (b == -1) {
                b = (com.transsion.utils.a.m(context) * 90) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            if (!z) {
                Glide.with(context.getApplicationContext()).asBitmap().load((Object) localMediaLoadInfo).placeholder(drawable).into(imageView);
                return;
            }
            localMediaLoadInfo.setWidth(a);
            localMediaLoadInfo.setHeight(b);
            Glide.with(context.getApplicationContext()).asBitmap().load((Object) localMediaLoadInfo).override(a, b).placeholder(drawable).into(imageView);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void e(Context context, Uri uri, long j, Drawable drawable, ImageView imageView, boolean z) {
        if (com.blankj.utilcode.util.a.g(context)) {
            if (a == -1) {
                a = (com.transsion.utils.a.m(context) * 160) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            if (b == -1) {
                b = (com.transsion.utils.a.m(context) * 90) / TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL;
            }
            if (z) {
                Glide.with(context).asBitmap().load(uri == null ? "" : uri.toString()).override(a, b).signature(new a(uri != null ? uri.toString() : "", j)).placeholder(drawable).diskCacheStrategy(DiskCacheStrategy.RESOURCE).into(imageView);
            } else {
                Glide.with(context).asBitmap().load(uri).signature(new a(uri != null ? uri.toString() : "", j)).placeholder(drawable).diskCacheStrategy(DiskCacheStrategy.RESOURCE).into(imageView);
            }
        }
    }
}
