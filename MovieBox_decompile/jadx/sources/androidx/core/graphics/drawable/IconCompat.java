package androidx.core.graphics.drawable;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.util.i;
import androidx.core.view.ViewCompat;
import androidx.versionedparcelable.CustomVersionedParcelable;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.cloud.tmc.kernel.utils.NetworkUtil;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.mbridge.msdk.playercommon.exoplayer2.C;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.nio.charset.Charset;

public class IconCompat extends CustomVersionedParcelable {

    static final PorterDuff.Mode f7832k = PorterDuff.Mode.SRC_IN;

    public int f7833a;

    Object f7834b;

    public byte[] f7835c;

    public Parcelable f7836d;

    public int f7837e;

    public int f7838f;

    public ColorStateList f7839g;

    PorterDuff.Mode f7840h;

    public String f7841i;

    public String f7842j;

    static class a {
        static IconCompat a(Object obj) {
            i.g(obj);
            int iD = d(obj);
            if (iD == 2) {
                return IconCompat.k(null, c(obj), b(obj));
            }
            if (iD == 4) {
                return IconCompat.h(e(obj));
            }
            if (iD == 6) {
                return IconCompat.e(e(obj));
            }
            IconCompat iconCompat = new IconCompat(-1);
            iconCompat.f7834b = obj;
            return iconCompat;
        }

        static int b(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.a(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getResId", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon resource", e10);
                return 0;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon resource", e11);
                return 0;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon resource", e12);
                return 0;
            }
        }

        static String c(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.b(obj);
            }
            try {
                return (String) obj.getClass().getMethod("getResPackage", null).invoke(obj, null);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon package", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon package", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon package", e12);
                return null;
            }
        }

        static int d(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.c(obj);
            }
            try {
                return ((Integer) obj.getClass().getMethod("getType", null).invoke(obj, null)).intValue();
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e10);
                return -1;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e11);
                return -1;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon type " + obj, e12);
                return -1;
            }
        }

        static Uri e(Object obj) {
            if (Build.VERSION.SDK_INT >= 28) {
                return c.d(obj);
            }
            try {
                return (Uri) obj.getClass().getMethod("getUri", null).invoke(obj, null);
            } catch (IllegalAccessException e10) {
                Log.e("IconCompat", "Unable to get icon uri", e10);
                return null;
            } catch (NoSuchMethodException e11) {
                Log.e("IconCompat", "Unable to get icon uri", e11);
                return null;
            } catch (InvocationTargetException e12) {
                Log.e("IconCompat", "Unable to get icon uri", e12);
                return null;
            }
        }

        static Drawable f(Icon icon, Context context) {
            return icon.loadDrawable(context);
        }

        static Icon g(IconCompat iconCompat, Context context) {
            Icon iconCreateWithBitmap;
            switch (iconCompat.f7833a) {
                case -1:
                    return (Icon) iconCompat.f7834b;
                case 0:
                default:
                    throw new IllegalArgumentException("Unknown type");
                case 1:
                    iconCreateWithBitmap = Icon.createWithBitmap((Bitmap) iconCompat.f7834b);
                    break;
                case 2:
                    iconCreateWithBitmap = Icon.createWithResource(iconCompat.n(), iconCompat.f7837e);
                    break;
                case 3:
                    iconCreateWithBitmap = Icon.createWithData((byte[]) iconCompat.f7834b, iconCompat.f7837e, iconCompat.f7838f);
                    break;
                case 4:
                    iconCreateWithBitmap = Icon.createWithContentUri((String) iconCompat.f7834b);
                    break;
                case 5:
                    iconCreateWithBitmap = Build.VERSION.SDK_INT < 26 ? Icon.createWithBitmap(IconCompat.d((Bitmap) iconCompat.f7834b, false)) : b.a((Bitmap) iconCompat.f7834b);
                    break;
                case 6:
                    int i10 = Build.VERSION.SDK_INT;
                    if (i10 >= 30) {
                        iconCreateWithBitmap = d.a(iconCompat.q());
                    } else {
                        if (context == null) {
                            throw new IllegalArgumentException("Context is required to resolve the file uri of the icon: " + iconCompat.q());
                        }
                        InputStream inputStreamR = iconCompat.r(context);
                        if (inputStreamR == null) {
                            throw new IllegalStateException("Cannot load adaptive icon from uri: " + iconCompat.q());
                        }
                        if (i10 < 26) {
                            iconCreateWithBitmap = Icon.createWithBitmap(IconCompat.d(BitmapFactory.decodeStream(inputStreamR), false));
                        } else {
                            iconCreateWithBitmap = b.a(BitmapFactory.decodeStream(inputStreamR));
                        }
                    }
                    break;
            }
            ColorStateList colorStateList = iconCompat.f7839g;
            if (colorStateList != null) {
                iconCreateWithBitmap.setTintList(colorStateList);
            }
            PorterDuff.Mode mode = iconCompat.f7840h;
            if (mode != IconCompat.f7832k) {
                iconCreateWithBitmap.setTintMode(mode);
            }
            return iconCreateWithBitmap;
        }
    }

    static class b {
        static Icon a(Bitmap bitmap) {
            return Icon.createWithAdaptiveBitmap(bitmap);
        }
    }

    static class c {
        static int a(Object obj) {
            return ((Icon) obj).getResId();
        }

        static String b(Object obj) {
            return ((Icon) obj).getResPackage();
        }

        static int c(Object obj) {
            return ((Icon) obj).getType();
        }

        static Uri d(Object obj) {
            return ((Icon) obj).getUri();
        }
    }

    static class d {
        static Icon a(Uri uri) {
            return Icon.createWithAdaptiveBitmapContentUri(uri);
        }
    }

    public IconCompat() {
        this.f7833a = -1;
        this.f7835c = null;
        this.f7836d = null;
        this.f7837e = 0;
        this.f7838f = 0;
        this.f7839g = null;
        this.f7840h = f7832k;
        this.f7841i = null;
    }

    public static IconCompat b(Icon icon) {
        return a.a(icon);
    }

    public static IconCompat c(Icon icon) {
        if (a.d(icon) == 2 && a.b(icon) == 0) {
            return null;
        }
        return a.a(icon);
    }

    static Bitmap d(Bitmap bitmap, boolean z10) {
        int iMin = (int) (Math.min(bitmap.getWidth(), bitmap.getHeight()) * 0.6666667f);
        Bitmap bitmapCreateBitmap = Bitmap.createBitmap(iMin, iMin, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmapCreateBitmap);
        Paint paint = new Paint(3);
        float f10 = iMin;
        float f11 = 0.5f * f10;
        float f12 = 0.9166667f * f11;
        if (z10) {
            float f13 = 0.010416667f * f10;
            paint.setColor(0);
            paint.setShadowLayer(f13, 0.0f, f10 * 0.020833334f, 1023410176);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.setShadowLayer(f13, 0.0f, 0.0f, 503316480);
            canvas.drawCircle(f11, f11, f12, paint);
            paint.clearShadowLayer();
        }
        paint.setColor(ViewCompat.MEASURED_STATE_MASK);
        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
        BitmapShader bitmapShader = new BitmapShader(bitmap, tileMode, tileMode);
        Matrix matrix = new Matrix();
        matrix.setTranslate((-(bitmap.getWidth() - iMin)) / 2.0f, (-(bitmap.getHeight() - iMin)) / 2.0f);
        bitmapShader.setLocalMatrix(matrix);
        paint.setShader(bitmapShader);
        canvas.drawCircle(f11, f11, f12, paint);
        canvas.setBitmap(null);
        return bitmapCreateBitmap;
    }

    public static IconCompat e(Uri uri) {
        androidx.core.util.d.c(uri);
        return f(uri.toString());
    }

    public static IconCompat f(String str) {
        androidx.core.util.d.c(str);
        IconCompat iconCompat = new IconCompat(6);
        iconCompat.f7834b = str;
        return iconCompat;
    }

    public static IconCompat g(Bitmap bitmap) {
        androidx.core.util.d.c(bitmap);
        IconCompat iconCompat = new IconCompat(1);
        iconCompat.f7834b = bitmap;
        return iconCompat;
    }

    public static IconCompat h(Uri uri) {
        androidx.core.util.d.c(uri);
        return i(uri.toString());
    }

    public static IconCompat i(String str) {
        androidx.core.util.d.c(str);
        IconCompat iconCompat = new IconCompat(4);
        iconCompat.f7834b = str;
        return iconCompat;
    }

    public static IconCompat j(Context context, int i10) {
        androidx.core.util.d.c(context);
        return k(context.getResources(), context.getPackageName(), i10);
    }

    public static IconCompat k(Resources resources, String str, int i10) {
        androidx.core.util.d.c(str);
        if (i10 == 0) {
            throw new IllegalArgumentException("Drawable resource ID must not be 0");
        }
        IconCompat iconCompat = new IconCompat(2);
        iconCompat.f7837e = i10;
        if (resources != null) {
            try {
                iconCompat.f7834b = resources.getResourceName(i10);
            } catch (Resources.NotFoundException unused) {
                throw new IllegalArgumentException("Icon resource cannot be found");
            }
        } else {
            iconCompat.f7834b = str;
        }
        iconCompat.f7842j = str;
        return iconCompat;
    }

    static Resources o(Context context, String str) {
        if ("android".equals(str)) {
            return Resources.getSystem();
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            ApplicationInfo applicationInfo = packageManager.getApplicationInfo(str, 8192);
            if (applicationInfo != null) {
                return packageManager.getResourcesForApplication(applicationInfo);
            }
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e("IconCompat", String.format("Unable to find pkg=%s for icon", str), e10);
            return null;
        }
    }

    private static String y(int i10) {
        switch (i10) {
            case 1:
                return "BITMAP";
            case 2:
                return "RESOURCE";
            case 3:
                return "DATA";
            case 4:
                return "URI";
            case 5:
                return "BITMAP_MASKABLE";
            case 6:
                return "URI_MASKABLE";
            default:
                return NetworkUtil.NETWORK_TYPE_UNKNOWN;
        }
    }

    public void a(Context context) {
        Object obj;
        if (this.f7833a != 2 || (obj = this.f7834b) == null) {
            return;
        }
        String str = (String) obj;
        if (str.contains(":")) {
            String str2 = str.split(":", -1)[1];
            String str3 = str2.split("/", -1)[0];
            String str4 = str2.split("/", -1)[1];
            String str5 = str.split(":", -1)[0];
            if ("0_resource_name_obfuscated".equals(str4)) {
                return;
            }
            String strN = n();
            int identifier = o(context, strN).getIdentifier(str4, str3, str5);
            if (this.f7837e != identifier) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Id has changed for ");
                sb2.append(strN);
                sb2.append(" ");
                sb2.append(str);
                this.f7837e = identifier;
            }
        }
    }

    public Bitmap l() {
        int i10 = this.f7833a;
        if (i10 == -1) {
            Object obj = this.f7834b;
            if (obj instanceof Bitmap) {
                return (Bitmap) obj;
            }
            return null;
        }
        if (i10 == 1) {
            return (Bitmap) this.f7834b;
        }
        if (i10 == 5) {
            return d((Bitmap) this.f7834b, true);
        }
        throw new IllegalStateException("called getBitmap() on " + this);
    }

    public int m() {
        int i10 = this.f7833a;
        if (i10 == -1) {
            return a.b(this.f7834b);
        }
        if (i10 == 2) {
            return this.f7837e;
        }
        throw new IllegalStateException("called getResId() on " + this);
    }

    public String n() {
        int i10 = this.f7833a;
        if (i10 == -1) {
            return a.c(this.f7834b);
        }
        if (i10 == 2) {
            String str = this.f7842j;
            return (str == null || TextUtils.isEmpty(str)) ? ((String) this.f7834b).split(":", -1)[0] : this.f7842j;
        }
        throw new IllegalStateException("called getResPackage() on " + this);
    }

    public int p() {
        int i10 = this.f7833a;
        return i10 == -1 ? a.d(this.f7834b) : i10;
    }

    public Uri q() {
        int i10 = this.f7833a;
        if (i10 == -1) {
            return a.e(this.f7834b);
        }
        if (i10 == 4 || i10 == 6) {
            return Uri.parse((String) this.f7834b);
        }
        throw new IllegalStateException("called getUri() on " + this);
    }

    public InputStream r(Context context) {
        Uri uriQ = q();
        String scheme = uriQ.getScheme();
        if ("content".equals(scheme) || OfflineConstantsKt.OFFLINE_DOWNLOAD_SEARCH_MODE_FILE.equals(scheme)) {
            try {
                return context.getContentResolver().openInputStream(uriQ);
            } catch (Exception e10) {
                Log.w("IconCompat", "Unable to load image from URI: " + uriQ, e10);
                return null;
            }
        }
        try {
            return new FileInputStream(new File((String) this.f7834b));
        } catch (FileNotFoundException e11) {
            Log.w("IconCompat", "Unable to load image from path: " + uriQ, e11);
            return null;
        }
    }

    public Drawable s(Context context) {
        a(context);
        return a.f(x(context), context);
    }

    public void t() {
        this.f7840h = PorterDuff.Mode.valueOf(this.f7841i);
        switch (this.f7833a) {
            case -1:
                Parcelable parcelable = this.f7836d;
                if (parcelable == null) {
                    throw new IllegalArgumentException("Invalid icon");
                }
                this.f7834b = parcelable;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                Parcelable parcelable2 = this.f7836d;
                if (parcelable2 != null) {
                    this.f7834b = parcelable2;
                    return;
                }
                byte[] bArr = this.f7835c;
                this.f7834b = bArr;
                this.f7833a = 3;
                this.f7837e = 0;
                this.f7838f = bArr.length;
                return;
            case 2:
            case 4:
            case 6:
                String str = new String(this.f7835c, Charset.forName(C.UTF16_NAME));
                this.f7834b = str;
                if (this.f7833a == 2 && this.f7842j == null) {
                    this.f7842j = str.split(":", -1)[0];
                    return;
                }
                return;
            case 3:
                this.f7834b = this.f7835c;
                return;
        }
    }

    public String toString() {
        if (this.f7833a == -1) {
            return String.valueOf(this.f7834b);
        }
        StringBuilder sb2 = new StringBuilder("Icon(typ=");
        sb2.append(y(this.f7833a));
        switch (this.f7833a) {
            case 1:
            case 5:
                sb2.append(" size=");
                sb2.append(((Bitmap) this.f7834b).getWidth());
                sb2.append("x");
                sb2.append(((Bitmap) this.f7834b).getHeight());
                break;
            case 2:
                sb2.append(" pkg=");
                sb2.append(this.f7842j);
                sb2.append(" id=");
                sb2.append(String.format("0x%08x", Integer.valueOf(m())));
                break;
            case 3:
                sb2.append(" len=");
                sb2.append(this.f7837e);
                if (this.f7838f != 0) {
                    sb2.append(" off=");
                    sb2.append(this.f7838f);
                }
                break;
            case 4:
            case 6:
                sb2.append(" uri=");
                sb2.append(this.f7834b);
                break;
        }
        if (this.f7839g != null) {
            sb2.append(" tint=");
            sb2.append(this.f7839g);
        }
        if (this.f7840h != f7832k) {
            sb2.append(" mode=");
            sb2.append(this.f7840h);
        }
        sb2.append(")");
        return sb2.toString();
    }

    public void u(boolean z10) {
        this.f7841i = this.f7840h.name();
        switch (this.f7833a) {
            case -1:
                if (z10) {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
                this.f7836d = (Parcelable) this.f7834b;
                return;
            case 0:
            default:
                return;
            case 1:
            case 5:
                if (!z10) {
                    this.f7836d = (Parcelable) this.f7834b;
                    return;
                }
                Bitmap bitmap = (Bitmap) this.f7834b;
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                this.f7835c = byteArrayOutputStream.toByteArray();
                return;
            case 2:
                this.f7835c = ((String) this.f7834b).getBytes(Charset.forName(C.UTF16_NAME));
                return;
            case 3:
                this.f7835c = (byte[]) this.f7834b;
                return;
            case 4:
            case 6:
                this.f7835c = this.f7834b.toString().getBytes(Charset.forName(C.UTF16_NAME));
                return;
        }
    }

    public Bundle v() {
        Bundle bundle = new Bundle();
        switch (this.f7833a) {
            case -1:
                bundle.putParcelable("obj", (Parcelable) this.f7834b);
                break;
            case 0:
            default:
                throw new IllegalArgumentException("Invalid icon");
            case 1:
            case 5:
                bundle.putParcelable("obj", (Bitmap) this.f7834b);
                break;
            case 2:
            case 4:
            case 6:
                bundle.putString("obj", (String) this.f7834b);
                break;
            case 3:
                bundle.putByteArray("obj", (byte[]) this.f7834b);
                break;
        }
        bundle.putInt(NativeComponentConstants.KEY_COMPONENT_TYPE, this.f7833a);
        bundle.putInt("int1", this.f7837e);
        bundle.putInt("int2", this.f7838f);
        bundle.putString("string1", this.f7842j);
        ColorStateList colorStateList = this.f7839g;
        if (colorStateList != null) {
            bundle.putParcelable("tint_list", colorStateList);
        }
        PorterDuff.Mode mode = this.f7840h;
        if (mode != f7832k) {
            bundle.putString("tint_mode", mode.name());
        }
        return bundle;
    }

    public Icon w() {
        return x(null);
    }

    public Icon x(Context context) {
        return a.g(this, context);
    }

    IconCompat(int i10) {
        this.f7835c = null;
        this.f7836d = null;
        this.f7837e = 0;
        this.f7838f = 0;
        this.f7839g = null;
        this.f7840h = f7832k;
        this.f7841i = null;
        this.f7833a = i10;
    }
}
