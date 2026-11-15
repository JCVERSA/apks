package com.transsion.playercommon.activities;

import android.annotation.SuppressLint;
import android.app.ActivityManager;
import android.app.AppOpsManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.AppCompatDelegate;
import androidx.core.graphics.Insets;
import androidx.core.view.GravityCompat;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;
import androidx.p004lifecycle.ViewModel;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.playercommon.tranquestion.VishaQuestionnaireManager;
import com.transsion.playercommon.utils.MediaVolumeManager;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.dialog.d;
import defpackage.c39;
import defpackage.f5;
import defpackage.fe7;
import defpackage.h27;
import defpackage.ia7;
import defpackage.k29;
import defpackage.m27;
import defpackage.mc7;
import defpackage.oa1;
import defpackage.olb;
import defpackage.pp3;
import defpackage.qha;
import defpackage.se;
import defpackage.t08;
import defpackage.t74;
import defpackage.tha;
import defpackage.vb;
import defpackage.vha;
import defpackage.w6c;
import defpackage.wn9;
import defpackage.wp0;
import defpackage.ydc;
import defpackage.zf1;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class BaseActivity extends BaseFoldActivity implements View.OnSystemUiVisibilityChangeListener, h27.b {
    static final List<Fragment> EMPTY_FRAGMENTS = Collections.unmodifiableList(new ArrayList());
    private static final int HANDLE_UPDATE_THEME_BACKGROUND = 1;
    public static final String PERMISSION_ALERT_WINDOW = "android.permission.SYSTEM_ALERT_WINDOW";
    public static final int PERMISSION_REQUEST_CODE_ALERT_WINDOW = 10;
    public static final String PREFIX = "AppTheme.";
    static final String TAG = "BaseActivity";
    protected int mActivityNavigationColor;
    protected int mActivityStatusBarColor;
    private AppOpsManager mAppOpsManager;
    private Runnable mClearDimBgRunnable;
    private String mCurrentThemeBackgroundKey;
    protected boolean mForceShowSystemBar;
    protected String mFromSource;
    protected boolean mIsAutoRecover;
    protected boolean mIsGestureNavigationEnabled;
    protected boolean mIsInPictureInPictureMode;
    protected boolean mIsLoadCustomSkin;
    protected boolean mIsScreenLandscape;
    protected int mLastSystemUiVis;
    private Bitmap mResBitmap;
    protected int mResetNavigationColor;
    protected boolean mStatusPlayUiShow;
    protected int mWaterFallLeftEdgeSize;
    protected int mWaterFallRightEdgeSize;
    protected int osBgPrimaryColor;
    protected d permissionDialog;
    protected d permissionNewAudioDialog;
    final boolean DEBUG = true;
    protected boolean mResumed = false;
    protected List<Integer> mNotifys = new ArrayList();
    private boolean mNotApplyBackground = false;
    private boolean mVolumeUiDispatchPosted = false;
    private int mLastVolumeKeyCode = 0;
    private final Runnable mDispatchVolumeUiRunnable = new Runnable() {
        @Override
        public final void run() {
            this.b.g0();
        }
    };
    private final Runnable mRunnable = new Runnable() {
        @Override
        public void run() {
            if (BaseActivity.this.needApplyBackground()) {
                BaseActivity baseActivity = BaseActivity.this;
                baseActivity.setThemeWindowBackground(baseActivity.mResBitmap);
            }
        }
    };
    private final Handler mUpdateHandler = new Handler(new Handler.Callback() {
        @Override
        public final boolean handleMessage(Message message) {
            return BaseActivity.h0(message);
        }
    });

    public class a implements OnApplyWindowInsetsListener {
        public a() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            BaseActivity.this.fitWindowInsets(view, windowInsetsCompat);
            return windowInsetsCompat;
        }
    }

    public class b implements OnApplyWindowInsetsListener {
        public b() {
        }

        @Override
        public WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
            BaseActivity.this.fitWindowInsets(view, windowInsetsCompat);
            return windowInsetsCompat;
        }
    }

    public static void d0(Throwable th) {
        Log.e(TAG, "skin setBackground " + th);
    }

    public static boolean h0(Message message) {
        int i = message.what;
        return true;
    }

    public static void i0(Object obj) {
        fe7.i().a(obj);
    }

    public static void j0(DialogInterface dialogInterface, int i) {
    }

    public static void l0(DialogInterface dialogInterface) {
    }

    public static void startActivitySafely(Context context, Intent intent) {
        try {
            context.startActivity(intent);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public final void W(boolean z) {
        Window window;
        if (!isTargetSdkAtLeastBaklava() || shouldApplyLegacySystemBarPadding() || (window = getWindow()) == null) {
            return;
        }
        if (z) {
            window.addFlags(1024);
        } else {
            window.clearFlags(1024);
            WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(hasLightStatusBarBackground() && !isDarkMode());
        }
    }

    public final Context X(Context context) {
        Configuration configuration = context.getResources().getConfiguration();
        configuration.fontScale = 1.0f;
        return context.createConfigurationContext(configuration);
    }

    public final Bundle Y(String str, Bundle bundle) {
        try {
            return (Bundle) Class.forName("android.app.ActivityManager").getDeclaredMethod("hookAppStartingWindowState", String.class, Bundle.class).invoke((ActivityManager) getSystemService(ActivityManager.class), str, bundle);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            e.printStackTrace();
            Log.e(TAG, "hookAppStartingWindowState: " + e.getMessage());
            return null;
        }
    }

    public final void Z() {
        updateWindowDimFlag(true);
    }

    public final Bitmap a0(boolean z, ThemeData themeData, int i, int i2, boolean z2) {
        if (z) {
            if (TextUtils.isEmpty(themeData.path)) {
                return null;
            }
            return tha.f(themeData.path, i, i2, Bitmap.Config.ARGB_8888);
        }
        if (!z2) {
            return null;
        }
        TypedValue typedValue = new TypedValue();
        if (pp3.m()) {
            getTheme().resolveAttribute(R.attr.custom_foldable_screen_window_background, typedValue, true);
        } else {
            getTheme().resolveAttribute(R.attr.custom_window_background, typedValue, true);
        }
        return tha.g(getResources(), typedValue.resourceId, i, i2, Bitmap.Config.ARGB_8888);
    }

    public void adaptForcedEdgeToEdge() {
        Log.i(TAG, "adaptForcedEdgeToEdge " + this);
        Window window = getWindow();
        if (window == null) {
            return;
        }
        WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(hasLightStatusBarBackground() && !((getResources().getConfiguration().uiMode & 48) == 32));
        WindowCompat.setDecorFitsSystemWindows(window, false);
        ViewCompat.setOnApplyWindowInsetsListener(window.getDecorView(), new a());
        ViewCompat.requestApplyInsets(window.getDecorView());
    }

    public void adaptGestureNavigation() {
        Window window;
        Log.e(TAG, "adaptGestureNavigation " + this.mIsGestureNavigationEnabled + StringUtils.COMMA + this);
        if (this.mIsGestureNavigationEnabled && (window = getWindow()) != null) {
            WindowCompat.getInsetsController(window, window.getDecorView()).setAppearanceLightStatusBars(!((getResources().getConfiguration().uiMode & 48) == 32));
            window.setNavigationBarColor(0);
            WindowCompat.setDecorFitsSystemWindows(window, false);
            ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView(), new b());
        }
    }

    public void adaptSystemUiBarColor() {
        View decorView = getWindow().getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        int i = !isDarkMode() ? systemUiVisibility | 8192 : systemUiVisibility & 8192;
        getWindow().setStatusBarColor(0);
        getWindow().setNavigationBarColor(this.mResetNavigationColor);
        decorView.setSystemUiVisibility(i);
    }

    @Override
    public void attachBaseContext(Context context) {
        AppCompatDelegate.setDefaultNightMode(getDarkMode(context));
        if (isFollowSystemFont()) {
            super.attachBaseContext(context);
        } else {
            super.attachBaseContext(X(context));
        }
    }

    public final Bitmap b0(final boolean z, final ThemeData themeData, final boolean z2, Integer num) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        getWindowManager().getDefaultDisplay().getMetrics(displayMetrics);
        final int i = displayMetrics.widthPixels;
        final int i2 = displayMetrics.heightPixels;
        String str = this.mCurrentThemeBackgroundKey;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        Bitmap bitmapD = wn9.c().d(str, new wn9.a() {
            @Override
            public final Bitmap a() {
                return this.a.a0(z, themeData, i, i2, z2);
            }
        });
        this.mResBitmap = bitmapD;
        return bitmapD;
    }

    public FragmentTransaction beginTransaction() {
        Log.i(TAG, "beginTransaction");
        return getSupportFragmentManager().beginTransaction();
    }

    public FragmentTransaction beginTransactionAnimation() {
        Log.i(TAG, "beginTransactionAnimation");
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_open_enter, R.anim.activity_open_exit);
        return fragmentTransactionBeginTransaction;
    }

    public FragmentTransaction beginTransactionBackAnimation() {
        Log.i(TAG, "beginTransactionBackAnimation");
        FragmentTransaction fragmentTransactionBeginTransaction = getSupportFragmentManager().beginTransaction();
        fragmentTransactionBeginTransaction.setCustomAnimations(R.anim.activity_close_enter, R.anim.activity_close_exit);
        return fragmentTransactionBeginTransaction;
    }

    public final void c0(Bitmap bitmap) {
        if (bitmap == null || bitmap.isRecycled()) {
            return;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        bitmapDrawable.setFilterBitmap(true);
        getWindow().setBackgroundDrawable(bitmapDrawable);
        finishSetWindowBackground();
    }

    public void callAlertWindowPermission(boolean z) {
        if (z) {
            f5.b(new Intent("android.settings.PICTURE_IN_PICTURE_SETTINGS", Uri.parse("package:" + getPackageName())), BaseConstant.b, this);
            return;
        }
        f5.b(new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION", Uri.parse("package:" + getPackageName())), 1234, this);
        Log.d(TAG, "callAlertWindowPermission");
    }

    public void changeBackgroundForOnlineVideo(boolean z, int i) {
    }

    public void changeTabOperationBarItem(int i) {
    }

    @Override
    public void changeThemeWindowBackground() {
        super.changeThemeWindowBackground();
        if (this.mResBitmap != null) {
            this.mUpdateHandler.removeCallbacks(this.mRunnable);
            this.mUpdateHandler.postDelayed(this.mRunnable, 200L);
        }
    }

    public void clearWindowDimFlag(boolean z) {
        if (Build.VERSION.SDK_INT > 34 && z && !ydc.g()) {
            getWindow().clearFlags(2);
            setTranslucent(false);
        }
    }

    public void convertSelectItem(MediaItem mediaItem, boolean z) {
    }

    public void delayAddWindowDimFlag(long j) {
        if (Build.VERSION.SDK_INT <= 34 || !ydc.g()) {
            return;
        }
        if (this.mClearDimBgRunnable == null) {
            this.mClearDimBgRunnable = new Runnable() {
                @Override
                public final void run() {
                    this.b.Z();
                }
            };
        }
        getWindow().getDecorView().postDelayed(this.mClearDimBgRunnable, j);
    }

    public void didReceivedNotification(int i, Object... objArr) {
    }

    public final void e0(float f) {
        if (!isOnResumed() || oa1.d()) {
            return;
        }
        MediaVolumeManager.s().D(this, f, true);
    }

    public void enterCloudUploadEditMode(boolean z, int i) {
    }

    public void enterEditMode(boolean z) {
    }

    public final void f0(boolean z) {
        try {
            final float fX = (MediaVolumeManager.s().x(z) * 100.0f) / 2.0f;
            ThreadUtils.s(new Runnable() {
                @Override
                public final void run() {
                    this.b.e0(fX);
                }
            });
        } catch (Exception e) {
            Log.e(TAG, "playSoundByKeyEvent failed", e);
        }
    }

    public void finishSetWindowBackground() {
    }

    public void fitWindowInsets(@NonNull View view, @NonNull WindowInsetsCompat windowInsetsCompat) {
        View viewFindViewById = findViewById(android.R.id.content);
        if (viewFindViewById == null) {
            return;
        }
        Insets insets = windowInsetsCompat.getInsets(WindowInsetsCompat.Type.systemBars() | WindowInsetsCompat.Type.displayCutout());
        if (!isTargetSdkAtLeastBaklava()) {
            if (this.mIsGestureNavigationEnabled) {
                Log.e(TAG, "onApplyWindowInsets " + insets.top + StringUtils.COMMA + this);
                viewFindViewById.setPadding(0, insets.top, 0, 0);
                return;
            }
            return;
        }
        if (shouldApplyLegacySystemBarPadding()) {
            Log.i(TAG, "fitWindowInsets(targetBaklava) ltrb=" + insets.left + StringUtils.COMMA + insets.top + StringUtils.COMMA + insets.right + StringUtils.COMMA + insets.bottom + StringUtils.COMMA + this);
            viewFindViewById.setPadding(insets.left, insets.top, insets.right, insets.bottom);
        }
    }

    public void forceShowSystemBar(boolean z, boolean z2) {
        Log.d(TAG, "forceShowSystemBar:" + z);
        if (z2) {
            this.mForceShowSystemBar = z;
            return;
        }
        if (Build.VERSION.SDK_INT > 29) {
            setNavVisibility(true);
        } else {
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            int i = !z ? systemUiVisibility | 5888 : systemUiVisibility & (-5889);
            int i2 = i & (-4);
            if (!this.mIsScreenLandscape) {
                i2 = i & (-8);
            }
            getWindow().getDecorView().setSystemUiVisibility(i2);
        }
        this.mForceShowSystemBar = z;
    }

    public final void g0() {
        try {
            this.mVolumeUiDispatchPosted = false;
            if (isOnResumed()) {
                int i = this.mLastVolumeKeyCode;
                if (i == 24 || i == 25) {
                    final boolean z = i == 24;
                    ThreadUtils.n().execute(new Runnable() {
                        @Override
                        public final void run() {
                            this.b.f0(z);
                        }
                    });
                }
            }
        } catch (Exception e) {
            Log.e(TAG, "dispatch volume ui failed", e);
        }
    }

    public int getDarkMode() {
        return getDarkMode(this);
    }

    public int getFragmentContentId() {
        return 0;
    }

    public List<Fragment> getFragments() {
        return getSupportFragmentManager().getFragments();
    }

    public String getFromSource() {
        return this.mFromSource;
    }

    @Override
    public Resources getResources() {
        Resources resources = super.getResources();
        ia7.h(resources, this);
        return resources;
    }

    @Override
    public <T extends ViewModel> T getViewModel(Class<T> cls) {
        return (T) new ViewModelProvider(this).get(cls);
    }

    public boolean hasLightStatusBarBackground() {
        return shouldApplyLegacySystemBarPadding();
    }

    public void initNotify() {
    }

    public boolean isAlertWindowPermissionGranted() {
        return Settings.canDrawOverlays(this);
    }

    public boolean isDarkMode() {
        return (getResources().getConfiguration().uiMode & 48) == 32;
    }

    public boolean isFollowSystemFont() {
        return true;
    }

    public boolean isOnResumed() {
        return this.mResumed;
    }

    public boolean isPictureModeAllowed() {
        if (this.mAppOpsManager == null) {
            this.mAppOpsManager = (AppOpsManager) se.a().getSystemService("appops");
        }
        return this.mAppOpsManager.checkOpNoThrow("android:picture_in_picture", getApplicationInfo().uid, getPackageName()) == 0;
    }

    public boolean isSupportAdaptGestureNavigation() {
        return false;
    }

    public boolean isTargetSdkAtLeastBaklava() {
        return getApplicationInfo().targetSdkVersion >= 36;
    }

    public final void k0(DialogInterface dialogInterface, int i) {
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("packagename", getPackageName());
        intent.putExtra("android.provider.extra.APP_PACKAGE", getPackageName());
        try {
            f5.b(intent, 131, this);
        } catch (Exception unused) {
            Intent intent2 = new Intent(BasePermissionActivity.PERMISSION_ACTION_OTHER);
            intent2.setData(Uri.fromParts("package", getPackageName(), null));
            try {
                f5.b(intent2, 131, this);
            } catch (ActivityNotFoundException e) {
                Log.e(TAG, e.getMessage());
            }
        }
    }

    @SuppressLint({"CheckResult"})
    public int loadSkin(boolean z) {
        String str;
        boolean z2;
        int i;
        ThemeData themeData = (ThemeData) w6c.f(getBaseContext(), "skin_theme");
        Log.d(TAG, "Loading theme =" + themeData + ", setBackground:" + z);
        if (themeData != null && (str = themeData.name) != null) {
            Resources resources = getResources();
            int i2 = R.string.default_skin;
            if (!str.equals(resources.getString(i2))) {
                String str2 = themeData.description;
                boolean z3 = str2 != null;
                this.mIsLoadCustomSkin = true;
                if (!z3) {
                    str2 = "AppTheme." + themeData.name;
                }
                this.mCurrentThemeBackgroundKey = str2;
                Log.d(TAG, "Loading isNotLocalTheme:" + z3);
                if (z3) {
                    int identifier = getResources().getIdentifier(themeData.description, "style", getPackageName());
                    LogUtils.O("setAppThemesetAppTheme resourceID2");
                    getTheme().applyStyle(identifier, true);
                    if (TextUtils.isEmpty(themeData.path)) {
                        i = themeData.backgroundType == 1 ? 1 : 2;
                        if (needApplyBackground()) {
                            try {
                                int i3 = themeData.backgroundType;
                                if (i3 == 1) {
                                    getWindow().setBackgroundDrawableResource(R.drawable.bg_window_skin_custom);
                                } else if (i3 == 2) {
                                    getWindow().setBackgroundDrawableResource(R.drawable.bg_window_skin_custom_night);
                                }
                            } catch (Exception e) {
                                Log.e(TAG, "loadSkin custom setBackground failed", e);
                            }
                        }
                    } else {
                        i = themeData.darkMode == 0 ? 2 : 1;
                    }
                    z2 = false;
                } else {
                    int identifier2 = getResources().getIdentifier("AppTheme." + themeData.name, "style", getPackageName());
                    z2 = identifier2 != 0;
                    if (z2) {
                        boolean z4 = ydc.g() || com.transsion.utils.a.A();
                        if ((z4 && !vha.a.contains(themeData.name) && !qha.a(themeData.name)) || (!z4 && !vha.b.contains(themeData.name) && !qha.a(themeData.name))) {
                            Log.w(TAG, "loadSkin no default this theme");
                            this.mIsLoadCustomSkin = false;
                            w6c.w(getBaseContext(), "skin_theme", new ThemeData(getResources().getString(i2), (String) null, (String) null));
                            return -1;
                        }
                        LogUtils.O("setAppThemesetAppTheme resourceID");
                        getTheme().applyStyle(identifier2, true);
                        TypedValue typedValue = new TypedValue();
                        getTheme().resolveAttribute(R.attr.dark_theme, typedValue, true);
                        i = typedValue.data != 0 ? 2 : 1;
                    } else {
                        Log.e(TAG, "no theme match");
                        i = -1;
                    }
                }
                if (needApplyBackground()) {
                    getWindow().setBackgroundDrawable(i == 2 ? new ColorDrawable(-16777216) : new ColorDrawable(-1));
                }
                m0(z, z3, z2, themeData);
                getWindow().setStatusBarColor(0);
                this.mActivityNavigationColor = getWindow().getNavigationBarColor();
                return i;
            }
        }
        AppCompatDelegate.setDefaultNightMode(-1);
        if (needApplyBackground()) {
            try {
                getWindow().setBackgroundDrawableResource(R.drawable.os_window_background);
            } catch (Exception e2) {
                Log.e(TAG, "loadSkin setBackground failed", e2);
            }
        }
        return -1;
    }

    public final void m0(boolean z, final boolean z2, final boolean z3, final ThemeData themeData) {
        if (needApplyBackground() && z) {
            mc7.K(1).g(bindToLifecycle()).L(new t74() {
                @Override
                public final Object apply(Object obj) {
                    return this.b.b0(z2, themeData, z3, (Integer) obj);
                }
            }).d0(k29.c()).M(vb.a()).a0(new zf1() {
                @Override
                public final void accept(Object obj) {
                    this.b.c0((Bitmap) obj);
                }
            }, new zf1() {
                @Override
                public final void accept(Object obj) {
                    BaseActivity.d0((Throwable) obj);
                }
            });
        }
    }

    public final void n0(int i) {
        this.mLastVolumeKeyCode = i;
        if (this.mVolumeUiDispatchPosted) {
            return;
        }
        this.mVolumeUiDispatchPosted = true;
        Window window = getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.post(this.mDispatchVolumeUiRunnable);
        } else {
            ThreadUtils.o().post(this.mDispatchVolumeUiRunnable);
        }
    }

    public boolean needApplyBackground() {
        return !this.mNotApplyBackground;
    }

    public final void o0() {
        WindowInsetsController insetsController;
        if (Build.VERSION.SDK_INT <= 29 || (insetsController = getWindow().getInsetsController()) == null) {
            return;
        }
        if (this.mIsScreenLandscape) {
            W(true);
            insetsController.hide(WindowInsets.Type.statusBars());
        } else {
            W(false);
            insetsController.setSystemBarsBehavior(1);
            insetsController.show(WindowInsets.Type.statusBars());
        }
    }

    @Override
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 131 && t08.i(this)) {
            h27.c().e(1117, new Object[0]);
        } else if (i == 132) {
            m27.e(false);
        }
    }

    public void onBackNavigationStateChanged() {
    }

    public void onConfigurationChangedOnlySuper(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        boolean z = false;
        this.mIsAutoRecover = bundle != null;
        int darkMode = getDarkMode();
        AppCompatDelegate.setDefaultNightMode(darkMode);
        vha.u(this);
        super.onCreate(bundle);
        loadSkin(true);
        olb.setWindowInset(this);
        this.osBgPrimaryColor = olb.f0() ? R.color.os_bg_primary_oled_color : R.color.os_bg_primary_color;
        getWindow().requestFeature(8);
        supportRequestWindowFeature(1);
        Resources.Theme theme = getTheme();
        if (theme != null) {
            theme.applyStyle(pp3.x(this) ? R.style.OSThemeCurve : R.style.OSThemeNoCurve, true);
        }
        if (pp3.x(getApplicationContext())) {
            ViewGroup viewGroup = (ViewGroup) findViewById(android.R.id.content);
            this.mWaterFallLeftEdgeSize = pp3.g(this);
            int iH = pp3.h(this);
            this.mWaterFallRightEdgeSize = iH;
            viewGroup.setPadding(this.mWaterFallLeftEdgeSize, 0, iH, 0);
        }
        this.mIsScreenLandscape = getResources().getConfiguration().orientation == 2;
        initNotify();
        registerNotify();
        this.mActivityNavigationColor = getWindow().getNavigationBarColor();
        this.mActivityStatusBarColor = getWindow().getStatusBarColor();
        this.mResetNavigationColor = getColor(R.color.os_bg_primary_color);
        VishaQuestionnaireManager.c().r(this, getClass().getSimpleName());
        Log.i(TAG, "onCreate darkMode:" + darkMode + StringUtils.COMMA + String.format("0x%08x", Integer.valueOf(this.mResetNavigationColor)) + StringUtils.COMMA + this);
        if (!pp3.H && isSupportAdaptGestureNavigation() && com.transsion.utils.a.t(this)) {
            z = true;
        }
        this.mIsGestureNavigationEnabled = z;
        if (isTargetSdkAtLeastBaklava()) {
            adaptForcedEdgeToEdge();
        } else {
            adaptGestureNavigation();
        }
    }

    @Override
    public void onDestroy() {
        Window window = getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.removeCallbacks(this.mDispatchVolumeUiRunnable);
        }
        this.mVolumeUiDispatchPosted = false;
        this.mUpdateHandler.removeCallbacksAndMessages(null);
        TaskExecutor.c(new Runnable() {
            @Override
            public final void run() {
                BaseActivity.i0(this);
            }
        });
        Glide.get(this).clearMemory();
        removeNotify();
        VishaQuestionnaireManager.c().m(this);
        MediaVolumeManager.s().o();
        super.onDestroy();
        Log.d(TAG, "onDestroy:" + this);
    }

    public void onFinishRequestPermission(int i, boolean z) {
        for (Fragment fragment : getFragments()) {
            if (fragment instanceof BaseFragment) {
                BaseFragment.cast(fragment).onFinishRequestPermission(i, z);
            }
        }
    }

    @Override
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 24 && isOnResumed()) {
            n0(24);
            return true;
        }
        if (i != 25 || !isOnResumed()) {
            return super.onKeyDown(i, keyEvent);
        }
        n0(25);
        return true;
    }

    @Override
    public void onPause() {
        this.mResumed = false;
        Window window = getWindow();
        View decorView = window != null ? window.getDecorView() : null;
        if (decorView != null) {
            decorView.removeCallbacks(this.mDispatchVolumeUiRunnable);
        }
        this.mVolumeUiDispatchPosted = false;
        super.onPause();
        Log.d(TAG, "onPause()" + this);
        MediaVolumeManager.s().o();
    }

    @Override
    @RequiresApi(api = 26)
    public void onPictureInPictureModeChanged(boolean z, Configuration configuration) {
        super.onPictureInPictureModeChanged(z, configuration);
        this.mIsInPictureInPictureMode = z;
    }

    @Override
    public void onRequestPermissionsResult(int i, @NonNull String[] strArr, @NonNull int[] iArr) {
        Log.d(TAG, "onRequestPermissionsResult requestCode:" + i);
        if (i == 10) {
            onFinishRequestPermission(i, permissionGranted(PERMISSION_ALERT_WINDOW));
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override
    public void onResume() {
        this.mResumed = true;
        super.onResume();
        Log.d(TAG, "onResume()" + this);
        if (m27.a(this)) {
            showNotificationPermissionDialog();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        Log.d(TAG, "onStart()" + this);
    }

    public void onSystemUiVisibilityChange(int i) {
        int i2 = this.mLastSystemUiVis ^ i;
        this.mLastSystemUiVis = i;
        if ((i2 & 2) == 0 || (i & 2) != 0) {
            return;
        }
        if (!this.mStatusPlayUiShow) {
            setStatusPlayUiShow();
        }
        setNavVisibility(true);
    }

    public boolean permissionGranted(String str) {
        return checkSelfPermission(str) == 0;
    }

    public void registerNotify() {
        List<Integer> list = this.mNotifys;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            h27.c().b(this, it.next().intValue());
        }
    }

    public void removeCurrentThemeCache() {
        if (this.mCurrentThemeBackgroundKey != null) {
            wp0.a().d(this.mCurrentThemeBackgroundKey);
            if (this.mCurrentThemeBackgroundKey.equals(wn9.c().b())) {
                wn9.c().a();
            }
        }
        vha.a();
        this.mResBitmap = null;
    }

    public void removeNotify() {
        List<Integer> list = this.mNotifys;
        if (list == null) {
            return;
        }
        Iterator<Integer> it = list.iterator();
        while (it.hasNext()) {
            h27.c().f(this, it.next().intValue());
        }
    }

    public void removeSplashSnapshot() {
        Bundle bundle = new Bundle();
        bundle.putString("method", "removeSplashSnapshot");
        bundle.putInt("userId", 0);
        Y(getPackageName(), bundle);
    }

    public void requestedChangeOrientation(int i) {
    }

    public void resetNavigationBarColor(boolean z) {
        if (this.mActivityNavigationColor == 0) {
            return;
        }
        if (z) {
            getWindow().setNavigationBarColor(this.mIsGestureNavigationEnabled ? 0 : this.mResetNavigationColor);
        } else {
            getWindow().setNavigationBarColor(this.mActivityNavigationColor);
        }
    }

    public void selectItems(ArrayList arrayList, boolean z, boolean z2) {
    }

    @SuppressLint({"UseCompatLoadingForDrawables"})
    public void setDefaultWindowBackground() {
        if (needApplyBackground()) {
            try {
                getWindow().setBackgroundDrawable(getResources().getDrawable(R.drawable.os_window_background, getTheme()));
            } catch (Exception e) {
                Log.e(TAG, "setDefaultWindowBackground failed", e);
            }
        }
    }

    public void setEnabled(int i, boolean z) {
    }

    public void setForceNotApplyBackground(boolean z) {
        this.mNotApplyBackground = z;
    }

    public void setFromSource(String str) {
        this.mFromSource = str;
    }

    public void setInConvertPage(boolean z) {
    }

    public void setNavVisibility(boolean z) {
        int i;
        int iStatusBars;
        int iCaptionBar;
        this.mStatusPlayUiShow = z;
        if (this.mIsInPictureInPictureMode) {
            return;
        }
        if (this.mForceShowSystemBar) {
            o0();
            return;
        }
        if (Build.VERSION.SDK_INT > 29) {
            WindowInsetsController insetsController = getWindow().getInsetsController();
            if (insetsController != null) {
                if (z) {
                    boolean z2 = (this.mIsScreenLandscape || isInSplitScreen(false)) ? false : true;
                    W(!z2);
                    if (z2) {
                        insetsController.setSystemBarsBehavior(1);
                    }
                    if (this.mIsScreenLandscape) {
                        insetsController.hide(WindowInsets.Type.statusBars());
                    }
                    if (isInSplitScreen(false)) {
                        insetsController.show(WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.captionBar());
                    } else {
                        if (this.mIsScreenLandscape) {
                            iStatusBars = WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout();
                            iCaptionBar = WindowInsets.Type.captionBar();
                        } else {
                            iStatusBars = WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout();
                            iCaptionBar = WindowInsets.Type.captionBar();
                        }
                        insetsController.show(iStatusBars | iCaptionBar);
                    }
                } else {
                    W(true);
                    if (isInSplitScreen(false)) {
                        getWindow().setDecorFitsSystemWindows(true ^ this.mIsScreenLandscape);
                        insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.captionBar());
                    } else {
                        getWindow().setDecorFitsSystemWindows(false);
                        insetsController.hide(WindowInsets.Type.statusBars() | WindowInsets.Type.navigationBars() | WindowInsets.Type.displayCutout() | WindowInsets.Type.captionBar());
                    }
                    insetsController.setSystemBarsBehavior(2);
                }
            }
        } else {
            if (isInMultiWindowMode()) {
                return;
            }
            int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
            int i2 = systemUiVisibility | 5888;
            if (z) {
                i = i2 & (-4);
                if (!this.mIsScreenLandscape) {
                    i = i2 & (-8);
                }
            } else {
                i = systemUiVisibility | 5895;
            }
            getWindow().getDecorView().setSystemUiVisibility(i);
        }
        Log.d(TAG, "setNavVisibility visible:" + z + StringUtils.COMMA + this.mIsScreenLandscape);
    }

    public void setStatusPlayUiShow() {
    }

    public void setThemeWindowBackground(Bitmap bitmap) {
        Log.e(TAG, "setThemeWindowBackground " + this);
        if (bitmap == null || !needApplyBackground()) {
            return;
        }
        BitmapDrawable bitmapDrawable = new BitmapDrawable(getResources(), bitmap);
        bitmapDrawable.setFilterBitmap(true);
        getWindow().setBackgroundDrawable(bitmapDrawable);
        finishSetWindowBackground();
    }

    public void setWindowBackground(boolean z) {
        if (needApplyBackground()) {
            if (z) {
                getWindow().setBackgroundDrawableResource(R.color.black);
            } else {
                LogUtils.j(TAG, "osBgPrimaryColor:" + this.osBgPrimaryColor);
                getWindow().setBackgroundDrawableResource(this.osBgPrimaryColor);
            }
        }
        setWindowFullScreen(z);
    }

    public void setWindowFullScreen(boolean z) {
        int systemUiVisibility = getWindow().getDecorView().getSystemUiVisibility();
        if (z) {
            getWindow().setStatusBarColor(0);
            getWindow().setNavigationBarColor(0);
            getWindow().getDecorView().setSystemUiVisibility(systemUiVisibility & (-8209));
            return;
        }
        LogUtils.j(TAG, "osBgPrimaryColor:" + this.osBgPrimaryColor);
        getWindow().setStatusBarColor(getColor(this.osBgPrimaryColor));
        getWindow().setNavigationBarColor(getColor(this.osBgPrimaryColor));
        getWindow().getDecorView().setSystemUiVisibility((systemUiVisibility & (-8193)) | 16);
    }

    public boolean shouldApplyLegacySystemBarPadding() {
        return true;
    }

    public void showNotificationPermissionDialog() {
        Log.e(TAG, "showNotificationPermissionDialog ");
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            aVar.E(LayoutInflater.from(this).inflate(R.layout.dialog_media_notification_permission, (ViewGroup) null, false));
            aVar.m(R.string.sniffer_notice_not_open, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    BaseActivity.j0(dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(R.string.sniffer_notice_go_setting, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.k0(dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    BaseActivity.l0(dialogInterface);
                }
            });
            if (this.permissionDialog.isShowing()) {
                return;
            }
            this.permissionDialog.show();
            m27.f();
            m27.g();
        }
    }

    @Override
    public void startActivity(Intent intent) {
        f5.c(intent, this);
    }

    public void triggerMenuSwitch(int i) {
    }

    public void updateWebWindowParams(WindowManager.LayoutParams layoutParams) {
        updateWebWindowParams(layoutParams, false);
    }

    public void updateWindowDimFlag(boolean z) {
        if (Build.VERSION.SDK_INT <= 34 || !ydc.g()) {
            return;
        }
        Window window = getWindow();
        if (z) {
            window.addFlags(2);
        } else {
            getWindow().getDecorView().removeCallbacks(this.mClearDimBgRunnable);
            window.clearFlags(2);
        }
    }

    public void enterEditMode(boolean z, int i, boolean z2) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a3, code lost:
    
        if (r8 == 0) goto L18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getDarkMode(Context context) {
        String str;
        if (context == null) {
            return -1;
        }
        ThemeData themeData = (ThemeData) w6c.f(context, "skin_theme");
        Resources resources = context.getResources();
        if (themeData == null || (str = themeData.name) == null || str.equals(resources.getString(R.string.default_skin))) {
            return -1;
        }
        if (themeData.description != null) {
            return !TextUtils.isEmpty(themeData.path) ? 2 : 2;
        }
        if (resources.getIdentifier("AppTheme." + themeData.name, "style", context.getPackageName()) == 0) {
            return -1;
        }
        boolean z = ydc.g() || com.transsion.utils.a.A();
        if ((z && !vha.a.contains(themeData.name) && !qha.a(themeData.name)) || ((!z && !vha.b.contains(themeData.name) && !qha.a(themeData.name)) || (r8 = vha.m(context, themeData, R.attr.dark_theme)) == -1)) {
            return -1;
        }
    }

    public void updateWebWindowParams(WindowManager.LayoutParams layoutParams, boolean z) {
        if (layoutParams != null) {
            layoutParams.height = -1;
            if (isInMultiWindowMode() || z) {
                layoutParams.width = -1;
            } else if (this.mScreenType == BaseConstant.SCREEN_TYPE.FOLD) {
                layoutParams.width = -1;
                layoutParams.gravity = GravityCompat.END;
            } else {
                layoutParams.width = (int) (((double) c39.f()) * 0.7d);
                layoutParams.gravity = GravityCompat.END;
            }
            getWindow().setAttributes(layoutParams);
        }
    }
}
