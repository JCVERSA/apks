package defpackage;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.util.TypedValue;
import com.google.android.material.timepicker.TimeModel;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Locale;
import org.apache.commons.lang3.BooleanUtils;

public abstract class yj1 {
    public static final String[] a = {"hios", "xos", "itel"};
    public static int b = -1;
    public static int c = -1;
    public static final boolean d;
    public static final boolean e;
    public static final boolean f;

    static {
        boolean z = true;
        d = "1".equals(l("ro.tran_vibrate_ontouch.support")) || BooleanUtils.TRUE.equals(l("ro.tr_vibrate.vibrate10.feature.support"));
        e = BooleanUtils.TRUE.equals(l("ro.vendor.tran_vib3_support")) || BooleanUtils.TRUE.equals(l("ro.tr_vibrate.vibrate30.feature.support"));
        if (!BooleanUtils.TRUE.equals(l("ro.vendor.tran_0012ir")) && !BooleanUtils.TRUE.equals(l("ro.tr_vibrate.realvib05.feature.support"))) {
            z = false;
        }
        f = z;
    }

    public static InputStream a(Bitmap bitmap) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        bitmap.compress(Bitmap.CompressFormat.WEBP, 100, byteArrayOutputStream);
        return new ByteArrayInputStream(byteArrayOutputStream.toByteArray());
    }

    public static int b(BitmapFactory.Options options, int i, int i2) {
        int i3 = options.outWidth;
        int i4 = options.outHeight;
        if (i3 > i || i4 > i2) {
            return Math.min(Math.round(i3 / i), Math.round(i4 / i2));
        }
        return 1;
    }

    public static Bitmap c(Context context, Drawable drawable, int i) {
        BitmapFactory.Options options = new BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        byte[] bArrM = m(f(context, drawable, i));
        BitmapFactory.decodeByteArray(bArrM, 0, bArrM.length, options);
        int iB = b(options, i, i);
        options.inSampleSize = iB;
        options.inJustDecodeBounds = false;
        Bitmap bitmapDecodeByteArray = BitmapFactory.decodeByteArray(bArrM, 0, bArrM.length, options);
        if (bitmapDecodeByteArray == null || iB != 1) {
            return bitmapDecodeByteArray;
        }
        return (options.outWidth == i && options.outHeight == i) ? bitmapDecodeByteArray : Bitmap.createScaledBitmap(bitmapDecodeByteArray, i, i, true);
    }

    public static int d(Context context, int i) {
        return (int) TypedValue.applyDimension(1, i, context.getResources().getDisplayMetrics());
    }

    public static Bitmap e(Context context, Drawable drawable, int i) {
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0) {
            intrinsicWidth = i;
        }
        if (intrinsicHeight > 0) {
            i = intrinsicHeight;
        }
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(intrinsicWidth, i, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, intrinsicWidth, i);
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static InputStream f(Context context, Drawable drawable, int i) {
        return a(e(context, drawable, i));
    }

    public static Bitmap g(Drawable drawable) {
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
        drawable.draw(canvas);
        return bitmapCreateBitmap;
    }

    public static int h() {
        String str = Build.HARDWARE;
        return (TextUtils.isEmpty(str) || !str.startsWith("mt")) ? 2 : 1;
    }

    public static Class i(String str) {
        try {
            return Class.forName(str);
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int j(String str, String str2) {
        try {
            Field field = Class.forName(str).getField(str2);
            field.setAccessible(true);
            return field.getInt(null);
        } catch (Exception e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static Method k(Class cls, String str, Class... clsArr) {
        Method declaredMethod;
        try {
            declaredMethod = cls.getDeclaredMethod(str, clsArr);
            try {
                declaredMethod.setAccessible(true);
            } catch (Exception e2) {
                e = e2;
                e.printStackTrace();
            }
        } catch (Exception e3) {
            e = e3;
            declaredMethod = null;
        }
        return declaredMethod;
    }

    public static String l(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            e2.printStackTrace();
            Log.e("widgetslib.Utils", "getSystemProperties Exception " + e2.getMessage());
            return "";
        }
    }

    public static byte[] m(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            try {
                try {
                    try {
                        int i = inputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        byteArrayOutputStream.write(bArr, 0, i);
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        inputStream.close();
                        byteArrayOutputStream.close();
                    }
                } catch (Throwable th) {
                    try {
                        inputStream.close();
                        byteArrayOutputStream.close();
                    } catch (IOException e3) {
                        e3.printStackTrace();
                    }
                    throw th;
                }
            } catch (IOException e4) {
                e4.printStackTrace();
            }
        }
        inputStream.close();
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static boolean n(Context context) {
        return DateFormat.is24HourFormat(context);
    }

    public static boolean o(Context context) {
        return Build.VERSION.SDK_INT >= 31 && context.getResources().getConfiguration().fontWeightAdjustment == 300;
    }

    public static boolean p(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    public static boolean q() {
        int i = c;
        if (i != -1) {
            return i == 1;
        }
        if ("1".equals(l("ro.transsion.lcd.type"))) {
            c = 1;
            return true;
        }
        c = 0;
        return false;
    }

    public static boolean r() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    public static boolean s() {
        return r() && !String.format(Locale.getDefault(), TimeModel.NUMBER_FORMAT, 1).equals("1");
    }

    public static boolean t(Context context) {
        try {
            int i = b;
            if (i != -1) {
                return i == 1;
            }
            int identifier = context.getResources().getIdentifier("waterfall_display_left_edge_size", "dimen", ConstantDeviceInfo.APP_PLATFORM);
            if ((identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0) > 0) {
                b = 1;
                return true;
            }
            b = 0;
            return false;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static float u(Paint paint) {
        if (paint == null) {
            return 0.0f;
        }
        Paint.FontMetrics fontMetrics = paint.getFontMetrics();
        return (fontMetrics.descent - fontMetrics.ascent) * 0.5f;
    }
}
