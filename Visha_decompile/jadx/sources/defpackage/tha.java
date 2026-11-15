package defpackage;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import java.util.concurrent.ExecutionException;

public abstract class tha {

    public interface a {
        Bitmap a(BitmapFactory.Options options);
    }

    public static int c(Bitmap.Config config) {
        if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
            return 2;
        }
        return config == Bitmap.Config.ALPHA_8 ? 1 : 4;
    }

    public static int d(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        int i5 = 1;
        if (i > 0 && i2 > 0 && i3 > 0 && i4 > 0 && (i3 > i || i4 > i2)) {
            do {
                if (i3 / i5 <= i && i4 / i5 <= i2) {
                    break;
                }
                i5 *= 2;
            } while (i5 < 1024);
        }
        return i5;
    }

    public static Bitmap e(String str, int i, int i2) {
        return f(str, i, i2, Bitmap.Config.RGB_565);
    }

    public static Bitmap f(final String str, int i, int i2, Bitmap.Config config) {
        if (!TextUtils.isEmpty(str) && i > 0 && i2 > 0) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(str, options);
            if (options.outWidth > 0 && options.outHeight > 0) {
                return h(options, i, i2, config, new a() {
                    @Override
                    public final Bitmap a(BitmapFactory.Options options2) {
                        return BitmapFactory.decodeFile(str, options2);
                    }
                });
            }
        }
        return null;
    }

    public static Bitmap g(final Resources resources, final int i, int i2, int i3, Bitmap.Config config) {
        if (resources != null && i != 0 && i2 > 0 && i3 > 0) {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeResource(resources, i, options);
            if (options.outWidth > 0 && options.outHeight > 0) {
                return h(options, i2, i3, config, new a() {
                    @Override
                    public final Bitmap a(BitmapFactory.Options options2) {
                        return BitmapFactory.decodeResource(resources, i, options2);
                    }
                });
            }
        }
        return null;
    }

    public static Bitmap h(BitmapFactory.Options options, int i, int i2, Bitmap.Config config, a aVar) {
        Bitmap bitmapA;
        if (config == null) {
            config = Bitmap.Config.ARGB_8888;
        }
        long jL = l(i, i2, config);
        int iD = d(options, i, i2);
        BitmapFactory.Options options2 = new BitmapFactory.Options();
        options2.inJustDecodeBounds = false;
        options2.inPreferredConfig = config;
        for (int i3 = 0; i3 < 8; i3++) {
            options2.inSampleSize = iD;
            try {
                bitmapA = aVar.a(options2);
            } catch (OutOfMemoryError e) {
                Log.e("ThemeBitmapUtils", "decode OOM sample=" + iD, e);
                bitmapA = null;
            }
            if (bitmapA != null) {
                if (bitmapA.getByteCount() <= jL) {
                    return bitmapA;
                }
                Log.w("ThemeBitmapUtils", "bitmap too large bytes=" + bitmapA.getByteCount() + " max=" + jL + " sample=" + iD);
                bitmapA.recycle();
                iD *= 2;
                if (iD >= 1024) {
                    break;
                }
            } else {
                iD *= 2;
            }
        }
        return null;
    }

    public static Bitmap k(Context context, String str, int i, int i2) {
        if (context != null && !TextUtils.isEmpty(str) && i > 0 && i2 > 0) {
            try {
                return Glide.with(context).asBitmap().load2(str).apply((BaseRequestOptions<?>) new RequestOptions().override(i, i2).format(DecodeFormat.PREFER_RGB_565).diskCacheStrategy(DiskCacheStrategy.RESOURCE)).submit(i, i2).get();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (ExecutionException unused2) {
                return e(str, i, i2);
            }
        }
        return null;
    }

    public static long l(int i, int i2, Bitmap.Config config) {
        return Math.min((((((long) Math.max(i, 1)) * ((long) Math.max(i2, 1))) * ((long) c(config))) * 5) / 4, 94371840L);
    }
}
