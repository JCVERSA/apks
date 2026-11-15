package defpackage;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Insets;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.provider.Settings;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import androidx.window.embedding.ActivityEmbeddingController;
import androidx.window.embedding.EmbeddingRule;
import androidx.window.embedding.RuleController;
import androidx.window.embedding.SplitAttributes;
import androidx.window.embedding.SplitPairFilter;
import androidx.window.embedding.SplitPairRule;
import com.just.agentweb.WebIndicator;
import com.transsion.hubsdk.api.internal.policy.TranSystemBarUtils;
import com.transsion.hubsdk.api.view.TranView;
import com.transsion.hubsdk.api.view.TranWindowManager;
import com.transsion.widgetslib.R;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.util.HashSet;
import java.util.Locale;
import java.util.Random;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.mozilla.javascript.ES6Iterator;

public abstract class olb {
    public static final boolean A;
    public static final boolean B;
    public static final boolean C;
    public static final boolean D;
    public static boolean E;
    public static final boolean F;
    public static final String G;
    public static final boolean H;
    public static final boolean I;
    public static final boolean J;
    public static final boolean K;
    public static final boolean L;
    public static final int M;
    public static final char[] N;
    public static final boolean O;
    public static final boolean P;
    public static Set Q;
    public static final boolean R;
    public static boolean S;
    public static boolean T;
    public static boolean U;
    public static boolean V;
    public static boolean W;
    public static boolean X;
    public static boolean Y;
    public static boolean Z;
    public static final String[] a;
    public static boolean a0;
    public static final String b;
    public static final int[] b0;
    public static final boolean c;
    public static final boolean d;
    public static final boolean e;
    public static final int[] f;
    public static final int[] g;
    public static final int[] h;
    public static final int[] i;
    public static final int[] j;
    public static final int[] k;
    public static final int[] l;
    public static final int[] m;
    public static final String n;
    public static final boolean o;
    public static final boolean p;
    public static final boolean q;
    public static final boolean r;
    public static final boolean s;
    public static int t;
    public static int u;
    public static boolean v;
    public static boolean w;
    public static String x;
    public static String y;
    public static final boolean z;

    public class a implements View.OnApplyWindowInsetsListener {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
            if (this.a == null) {
                return windowInsets;
            }
            Insets insets = windowInsets.getInsets(WindowInsets.Side.all());
            Display display = this.a.getDisplay();
            boolean zX = olb.X(this.a);
            if (display != null) {
                if (display.getRotation() == 1) {
                    windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), Insets.of(0, insets.top, zX ? 0 : insets.right, 0)).build();
                } else if (display.getRotation() == 3) {
                    windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Type.systemBars() | WindowInsets.Type.displayCutout(), Insets.of(zX ? 0 : insets.left, insets.top, 0, 0)).build();
                } else {
                    windowInsets = new WindowInsets.Builder(windowInsets).setInsets(WindowInsets.Side.all(), Insets.of(0, insets.top, 0, insets.bottom)).build();
                }
            }
            return view.onApplyWindowInsets(windowInsets);
        }
    }

    public class b implements View.OnTouchListener {
        public final boolean b;
        public final boolean c;
        public final Dialog d;

        public b(boolean z, boolean z2, Dialog dialog) {
            this.b = z;
            this.c = z2;
            this.d = dialog;
        }

        @Override
        public boolean onTouch(View view, MotionEvent motionEvent) {
            Dialog dialog;
            if (!this.b || !this.c) {
                return false;
            }
            if (motionEvent.getAction() == 1 && (dialog = this.d) != null && dialog.isShowing()) {
                this.d.cancel();
            }
            return true;
        }
    }

    static {
        String[] strArr = yj1.a;
        a = strArr;
        String osType = getOsType();
        b = osType;
        boolean z2 = false;
        c = strArr[0].equalsIgnoreCase(osType) || TextUtils.isEmpty(osType);
        d = strArr[1].equalsIgnoreCase(getOsType());
        e = !TextUtils.isEmpty(osType) && osType.toLowerCase().contains(strArr[2].toLowerCase());
        f = new int[]{R.drawable.os_ic_back_hios, R.drawable.os_ic_back_xos, R.drawable.os_ic_back_itel};
        g = new int[]{R.drawable.os_ic_close_hios, R.drawable.os_ic_close_xos, R.drawable.os_ic_close_itel};
        h = new int[]{R.drawable.os_ic_save_hios, R.drawable.os_ic_save_xos, R.drawable.os_ic_save_itel};
        i = new int[]{R.drawable.os_ic_search_hios, R.drawable.os_ic_search_xos, R.drawable.os_ic_search_itel};
        j = new int[]{R.drawable.os_ic_edit_hios, R.drawable.os_ic_edit_xos, R.drawable.os_ic_edit_itel};
        k = new int[]{R.drawable.os_ic_more_hios, R.drawable.os_ic_more_xos, R.drawable.os_ic_more_itel};
        l = new int[]{R.drawable.os_ic_settings_hios, R.drawable.os_ic_settings_xos, R.drawable.os_ic_settings_itel};
        m = new int[]{R.drawable.os_ic_add_hios, R.drawable.os_ic_add_xos, R.drawable.os_ic_add_itel};
        String strO = O("ro.tr_animation.platform_level", "3");
        n = strO;
        boolean zEquals = "4".equals(strO);
        o = zEquals;
        boolean zEquals2 = "3".equals(strO);
        p = zEquals2;
        q = "2".equals(strO);
        r = "1".equals(strO);
        s = O("debug.natureshadow", "0").equals("1");
        t = -1;
        u = -1;
        v = "1".equals(N("ro.os_flip_screen_support"));
        w = "1".equals(N("ro.os_foldable_screen_support"));
        x = N("ro.tranos.type");
        String strN = N("ro.build.characteristics");
        y = strN;
        z = TextUtils.equals("tablet", strN);
        int i2 = Build.VERSION.SDK_INT;
        A = true;
        B = i2 >= 30;
        C = true;
        D = true;
        E = "1".equals(N("ro.os_1g_go.support")) || "1".equals(N("ro.os_2g_go.support")) || "1".equals(N("ro.os_3g_go.support"));
        F = !TextUtils.isEmpty(x);
        G = N("ro.tranos.version");
        H = R("14");
        I = R("15.0.1");
        boolean zR = R("16.1.0");
        J = zR;
        K = R("16.2.0");
        boolean zR2 = R("17.0.0");
        L = zR2;
        M = getOsVersionCode();
        N = new char[]{'.', 12290, 4962, 2404, 1748};
        O = (zEquals || zEquals2) && zR;
        if ((zEquals || zEquals2) && zR2) {
            z2 = true;
        }
        P = z2;
        Q = new HashSet();
        boolean zEquals3 = "1".equals(O("ro.tr_display.liquidglass.support", "1"));
        R = zEquals3;
        S = zEquals3;
        T = zEquals3;
        U = zEquals3;
        V = zEquals3;
        W = true;
        X = zEquals3;
        Y = yj1.d;
        Z = yj1.e;
        a0 = yj1.f;
        b0 = new int[]{R.color.os_random_colors_0, R.color.os_random_colors_1, R.color.os_random_colors_2, R.color.os_random_colors_3, R.color.os_random_colors_4, R.color.os_random_colors_5, R.color.os_random_colors_6, R.color.os_random_colors_7, R.color.os_random_colors_8, R.color.os_random_colors_9, R.color.os_random_colors_10, R.color.os_random_colors_11, R.color.os_random_colors_12, R.color.os_random_colors_13, R.color.os_random_colors_14, R.color.os_random_colors_15};
    }

    public static int A(Context context) {
        Float fK;
        int i2 = context.getResources().getDisplayMetrics().widthPixels;
        if (!Q(context) || (fK = K(context)) == null || fK.floatValue() <= 0.0f) {
            return i2;
        }
        return (int) ((n0(context) ? D(context) : E(context)) * fK.floatValue());
    }

    public static int A0(Context context, ListAdapter listAdapter) {
        return y0(context, listAdapter) + (context.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_inset_left) * 2);
    }

    public static int B(int[] iArr) {
        if (d) {
            return iArr[1];
        }
        return e ? iArr[2] : iArr[0];
    }

    public static float B0(Paint paint) {
        return yj1.u(paint);
    }

    public static int C(int[] iArr) {
        if (iArr == null || iArr.length == 0) {
            throw new RuntimeException("Params error.");
        }
        return iArr[new Random().nextInt(iArr.length)];
    }

    public static void C0(Context context, Dialog dialog, boolean z2, boolean z3) {
        dialog.getWindow().getDecorView().setOnTouchListener(new b(z2, z3, dialog));
    }

    public static int D(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static int D0(Context context, float f2) {
        return (int) ((f2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int E(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static int E0(Context context, int i2) {
        return (int) ((i2 / context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static int F(String str, String str2) {
        return yj1.j(str, str2);
    }

    public static float F0(TextView textView, float f2, float f3, boolean z2, int i2) {
        int measuredWidth;
        float f4;
        float f5;
        CharSequence text = textView.getText();
        if (TextUtils.isEmpty(text) || (measuredWidth = (textView.getMeasuredWidth() - textView.getPaddingLeft()) - textView.getPaddingRight()) <= 0) {
            return f3;
        }
        int iMax = Math.max(1, i2);
        float fMax = Math.max(1.0f, f2);
        float fMax2 = Math.max(fMax, f3);
        DisplayMetrics displayMetrics = textView.getResources().getDisplayMetrics();
        float f6 = z2 ? displayMetrics.density : displayMetrics.scaledDensity;
        float f7 = f6 * 22.0f;
        float f8 = f6 * 13.0f;
        float f9 = f6 * 4.0f;
        float f10 = f6 * 2.0f;
        float f11 = f6 * 1.0f;
        TextPaint textPaint = new TextPaint(textView.getPaint());
        textPaint.setLetterSpacing(textView.getLetterSpacing());
        do {
            f4 = fMax2;
            if (f4 <= fMax || !t0(textView, text, textPaint, f4, measuredWidth, iMax)) {
                break;
            }
            if (f4 >= f7) {
                f5 = f9;
            } else {
                f5 = f4 >= f8 ? f10 : f11;
            }
            fMax2 = Math.max(fMax, f4 - f5);
        } while (fMax2 != f4);
        return f4;
    }

    public static int G(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.heightPixels;
    }

    public static CharSequence G0(CharSequence charSequence) {
        if (charSequence == null || charSequence.length() == 0) {
            return "";
        }
        String strH0 = H0(charSequence.toString());
        return charSequence instanceof Spanned ? new SpannableStringBuilder(charSequence, 0, strH0.length()) : strH0;
    }

    public static int H(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        return displayMetrics.widthPixels;
    }

    public static String H0(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i2 = length - 1;
        char cCharAt = str.charAt(i2);
        if (cCharAt == '.' && i2 >= 2) {
            return (str.charAt(length + (-2)) == '.' && str.charAt(length + (-3)) == '.') ? str : str.substring(0, i2);
        }
        for (char c2 : N) {
            if (cCharAt == c2) {
                return str.substring(0, i2);
            }
        }
        return str;
    }

    public static float[] I(Context context, int i2) {
        int[] iArrJ = J(i2);
        if (iArrJ == null) {
            return null;
        }
        Resources resources = context.getResources();
        return new float[]{resources.getDimensionPixelSize(iArrJ[0]), Math.max(0.0f, Math.min(1.0f, s(resources, iArrJ[1]))), ContextCompat.getColor(context, iArrJ[2])};
    }

    public static void I0(Context context, int i2, int i3, int i4) {
        J0(context, i2, i3, i4, true);
    }

    public static int[] J(int i2) {
        if (i2 == 1) {
            return new int[]{R.dimen.os_shadow_elevation_l1, R.dimen.os_shadow_alpha_l1, R.color.os_shadow_color};
        }
        if (i2 == 2) {
            return new int[]{R.dimen.os_shadow_elevation_l2, R.dimen.os_shadow_alpha_l2, R.color.os_shadow_color};
        }
        if (i2 == 3) {
            return new int[]{R.dimen.os_shadow_elevation_l3, R.dimen.os_shadow_alpha_l3, R.color.os_shadow_color};
        }
        if (i2 != 4) {
            return null;
        }
        return new int[]{R.dimen.os_shadow_elevation_l4, R.dimen.os_shadow_alpha_l4, R.color.os_shadow_color};
    }

    public static void J0(Context context, int i2, int i3, int i4, boolean z2) {
        K0(context, i2, i3, i4, z2, true);
    }

    public static Float K(Context context) {
        Activity activity;
        Context baseContext = context;
        while (true) {
            try {
                try {
                    if (!(baseContext instanceof ContextWrapper)) {
                        activity = null;
                        break;
                    }
                    if (baseContext instanceof Activity) {
                        activity = (Activity) baseContext;
                        break;
                    }
                    baseContext = ((ContextWrapper) baseContext).getBaseContext();
                } catch (ClassCastException e2) {
                    e2.printStackTrace();
                    return null;
                }
            } catch (NoClassDefFoundError e3) {
                bq5.h("widgetslib.Utils", "NoClassDefFoundError - Split embedding class not found. ", e3);
                return null;
            }
        }
        if (activity == null) {
            return null;
        }
        Set<EmbeddingRule> rules = RuleController.getInstance(context).getRules();
        String className = activity.getComponentName().getClassName();
        loop1: for (EmbeddingRule embeddingRule : rules) {
            if (embeddingRule instanceof SplitPairRule) {
                SplitPairRule splitPairRule = (SplitPairRule) embeddingRule;
                for (SplitPairFilter splitPairFilter : splitPairRule.getFilters()) {
                    String className2 = splitPairFilter.getPrimaryActivityName().getClassName();
                    String className3 = splitPairFilter.getSecondaryActivityName().getClassName();
                    boolean zEquals = className2.equals(className);
                    boolean zEquals2 = className3.equals(className);
                    if (zEquals || zEquals2) {
                        try {
                            SplitAttributes.SplitType splitType = splitPairRule.getDefaultSplitAttributes().getSplitType();
                            Field declaredField = SplitAttributes.SplitType.class.getDeclaredField(ES6Iterator.VALUE_PROPERTY);
                            declaredField.setAccessible(true);
                            Float f2 = (Float) declaredField.get(splitType);
                            float fFloatValue = f2.floatValue();
                            if (!Float.isNaN(fFloatValue) && !Float.isInfinite(fFloatValue)) {
                                if (fFloatValue <= 0.0f || fFloatValue >= 1.0f) {
                                    break loop1;
                                    break loop1;
                                }
                                return zEquals ? f2 : Float.valueOf(1.0f - fFloatValue);
                            }
                            bq5.s("widgetslib.Utils", "Invalid split ratio value: " + fFloatValue);
                            return null;
                        } catch (Exception e4) {
                            e4.printStackTrace();
                        }
                    }
                }
            }
        }
        return null;
    }

    public static void K0(Context context, int i2, int i3, int i4, boolean z2, boolean z3) {
        context.setTheme(k(i2, i3, i4));
        if (!(context instanceof ContextThemeWrapper) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        Resources.Theme theme = context.getTheme();
        boolean zW0 = w0(context);
        if (f0()) {
            theme.applyStyle(R.style.OSThemOled, true);
        }
        if (zW0) {
            theme.applyStyle(R.style.OsCurseSupport, true);
            if (z2) {
                theme.applyStyle(R.style.actionbar_no_force_padding, true);
            }
            M0(context, theme, z2);
            if (z3) {
                setWindowInset(context);
            }
        }
    }

    public static int L(Context context) {
        Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static void L0(Window window, boolean z2) {
        if (q0(window.getContext()) && z2) {
            if (Build.VERSION.SDK_INT >= 30) {
                window.setDecorFitsSystemWindows(false);
            }
            window.getAttributes().layoutInDisplayCutoutMode = 3;
            return;
        }
        View decorView = window.getDecorView();
        if (!q0(window.getContext())) {
            decorView.setSystemUiVisibility(1792);
        }
        int systemUiVisibility = decorView.getSystemUiVisibility();
        decorView.setSystemUiVisibility((decorView.getResources().getConfiguration().uiMode & 48) == 32 ? systemUiVisibility & (-17) : systemUiVisibility | 16);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        window.setNavigationBarContrastEnforced(false);
        window.setStatusBarContrastEnforced(false);
    }

    public static int M(Context context, boolean z2, boolean z3) {
        String str;
        if (z2) {
            str = "status_bar_height";
        } else {
            str = z3 ? "navigation_bar_height_landscape" : "navigation_bar_height";
        }
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier(str, "dimen", ConstantDeviceInfo.APP_PLATFORM);
        int dimensionPixelSize = identifier > 0 ? resources.getDimensionPixelSize(identifier) : 0;
        return (z2 || !z3 || Build.VERSION.SDK_INT < 37) ? dimensionPixelSize : dimensionPixelSize - 12;
    }

    public static void M0(Context context, Resources.Theme theme, boolean z2) {
        if (!(context instanceof Activity) || Build.VERSION.SDK_INT < 30 || ((Activity) context).getWindow() == null) {
            return;
        }
        int rotation = context.getDisplay().getRotation();
        if (rotation == 1) {
            if (z2) {
                theme.applyStyle(R.style.OSThemeCurve_90_no_force_padding, true);
            } else {
                theme.applyStyle(l0() ? R.style.OSThemeCurve_90_RTL : R.style.OSThemeCurve_90, true);
            }
            theme.applyStyle(R.style.popup_menu_curse_90, true);
            return;
        }
        if (rotation != 3) {
            if (z2) {
                theme.applyStyle(R.style.OSThemeCurve_0_180_no_force_padding, true);
            } else {
                theme.applyStyle(R.style.OSThemeCurve_0_180, true);
            }
            theme.applyStyle(R.style.popup_menu_curse, true);
            return;
        }
        if (z2) {
            theme.applyStyle(R.style.OSThemeCurve_270_no_force_padding, true);
        } else {
            theme.applyStyle(l0() ? R.style.OSThemeCurve_270_RTL : R.style.OSThemeCurve_270, true);
        }
        theme.applyStyle(R.style.popup_menu_curse_270, true);
    }

    public static String N(String str) {
        return yj1.l(str);
    }

    public static void N0(Context context, Dialog dialog, boolean z2, boolean z3, boolean z4) {
        InsetDrawable insetDrawable;
        if (b0(context) && (!Y(context) || Q(context) || d0(context))) {
            Drawable drawable = g0(context) ? ContextCompat.getDrawable(context, R.drawable.os_smooth_corner12) : ContextCompat.getDrawable(context, R.drawable.os_dialog_bg);
            if (z4) {
                insetDrawable = new InsetDrawable(drawable, 0, h(context, 10), 0, h(context, 10));
            } else {
                bq5.c("widgetslib.Utils", "isGestureNavigationBarOn: " + X(context));
                if (k0(context)) {
                    insetDrawable = new InsetDrawable(drawable, 0, 0, 0, 0);
                } else {
                    Resources resources = context.getResources();
                    int i2 = R.dimen.os_dimen_fold_dialog_top_bottom_inset;
                    insetDrawable = new InsetDrawable(drawable, 0, (int) resources.getDimension(i2), 0, (int) context.getResources().getDimension(i2));
                }
            }
            insetDrawable.setTint(0);
            dialog.getWindow().setBackgroundDrawable(insetDrawable);
            dialog.getWindow().setGravity(17);
            dialog.getWindow().setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
        } else if (q0(context)) {
            Drawable drawable2 = ContextCompat.getDrawable(context, R.drawable.os_dialog_background_small);
            dialog.getWindow().setGravity(17);
            dialog.getWindow().setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
            dialog.getWindow().setBackgroundDrawable(drawable2);
        } else if (z4) {
            Q0(context, dialog.getWindow());
        } else {
            O0(context, dialog, z2, z3);
        }
        C0(context, dialog, z2, z3);
        if (w) {
            Window window = dialog.getWindow();
            int i3 = R.string.os_string_fold_dialog_title_verify;
            window.setTitle(context.getString(i3));
            dialog.getWindow().getAttributes().setTitle(context.getString(i3));
        }
    }

    public static String O(String str, String str2) {
        String strL = yj1.l(str);
        return TextUtils.isEmpty(strL) ? str2 : strL;
    }

    public static void O0(Context context, Dialog dialog, boolean z2, boolean z3) {
        InsetDrawable insetDrawable;
        if (dialog == null) {
            Log.i("widgetslib.Utils", "setDialogWindowBackGround dialog null return");
            return;
        }
        Window window = dialog.getWindow();
        if (window == null) {
            Log.i("widgetslib.Utils", "setDialogWindowBackGround window null return");
            return;
        }
        Resources resources = context.getResources();
        Drawable drawable = g0(context) ? ContextCompat.getDrawable(context, R.drawable.os_smooth_corner12) : ContextCompat.getDrawable(context, R.drawable.os_dialog_bg);
        if (resources.getConfiguration().orientation == 1) {
            boolean z4 = J;
            int iX = z4 ? x(context.getResources()) : (int) resources.getDimension(R.dimen.os_dialog_top_margin);
            if (Z(context)) {
                iX = (int) resources.getDimension(R.dimen.os_ultra_small_dialog_top_margin);
            }
            int i2 = iX;
            if (X(context)) {
                int i3 = R.dimen.os_space200;
                insetDrawable = new InsetDrawable(drawable, (int) resources.getDimension(i3), i2, (int) resources.getDimension(i3), (int) resources.getDimension(R.dimen.os_dialog_bottom_margin));
            } else {
                int i4 = R.dimen.os_space200;
                insetDrawable = new InsetDrawable(drawable, (int) resources.getDimension(i4), i2, (int) resources.getDimension(i4), (int) resources.getDimension(R.dimen.os_dialog_bottom_margin_with_navigation_bar));
            }
            dialog.getWindow().setGravity(80);
            dialog.getWindow().setWindowAnimations(z4 ? o(dialog.getWindow(), context) : R.style.OsInputDialogAnimStyle);
        } else {
            int dimension = (int) resources.getDimension(R.dimen.os_space200);
            int dimension2 = (int) resources.getDimension(R.dimen.os_space350);
            insetDrawable = new InsetDrawable(drawable, dimension, dimension2 - TranSystemBarUtils.getStatusBarHeight(context), dimension, !X(context) ? dimension2 : (int) (dimension2 - x(context.getResources())));
            window.setGravity(17);
            window.setWindowAnimations(R.style.OsInputDialogAnimStyle);
        }
        insetDrawable.setTint(0);
        window.setBackgroundDrawable(insetDrawable);
    }

    public static boolean P(Context context) {
        return yj1.n(context);
    }

    public static void P0(View view, boolean z2) {
        TranView tranView = new TranView();
        if (view == null) {
            return;
        }
        tranView.setForceClipOutShadow(view, z2);
    }

    /* JADX WARN: Code duplicated, block: B:20:0x002c A[Catch: NoClassDefFoundError -> 0x0010, ClassCastException -> 0x0012, TRY_LEAVE, TryCatch #2 {ClassCastException -> 0x0012, NoClassDefFoundError -> 0x0010, blocks: (B:3:0x0001, B:5:0x0005, B:12:0x0017, B:14:0x001b, B:20:0x002c, B:15:0x001e, B:17:0x0022), top: B:25:0x0001 }] */
    /* JADX WARN: Code duplicated, block: B:30:? A[RETURN, SYNTHETIC] */
    public static boolean Q(Context context) {
        Activity activity;
        try {
            if (context instanceof Activity) {
                return ActivityEmbeddingController.getInstance(context).isActivityEmbedded((Activity) context);
            }
            for (Context baseContext = context; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
                if (!(baseContext instanceof Activity)) {
                    if (!(baseContext instanceof ContextWrapper)) {
                        break;
                    }
                } else {
                    activity = (Activity) baseContext;
                }
                if (activity != null) {
                    return ActivityEmbeddingController.getInstance(context).isActivityEmbedded(activity);
                }
                return false;
            }
            activity = null;
            if (activity != null) {
                return ActivityEmbeddingController.getInstance(context).isActivityEmbedded(activity);
            }
            return false;
        } catch (ClassCastException e2) {
            e2.printStackTrace();
            return false;
        } catch (NoClassDefFoundError e3) {
            bq5.h("widgetslib.Utils", "NoClassDefFoundError - ActivityEmbeddingController class not found. ", e3);
            return false;
        }
    }

    public static void Q0(Context context, Window window) {
        InsetDrawable insetDrawable;
        if (window == null) {
            Log.i("widgetslib.Utils", "setDialogWindowBackGround window null return");
            return;
        }
        Resources resources = context.getResources();
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.os_dialog_bg);
        if (resources.getConfiguration().orientation == 1) {
            if (X(context)) {
                int i2 = R.dimen.os_space200;
                insetDrawable = new InsetDrawable(drawable, (int) resources.getDimension(i2), 0, (int) resources.getDimension(i2), (int) resources.getDimension(R.dimen.os_dialog_bottom_margin_with_navigation_bar));
            } else {
                int i3 = R.dimen.os_space200;
                insetDrawable = new InsetDrawable(drawable, (int) resources.getDimension(i3), 0, (int) resources.getDimension(i3), (int) resources.getDimension(R.dimen.os_dialog_bottom_margin_with_navigation_bar));
            }
            window.setGravity(80);
        } else {
            int dimension = (int) resources.getDimension(R.dimen.os_space200);
            int dimension2 = (int) resources.getDimension(R.dimen.os_space350);
            InsetDrawable insetDrawable2 = new InsetDrawable(drawable, dimension, dimension2 - TranSystemBarUtils.getStatusBarHeight(context), dimension, !X(context) ? dimension2 : (int) (dimension2 - x(context.getResources())));
            window.setGravity(17);
            insetDrawable = insetDrawable2;
        }
        insetDrawable.setTint(0);
        window.setBackgroundDrawable(insetDrawable);
        window.setWindowAnimations(R.style.OsInputDialogAnimStyle);
    }

    public static boolean R(String str) {
        if (!TextUtils.isEmpty(str)) {
            String str2 = G;
            if (!TextUtils.isEmpty(str2)) {
                Pattern patternCompile = Pattern.compile("[0-9.]+");
                Matcher matcher = patternCompile.matcher(str2);
                Matcher matcher2 = patternCompile.matcher(str);
                String strGroup = "";
                String strGroup2 = "";
                while (matcher.find()) {
                    strGroup2 = matcher.group();
                }
                while (matcher2.find()) {
                    strGroup = matcher2.group();
                }
                if (strGroup2.equalsIgnoreCase(strGroup)) {
                    return true;
                }
                String[] strArrSplit = strGroup2.split("\\.");
                String[] strArrSplit2 = strGroup.split("\\.");
                for (int i2 = 0; i2 < strArrSplit.length && i2 < strArrSplit2.length; i2++) {
                    int i3 = Integer.parseInt(strArrSplit[i2]);
                    int i4 = Integer.parseInt(strArrSplit2[i2]);
                    if (i3 > i4) {
                        return true;
                    }
                    if (i3 < i4) {
                        return false;
                    }
                }
                if (strArrSplit.length > strArrSplit2.length) {
                    for (int length = strArrSplit2.length; length < strArrSplit.length; length++) {
                        if (Integer.parseInt(strArrSplit[length]) >= 0) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    public static void R0(Context context, Dialog dialog, boolean z2, boolean z3, boolean z4) {
        InsetDrawable insetDrawable;
        int iA = A(context);
        int iH = h(context, 400);
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.os_smooth_corner12);
        int iH2 = h(context, 16);
        if (iA <= iH + (iH2 * 2)) {
            insetDrawable = z4 ? new InsetDrawable(drawable, iH2, 0, iH2, 0) : new InsetDrawable(drawable, iH2, 0, iH2, 0);
        } else if (z4) {
            insetDrawable = new InsetDrawable(drawable, 0, h(context, 10), 0, h(context, 10));
        } else if (k0(context)) {
            insetDrawable = new InsetDrawable(drawable, 0, 0, 0, 0);
        } else {
            Resources resources = context.getResources();
            int i2 = R.dimen.os_dimen_fold_dialog_top_bottom_inset;
            insetDrawable = new InsetDrawable(drawable, 0, (int) resources.getDimension(i2), 0, (int) context.getResources().getDimension(i2));
        }
        insetDrawable.setTint(0);
        dialog.getWindow().setBackgroundDrawable(insetDrawable);
        dialog.getWindow().setGravity(17);
        dialog.getWindow().setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
        C0(context, dialog, z2, z3);
    }

    public static boolean S(Context context) {
        return yj1.o(context);
    }

    public static void S0(Context context, Dialog dialog, boolean z2, boolean z3, boolean z4) {
        Resources resources = context.getResources();
        Drawable drawable = ContextCompat.getDrawable(context, R.drawable.os_smooth_corner12);
        if (resources.getConfiguration().orientation == 1) {
            InsetDrawable insetDrawable = new InsetDrawable(drawable, h(context, 16), ((int) resources.getDimension(R.dimen.os_ultra_small_dialog_top_margin)) - L(context), h(context, 16), (int) context.getResources().getDimension(R.dimen.os_ultra_small_dialog_bottom_margin_with_navigation_bar));
            insetDrawable.setTint(0);
            dialog.getWindow().setBackgroundDrawable(insetDrawable);
            dialog.getWindow().setGravity(80);
            dialog.getWindow().setWindowAnimations(J ? o(dialog.getWindow(), context) : R.style.OsInputDialogAnimStyle);
        } else {
            InsetDrawable insetDrawable2 = new InsetDrawable(drawable, 0, h(context, 20), 0, (int) context.getResources().getDimension(R.dimen.os_ultra_small_dialog_bottom_margin_with_navigation_bar));
            insetDrawable2.setTint(0);
            dialog.getWindow().setBackgroundDrawable(insetDrawable2);
            dialog.getWindow().setGravity(80);
            dialog.getWindow().setWindowAnimations(R.style.OsInputDialogAnimStyle);
        }
        C0(context, dialog, z2, z3);
        if (w) {
            Window window = dialog.getWindow();
            int i2 = R.string.os_string_fold_dialog_title_verify;
            window.setTitle(context.getString(i2));
            dialog.getWindow().getAttributes().setTitle(context.getString(i2));
        }
    }

    public static boolean T(char c2) {
        return (c2 >= 19968 && c2 <= 40959) || (c2 >= 13312 && c2 <= 19903) || (c2 >= 63744 && c2 <= 64255);
    }

    public static void T0(EditText editText) {
        if (editText == null || !editText.isAttachedToWindow()) {
            return;
        }
        editText.requestFocus();
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).showSoftInput(editText, 0);
    }

    public static boolean U(Context context) {
        try {
            int identifier = context.getResources().getIdentifier("zzzzz_tran_display_edge_size", "dimen", ConstantDeviceInfo.APP_PLATFORM);
            return (identifier > 0 ? context.getResources().getDimensionPixelSize(identifier) : 0) > 18;
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static Activity U0(Context context) {
        try {
            if (context instanceof Activity) {
                return (Activity) context;
            }
            if (context instanceof ContextThemeWrapper) {
                Context baseContext = ((ContextThemeWrapper) context).getBaseContext();
                if (baseContext instanceof Activity) {
                    return (Activity) baseContext;
                }
                if (context instanceof ContextThemeWrapper) {
                    return (Activity) ((ContextThemeWrapper) baseContext).getBaseContext();
                }
            }
            return null;
        } catch (ClassCastException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static boolean V(Context context) {
        return yj1.p(context);
    }

    public static void V0(Context context) {
        j43.d(context, false, k(R.style.OSDefaultColorHIOS, R.style.OSDefaultColorXOS, R.style.OSDefaultColorITELOS), 14, 0, true);
    }

    public static boolean W() {
        return "1".equals(N("ro.os_foldable_screen_support"));
    }

    public static boolean X(Context context) {
        return Settings.Secure.getInt(context.getContentResolver(), "navigation_mode", 0) == 2;
    }

    public static boolean Y(Context context) {
        boolean zIsInMultiWindowMode = false;
        try {
            if (context instanceof Activity) {
                zIsInMultiWindowMode = ((Activity) context).isInMultiWindowMode();
            } else if (context instanceof ContextThemeWrapper) {
                Context baseContext = ((ContextThemeWrapper) context).getBaseContext();
                if (baseContext instanceof Activity) {
                    zIsInMultiWindowMode = ((Activity) baseContext).isInMultiWindowMode();
                } else if (context instanceof ContextThemeWrapper) {
                    zIsInMultiWindowMode = ((Activity) ((ContextThemeWrapper) baseContext).getBaseContext()).isInMultiWindowMode();
                }
            }
        } catch (ClassCastException e2) {
            e2.printStackTrace();
        }
        return zIsInMultiWindowMode;
    }

    public static boolean Z(Context context) {
        if (context != null && F && K) {
            try {
                return 2 == new TranWindowManager().getUltraSmallAppMode(context.getPackageName());
            } catch (Exception e2) {
                bq5.h("widgetslib.Utils", "Unexpected error when checking ultra small mode", e2);
                return false;
            } catch (NoSuchMethodError e3) {
                bq5.h("widgetslib.Utils", "NoSuchMethodError - getUltraSmallAppMode() method not found in TranWindowManager", e3);
                return false;
            } catch (SecurityException e4) {
                bq5.h("widgetslib.Utils", "SecurityException - Permission denied when accessing TranWindowManager.getUltraSmallAppMode()", e4);
            }
        }
        return false;
    }

    public static boolean a(Context context) {
        return (b0(context) || c0(context)) && !Z(context) && (!Y(context) || Q(context) || d0(context));
    }

    public static boolean a0() {
        return "ru".equals(Locale.getDefault().getLanguage());
    }

    public static String b(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        boolean z2 = false;
        boolean z3 = false;
        while (i2 < str.length()) {
            char cCharAt = str.charAt(i2);
            boolean zT = T(cCharAt);
            boolean z4 = Character.isLetterOrDigit(cCharAt) && !zT;
            if (zT && z2) {
                sb.append(' ');
            } else if (z4 && z3) {
                sb.append(' ');
            }
            sb.append(cCharAt);
            i2++;
            z3 = zT;
            z2 = z4;
        }
        return sb.toString();
    }

    public static boolean b0(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        return ((float) Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels)) / (((float) displayMetrics.densityDpi) / 160.0f) >= 600.0f && !Z(context);
    }

    public static CharSequence[] c(CharSequence[] charSequenceArr, boolean z2, boolean z3) {
        CharSequence[] charSequenceArr2 = (CharSequence[]) charSequenceArr.clone();
        synchronized (charSequenceArr2) {
            for (int i2 = 0; i2 < charSequenceArr2.length; i2++) {
                try {
                    CharSequence charSequenceB = charSequenceArr2[i2];
                    if (!z3) {
                        charSequenceB = H0(charSequenceB.toString());
                    }
                    if (!z2) {
                        charSequenceB = b(charSequenceB.toString());
                    }
                    charSequenceArr2[i2] = charSequenceB;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return charSequenceArr2;
    }

    public static boolean c0(Context context) {
        int i2;
        Configuration configuration = context.getResources().getConfiguration();
        return g0(context) && u0(context) && configuration != null && (i2 = configuration.smallestScreenWidthDp) != 0 && i2 >= 600 && !Z(context);
    }

    public static void d(Context context, Dialog dialog) {
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        if (window.getAttributes().gravity == 17) {
            window.setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
            return;
        }
        if (Z(context)) {
            if (context.getResources().getConfiguration().orientation == 1) {
                window.setWindowAnimations(J ? o(window, context) : R.style.OsInputDialogAnimStyle);
                return;
            } else {
                window.setWindowAnimations(R.style.OsInputDialogAnimStyle);
                return;
            }
        }
        if (g0(context)) {
            window.setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
            return;
        }
        if (b0(context) && (!Y(context) || Q(context) || d0(context))) {
            window.setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
            return;
        }
        if (q0(context)) {
            window.setWindowAnimations(R.style.OS_Animation_Fold_Dialog);
        } else if (context.getResources().getConfiguration().orientation == 1) {
            window.setWindowAnimations(J ? o(window, context) : R.style.OsInputDialogAnimStyle);
        } else {
            window.setWindowAnimations(R.style.OsInputDialogAnimStyle);
        }
    }

    public static boolean d0(Context context) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
        boolean z2 = displayMetrics.heightPixels >= (context.getResources().getDisplayMetrics().heightPixels << 1);
        bq5.o("isLargerUpDownMultiWindowMode isUpDownMode = " + z2);
        return Y(context) && b0(context) && z2;
    }

    public static void e(View view, float f2) {
        if (view == null) {
            return;
        }
        TranView tranView = new TranView();
        tranView.setLocalLightSourceTranslationEnabled(view, true);
        float[] fArrW = w(view, f2);
        tranView.setLocalLightSourceTranslation(view, fArrW[0], fArrW[1]);
    }

    public static boolean e0(Context context) {
        boolean z2 = (context.getResources().getConfiguration().uiMode & 48) == 32;
        bq5.o("isNightMode = " + z2);
        return z2;
    }

    public static Bitmap f(Context context, Drawable drawable, int i2) {
        return yj1.c(context, drawable, i2);
    }

    public static boolean f0() {
        return yj1.q();
    }

    public static float g(View view) {
        if (view == null) {
            return 0.0f;
        }
        float defaultLightZWhenAttached = new TranView().getDefaultLightZWhenAttached(view);
        if (defaultLightZWhenAttached > 0.5f) {
            return defaultLightZWhenAttached;
        }
        Context context = view.getContext();
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(R.dimen.os_local_light_source_z);
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        return dimensionPixelSize * (((Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / h(context, WebIndicator.MAX_DECELERATE_SPEED_DURATION)) + 2.0f) / 3.0f);
    }

    public static boolean g0(Context context) {
        return z;
    }

    public static int getHardwareType() {
        return yj1.h();
    }

    public static String getOsType() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, "ro.tranos.type");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String getOsVersion() {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, "ro.tranos.version");
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static int getOsVersionCode() {
        StringBuilder sb = new StringBuilder();
        sb.append("getOsVersionCode.version:");
        String str = G;
        sb.append(str);
        sb.append(" type:");
        sb.append(x);
        bq5.j("widgetslib.Utils", sb.toString());
        if (TextUtils.isEmpty(x) || TextUtils.isEmpty(str)) {
            return 0;
        }
        try {
            String strSubstring = str.substring(x.length());
            String[] strArrSplit = strSubstring.split("\\.");
            bq5.j("widgetslib.Utils", "OS version($version) :" + strSubstring);
            if (strArrSplit.length >= 2) {
                return Integer.parseInt(strArrSplit[0]);
            }
            return 0;
        } catch (Exception unused) {
            bq5.g("widgetslib.Utils", "getOsVersionCode: parse fail.version:" + G + " type:" + x);
            return 0;
        }
    }

    public static int getRandomColor() {
        return C(b0);
    }

    public static int h(Context context, int i2) {
        return yj1.d(context, i2);
    }

    public static boolean h0(Context context) {
        if (!Q(context)) {
            return true;
        }
        Float fK = K(context);
        return fK != null && fK.floatValue() * ((float) E(context)) > ((float) h(context, 600));
    }

    public static Bitmap i(Drawable drawable) {
        return yj1.g(drawable);
    }

    public static boolean i0(Context context, WindowManager windowManager) {
        if (windowManager == null) {
            return false;
        }
        DisplayMetrics displayMetrics = new DisplayMetrics();
        windowManager.getDefaultDisplay().getRealMetrics(displayMetrics);
        return Y(context) && g0(context) && (((((float) displayMetrics.heightPixels) * 0.8f) > ((float) context.getResources().getDisplayMetrics().heightPixels) ? 1 : ((((float) displayMetrics.heightPixels) * 0.8f) == ((float) context.getResources().getDisplayMetrics().heightPixels) ? 0 : -1)) >= 0);
    }

    public static void j(View view, boolean z2) {
        if (view == null) {
            return;
        }
        new TranView().setLocalLightSourceTranslationEnabled(view, z2);
    }

    public static boolean j0(Context context) {
        return b0(context) || c0(context);
    }

    public static int k(int i2, int i3, int i4) {
        String osType = getOsType();
        if (TextUtils.isEmpty(osType)) {
            return i2;
        }
        if (e) {
            return i4;
        }
        return osType.equalsIgnoreCase(a[1]) ? i3 : i2;
    }

    public static boolean k0(Context context) {
        return context.getResources().getBoolean(R.bool.os_flag_refs_pad_value);
    }

    public static int l(int i2, int i3, Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i2, typedValue, true) ? context.getColor(typedValue.resourceId) : i3;
    }

    public static boolean l0() {
        return yj1.r();
    }

    public static int m(Context context, int i2, int i3) {
        return l(i2, context.getColor(i3), context);
    }

    public static boolean m0() {
        return yj1.s();
    }

    public static int n(int i2, int i3, Context context) {
        TypedValue typedValue = new TypedValue();
        return context.getTheme().resolveAttribute(i2, typedValue, true) ? context.getResources().getDimensionPixelSize(typedValue.resourceId) : i3;
    }

    public static boolean n0(Context context) {
        return context.getResources().getConfiguration().orientation == 2;
    }

    public static int o(Window window, Context context) {
        View viewFindViewById;
        if (window.getAttributes().gravity == 80 && (viewFindViewById = window.findViewById(android.R.id.content)) != null) {
            int iP = window.getAttributes().width;
            if (iP <= 0) {
                iP = p(context);
            }
            viewFindViewById.measure(View.MeasureSpec.makeMeasureSpec(iP, 1073741824), View.MeasureSpec.makeMeasureSpec(context.getResources().getDisplayMetrics().heightPixels, Integer.MIN_VALUE));
            int measuredHeight = viewFindViewById.getMeasuredHeight();
            int iH = h(context, 330);
            int iH2 = h(context, 560);
            bq5.b("getDialogTranslationAnimStyle: smallLevel = " + iH + " mediumLevel = " + iH2 + " contentHeight = " + measuredHeight);
            if (measuredHeight <= iH) {
                return R.style.OS_Animation_Dialog_Short;
            }
            return measuredHeight <= iH2 ? R.style.OS_Animation_Dialog : R.style.OS_Animation_Dialog_Long;
        }
        return R.style.OS_Animation_Dialog;
    }

    public static boolean o0(Context context) {
        return context.getResources().getConfiguration().orientation == 1;
    }

    public static int p(Context context) {
        float fD;
        float fT = t(context, R.dimen.os_dialog_large_screen_width_weight);
        if (Z(context)) {
            int iE = E(context);
            if (o0(context)) {
                return Q(context) ? iE / 2 : iE;
            }
            if (Q(context)) {
                return ((int) (iE * fT)) / 2;
            }
            fD = iE;
        } else {
            if (g0(context)) {
                int iA = A(context);
                int iH = h(context, 400);
                return iA > (h(context, 16) * 2) + iH ? iH : q(context, fT);
            }
            if (!b0(context) || (Y(context) && !Q(context) && !d0(context))) {
                return q(context, fT);
            }
            fD = (k0(context) && n0(context)) ? D(context) : E(context);
        }
        return (int) (fD * fT);
    }

    public static boolean p0(Window window) {
        return window.getWindowManager().getDefaultDisplay().getRotation() % 2 == 0;
    }

    public static int q(Context context, float f2) {
        if (!o0(context) && ((o0(context) || !Y(context)) && !q0(context))) {
            return (int) (context.getResources().getDisplayMetrics().widthPixels * f2);
        }
        int iH = context.getResources().getDisplayMetrics().widthPixels;
        if (iH <= 70) {
            iH = h(context, context.getResources().getConfiguration().screenWidthDp);
        }
        return iH - (((int) context.getResources().getDimension(R.dimen.os_space200)) * 2);
    }

    public static boolean q0(Context context) {
        bq5.p("widgetslib.Utils", "isSecondHome: OS_FOLD_FLIP_SCREEN_SUPPORT = " + v);
        if (!v || Build.VERSION.SDK_INT < 31 || !context.isUiContext() || context.getDisplay() == null) {
            return false;
        }
        boolean z2 = (context.getDisplay().getFlags() & 2097152) != 0;
        bq5.p("widgetslib.Utils", "isSecondHome: secondHome = " + z2);
        return z2;
    }

    public static int r(Context context) {
        return H ? j43.e(context) : R.style.OS_Dialog_Alert_Base_xos;
    }

    public static boolean r0(Context context) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) context.getSystemService("accessibility");
        return accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled();
    }

    public static float s(Resources resources, int i2) {
        TypedValue typedValue = new TypedValue();
        resources.getValue(i2, typedValue, true);
        return typedValue.getFloat();
    }

    public static boolean s0() {
        String language = Locale.getDefault().getLanguage();
        Q.clear();
        Q.add("ar");
        Q.add("hi");
        Q.add("mr");
        Q.add("ne");
        Q.add("sa");
        Q.add("th");
        Q.add("vi");
        Q.add("my");
        Q.add("km");
        Q.add("bo");
        Q.add("am");
        Q.add("ti");
        return Q.contains(language);
    }

    public static void setBottomWindowFeatures(@NonNull Window window) {
        L0(window, false);
    }

    public static void setDialogWidth(@NonNull Dialog dialog) {
        Context context = dialog.getContext();
        float fT = t(context, R.dimen.os_dialog_large_screen_width_weight);
        if (b0(context) && (!Y(context) || Q(context) || d0(context))) {
            Window window = dialog.getWindow();
            if (window == null) {
                return;
            }
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.width = (int) (((k0(context) && n0(context)) ? D(context) : E(context)) * fT);
            dialog.getWindow().setAttributes(attributes);
            return;
        }
        Window window2 = dialog.getWindow();
        if (window2 == null) {
            return;
        }
        WindowManager.LayoutParams attributes2 = window2.getAttributes();
        if (o0(context) || ((!o0(context) && Y(context)) || q0(context))) {
            int i2 = context.getResources().getDisplayMetrics().widthPixels;
            attributes2.width = i2;
            if (i2 <= 70) {
                attributes2.width = h(context, context.getResources().getConfiguration().screenWidthDp);
            }
        } else {
            attributes2.width = (int) (context.getResources().getDisplayMetrics().widthPixels * fT);
        }
        dialog.getWindow().setAttributes(attributes2);
    }

    public static void setPadDialogWidth(@NonNull Dialog dialog) {
        Context context = dialog.getContext();
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        int iA = A(context);
        int iH = h(context, 400);
        if (iA > (h(context, 16) * 2) + iH) {
            attributes.width = iH;
        } else {
            float fT = t(context, R.dimen.os_dialog_large_screen_width_weight);
            if (o0(context) || ((!o0(context) && Y(context)) || q0(context))) {
                attributes.width = iA;
                if (iA <= 70) {
                    attributes.width = h(context, context.getResources().getConfiguration().screenWidthDp);
                }
            } else {
                attributes.width = (int) (iA * fT);
            }
        }
        dialog.getWindow().setAttributes(attributes);
    }

    public static void setUltraSmallModeDialogWidth(@NonNull Dialog dialog) {
        Context context = dialog.getContext();
        Window window = dialog.getWindow();
        if (window == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        int iE = E(context);
        if (o0(context)) {
            if (Q(context)) {
                attributes.width = iE / 2;
            } else {
                attributes.width = iE;
            }
        } else if (Q(context)) {
            attributes.width = ((int) (iE * t(context, R.dimen.os_dialog_large_screen_width_weight))) / 2;
        } else {
            attributes.width = (int) (iE * t(context, R.dimen.os_dialog_large_screen_width_weight));
        }
        dialog.getWindow().setAttributes(attributes);
    }

    public static void setWindowInset(Context context) {
        if (!(context instanceof Activity) || Build.VERSION.SDK_INT < 30) {
            return;
        }
        ((Activity) context).getWindow().getDecorView().setOnApplyWindowInsetsListener(new a(context));
    }

    public static float t(Context context, int i2) {
        TypedValue typedValue = new TypedValue();
        context.getResources().getValue(i2, typedValue, true);
        return typedValue.getFloat();
    }

    public static boolean t0(TextView textView, CharSequence charSequence, TextPaint textPaint, float f2, int i2, int i3) {
        textPaint.setTextSize(f2);
        StaticLayout staticLayoutBuild = StaticLayout.Builder.obtain(charSequence, 0, charSequence.length(), textPaint, i2).setAlignment(Layout.Alignment.ALIGN_NORMAL).setLineSpacing(textView.getLineSpacingExtra(), textView.getLineSpacingMultiplier()).setIncludePad(textView.getIncludeFontPadding()).setEllipsize(TextUtils.TruncateAt.END).setMaxLines(i3).build();
        int lineCount = staticLayoutBuild.getLineCount();
        return lineCount > i3 || staticLayoutBuild.getEllipsisCount(Math.min(i3 - 1, Math.max(0, lineCount - 1))) > 0;
    }

    public static boolean u(View view, View view2, int i2) {
        int[] iArr = new int[2];
        if (view == null) {
            return false;
        }
        view.getLocationOnScreen(iArr);
        view2.measure(0, 0);
        return (((D(view2.getContext()) - iArr[1]) - view.getHeight()) - x(view2.getResources())) - h(view2.getContext(), view2.getResources().getDimensionPixelSize(R.dimen.os_popup_menu_bg_margin_bottom)) < view2.getMeasuredHeight() * i2;
    }

    public static boolean u0(Context context) {
        try {
            return ((Boolean) Configuration.class.getMethod("isThunderbackWindow", null).invoke(context.getResources().getConfiguration(), null)).booleanValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static float[] v(float f2, float f3) {
        double d2 = (float) ((((double) f3) * 3.141592653589793d) / 180.0d);
        return new float[]{((float) Math.cos(d2)) * f2, ((float) Math.sin(d2)) * f2};
    }

    public static boolean v0(Context context, View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return iArr[1] == 0 && !b0(context) && Y(context);
    }

    public static float[] w(View view, float f2) {
        return v(g(view), f2);
    }

    public static boolean w0(Context context) {
        return yj1.t(context);
    }

    public static int x(Resources resources) {
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM));
    }

    public static boolean x0() {
        return TextUtils.equals(a[1], x) || e;
    }

    public static int y(Context context) {
        TypedValue typedValue = new TypedValue();
        if (context.getTheme().resolveAttribute(R.attr.OsBgPrimary, typedValue, true)) {
            return context.getColor(typedValue.resourceId);
        }
        return -1;
    }

    public static int y0(Context context, ListAdapter listAdapter) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int iD = displayMetrics.widthPixels;
        if (k0(context) && n0(context)) {
            iD = D(context);
        }
        float f2 = iD;
        int iT = (int) (t(context, R.dimen.os_popup_window_width_max_weight) * f2);
        int iH = h(context, 144) - (context.getResources().getDimensionPixelSize(R.dimen.os_space100) * 2);
        bq5.c("widgetslib.Utils", " maxAllowedWidth = " + iT + ", minAllowedWidth = " + iH + ", widthPixels = " + iD);
        if (iT >= iD) {
            iT = (int) (f2 - TypedValue.applyDimension(1, 16.0f, displayMetrics));
        }
        int iZ0 = z0(context, listAdapter, iT, iH);
        bq5.c("widgetslib.Utils", "measureAdapterMaxWidth: width = " + iZ0);
        return iZ0;
    }

    public static int z(Context context) {
        return m(context, R.attr.os_platform_basic_color, R.color.os_platform_basic_color_hios);
    }

    public static int z0(Context context, ListAdapter listAdapter, int i2, int i3) {
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(0, 0);
        int count = listAdapter.getCount();
        FrameLayout frameLayout = new FrameLayout(context);
        View view = null;
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < count; i6++) {
            int itemViewType = listAdapter.getItemViewType(i6);
            if (itemViewType != i5) {
                view = null;
                i5 = itemViewType;
            }
            view = listAdapter.getView(i6, view, frameLayout);
            view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
            int measuredWidth = view.getMeasuredWidth();
            if (measuredWidth >= i2) {
                return i2;
            }
            if (measuredWidth > i4) {
                i4 = measuredWidth;
            }
        }
        return i4 <= i3 ? i3 : i4;
    }
}
