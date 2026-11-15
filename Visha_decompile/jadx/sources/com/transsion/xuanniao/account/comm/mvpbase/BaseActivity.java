package com.transsion.xuanniao.account.comm.mvpbase;

import android.R;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.Toast;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.google.android.material.color.MaterialColors;
import com.transsion.widgetslib.dialog.b;
import com.transsion.widgetslib.dialog.d;
import defpackage.c39;
import defpackage.ia7;
import defpackage.olb;
import defpackage.xj1;
import defpackage.yp7;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;
import java.lang.ref.WeakReference;
import java.util.IllegalFormatConversionException;
import java.util.Locale;
import java.util.UnknownFormatConversionException;

public class BaseActivity extends Activity {
    public Dialog b;
    public float c;
    public float d;

    public class OppO00p implements OnApplyWindowInsetsListener {
        public final boolean a;

        public OppO00p(boolean z) {
            this.a = z;
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            View viewFindViewById = view.findViewById(R.id.content);
            if (viewFindViewById != null) {
                TypedValue typedValue = new TypedValue();
                if (BaseActivity.this.getTheme().resolveAttribute(R.attr.actionBarSize, typedValue, true)) {
                    int iComplexToDimensionPixelSize = TypedValue.complexToDimensionPixelSize(typedValue.data, BaseActivity.this.getResources().getDisplayMetrics());
                    if (this.a) {
                        viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), iComplexToDimensionPixelSize + windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top, viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingBottom());
                    } else {
                        viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), iComplexToDimensionPixelSize + windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).top, viewFindViewById.getPaddingRight(), windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars()).bottom);
                    }
                }
            }
            return windowInsetsCompat;
        }
    }

    public class a extends ContextThemeWrapper {
        public final Configuration a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(BaseActivity baseActivity, Context context, int i, Configuration configuration) {
            super(context, i);
            this.a = configuration;
        }

        @Override
        public void applyOverrideConfiguration(Configuration configuration) {
            configuration.setTo(this.a);
            super.applyOverrideConfiguration(configuration);
        }
    }

    public static boolean s0(Context context) {
        int integer;
        Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_navBarInteractionMode", TypedValues.Custom.S_INT, ConstantDeviceInfo.APP_PLATFORM);
        if (identifier != 0) {
            integer = resources.getInteger(identifier);
        } else {
            Log.d("com.palm.id.log", "Failed to get system resource ID. Incompatible framework version?");
            integer = -1;
        }
        return integer == 2;
    }

    public void A0() {
        try {
            Dialog dialog = this.b;
            if (dialog == null || !dialog.isShowing()) {
                return;
            }
            this.b.dismiss();
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
    }

    @Override
    public void attachBaseContext(Context context) {
        if (!"com.transsion.aivoiceassistant".equals(context.getPackageName())) {
            super.attachBaseContext(context);
            return;
        }
        Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
        Locale locale2 = Locale.getDefault();
        Log.d("com.palm.id.log", "sysLocale = " + locale + ", defLocale = " + locale2);
        if (locale == null || locale == locale2) {
            super.attachBaseContext(context);
            return;
        }
        Locale.setDefault(locale);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(locale);
        super.attachBaseContext(new a(this, context.createConfigurationContext(configuration), com.transsion.xuanniao.account.R.style.Theme_AppCompat_Empty, configuration));
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        View currentFocus;
        if (motionEvent.getAction() == 1) {
            View currentFocus2 = getCurrentFocus();
            if (w0(currentFocus2, motionEvent) && currentFocus2 != null) {
                IBinder windowToken = currentFocus2.getWindowToken();
                if (windowToken != null) {
                    ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(windowToken, 2);
                }
                currentFocus2.clearFocus();
            }
        } else if (motionEvent.getAction() == 0) {
            this.c = motionEvent.getRawX();
            this.d = motionEvent.getRawY();
        } else if (motionEvent.getAction() == 2 && ((Math.abs(motionEvent.getRawX() - this.c) > 50.0f || Math.abs(motionEvent.getRawY() - this.d) > 50.0f) && (currentFocus = getCurrentFocus()) != null)) {
            IBinder windowToken2 = currentFocus.getWindowToken();
            if (windowToken2 != null) {
                ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(windowToken2, 2);
            }
            currentFocus.clearFocus();
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    @Override
    public void onCreate(Bundle bundle) {
        ActionBar actionBar;
        boolean z = getResources().getBoolean(com.transsion.xuanniao.account.R.bool.sdk_theme_disable_dark);
        v0(z);
        boolean z2 = true;
        boolean z3 = Build.VERSION.SDK_INT >= 35;
        if (z3) {
            try {
                ia7.setCustomDensity(this);
            } catch (Throwable unused) {
            }
        }
        olb.V0(this);
        super.onCreate(bundle);
        xj1.b(this);
        if (z && (actionBar = getActionBar()) != null) {
            actionBar.setElevation(0.0f);
        }
        if ("com.transsion.aivoiceassistant".equals(getPackageName())) {
            Locale locale = Resources.getSystem().getConfiguration().getLocales().get(0);
            Window window = getWindow();
            Log.d("com.palm.id.log", "sysLocale = " + locale + ", window = " + window);
            if (locale != null && window != null) {
                int layoutDirectionFromLocale = TextUtils.getLayoutDirectionFromLocale(locale);
                Log.d("com.palm.id.log", "layoutDirection = " + layoutDirectionFromLocale);
                window.getDecorView().setLayoutDirection(layoutDirectionFromLocale);
            }
        }
        if (z3) {
            boolean zS0 = s0(this);
            if (zS0) {
                Window window2 = getWindow();
                int color = MaterialColors.getColor(window2.getContext(), R.attr.colorBackground, -16777216);
                WindowCompat.setDecorFitsSystemWindows(window2, false);
                window2.getContext();
                window2.getContext();
                window2.setStatusBarColor(0);
                window2.setNavigationBarColor(0);
                WindowCompat.getInsetsController(window2, window2.getDecorView()).setAppearanceLightStatusBars(yp7.a(0) || yp7.a(color));
                boolean zA = yp7.a(color);
                if (!yp7.a(0) && !zA) {
                    z2 = false;
                }
                WindowCompat.getInsetsController(window2, window2.getDecorView()).setAppearanceLightNavigationBars(z2);
            }
            ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), new OppO00p(zS0));
        }
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        A0();
        this.b = null;
    }

    @Override
    public void onStart() {
        super.onStart();
        try {
            ia7.setCustomDensity(this);
        } catch (Throwable unused) {
        }
    }

    public final String r0(int i, Object... objArr) {
        if (i == -1) {
            return "";
        }
        try {
            return getString(i, objArr);
        } catch (IllegalFormatConversionException | UnknownFormatConversionException e) {
            e.printStackTrace();
            return "";
        }
    }

    public boolean t0(View view, MotionEvent motionEvent) {
        if (view == null) {
            return false;
        }
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return motionEvent.getX() > ((float) i) && motionEvent.getX() < ((float) (view.getWidth() + i)) && motionEvent.getY() > ((float) i2) && motionEvent.getY() < ((float) (view.getHeight() + i2));
    }

    public void u0(String str) {
        if (isFinishing()) {
            return;
        }
        Dialog dialog = this.b;
        if (dialog != null && dialog.isShowing()) {
            this.b.dismiss();
        }
        try {
            WeakReference weakReference = new WeakReference(this);
            if (weakReference.get() != null) {
                b bVar = new b((Context) weakReference.get());
                bVar.d(str);
                d dVarB = bVar.b();
                this.b = dVarB;
                dVarB.show();
            }
        } catch (Exception e) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e));
        }
    }

    public void v0(boolean z) {
        int i;
        try {
            Resources resources = getResources();
            if (resources.getBoolean(com.transsion.xuanniao.account.R.bool.sdk_theme_is_dynamic)) {
                if (z) {
                    olb.I0(this, com.transsion.xuanniao.account.R.style.XNAppTheme_daylight, com.transsion.xuanniao.account.R.style.XNAppTheme_xos_daylight, com.transsion.xuanniao.account.R.style.XNAppTheme_itel_daylight);
                } else {
                    olb.I0(this, com.transsion.xuanniao.account.R.style.XNAppTheme, com.transsion.xuanniao.account.R.style.XNAppTheme_xos, com.transsion.xuanniao.account.R.style.XNAppTheme_itel);
                }
            } else if (z) {
                int i2 = com.transsion.xuanniao.account.R.style.XNAppTheme_daylight;
                olb.I0(this, i2, i2, i2);
            } else {
                int i3 = com.transsion.xuanniao.account.R.style.XNAppTheme;
                olb.I0(this, i3, i3, i3);
            }
            try {
                i = Integer.parseInt(resources.getString(com.transsion.xuanniao.account.R.string.sdk_orientation_support_mode));
            } catch (Exception e) {
                e.printStackTrace();
                i = 0;
            }
            if (i == 0) {
                setRequestedOrientation(1);
            } else if (i == 1) {
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) getSystemService("window")).getDefaultDisplay().getRealMetrics(displayMetrics);
                float fMin = Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) / (displayMetrics.densityDpi / 160.0f);
                if (!olb.w || fMin < 600.0f) {
                    setRequestedOrientation(1);
                } else {
                    setRequestedOrientation(-1);
                }
            } else if (i != 2) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            if (z) {
                return;
            }
            getWindow().getDecorView().setSystemUiVisibility(getWindow().getDecorView().getSystemUiVisibility() & (-17));
        } catch (Exception e2) {
            Log.d("com.palm.id.log", Log.getStackTraceString(e2));
        }
    }

    public boolean w0(View view, MotionEvent motionEvent) {
        if (!(view instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i = iArr[0];
        int i2 = iArr[1];
        return motionEvent.getX() <= ((float) i) || motionEvent.getX() >= ((float) (view.getWidth() + i)) || motionEvent.getY() <= ((float) i2) || motionEvent.getY() >= ((float) (view.getHeight() + i2));
    }

    public String x0(String str) {
        try {
            return getIntent().getStringExtra(str);
        } catch (Exception unused) {
            return "";
        }
    }

    public void y0(String str) {
        Toast toastMakeText = Toast.makeText(getApplicationContext(), str, 1);
        toastMakeText.setGravity(17, 0, 0);
        toastMakeText.show();
    }

    public int z0() {
        if (Build.VERSION.SDK_INT >= 35 && s0(this)) {
            return c39.a(40.0f);
        }
        Resources resources = getResources();
        int identifier = resources.getIdentifier("navigation_bar_height", "dimen", ConstantDeviceInfo.APP_PLATFORM);
        return (identifier > 0 ? resources.getDimensionPixelSize(identifier) : -1) > 1 ? c39.a(20.0f) : c39.a(30.0f);
    }
}
