package x4;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PathMeasure;
import android.graphics.PointF;
import android.graphics.RectF;
import android.provider.Settings;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;
import o4.u;

public abstract class l {

    private static final ThreadLocal f75098a = new a();

    private static final ThreadLocal f75099b = new b();

    private static final ThreadLocal f75100c = new c();

    private static final ThreadLocal f75101d = new d();

    private static final float f75102e = (float) (Math.sqrt(2.0d) / 2.0d);

    class a extends ThreadLocal {
        a() {
        }

        @Override
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    }

    class b extends ThreadLocal {
        b() {
        }

        @Override
        public Path initialValue() {
            return new Path();
        }
    }

    class c extends ThreadLocal {
        c() {
        }

        @Override
        public Path initialValue() {
            return new Path();
        }
    }

    class d extends ThreadLocal {
        d() {
        }

        @Override
        public float[] initialValue() {
            return new float[4];
        }
    }

    public static void a(Path path, float f10, float f11, float f12) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("applyTrimPathIfNeeded");
        }
        PathMeasure pathMeasure = (PathMeasure) f75098a.get();
        Path path2 = (Path) f75099b.get();
        Path path3 = (Path) f75100c.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == 0.0f) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("applyTrimPathIfNeeded");
                return;
            }
            return;
        }
        if (length < 1.0f || Math.abs((f11 - f10) - 1.0f) < 0.01d) {
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("applyTrimPathIfNeeded");
                return;
            }
            return;
        }
        float f13 = f10 * length;
        float f14 = f11 * length;
        float f15 = f12 * length;
        float fMin = Math.min(f13, f14) + f15;
        float fMax = Math.max(f13, f14) + f15;
        if (fMin >= length && fMax >= length) {
            fMin = k.f(fMin, length);
            fMax = k.f(fMax, length);
        }
        if (fMin < 0.0f) {
            fMin = k.f(fMin, length);
        }
        if (fMax < 0.0f) {
            fMax = k.f(fMax, length);
        }
        if (fMin == fMax) {
            path.reset();
            if (com.airbnb.lottie.d.g()) {
                com.airbnb.lottie.d.c("applyTrimPathIfNeeded");
                return;
            }
            return;
        }
        if (fMin >= fMax) {
            fMin -= length;
        }
        path2.reset();
        pathMeasure.getSegment(fMin, fMax, path2, true);
        if (fMax > length) {
            path3.reset();
            pathMeasure.getSegment(0.0f, fMax % length, path3, true);
            path2.addPath(path3);
        } else if (fMin < 0.0f) {
            path3.reset();
            pathMeasure.getSegment(fMin + length, length, path3, true);
            path2.addPath(path3);
        }
        path.set(path2);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("applyTrimPathIfNeeded");
        }
    }

    public static void b(Path path, u uVar) {
        if (uVar == null || uVar.k()) {
            return;
        }
        a(path, ((p4.d) uVar.i()).q() / 100.0f, ((p4.d) uVar.d()).q() / 100.0f, ((p4.d) uVar.g()).q() / 360.0f);
    }

    public static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static Path d(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 == null || pointF4 == null || (pointF3.length() == 0.0f && pointF4.length() == 0.0f)) {
            path.lineTo(pointF2.x, pointF2.y);
        } else {
            float f10 = pointF3.x + pointF.x;
            float f11 = pointF.y + pointF3.y;
            float f12 = pointF2.x;
            float f13 = f12 + pointF4.x;
            float f14 = pointF2.y;
            path.cubicTo(f10, f11, f13, f14 + pointF4.y, f12, f14);
        }
        return path;
    }

    public static float e() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float f(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static float g(Matrix matrix) {
        float[] fArr = (float[]) f75101d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = f75102e;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static boolean h(Matrix matrix) {
        float[] fArr = (float[]) f75101d.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static int i(float f10, float f11, float f12, float f13) {
        int i10 = f10 != 0.0f ? (int) (527 * f10) : 17;
        if (f11 != 0.0f) {
            i10 = (int) (i10 * 31 * f11);
        }
        if (f12 != 0.0f) {
            i10 = (int) (i10 * 31 * f12);
        }
        return f13 != 0.0f ? (int) (i10 * 31 * f13) : i10;
    }

    public static boolean j(int i10, int i11, int i12, int i13, int i14, int i15) {
        if (i10 < i13) {
            return false;
        }
        if (i10 > i13) {
            return true;
        }
        if (i11 < i14) {
            return false;
        }
        return i11 > i14 || i12 >= i15;
    }

    public static boolean k(Throwable th2) {
        return (th2 instanceof SocketException) || (th2 instanceof ClosedChannelException) || (th2 instanceof InterruptedIOException) || (th2 instanceof ProtocolException) || (th2 instanceof SSLException) || (th2 instanceof UnknownHostException) || (th2 instanceof UnknownServiceException);
    }

    public static int l(int i10, int i11) {
        return (int) ((((i10 / 255.0f) * i11) / 255.0f) * 255.0f);
    }

    public static Bitmap m(Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static void n(Canvas canvas, RectF rectF, Paint paint) {
        o(canvas, rectF, paint, 31);
    }

    public static void o(Canvas canvas, RectF rectF, Paint paint, int i10) {
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.b("Utils#saveLayer");
        }
        canvas.saveLayer(rectF, paint);
        if (com.airbnb.lottie.d.g()) {
            com.airbnb.lottie.d.c("Utils#saveLayer");
        }
    }
}
