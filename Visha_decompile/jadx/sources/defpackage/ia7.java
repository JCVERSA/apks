package defpackage;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class ia7 {
    public static final ia7 a;
    public static final boolean b;
    public static float c;
    public static final float d;
    public static float e;
    public static final a f;
    public static boolean g;
    public static Class h;
    public static Method i;
    public static Object j;

    static {
        Constructor constructor;
        ia7 ia7Var = new ia7();
        a = ia7Var;
        boolean z = y45.e("1", olb.N("ro.tran.display.resolution.switch.support")) || y45.e("1", olb.N("ro.tr_display.resolution.switch.support"));
        b = z;
        d = ia7Var.e();
        e = 1.0f;
        f = new a(0.0f, 0.0f, 0, 0, 0, 31, null);
        if (z) {
            Class clsI = yj1.i("com.transsion.hubsdk.hardware.display.TranDisplayManagerGlobal");
            h = clsI;
            i = yj1.k(clsI, "getDensityDpi", Integer.TYPE);
            Class cls = h;
            Object objNewInstance = null;
            if (cls != null && (constructor = cls.getConstructor(null)) != null) {
                objNewInstance = constructor.newInstance(null);
            }
            j = objNewInstance;
        }
    }

    public static final void f(Context context, boolean z, int i2) {
        y45.j(context, "context");
        ia7 ia7Var = a;
        if (ia7Var.b(context, i2)) {
            g = true;
            Configuration configuration = context.getApplicationContext().getResources().getConfiguration();
            float f2 = configuration.densityDpi / 160.0f;
            c = configuration.fontScale;
            boolean z2 = b;
            float fC = z2 ? ia7Var.c() : d;
            bq5.p("ScreenDensityAdapter", "setCustomDensity: before density = " + f2 + " scaledDensity = " + c + " baseWidthDp = " + i2 + " IS_DISPLAY_RESOLUTION = " + z2);
            float f3 = f2 / fC;
            float fD = (((float) ia7Var.d(context)) * f3) / ((float) i2);
            e = fD / f2;
            float f4 = c * fD;
            int i3 = (int) (((float) 160) * fD);
            DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
            displayMetrics.density = fD;
            displayMetrics.scaledDensity = f4;
            displayMetrics.densityDpi = i3;
            a aVar = f;
            aVar.setDensity(fD);
            aVar.setScaledDensity(displayMetrics.scaledDensity);
            aVar.setDensityDpi(displayMetrics.densityDpi);
            Configuration configuration2 = context.getResources().getConfiguration();
            configuration2.screenWidthDp = Integer.valueOf((int) (displayMetrics.widthPixels / displayMetrics.density)).intValue();
            configuration2.screenHeightDp = Integer.valueOf((int) (displayMetrics.heightPixels / displayMetrics.density)).intValue();
            aVar.setScreenWidthDp(configuration2.screenWidthDp);
            aVar.setScreenHeightDp(configuration2.screenHeightDp);
            if (z && !y45.e(context, context.getApplicationContext())) {
                DisplayMetrics displayMetrics2 = context.getApplicationContext().getResources().getDisplayMetrics();
                displayMetrics2.density = fD;
                displayMetrics2.scaledDensity = f4;
                displayMetrics2.densityDpi = i3;
                configuration.screenWidthDp = Integer.valueOf((int) (displayMetrics2.widthPixels / fD)).intValue();
                configuration.screenHeightDp = Integer.valueOf((int) (displayMetrics2.heightPixels / displayMetrics2.density)).intValue();
            }
            bq5.p("ScreenDensityAdapter", "setCustomDensity: apply targetDensity = " + fD + " targetScaledDensity = " + f4 + " targetDensityDpi = " + i3 + " sFontScale = " + c + " BaseDensity = " + fC + " cusScaleFactor = " + f3 + " glScaleRatio = " + e);
        }
    }

    public static final void h(Resources resources, Context context) {
        y45.j(resources, "resources");
        y45.j(context, "context");
        DisplayMetrics displayMetrics = resources.getDisplayMetrics();
        if (g) {
            int i2 = displayMetrics.densityDpi;
            a aVar = f;
            if (i2 != aVar.getDensityDpi()) {
                bq5.j("ScreenDensityAdapter", "updResource: CONFIG.densityDpi = " + aVar.getDensityDpi());
                displayMetrics.density = aVar.getDensity();
                displayMetrics.densityDpi = aVar.getDensityDpi();
                displayMetrics.scaledDensity = aVar.getScaledDensity();
                Configuration configuration = resources.getConfiguration();
                configuration.screenWidthDp = aVar.getScreenWidthDp();
                configuration.screenHeightDp = aVar.getScreenHeightDp();
                if (context.getApplicationContext() != context) {
                    Resources resources2 = context.getApplicationContext().getResources();
                    y45.i(resources2, "context.applicationContext.resources");
                    DisplayMetrics displayMetrics2 = resources2.getDisplayMetrics();
                    displayMetrics2.density = aVar.getDensity();
                    displayMetrics2.densityDpi = aVar.getDensityDpi();
                    displayMetrics2.scaledDensity = aVar.getScaledDensity();
                    Configuration configuration2 = resources2.getConfiguration();
                    configuration2.screenWidthDp = aVar.getScreenWidthDp();
                    configuration2.screenHeightDp = aVar.getScreenHeightDp();
                }
            }
        }
    }

    public static final void setCustomDensity(Context context) {
        y45.j(context, "context");
        f(context, true, TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL);
    }

    public final boolean b(Context context, int i2) {
        if (!olb.F) {
            bq5.j("ScreenDensityAdapter", "setCustomDensity: isn't tran devices, don't need adapt.");
            return false;
        }
        if (olb.v) {
            bq5.j("ScreenDensityAdapter", "setCustomDensity: isFlipScreen, don't need adapt.");
            return false;
        }
        if (olb.w) {
            bq5.j("ScreenDensityAdapter", "setCustomDensity: isFoldScreen, don't need adapt.");
            return false;
        }
        float fC = b ? c() : d;
        int iG = g(context, fC);
        if (iG > 600) {
            bq5.j("ScreenDensityAdapter", "setCustomDensity: is large screen, don't need adapt.");
            return false;
        }
        if (iG != i2) {
            return true;
        }
        bq5.p("ScreenDensityAdapter", "setCustomDensity: baseWidthDp == realWidthDp, don't need adapt. baseDensity = " + fC);
        return false;
    }

    public final float c() {
        Method method;
        try {
            Object obj = j;
            if (obj == null || (method = i) == null) {
                return 3.25f;
            }
            Object objInvoke = method.invoke(obj, 0);
            y45.h(objInvoke, "null cannot be cast to non-null type kotlin.Int");
            return ((Integer) objInvoke).intValue() / 160;
        } catch (Exception e2) {
            e2.printStackTrace();
            bq5.g("ScreenDensityAdapter", "getDisplayResolutionBaseDensity Exception " + e2.getMessage());
            return 3.25f;
        }
    }

    public final int d(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        Object systemService = context.getSystemService("window");
        y45.h(systemService, "null cannot be cast to non-null type android.view.WindowManager");
        ((WindowManager) systemService).getDefaultDisplay().getRealMetrics(displayMetrics);
        return (int) Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels);
    }

    public final float e() {
        float f2;
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            Object objInvoke = cls.getMethod("get", String.class).invoke(cls, "ro.sf.lcd_density");
            y45.h(objInvoke, "null cannot be cast to non-null type kotlin.String");
            f2 = Float.parseFloat((String) objInvoke) / 160;
        } catch (Exception e2) {
            e2.printStackTrace();
            bq5.g("ScreenDensityAdapter", "getSystemProperties Exception " + e2.getMessage());
            f2 = 3.0f;
        }
        bq5.c("ScreenDensityAdapter", "getSystemBaseDensity: value = " + f2);
        return f2;
    }

    public final int g(Context context, float f2) {
        return (int) (d(context) / f2);
    }

    public final float getGlScaleRatio() {
        return e;
    }

    public final void setGlScaleRatio(float f2) {
        e = f2;
    }

    public static final class a {
        public float a;
        public float b;
        public int c;
        public int d;
        public int e;

        public a(float f, float f2, int i, int i2, int i3) {
            this.a = f;
            this.b = f2;
            this.c = i;
            this.d = i2;
            this.e = i3;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return Float.compare(this.a, aVar.a) == 0 && Float.compare(this.b, aVar.b) == 0 && this.c == aVar.c && this.d == aVar.d && this.e == aVar.e;
        }

        public final float getDensity() {
            return this.a;
        }

        public final int getDensityDpi() {
            return this.c;
        }

        public final float getScaledDensity() {
            return this.b;
        }

        public final int getScreenHeightDp() {
            return this.e;
        }

        public final int getScreenWidthDp() {
            return this.d;
        }

        public int hashCode() {
            return (((((((Float.hashCode(this.a) * 31) + Float.hashCode(this.b)) * 31) + Integer.hashCode(this.c)) * 31) + Integer.hashCode(this.d)) * 31) + Integer.hashCode(this.e);
        }

        public final void setDensity(float f) {
            this.a = f;
        }

        public final void setDensityDpi(int i) {
            this.c = i;
        }

        public final void setScaledDensity(float f) {
            this.b = f;
        }

        public final void setScreenHeightDp(int i) {
            this.e = i;
        }

        public final void setScreenWidthDp(int i) {
            this.d = i;
        }

        public String toString() {
            return "Config(density=" + this.a + ", scaledDensity=" + this.b + ", densityDpi=" + this.c + ", screenWidthDp=" + this.d + ", screenHeightDp=" + this.e + ")";
        }

        public a(float f, float f2, int i, int i2, int i3, int i4, DefaultConstructorMarker defaultConstructorMarker) {
            this((i4 & 1) != 0 ? ia7.d : f, (i4 & 2) != 0 ? 1.0f : f2, (i4 & 4) != 0 ? 0 : i, (i4 & 8) != 0 ? TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL : i2, (i4 & 16) == 0 ? i3 : 0);
        }
    }
}
