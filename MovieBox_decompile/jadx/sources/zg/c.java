package zg;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final a f76783a = new a(null);

    public static final class a {

        public static final class C0957a extends CustomTarget {

            final Function1 f76784a;

            C0957a(Function1 function1) {
                this.f76784a = function1;
            }

            @Override
            public void onLoadCleared(Drawable drawable) {
                this.f76784a.invoke(null);
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "loadAsBitmap onFailure", false, 4, null);
            }

            @Override
            public void onResourceReady(Bitmap resource, Transition transition) {
                Intrinsics.h(resource, "resource");
                this.f76784a.invoke(resource);
                wf.a.C0922a.f(wf.a.f74274a, "ImageHelper", "loadAsBitmap onSuccess", false, 4, null);
            }
        }

        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final Bitmap a(ImageView imageView) {
            Intrinsics.h(imageView, "imageView");
            Drawable drawable = imageView.getDrawable();
            if (drawable instanceof BitmapDrawable) {
                Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
                Intrinsics.g(bitmap, "getBitmap(...)");
                return bitmap;
            }
            if (drawable == null) {
                return null;
            }
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
                intrinsicWidth = imageView.getWidth();
                intrinsicHeight = imageView.getHeight();
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, intrinsicHeight, Bitmap.Config.ARGB_8888);
            Intrinsics.g(bitmapCreateBitmap, "createBitmap(...)");
            Canvas canvas = new Canvas(bitmapCreateBitmap);
            drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            drawable.draw(canvas);
            return bitmapCreateBitmap;
        }

        public final void b(String url, Function1 callback) {
            Intrinsics.h(url, "url");
            Intrinsics.h(callback, "callback");
            Glide.with(Utils.a()).asBitmap().diskCacheStrategy(DiskCacheStrategy.DATA).load2(url).into(new C0957a(callback));
        }

        private a() {
        }
    }
}
