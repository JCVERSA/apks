package com.bytedance.adsdk.sP.vS;

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
import com.bytedance.adsdk.sP.Sj.Sj.dx;
import java.io.Closeable;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.net.UnknownServiceException;
import java.nio.channels.ClosedChannelException;
import javax.net.ssl.SSLException;

public final class vS {
    private static final ThreadLocal<PathMeasure> Sj = new ThreadLocal<PathMeasure>() {
        @Override
        public PathMeasure initialValue() {
            return new PathMeasure();
        }
    };
    private static final ThreadLocal<Path> sP = new ThreadLocal<Path>() {
        @Override
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<Path> TKC = new ThreadLocal<Path>() {
        @Override
        public Path initialValue() {
            return new Path();
        }
    };
    private static final ThreadLocal<float[]> EjP = new ThreadLocal<float[]>() {
        @Override
        public float[] initialValue() {
            return new float[4];
        }
    };
    private static final float HiB = (float) (Math.sqrt(2.0d) / 2.0d);

    public static int Sj(float f10, float f11, float f12, float f13) {
        int i10 = f10 != 0.0f ? (int) (f10 * 527.0f) : 17;
        if (f11 != 0.0f) {
            i10 = (int) (i10 * 31 * f11);
        }
        if (f12 != 0.0f) {
            i10 = (int) (i10 * 31 * f12);
        }
        return f13 != 0.0f ? (int) (i10 * 31 * f13) : i10;
    }

    public static boolean sP(Matrix matrix) {
        float[] fArr = EjP.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        fArr[2] = 37394.73f;
        fArr[3] = 39575.234f;
        matrix.mapPoints(fArr);
        return fArr[0] == fArr[2] || fArr[1] == fArr[3];
    }

    public static boolean Sj(int i10, int i11, int i12, int i13, int i14, int i15) {
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

    public static Path Sj(PointF pointF, PointF pointF2, PointF pointF3, PointF pointF4) {
        Path path = new Path();
        path.moveTo(pointF.x, pointF.y);
        if (pointF3 != null && pointF4 != null && (pointF3.length() != 0.0f || pointF4.length() != 0.0f)) {
            float f10 = pointF3.x + pointF.x;
            float f11 = pointF.y + pointF3.y;
            float f12 = pointF2.x;
            float f13 = f12 + pointF4.x;
            float f14 = pointF2.y;
            path.cubicTo(f10, f11, f13, f14 + pointF4.y, f12, f14);
        } else {
            path.lineTo(pointF2.x, pointF2.y);
        }
        return path;
    }

    public static void Sj(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e10) {
                throw e10;
            } catch (Exception unused) {
            }
        }
    }

    public static float Sj(Matrix matrix) {
        float[] fArr = EjP.get();
        fArr[0] = 0.0f;
        fArr[1] = 0.0f;
        float f10 = HiB;
        fArr[2] = f10;
        fArr[3] = f10;
        matrix.mapPoints(fArr);
        return (float) Math.hypot(fArr[2] - fArr[0], fArr[3] - fArr[1]);
    }

    public static void Sj(Path path, dx dxVar) {
        if (dxVar == null || dxVar.vS()) {
            return;
        }
        Sj(path, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.TKC()).uA() / 100.0f, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.EjP()).uA() / 100.0f, ((com.bytedance.adsdk.sP.Sj.sP.EjP) dxVar.HiB()).uA() / 360.0f);
    }

    public static void Sj(Path path, float f10, float f11, float f12) {
        com.bytedance.adsdk.sP.HiB.Sj("applyTrimPathIfNeeded");
        PathMeasure pathMeasure = Sj.get();
        Path path2 = sP.get();
        Path path3 = TKC.get();
        pathMeasure.setPath(path, false);
        float length = pathMeasure.getLength();
        if (f10 == 1.0f && f11 == 0.0f) {
            com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
            return;
        }
        if (length >= 1.0f && Math.abs((f11 - f10) - 1.0f) >= 0.01d) {
            float f13 = f10 * length;
            float f14 = f11 * length;
            float f15 = f12 * length;
            float fMin = Math.min(f13, f14) + f15;
            float fMax = Math.max(f13, f14) + f15;
            if (fMin >= length && fMax >= length) {
                fMin = HiB.Sj(fMin, length);
                fMax = HiB.Sj(fMax, length);
            }
            if (fMin < 0.0f) {
                fMin = HiB.Sj(fMin, length);
            }
            if (fMax < 0.0f) {
                fMax = HiB.Sj(fMax, length);
            }
            if (fMin == fMax) {
                path.reset();
                com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
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
            com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
            return;
        }
        com.bytedance.adsdk.sP.HiB.sP("applyTrimPathIfNeeded");
    }

    public static float Sj() {
        return Resources.getSystem().getDisplayMetrics().density;
    }

    public static float Sj(Context context) {
        return Settings.Global.getFloat(context.getContentResolver(), "animator_duration_scale", 1.0f);
    }

    public static Bitmap Sj(Bitmap bitmap, int i10, int i11) {
        if (bitmap.getWidth() == i10 && bitmap.getHeight() == i11) {
            return bitmap;
        }
        Bitmap bitmapCreateScaledBitmap = Bitmap.createScaledBitmap(bitmap, i10, i11, true);
        bitmap.recycle();
        return bitmapCreateScaledBitmap;
    }

    public static boolean Sj(Throwable th2) {
        return (th2 instanceof SocketException) || (th2 instanceof ClosedChannelException) || (th2 instanceof InterruptedIOException) || (th2 instanceof ProtocolException) || (th2 instanceof SSLException) || (th2 instanceof UnknownHostException) || (th2 instanceof UnknownServiceException);
    }

    public static void Sj(Canvas canvas, RectF rectF, Paint paint) {
        Sj(canvas, rectF, paint, 31);
    }

    public static void Sj(Canvas canvas, RectF rectF, Paint paint, int i10) {
        com.bytedance.adsdk.sP.HiB.Sj("Utils#saveLayer");
        canvas.saveLayer(rectF, paint);
        com.bytedance.adsdk.sP.HiB.sP("Utils#saveLayer");
    }
}
