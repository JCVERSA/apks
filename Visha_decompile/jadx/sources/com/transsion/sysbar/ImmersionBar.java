package com.transsion.sysbar;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowInsets;
import android.view.WindowInsetsController;
import android.view.WindowManager;
import android.widget.FrameLayout;
import androidx.annotation.ColorInt;
import androidx.annotation.ColorRes;
import androidx.annotation.FloatRange;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.GravityCompat;
import androidx.drawerlayout.widget.DrawerLayout;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import androidx.media3.common.C;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import com.google.android.material.color.utilities.Contrast;
import defpackage.ax3;
import defpackage.b27;
import defpackage.c80;
import defpackage.cf7;
import defpackage.ff7;
import defpackage.gt8;
import defpackage.me7;
import defpackage.pu9;
import defpackage.sb7;
import defpackage.tf1;
import java.util.HashMap;
import java.util.Map;

@TargetApi(19)
public final class ImmersionBar implements ImmersionCallback {
    private int mActionBarHeight;
    private final Activity mActivity;
    private com.transsion.sysbar.a mBarConfig;
    private c80 mBarParams;
    private ViewGroup mContentView;
    private ViewGroup mDecorView;
    private Dialog mDialog;
    private ax3 mFitsKeyboard;
    private int mFitsStatusBarType;
    private Fragment mFragment;
    private boolean mInitialized;
    private boolean mIsActionBarBelowLOLLIPOP;
    private boolean mIsDialog;
    private boolean mIsDialogFragment;
    private boolean mIsFragment;
    private boolean mKeyboardTempEnable;
    private int mNavigationBarHeight;
    private int mNavigationBarWidth;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private ImmersionBar mParentBar;
    private androidx.fragment.app.Fragment mSupportFragment;
    private final Map<String, c80> mTagMap;
    private Window mWindow;

    public static class a {
        public static final int[] a;

        static {
            int[] iArr = new int[BarHide.values().length];
            a = iArr;
            try {
                iArr[BarHide.FLAG_HIDE_BAR.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[BarHide.FLAG_HIDE_STATUS_BAR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[BarHide.FLAG_HIDE_NAVIGATION_BAR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[BarHide.FLAG_SHOW_BAR.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public ImmersionBar(Activity activity) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mActivity = activity;
        initCommonParameter(activity.getWindow());
    }

    private void adjustDarkModeParams() {
        c80 c80Var = this.mBarParams;
        int iBlendARGB = ColorUtils.blendARGB(c80Var.b, c80Var.s, c80Var.e);
        c80 c80Var2 = this.mBarParams;
        if (c80Var2.n && iBlendARGB != 0) {
            statusBarDarkFont(iBlendARGB > -4539718, c80Var2.p);
        }
        c80 c80Var3 = this.mBarParams;
        int iBlendARGB2 = ColorUtils.blendARGB(c80Var3.c, c80Var3.t, c80Var3.g);
        c80 c80Var4 = this.mBarParams;
        if (!c80Var4.o || iBlendARGB2 == 0) {
            return;
        }
        navigationBarDarkIcon(iBlendARGB2 > -4539718, c80Var4.q);
    }

    private void cancelListener() {
        if (this.mActivity != null) {
            ax3 ax3Var = this.mFitsKeyboard;
            if (ax3Var != null) {
                ax3Var.a();
                this.mFitsKeyboard = null;
            }
            b.b().d(this);
            d.a().removeOnNavigationBarListener(this.mBarParams.M);
        }
    }

    public static boolean checkFitsSystemWindows(View view) {
        if (view == null) {
            return false;
        }
        if (view.getFitsSystemWindows()) {
            return true;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = viewGroup.getChildAt(i);
                if (((childAt instanceof DrawerLayout) && checkFitsSystemWindows(childAt)) || childAt.getFitsSystemWindows()) {
                    return true;
                }
            }
        }
        return false;
    }

    private void checkInitWithActivity() {
        if (this.mParentBar == null) {
            this.mParentBar = with(this.mActivity);
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar == null || immersionBar.mInitialized) {
            return;
        }
        immersionBar.init();
    }

    public static void destroy(@NonNull androidx.fragment.app.Fragment fragment) {
        getRetriever().d(fragment, false);
    }

    private void fitsKeyboard() {
        if (!this.mIsFragment) {
            if (this.mBarParams.G) {
                if (this.mFitsKeyboard == null) {
                    this.mFitsKeyboard = new ax3(this);
                }
                this.mFitsKeyboard.c(this.mBarParams.H);
                return;
            } else {
                ax3 ax3Var = this.mFitsKeyboard;
                if (ax3Var != null) {
                    ax3Var.b();
                    return;
                }
                return;
            }
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (immersionBar.mBarParams.G) {
                if (immersionBar.mFitsKeyboard == null) {
                    immersionBar.mFitsKeyboard = new ax3(immersionBar);
                }
                ImmersionBar immersionBar2 = this.mParentBar;
                immersionBar2.mFitsKeyboard.c(immersionBar2.mBarParams.H);
                return;
            }
            ax3 ax3Var2 = immersionBar.mFitsKeyboard;
            if (ax3Var2 != null) {
                ax3Var2.b();
            }
        }
    }

    private void fitsLayoutOverlap() {
        int iK = this.mBarParams.C ? this.mBarConfig.k() : 0;
        int i = this.mFitsStatusBarType;
        if (i == 1) {
            setTitleBar(this.mActivity, iK, this.mBarParams.A);
        } else if (i == 2) {
            setTitleBarMarginTop(this.mActivity, iK, this.mBarParams.A);
        } else {
            if (i != 3) {
                return;
            }
            setStatusBarView(this.mActivity, iK, this.mBarParams.B);
        }
    }

    private void fitsNotchScreen() {
        if (this.mInitialized) {
            return;
        }
        try {
            WindowManager.LayoutParams attributes = this.mWindow.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.mWindow.setAttributes(attributes);
        } catch (Exception unused) {
        }
    }

    private void fitsWindows() {
        if (sb7.j()) {
            fitsWindowsBelowLOLLIPOP();
        } else {
            fitsWindowsAboveLOLLIPOP();
        }
        fitsLayoutOverlap();
    }

    private void fitsWindowsAboveLOLLIPOP() {
        if (checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
            setPadding(0, 0, 0, 0);
            return;
        }
        int iK = (this.mBarParams.z && this.mFitsStatusBarType == 4) ? this.mBarConfig.k() : 0;
        if (this.mBarParams.F) {
            iK = this.mBarConfig.k() + this.mActionBarHeight;
        }
        setPadding(0, iK, 0, 0);
    }

    private void fitsWindowsBelowLOLLIPOP() {
        if (this.mBarParams.F) {
            this.mIsActionBarBelowLOLLIPOP = true;
            this.mContentView.post(this);
        } else {
            this.mIsActionBarBelowLOLLIPOP = false;
            postFitsWindowsBelowLOLLIPOP();
        }
    }

    private void fitsWindowsEMUI() {
        View viewFindViewById = this.mDecorView.findViewById(tf1.b);
        c80 c80Var = this.mBarParams;
        if (!c80Var.I || !c80Var.J) {
            b.b().d(this);
            viewFindViewById.setVisibility(8);
        } else if (viewFindViewById != null) {
            b.b().a(this);
            b.b().c(this.mActivity.getApplication());
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x0088  */
    private void fitsWindowsKITKAT() {
        int iG;
        int iD;
        if (checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
            setPadding(0, 0, 0, 0);
            return;
        }
        int iK = (this.mBarParams.z && this.mFitsStatusBarType == 4) ? this.mBarConfig.k() : 0;
        if (this.mBarParams.F) {
            iK = this.mBarConfig.k() + this.mActionBarHeight;
        }
        if (this.mBarConfig.m()) {
            c80 c80Var = this.mBarParams;
            if (c80Var.I && c80Var.J) {
                if (c80Var.i) {
                    iG = 0;
                    iD = 0;
                } else if (this.mBarConfig.n()) {
                    iD = this.mBarConfig.d();
                    iG = 0;
                } else {
                    iG = this.mBarConfig.g();
                    iD = 0;
                }
                if (this.mBarParams.j) {
                    if (this.mBarConfig.n()) {
                        iD = 0;
                    } else {
                        iG = 0;
                    }
                } else if (!this.mBarConfig.n()) {
                    iG = this.mBarConfig.g();
                }
            } else {
                iG = 0;
                iD = 0;
            }
        } else {
            iG = 0;
            iD = 0;
        }
        setPadding(0, iK, iG, iD);
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).d();
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).g();
    }

    public static int getNotchHeight(@NonNull Activity activity) {
        return NotchUtils.g(activity);
    }

    private static gt8 getRetriever() {
        return gt8.k();
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).k();
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).m();
    }

    public static boolean hasNotchScreen(@NonNull Activity activity) {
        return NotchUtils.r(activity);
    }

    private void hideBarAboveR() {
        WindowInsetsController windowInsetsController;
        if (Build.VERSION.SDK_INT < 30 || (windowInsetsController = this.mContentView.getWindowInsetsController()) == null) {
            return;
        }
        int i = a.a[this.mBarParams.k.ordinal()];
        if (i == 1) {
            windowInsetsController.hide(WindowInsets.Type.statusBars());
            windowInsetsController.hide(WindowInsets.Type.navigationBars());
        } else if (i == 2) {
            windowInsetsController.hide(WindowInsets.Type.statusBars());
        } else if (i == 3) {
            windowInsetsController.hide(WindowInsets.Type.navigationBars());
        } else if (i == 4) {
            windowInsetsController.show(WindowInsets.Type.statusBars());
            windowInsetsController.show(WindowInsets.Type.navigationBars());
        }
        windowInsetsController.setSystemBarsBehavior(2);
    }

    private int hideBarBelowR(int i) {
        if (Build.VERSION.SDK_INT >= 30) {
            return i;
        }
        int i2 = a.a[this.mBarParams.k.ordinal()];
        if (i2 == 1) {
            i |= 518;
        } else if (i2 == 2) {
            i |= AnalyticsListener.EVENT_PLAYER_RELEASED;
        } else if (i2 == 3) {
            i |= 514;
        }
        return i | 4096;
    }

    public static void hideStatusBar(@NonNull Window window) {
        window.setFlags(1024, 1024);
    }

    @RequiresApi(api = 21)
    private int initBarAboveLOLLIPOP(int i) {
        if (!this.mInitialized) {
            this.mBarParams.d = this.mWindow.getNavigationBarColor();
        }
        int i2 = i | 1024;
        c80 c80Var = this.mBarParams;
        if (c80Var.i && c80Var.I) {
            i2 = i | 1536;
        }
        this.mWindow.clearFlags(67108864);
        if (this.mBarConfig.m()) {
            this.mWindow.clearFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
        }
        this.mWindow.addFlags(Integer.MIN_VALUE);
        c80 c80Var2 = this.mBarParams;
        if (c80Var2.r) {
            this.mWindow.setStatusBarContrastEnforced(false);
            Window window = this.mWindow;
            c80 c80Var3 = this.mBarParams;
            window.setStatusBarColor(ColorUtils.blendARGB(c80Var3.b, c80Var3.s, c80Var3.e));
        } else {
            this.mWindow.setStatusBarColor(ColorUtils.blendARGB(c80Var2.b, 0, c80Var2.e));
        }
        c80 c80Var4 = this.mBarParams;
        if (c80Var4.I) {
            this.mWindow.setNavigationBarContrastEnforced(false);
            Window window2 = this.mWindow;
            c80 c80Var5 = this.mBarParams;
            window2.setNavigationBarColor(ColorUtils.blendARGB(c80Var5.c, c80Var5.t, c80Var5.g));
        } else {
            this.mWindow.setNavigationBarColor(c80Var4.d);
        }
        return i2;
    }

    private void initBarBelowLOLLIPOP() {
        this.mWindow.addFlags(67108864);
        setupStatusBarView();
        if (this.mBarConfig.m() || sb7.j()) {
            c80 c80Var = this.mBarParams;
            if (c80Var.I && c80Var.J) {
                this.mWindow.addFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
            } else {
                this.mWindow.clearFlags(C.BUFFER_FLAG_FIRST_SAMPLE);
            }
            if (this.mNavigationBarHeight == 0) {
                this.mNavigationBarHeight = this.mBarConfig.d();
            }
            if (this.mNavigationBarWidth == 0) {
                this.mNavigationBarWidth = this.mBarConfig.g();
            }
            setupNavBarView();
        }
    }

    private void initCommonParameter(Window window) {
        this.mWindow = window;
        this.mBarParams = new c80();
        ViewGroup viewGroup = (ViewGroup) this.mWindow.getDecorView();
        this.mDecorView = viewGroup;
        this.mContentView = (ViewGroup) viewGroup.findViewById(R.id.content);
    }

    private static boolean isEmpty(String str) {
        return str == null || str.trim().length() == 0;
    }

    public static boolean isGesture(Context context) {
        return c.a(context).a;
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).n();
    }

    public static boolean isSupportNavigationIconDark() {
        sb7.q();
        return true;
    }

    public static boolean isSupportStatusBarDarkFont() {
        if (sb7.q()) {
            return true;
        }
        sb7.l();
        return true;
    }

    private void postFitsWindowsBelowLOLLIPOP() {
        fitsWindowsKITKAT();
        if (this.mIsFragment || !sb7.j()) {
            return;
        }
        fitsWindowsEMUI();
    }

    private void setBarDarkFontAboveR() {
        if (Build.VERSION.SDK_INT >= 30) {
            setStatusBarDarkFontAboveR();
            setNavigationIconDarkAboveR();
        }
    }

    public static void setFitsSystemWindows(Activity activity, boolean z) {
        if (activity == null) {
            return;
        }
        setFitsSystemWindows(((ViewGroup) activity.findViewById(R.id.content)).getChildAt(0), z);
    }

    private int setNavigationIconDark(int i) {
        return this.mBarParams.m ? i | 16 : i;
    }

    @RequiresApi(api = 30)
    private void setNavigationIconDarkAboveR() {
        WindowInsetsController windowInsetsController = this.mContentView.getWindowInsetsController();
        if (this.mBarParams.m) {
            windowInsetsController.setSystemBarsAppearance(16, 16);
        } else {
            windowInsetsController.setSystemBarsAppearance(0, 16);
        }
    }

    private void setPadding(int i, int i2, int i3, int i4) {
        ViewGroup viewGroup = this.mContentView;
        if (viewGroup != null) {
            viewGroup.setPadding(i, i2, i3, i4);
        }
        this.mPaddingLeft = i;
        this.mPaddingTop = i2;
        this.mPaddingRight = i3;
        this.mPaddingBottom = i4;
    }

    private void setSpecialBarDarkMode() {
        if (sb7.q()) {
            pu9.b(this.mWindow, "EXTRA_FLAG_STATUS_BAR_DARK_MODE", this.mBarParams.l);
            c80 c80Var = this.mBarParams;
            if (c80Var.I) {
                pu9.b(this.mWindow, "EXTRA_FLAG_NAVIGATION_BAR_DARK_MODE", c80Var.m);
            }
        }
        if (sb7.l()) {
            c80 c80Var2 = this.mBarParams;
            int i = c80Var2.D;
            if (i != 0) {
                pu9.d(this.mActivity, i);
            } else {
                pu9.e(this.mActivity, c80Var2.l);
            }
        }
    }

    private int setStatusBarDarkFont(int i) {
        return this.mBarParams.l ? i | 8192 : i;
    }

    @RequiresApi(api = 30)
    private void setStatusBarDarkFontAboveR() {
        WindowInsetsController windowInsetsController = this.mContentView.getWindowInsetsController();
        if (!this.mBarParams.l) {
            windowInsetsController.setSystemBarsAppearance(0, 8);
            return;
        }
        if (this.mWindow != null) {
            unsetSystemUiFlag(8192);
        }
        windowInsetsController.setSystemBarsAppearance(8, 8);
    }

    public static void setStatusBarView(Activity activity, int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                int i2 = com.transsion.common.R.id.immersion_fits_layout_overlap;
                Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, 0);
                    }
                    layoutParams.height = i;
                    view.setLayoutParams(layoutParams);
                }
            }
        }
    }

    public static void setTitleBar(Activity activity, final int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (final View view : viewArr) {
            if (view != null) {
                int i2 = com.transsion.common.R.id.immersion_fits_layout_overlap;
                final Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    final ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.LayoutParams(-1, -2);
                    }
                    int i3 = layoutParams.height;
                    if (i3 == -2 || i3 == -1) {
                        view.post(new Runnable() {
                            @Override
                            public void run() {
                                layoutParams.height = (view.getHeight() + i) - num.intValue();
                                View view2 = view;
                                view2.setPadding(view2.getPaddingLeft(), (view.getPaddingTop() + i) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                                view.setLayoutParams(layoutParams);
                            }
                        });
                    } else {
                        layoutParams.height = i3 + (i - num.intValue());
                        view.setPadding(view.getPaddingLeft(), (view.getPaddingTop() + i) - num.intValue(), view.getPaddingRight(), view.getPaddingBottom());
                        view.setLayoutParams(layoutParams);
                    }
                }
            }
        }
    }

    public static void setTitleBarMarginTop(Activity activity, int i, View... viewArr) {
        if (activity == null) {
            return;
        }
        if (i < 0) {
            i = 0;
        }
        for (View view : viewArr) {
            if (view != null) {
                int i2 = com.transsion.common.R.id.immersion_fits_layout_overlap;
                Integer num = (Integer) view.getTag(i2);
                if (num == null) {
                    num = 0;
                }
                if (num.intValue() != i) {
                    view.setTag(i2, Integer.valueOf(i));
                    ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                    if (layoutParams == null) {
                        layoutParams = new ViewGroup.MarginLayoutParams(-1, -2);
                    }
                    ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
                    marginLayoutParams.setMargins(marginLayoutParams.leftMargin, (marginLayoutParams.topMargin + i) - num.intValue(), marginLayoutParams.rightMargin, marginLayoutParams.bottomMargin);
                    view.setLayoutParams(marginLayoutParams);
                }
            }
        }
    }

    private void setupNavBarView() {
        FrameLayout.LayoutParams layoutParams;
        ViewGroup viewGroup = this.mDecorView;
        int i = tf1.b;
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            viewFindViewById.setId(i);
            this.mDecorView.addView(viewFindViewById);
        }
        if (this.mBarConfig.n()) {
            layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.d());
            layoutParams.gravity = 80;
        } else {
            layoutParams = new FrameLayout.LayoutParams(this.mBarConfig.g(), -1);
            layoutParams.gravity = GravityCompat.END;
        }
        viewFindViewById.setLayoutParams(layoutParams);
        c80 c80Var = this.mBarParams;
        viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(c80Var.c, c80Var.t, c80Var.g));
        c80 c80Var2 = this.mBarParams;
        if (c80Var2.I && c80Var2.J && !c80Var2.j) {
            viewFindViewById.setVisibility(0);
        } else {
            viewFindViewById.setVisibility(8);
        }
    }

    private void setupStatusBarView() {
        ViewGroup viewGroup = this.mDecorView;
        int i = tf1.a;
        View viewFindViewById = viewGroup.findViewById(i);
        if (viewFindViewById == null) {
            viewFindViewById = new View(this.mActivity);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, this.mBarConfig.k());
            layoutParams.gravity = 48;
            viewFindViewById.setLayoutParams(layoutParams);
            viewFindViewById.setVisibility(0);
            viewFindViewById.setId(i);
            this.mDecorView.addView(viewFindViewById);
        }
        c80 c80Var = this.mBarParams;
        if (c80Var.r) {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(c80Var.b, c80Var.s, c80Var.e));
        } else {
            viewFindViewById.setBackgroundColor(ColorUtils.blendARGB(c80Var.b, 0, c80Var.e));
        }
    }

    public static void showStatusBar(@NonNull Window window) {
        window.clearFlags(1024);
    }

    private void transformView() {
        if (this.mBarParams.u.size() != 0) {
            for (Map.Entry entry : this.mBarParams.u.entrySet()) {
                View view = (View) entry.getKey();
                Map map = (Map) entry.getValue();
                Integer numValueOf = Integer.valueOf(this.mBarParams.b);
                Integer numValueOf2 = Integer.valueOf(this.mBarParams.s);
                for (Map.Entry entry2 : map.entrySet()) {
                    Integer num = (Integer) entry2.getKey();
                    numValueOf2 = (Integer) entry2.getValue();
                    numValueOf = num;
                }
                if (view != null) {
                    if (Math.abs(this.mBarParams.v - 0.0f) == 0.0f) {
                        view.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.e));
                    } else {
                        view.setBackgroundColor(ColorUtils.blendARGB(numValueOf.intValue(), numValueOf2.intValue(), this.mBarParams.v));
                    }
                }
            }
        }
    }

    private void updateBarConfig() {
        com.transsion.sysbar.a aVar = new com.transsion.sysbar.a(this.mActivity);
        this.mBarConfig = aVar;
        if (!this.mInitialized || this.mIsActionBarBelowLOLLIPOP) {
            this.mActionBarHeight = aVar.a();
        }
    }

    private void updateBarParams() {
        adjustDarkModeParams();
        if (!this.mInitialized || this.mIsFragment) {
            updateBarConfig();
        }
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar != null) {
            if (this.mIsFragment) {
                immersionBar.mBarParams = this.mBarParams;
            }
            if (this.mIsDialog && immersionBar.mKeyboardTempEnable) {
                immersionBar.mBarParams.G = false;
            }
        }
    }

    public static ImmersionBar with(@NonNull Activity activity) {
        return getRetriever().f(activity, false);
    }

    public ImmersionBar addTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        this.mTagMap.put(str, this.mBarParams.clone());
        return this;
    }

    public ImmersionBar addViewSupportTransformColor(View view) {
        return addViewSupportTransformColorInt(view, this.mBarParams.s);
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, @ColorInt int i) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        HashMap map = new HashMap();
        map.put(Integer.valueOf(this.mBarParams.b), Integer.valueOf(i));
        this.mBarParams.u.put(view, map);
        return this;
    }

    public ImmersionBar applySystemFits(boolean z) {
        this.mBarParams.C = !z;
        setFitsSystemWindows(this.mActivity, z);
        return this;
    }

    public ImmersionBar autoDarkModeEnable(boolean z) {
        return autoDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z) {
        return autoNavigationBarDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z) {
        return autoStatusBarDarkModeEnable(z, 0.2f);
    }

    public ImmersionBar barAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.e = f;
        c80Var.f = f;
        c80Var.g = f;
        c80Var.h = f;
        return this;
    }

    public ImmersionBar barColor(@ColorRes int i) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColorInt(@ColorInt int i) {
        c80 c80Var = this.mBarParams;
        c80Var.b = i;
        c80Var.c = i;
        return this;
    }

    public ImmersionBar barColorTransform(@ColorRes int i) {
        return barColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar barColorTransformInt(@ColorInt int i) {
        c80 c80Var = this.mBarParams;
        c80Var.s = i;
        c80Var.t = i;
        return this;
    }

    public ImmersionBar barEnable(boolean z) {
        this.mBarParams.L = z;
        return this;
    }

    public ImmersionBar fitsLayoutOverlapEnable(boolean z) {
        this.mBarParams.C = z;
        return this;
    }

    public void fitsParentBarKeyboard() {
        ax3 ax3Var;
        ImmersionBar immersionBar = this.mParentBar;
        if (immersionBar == null || (ax3Var = immersionBar.mFitsKeyboard) == null) {
            return;
        }
        ax3Var.b();
        this.mParentBar.mFitsKeyboard.d();
    }

    public ImmersionBar fitsSystemWindows(boolean z) {
        this.mBarParams.z = z;
        if (!z) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        return this;
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z, @ColorInt int i) {
        return fitsSystemWindowsInt(z, i, -16777216, 0.0f);
    }

    public ImmersionBar flymeOSStatusBarFontColor(@ColorRes int i) {
        this.mBarParams.D = ContextCompat.getColor(this.mActivity, i);
        c80 c80Var = this.mBarParams;
        c80Var.E = c80Var.D;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColorInt(@ColorInt int i) {
        c80 c80Var = this.mBarParams;
        c80Var.D = i;
        c80Var.E = i;
        return this;
    }

    public ImmersionBar fullScreen(boolean z) {
        this.mBarParams.i = z;
        return this;
    }

    public int getActionBarHeight() {
        return this.mActionBarHeight;
    }

    public Activity getActivity() {
        return this.mActivity;
    }

    public com.transsion.sysbar.a getBarConfig() {
        if (this.mBarConfig == null) {
            this.mBarConfig = new com.transsion.sysbar.a(this.mActivity);
        }
        return this.mBarConfig;
    }

    public c80 getBarParams() {
        return this.mBarParams;
    }

    public Fragment getFragment() {
        return this.mFragment;
    }

    public int getPaddingBottom() {
        return this.mPaddingBottom;
    }

    public int getPaddingLeft() {
        return this.mPaddingLeft;
    }

    public int getPaddingRight() {
        return this.mPaddingRight;
    }

    public int getPaddingTop() {
        return this.mPaddingTop;
    }

    public androidx.fragment.app.Fragment getSupportFragment() {
        return this.mSupportFragment;
    }

    public ImmersionBar getTag(String str) {
        if (isEmpty(str)) {
            throw new IllegalArgumentException("tag不能为空");
        }
        c80 c80Var = this.mTagMap.get(str);
        if (c80Var != null) {
            this.mBarParams = c80Var.clone();
        }
        return this;
    }

    public Window getWindow() {
        return this.mWindow;
    }

    public ImmersionBar hideBar(BarHide barHide) {
        this.mBarParams.k = barHide;
        if (sb7.j()) {
            c80 c80Var = this.mBarParams;
            BarHide barHide2 = c80Var.k;
            c80Var.j = barHide2 == BarHide.FLAG_HIDE_NAVIGATION_BAR || barHide2 == BarHide.FLAG_HIDE_BAR;
        }
        return this;
    }

    public void init() {
        if (this.mBarParams.L) {
            updateBarParams();
            setBar();
            fitsWindows();
            fitsKeyboard();
            transformView();
            this.mInitialized = true;
        }
    }

    public boolean initialized() {
        return this.mInitialized;
    }

    public boolean isDialogFragment() {
        return this.mIsDialogFragment;
    }

    public boolean isFragment() {
        return this.mIsFragment;
    }

    public ImmersionBar keyboardEnable(boolean z) {
        return keyboardEnable(z, this.mBarParams.H);
    }

    public ImmersionBar keyboardMode(int i) {
        this.mBarParams.H = i;
        return this;
    }

    public ImmersionBar navigationBarAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.g = f;
        c80Var.h = f;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i) {
        this.mBarParams.c = i;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(@ColorRes int i) {
        return navigationBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar navigationBarColorTransformInt(@ColorInt int i) {
        this.mBarParams.t = i;
        return this;
    }

    public ImmersionBar navigationBarDarkIcon(boolean z) {
        return navigationBarDarkIcon(z, 0.2f);
    }

    public ImmersionBar navigationBarEnable(boolean z) {
        this.mBarParams.I = z;
        return this;
    }

    public ImmersionBar navigationBarWithEMUI3Enable(boolean z) {
        if (sb7.j()) {
            c80 c80Var = this.mBarParams;
            c80Var.K = z;
            c80Var.J = z;
        }
        return this;
    }

    public ImmersionBar navigationBarWithKitkatEnable(boolean z) {
        this.mBarParams.J = z;
        return this;
    }

    public void onConfigurationChanged(Configuration configuration) {
        updateBarConfig();
        if (!sb7.j()) {
            fitsWindows();
        } else if (this.mInitialized && !this.mIsFragment && this.mBarParams.J) {
            init();
        } else {
            fitsWindows();
        }
    }

    public void onDestroy() {
        ImmersionBar immersionBar;
        cancelListener();
        if (this.mIsDialog && (immersionBar = this.mParentBar) != null) {
            c80 c80Var = immersionBar.mBarParams;
            c80Var.G = immersionBar.mKeyboardTempEnable;
            if (c80Var.k != BarHide.FLAG_SHOW_BAR) {
                immersionBar.setBar();
            }
        }
        this.mInitialized = false;
    }

    @Override
    public void onNavigationBarChange(boolean z, NavigationBarType navigationBarType) {
        View viewFindViewById = this.mDecorView.findViewById(tf1.b);
        if (viewFindViewById != null) {
            this.mBarConfig = new com.transsion.sysbar.a(this.mActivity);
            int paddingBottom = this.mContentView.getPaddingBottom();
            int paddingRight = this.mContentView.getPaddingRight();
            if (z) {
                viewFindViewById.setVisibility(0);
                if (!checkFitsSystemWindows(this.mDecorView.findViewById(R.id.content))) {
                    if (this.mNavigationBarHeight == 0) {
                        this.mNavigationBarHeight = this.mBarConfig.d();
                    }
                    if (this.mNavigationBarWidth == 0) {
                        this.mNavigationBarWidth = this.mBarConfig.g();
                    }
                    if (!this.mBarParams.j) {
                        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) viewFindViewById.getLayoutParams();
                        if (this.mBarConfig.n()) {
                            layoutParams.gravity = 80;
                            paddingBottom = this.mNavigationBarHeight;
                            layoutParams.height = paddingBottom;
                            if (this.mBarParams.i) {
                                paddingBottom = 0;
                            }
                            paddingRight = 0;
                        } else {
                            layoutParams.gravity = GravityCompat.END;
                            int i = this.mNavigationBarWidth;
                            layoutParams.width = i;
                            if (this.mBarParams.i) {
                                i = 0;
                            }
                            paddingRight = i;
                            paddingBottom = 0;
                        }
                        viewFindViewById.setLayoutParams(layoutParams);
                    }
                }
                setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
            }
            viewFindViewById.setVisibility(8);
            paddingBottom = 0;
            paddingRight = 0;
            setPadding(0, this.mContentView.getPaddingTop(), paddingRight, paddingBottom);
        }
    }

    public void onResume() {
        updateBarConfig();
        if (this.mIsFragment || !this.mInitialized || this.mBarParams == null) {
            return;
        }
        if (sb7.j() && this.mBarParams.K) {
            init();
        } else if (this.mBarParams.k != BarHide.FLAG_SHOW_BAR) {
            setBar();
        }
    }

    public ImmersionBar removeSupportAllView() {
        if (this.mBarParams.u.size() != 0) {
            this.mBarParams.u.clear();
        }
        return this;
    }

    public ImmersionBar removeSupportView(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View参数不能为空");
        }
        Map map = (Map) this.mBarParams.u.get(view);
        if (map != null && map.size() != 0) {
            this.mBarParams.u.remove(view);
        }
        return this;
    }

    public ImmersionBar reset() {
        this.mBarParams = new c80();
        this.mFitsStatusBarType = 0;
        return this;
    }

    @Override
    public void run() {
        postFitsWindowsBelowLOLLIPOP();
    }

    public void setBar() {
        int navigationIconDark = 256;
        if (sb7.j()) {
            initBarBelowLOLLIPOP();
        } else {
            fitsNotchScreen();
            navigationIconDark = setNavigationIconDark(setStatusBarDarkFont(initBarAboveLOLLIPOP(256)));
            setBarDarkFontAboveR();
        }
        this.mDecorView.setSystemUiVisibility(hideBarBelowR(navigationIconDark));
        setSpecialBarDarkMode();
        hideBarAboveR();
        if (this.mBarParams.M != null) {
            d.a().b(this.mActivity.getApplication());
        }
    }

    public ImmersionBar setOnBarListener(me7 me7Var) {
        if (me7Var != null) {
            this.mBarParams.getClass();
            this.mBarParams.getClass();
        } else {
            this.mBarParams.getClass();
        }
        return this;
    }

    public ImmersionBar setOnKeyboardListener(@Nullable cf7 cf7Var) {
        this.mBarParams.getClass();
        this.mBarParams.getClass();
        return this;
    }

    public ImmersionBar setOnNavigationBarListener(ff7 ff7Var) {
        if (ff7Var != null) {
            c80 c80Var = this.mBarParams;
            if (c80Var.M == null) {
                c80Var.M = ff7Var;
                d.a().addOnNavigationBarListener(this.mBarParams.M);
            }
        } else if (this.mBarParams.M != null) {
            d.a().removeOnNavigationBarListener(this.mBarParams.M);
            this.mBarParams.M = null;
        }
        return this;
    }

    public ImmersionBar statusBarAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.e = f;
        c80Var.f = f;
        return this;
    }

    public ImmersionBar statusBarColor(@ColorRes int i) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i) {
        this.mBarParams.b = i;
        return this;
    }

    public ImmersionBar statusBarColorTransform(@ColorRes int i) {
        return statusBarColorTransformInt(ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarColorTransformEnable(boolean z) {
        this.mBarParams.r = z;
        return this;
    }

    public ImmersionBar statusBarColorTransformInt(@ColorInt int i) {
        this.mBarParams.s = i;
        return this;
    }

    public ImmersionBar statusBarDarkFont(boolean z) {
        return statusBarDarkFont(z, 0.2f);
    }

    public ImmersionBar statusBarView(View view) {
        if (view == null) {
            return this;
        }
        this.mBarParams.B = view;
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 3;
        }
        return this;
    }

    public ImmersionBar supportActionBar(boolean z) {
        this.mBarParams.F = z;
        return this;
    }

    public ImmersionBar titleBar(View view) {
        return view == null ? this : titleBar(view, true);
    }

    public ImmersionBar titleBarMarginTop(@IdRes int i) {
        androidx.fragment.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBarMarginTop(this.mSupportFragment.getView().findViewById(i));
        }
        Fragment fragment2 = this.mFragment;
        return (fragment2 == null || fragment2.getView() == null) ? titleBarMarginTop(this.mActivity.findViewById(i)) : titleBarMarginTop(this.mFragment.getView().findViewById(i));
    }

    public ImmersionBar transparentBar() {
        c80 c80Var = this.mBarParams;
        c80Var.b = 0;
        c80Var.c = 0;
        c80Var.i = true;
        return this;
    }

    public ImmersionBar transparentNavigationBar() {
        c80 c80Var = this.mBarParams;
        c80Var.c = 0;
        c80Var.i = true;
        return this;
    }

    public ImmersionBar transparentStatusBar() {
        this.mBarParams.b = 0;
        return this;
    }

    public void unsetSystemUiFlag(int i) {
        View decorView = this.mWindow.getDecorView();
        decorView.setSystemUiVisibility((~i) & decorView.getSystemUiVisibility());
    }

    public ImmersionBar viewAlpha(@FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        this.mBarParams.v = f;
        return this;
    }

    public static void destroy(@NonNull androidx.fragment.app.Fragment fragment, boolean z) {
        getRetriever().d(fragment, z);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Activity activity) {
        return new com.transsion.sysbar.a(activity).a();
    }

    public static int getNotchHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    public static boolean isGesture(androidx.fragment.app.Fragment fragment) {
        Context context = fragment.getContext();
        if (context == null) {
            return false;
        }
        return isGesture(context);
    }

    public static void setFitsSystemWindows(Activity activity) {
        setFitsSystemWindows(activity, true);
    }

    public static ImmersionBar with(@NonNull Activity activity, boolean z) {
        return getRetriever().f(activity, z);
    }

    public ImmersionBar addViewSupportTransformColor(View view, @ColorRes int i) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar autoDarkModeEnable(boolean z, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.n = z;
        c80Var.p = f;
        c80Var.o = z;
        c80Var.q = f;
        return this;
    }

    public ImmersionBar autoNavigationBarDarkModeEnable(boolean z, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.o = z;
        c80Var.q = f;
        return this;
    }

    public ImmersionBar autoStatusBarDarkModeEnable(boolean z, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.n = z;
        c80Var.p = f;
        return this;
    }

    public ImmersionBar barColor(@ColorRes int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), i);
    }

    public ImmersionBar barColorTransform(String str) {
        return barColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar fitsSystemWindowsInt(boolean z, @ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.z = z;
        c80Var.w = i;
        c80Var.x = i2;
        c80Var.y = f;
        if (!z) {
            this.mFitsStatusBarType = 0;
        } else if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 4;
        }
        this.mContentView.setBackgroundColor(ColorUtils.blendARGB(i, i2, f));
        return this;
    }

    public ImmersionBar keyboardEnable(boolean z, int i) {
        c80 c80Var = this.mBarParams;
        c80Var.G = z;
        c80Var.H = i;
        this.mKeyboardTempEnable = z;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.c = i;
        c80Var.g = f;
        return this;
    }

    public ImmersionBar navigationBarColorTransform(String str) {
        return navigationBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar navigationBarDarkIcon(boolean z, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        this.mBarParams.m = z;
        if (!z || isSupportNavigationIconDark()) {
            c80 c80Var = this.mBarParams;
            c80Var.g = c80Var.h;
        } else {
            this.mBarParams.g = f;
        }
        return this;
    }

    public ImmersionBar statusBarColor(@ColorRes int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), f);
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.b = i;
        c80Var.e = f;
        return this;
    }

    public ImmersionBar statusBarColorTransform(String str) {
        return statusBarColorTransformInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarDarkFont(boolean z, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        this.mBarParams.l = z;
        if (!z || isSupportStatusBarDarkFont()) {
            c80 c80Var = this.mBarParams;
            c80Var.D = c80Var.E;
            c80Var.e = c80Var.f;
        } else {
            this.mBarParams.e = f;
        }
        return this;
    }

    public ImmersionBar titleBar(View view, boolean z) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 1;
        }
        c80 c80Var = this.mBarParams;
        c80Var.A = view;
        c80Var.r = z;
        return this;
    }

    public static void destroy(@NonNull Fragment fragment) {
        getRetriever().c(fragment, false);
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar((Activity) fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    public static void setFitsSystemWindows(androidx.fragment.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z);
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.Fragment fragment) {
        return getRetriever().h(fragment, false);
    }

    public ImmersionBar addViewSupportTransformColor(View view, @ColorRes int i, @ColorRes int i2) {
        return addViewSupportTransformColorInt(view, ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2));
    }

    public ImmersionBar barColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return barColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar barColorInt(@ColorInt int i, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.b = i;
        c80Var.c = i;
        c80Var.e = f;
        c80Var.g = f;
        return this;
    }

    public ImmersionBar flymeOSStatusBarFontColor(String str) {
        this.mBarParams.D = Color.parseColor(str);
        c80 c80Var = this.mBarParams;
        c80Var.E = c80Var.D;
        return this;
    }

    public ImmersionBar navigationBarColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return navigationBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar statusBarColor(@ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return statusBarColorInt(ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public static void destroy(@NonNull Fragment fragment, boolean z) {
        getRetriever().c(fragment, z);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull androidx.fragment.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    public static int getNotchHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNotchHeight(fragment.getActivity());
    }

    public static boolean hasNotchScreen(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNotchScreen(fragment.getActivity());
    }

    public static boolean isGesture(Fragment fragment) {
        Context context = fragment.getContext();
        if (context == null) {
            return false;
        }
        return isGesture(context);
    }

    public static void setFitsSystemWindows(androidx.fragment.app.Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static ImmersionBar with(@NonNull androidx.fragment.app.Fragment fragment, boolean z) {
        return getRetriever().h(fragment, z);
    }

    public ImmersionBar navigationBarColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.c = i;
        c80Var.t = i2;
        c80Var.g = f;
        return this;
    }

    public ImmersionBar statusBarColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.b = i;
        c80Var.s = i2;
        c80Var.e = f;
        return this;
    }

    public ImmersionBar statusBarView(@IdRes int i) {
        return statusBarView(this.mActivity.findViewById(i));
    }

    public static void destroy(@NonNull Activity activity, @NonNull Dialog dialog) {
        getRetriever().b(activity, dialog, false);
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getNavigationBarWidth(fragment.getActivity());
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getStatusBarHeight(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return hasNavigationBar(fragment.getActivity());
    }

    @TargetApi(14)
    public static boolean isNavigationAtBottom(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return false;
        }
        return isNavigationAtBottom(fragment.getActivity());
    }

    public static void setFitsSystemWindows(Fragment fragment, boolean z) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity(), z);
    }

    public static ImmersionBar with(@NonNull Fragment fragment) {
        return getRetriever().g(fragment, false);
    }

    public ImmersionBar addViewSupportTransformColorInt(View view, @ColorInt int i, @ColorInt int i2) {
        if (view != null) {
            HashMap map = new HashMap();
            map.put(Integer.valueOf(i), Integer.valueOf(i2));
            this.mBarParams.u.put(view, map);
            return this;
        }
        throw new IllegalArgumentException("View参数不能为空");
    }

    public ImmersionBar fitsSystemWindows(boolean z, @ColorRes int i) {
        return fitsSystemWindowsInt(z, ContextCompat.getColor(this.mActivity, i));
    }

    public ImmersionBar statusBarView(@IdRes int i, View view) {
        return statusBarView(view.findViewById(i));
    }

    public static void destroy(@NonNull Activity activity, @NonNull Dialog dialog, boolean z) {
        getRetriever().b(activity, dialog, z);
    }

    @TargetApi(14)
    public static int getActionBarHeight(@NonNull Fragment fragment) {
        if (fragment.getActivity() == null) {
            return 0;
        }
        return getActionBarHeight(fragment.getActivity());
    }

    public static void getNotchHeight(@NonNull Activity activity, b27 b27Var) {
        NotchUtils.h(activity, b27Var);
    }

    public static boolean hasNotchScreen(@NonNull View view) {
        return NotchUtils.s(view);
    }

    public static void setFitsSystemWindows(Fragment fragment) {
        if (fragment == null) {
            return;
        }
        setFitsSystemWindows(fragment.getActivity());
    }

    public static ImmersionBar with(@NonNull Fragment fragment, boolean z) {
        return getRetriever().g(fragment, z);
    }

    public ImmersionBar barColor(String str) {
        return barColorInt(Color.parseColor(str));
    }

    public ImmersionBar fitsSystemWindows(boolean z, @ColorRes int i, @ColorRes int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return fitsSystemWindowsInt(z, ContextCompat.getColor(this.mActivity, i), ContextCompat.getColor(this.mActivity, i2), f);
    }

    public ImmersionBar navigationBarColor(String str) {
        return navigationBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar statusBarColor(String str) {
        return statusBarColorInt(Color.parseColor(str));
    }

    public ImmersionBar titleBar(@IdRes int i) {
        return titleBar(i, true);
    }

    public ImmersionBar titleBarMarginTop(@IdRes int i, View view) {
        return titleBarMarginTop(view.findViewById(i));
    }

    @TargetApi(14)
    public static int getNavigationBarHeight(@NonNull Context context) {
        c.a aVarA = c.a(context);
        if (!aVarA.a || aVarA.b) {
            return com.transsion.sysbar.a.f(context);
        }
        return 0;
    }

    @TargetApi(14)
    public static int getNavigationBarWidth(@NonNull Context context) {
        c.a aVarA = c.a(context);
        if (!aVarA.a || aVarA.b) {
            return com.transsion.sysbar.a.i(context);
        }
        return 0;
    }

    public static void getNotchHeight(@NonNull androidx.fragment.app.Fragment fragment, b27 b27Var) {
        if (fragment.getActivity() == null) {
            return;
        }
        getNotchHeight(fragment.getActivity(), b27Var);
    }

    @TargetApi(14)
    public static int getStatusBarHeight(@NonNull Context context) {
        return com.transsion.sysbar.a.c(context, "status_bar_height");
    }

    @TargetApi(14)
    public static boolean hasNavigationBar(@NonNull Context context) {
        return getNavigationBarHeight(context) > 0;
    }

    private static void setFitsSystemWindows(View view, boolean z) {
        if (view == null) {
            return;
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup instanceof DrawerLayout) {
                setFitsSystemWindows(viewGroup.getChildAt(0), z);
                return;
            } else {
                viewGroup.setFitsSystemWindows(z);
                viewGroup.setClipToPadding(true);
                return;
            }
        }
        view.setFitsSystemWindows(z);
    }

    public static ImmersionBar with(@NonNull DialogFragment dialogFragment) {
        return getRetriever().h(dialogFragment, false);
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str));
    }

    public ImmersionBar barColor(String str, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return barColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar barColorInt(@ColorInt int i, @ColorInt int i2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        c80 c80Var = this.mBarParams;
        c80Var.b = i;
        c80Var.c = i;
        c80Var.s = i2;
        c80Var.t = i2;
        c80Var.e = f;
        c80Var.g = f;
        return this;
    }

    public ImmersionBar navigationBarColor(String str, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return navigationBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar statusBarColor(String str, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return statusBarColorInt(Color.parseColor(str), f);
    }

    public ImmersionBar titleBar(@IdRes int i, boolean z) {
        androidx.fragment.app.Fragment fragment = this.mSupportFragment;
        if (fragment != null && fragment.getView() != null) {
            return titleBar(this.mSupportFragment.getView().findViewById(i), z);
        }
        Fragment fragment2 = this.mFragment;
        if (fragment2 != null && fragment2.getView() != null) {
            return titleBar(this.mFragment.getView().findViewById(i), z);
        }
        return titleBar(this.mActivity.findViewById(i), z);
    }

    public ImmersionBar titleBarMarginTop(View view) {
        if (view == null) {
            return this;
        }
        if (this.mFitsStatusBarType == 0) {
            this.mFitsStatusBarType = 2;
        }
        this.mBarParams.A = view;
        return this;
    }

    public static ImmersionBar with(@NonNull DialogFragment dialogFragment, boolean z) {
        return getRetriever().h(dialogFragment, z);
    }

    public ImmersionBar addViewSupportTransformColor(View view, String str, String str2) {
        return addViewSupportTransformColorInt(view, Color.parseColor(str), Color.parseColor(str2));
    }

    public ImmersionBar barColor(String str, String str2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return barColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar navigationBarColor(String str, String str2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return navigationBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public ImmersionBar statusBarColor(String str, String str2, @FloatRange(from = 0.0d, to = Contrast.RATIO_MIN) float f) {
        return statusBarColorInt(Color.parseColor(str), Color.parseColor(str2), f);
    }

    public static void getNotchHeight(@NonNull Fragment fragment, b27 b27Var) {
        if (fragment.getActivity() == null) {
            return;
        }
        getNotchHeight(fragment.getActivity(), b27Var);
    }

    public static ImmersionBar with(@NonNull android.app.DialogFragment dialogFragment) {
        return getRetriever().g(dialogFragment, false);
    }

    public static void setStatusBarView(Activity activity, View... viewArr) {
        setStatusBarView(activity, getStatusBarHeight(activity), viewArr);
    }

    public static ImmersionBar with(@NonNull android.app.DialogFragment dialogFragment, boolean z) {
        return getRetriever().g(dialogFragment, z);
    }

    public static void setStatusBarView(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i, viewArr);
    }

    public static ImmersionBar with(@NonNull Activity activity, @NonNull Dialog dialog) {
        return getRetriever().e(activity, dialog, false);
    }

    public static void setStatusBarView(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public static ImmersionBar with(@NonNull Activity activity, @NonNull Dialog dialog, boolean z) {
        return getRetriever().e(activity, dialog, z);
    }

    public ImmersionBar titleBar(@IdRes int i, View view) {
        return titleBar(view.findViewById(i), true);
    }

    public static void setStatusBarView(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBarMarginTop(Activity activity, View... viewArr) {
        setTitleBarMarginTop(activity, getStatusBarHeight(activity), viewArr);
    }

    public ImmersionBar titleBar(@IdRes int i, View view, boolean z) {
        return titleBar(view.findViewById(i), z);
    }

    public static void setStatusBarView(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setStatusBarView(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBar(Activity activity, View... viewArr) {
        setTitleBar(activity, getStatusBarHeight(activity), viewArr);
    }

    public static void setTitleBarMarginTop(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(androidx.fragment.app.Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), i, viewArr);
    }

    public ImmersionBar(androidx.fragment.app.Fragment fragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        FragmentActivity activity = fragment.getActivity();
        this.mActivity = activity;
        this.mSupportFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(activity.getWindow());
    }

    public static void setTitleBar(androidx.fragment.app.Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public static void setTitleBarMarginTop(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBarMarginTop(fragment.getActivity(), viewArr);
    }

    public static void setTitleBar(Fragment fragment, int i, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), i, viewArr);
    }

    public static void setTitleBar(Fragment fragment, View... viewArr) {
        if (fragment == null) {
            return;
        }
        setTitleBar(fragment.getActivity(), viewArr);
    }

    public ImmersionBar(Fragment fragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsFragment = true;
        Activity activity = fragment.getActivity();
        this.mActivity = activity;
        this.mFragment = fragment;
        checkInitWithActivity();
        initCommonParameter(activity.getWindow());
    }

    public ImmersionBar(DialogFragment dialogFragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mSupportFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    public ImmersionBar(android.app.DialogFragment dialogFragment) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mIsDialogFragment = true;
        this.mActivity = dialogFragment.getActivity();
        this.mFragment = dialogFragment;
        this.mDialog = dialogFragment.getDialog();
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }

    public ImmersionBar(Activity activity, Dialog dialog) {
        this.mIsFragment = false;
        this.mIsDialogFragment = false;
        this.mIsDialog = false;
        this.mNavigationBarHeight = 0;
        this.mNavigationBarWidth = 0;
        this.mActionBarHeight = 0;
        this.mFitsKeyboard = null;
        this.mTagMap = new HashMap();
        this.mFitsStatusBarType = 0;
        this.mInitialized = false;
        this.mIsActionBarBelowLOLLIPOP = false;
        this.mKeyboardTempEnable = false;
        this.mPaddingLeft = 0;
        this.mPaddingTop = 0;
        this.mPaddingRight = 0;
        this.mPaddingBottom = 0;
        this.mIsDialog = true;
        this.mActivity = activity;
        this.mDialog = dialog;
        checkInitWithActivity();
        initCommonParameter(this.mDialog.getWindow());
    }
}
