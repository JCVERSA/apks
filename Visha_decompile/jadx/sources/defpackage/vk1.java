package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.media.MediaExtractor;
import android.net.Uri;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.util.Log;
import androidx.core.view.InputDeviceCompat;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.media.report.ReportParams;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

public abstract class vk1 {
    public static Bitmap a(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
        paint.setShader(new LinearGradient(0.0f, bitmap.getHeight() / 2.0f, 0.0f, bitmap.getHeight(), new int[]{0, 1291845632, -1728053248}, new float[]{0.0f, 0.56f, 1.0f}, Shader.TileMode.CLAMP));
        canvas.drawRect(0.0f, bitmap.getHeight() / 2.0f, bitmap.getWidth(), bitmap.getHeight(), paint);
        return bitmapCreateBitmap;
    }

    public static Bitmap b(Context context, Bitmap bitmap, int i, int i2, int i3) {
        int i4;
        int i5;
        if (bitmap != null && bitmap.isRecycled()) {
            return null;
        }
        int i6 = 0;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, 65, (bitmap.getHeight() * 65) / bitmap.getWidth(), false);
        int width = bitmapCreateScaledBitmap.getWidth();
        int height = bitmapCreateScaledBitmap.getHeight();
        float f = width;
        float f2 = height;
        float f3 = (f * 1.0f) / f2;
        float f4 = (i * 1.0f) / i2;
        if (f3 > f4) {
            int i7 = (int) (f2 * f4);
            int i8 = (width - i7) / 2;
            width = i7;
            i4 = height;
            i5 = 0;
            i6 = i8;
        } else {
            i4 = (int) (f / f3);
            i5 = (height - i4) / 2;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap, i6, i5, width, i4);
        bitmapCreateBitmap.setConfig(bitmapCreateScaledBitmap.getConfig());
        if (bitmapCreateScaledBitmap != bitmap) {
            bitmapCreateScaledBitmap.recycle();
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, i4, Bitmap.Config.ARGB_8888);
        if (context == null) {
            return null;
        }
        RenderScript renderScriptCreate = RenderScript.create(context);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap2);
        scriptIntrinsicBlurCreate.setRadius(25.0f);
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
        allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap2);
        bitmapCreateBitmap.recycle();
        return m(bitmapCreateBitmap2, i3);
    }

    public static Bitmap c(Context context, Bitmap bitmap, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        if (bitmap != null && bitmap.isRecycled()) {
            return null;
        }
        int i7 = 0;
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, ReportParams.MAX_LEAVE_VALID_TIME, (bitmap.getHeight() * ReportParams.MAX_LEAVE_VALID_TIME) / bitmap.getWidth(), false);
        int width = bitmapCreateScaledBitmap.getWidth();
        int height = bitmapCreateScaledBitmap.getHeight();
        float f = width;
        float f2 = height;
        float f3 = (f * 1.0f) / f2;
        float f4 = (i * 1.0f) / i2;
        if (f3 > f4) {
            int i8 = (int) (f2 * f4);
            int i9 = (width - i8) / 2;
            width = i8;
            i5 = height;
            i6 = 0;
            i7 = i9;
        } else {
            i5 = (int) (f / f3);
            i6 = (height - i5) / 2;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapCreateScaledBitmap, i7, i6, width, i5);
        bitmapCreateBitmap.setConfig(bitmapCreateScaledBitmap.getConfig());
        if (bitmapCreateScaledBitmap != bitmap) {
            bitmapCreateScaledBitmap.recycle();
        }
        Bitmap bitmapCreateBitmap2 = Bitmap.createBitmap(width, i5, Bitmap.Config.ARGB_8888);
        if (context == null) {
            return null;
        }
        RenderScript renderScriptCreate = RenderScript.create(context);
        ScriptIntrinsicBlur scriptIntrinsicBlurCreate = ScriptIntrinsicBlur.create(renderScriptCreate, Element.U8_4(renderScriptCreate));
        Allocation allocationCreateFromBitmap = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap);
        Allocation allocationCreateFromBitmap2 = Allocation.createFromBitmap(renderScriptCreate, bitmapCreateBitmap2);
        float f5 = ((i4 * 24.0f) / 100.0f) + 1.0f;
        if (f5 > 25.0f) {
            scriptIntrinsicBlurCreate.setRadius(25.0f);
        } else if (f5 < 0.1d) {
            scriptIntrinsicBlurCreate.setRadius(0.1f);
        } else {
            scriptIntrinsicBlurCreate.setRadius(f5);
        }
        scriptIntrinsicBlurCreate.setInput(allocationCreateFromBitmap);
        scriptIntrinsicBlurCreate.forEach(allocationCreateFromBitmap2);
        allocationCreateFromBitmap2.copyTo(bitmapCreateBitmap2);
        bitmapCreateBitmap.recycle();
        return l(bitmapCreateBitmap2);
    }

    public static boolean d(String str) {
        MediaExtractor mediaExtractor = new MediaExtractor();
        try {
            mediaExtractor.setDataSource(str);
            int trackCount = mediaExtractor.getTrackCount();
            for (int i = 0; i < trackCount; i++) {
                mediaExtractor.getTrackFormat(i);
            }
            return true;
        } catch (Exception e) {
            Log.e("CoverUtils", "checkVideoTrack:" + e);
            return false;
        } finally {
            mediaExtractor.release();
        }
    }

    public static void e(Bitmap bitmap, Bitmap bitmap2, float f) {
        Canvas canvas = new Canvas(bitmap2);
        Paint paint = new Paint();
        canvas.scale(f, f);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
    }

    public static boolean f(MediaItem mediaItem) {
        int iLastIndexOf;
        String str = mediaItem.displayName;
        if (str != null && (iLastIndexOf = str.lastIndexOf(Consts.DOT)) >= 0) {
            return !".f4v".equals(str.substring(iLastIndexOf));
        }
        return true;
    }

    public static int g(Bitmap bitmap) {
        if (bitmap == null) {
            return -1;
        }
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < width; i3 += 10) {
            for (int i4 = 0; i4 < height; i4 += 10) {
                i2++;
                int pixel = bitmap.getPixel(i3, i4);
                i = (int) (((double) i) + (((double) ((((-16711681) | pixel) >> 16) & 255)) * 0.33d) + (((double) ((((-65281) | pixel) >> 8) & 255)) * 0.33d) + (((double) ((pixel | InputDeviceCompat.SOURCE_ANY) & 255)) * 0.33d));
            }
        }
        return i / i2;
    }

    public static Bitmap h(Bitmap bitmap, int i) {
        int width = bitmap.getWidth() * bitmap.getHeight();
        int[] iArr = new int[width];
        bitmap.getPixels(iArr, 0, bitmap.getWidth(), 0, 0, bitmap.getWidth(), bitmap.getHeight());
        int i2 = (i * 255) / 100;
        for (int i3 = 0; i3 < width; i3++) {
            iArr[i3] = (i2 << 24) | (iArr[i3] & 16777215);
        }
        return Bitmap.createBitmap(iArr, bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
    }

    public static Bitmap i(Context context, Uri uri) {
        return tn.t(context, uri, true);
    }

    public static void j(Context context, AudioItem audioItem, tn.c cVar) {
        tn.v(context, audioItem, cVar, true);
    }

    public static Bitmap k(Context context, String str) throws Throwable {
        HttpURLConnection httpURLConnection;
        Throwable th;
        try {
            httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
            try {
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(httpURLConnection.getInputStream());
                httpURLConnection.disconnect();
                return bitmapDecodeStream;
            } catch (IOException unused) {
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (httpURLConnection != null) {
                    httpURLConnection.disconnect();
                }
                throw th;
            }
        } catch (IOException unused2) {
            httpURLConnection = null;
        } catch (Throwable th3) {
            httpURLConnection = null;
            th = th3;
        }
    }

    public static Bitmap l(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    public static Bitmap m(Bitmap bitmap, int i) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        if (i == 0) {
            canvas.drawColor(Color.argb((g(bitmap) / 2) + 59, 0, 0, 0), PorterDuff.Mode.SRC_OVER);
        } else {
            canvas.drawColor(Color.argb(255 - Math.max(0, Math.min(255, i)), 0, 0, 0), PorterDuff.Mode.SRC_OVER);
        }
        bitmap.recycle();
        return bitmapCreateBitmap;
    }

    public static Bitmap n(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Bitmap.Config.ARGB_4444);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint();
        paint.setFlags(2);
        canvas.drawBitmap(bitmap, 0.0f, 0.0f, paint);
        canvas.drawColor(436207616, PorterDuff.Mode.SRC_OVER);
        return bitmapCreateBitmap;
    }
}
