package com.cloud.tmc.miniapp.base;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsCompat;
import com.cloud.tmc.integration.utils.MiniBarUtils;
import com.cloud.tmc.kernel.constants.TmcConstants;
import com.cloud.tmc.kernel.log.TmcLogger;
import com.cloud.tmc.miniapp.IMiniAppLifecycleInterface;
import com.cloud.tmc.miniapp.R;
import com.cloud.tmc.miniapp.action.ActivityAction;
import com.cloud.tmc.miniapp.action.BundleAction;
import com.cloud.tmc.miniapp.action.ClickAction;
import com.cloud.tmc.miniapp.action.HandlerAction;
import com.cloud.tmc.miniapp.action.KeyboardAction;
import com.cloud.tmc.miniapp.dialog.OooO0O0;
import com.cloud.tmc.miniapp.dialog.o000OOo;
import com.cloud.tmc.miniapp.ipc.binderimpl.OooO00o;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Random;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@SourceDebugExtension
public abstract class BaseActivity extends AppCompatActivity implements ActivityAction, ClickAction, HandlerAction, KeyboardAction, BundleAction {
    private OooO0O0 dialog;
    private int dialogCount;
    private int initDataChannel;
    private boolean mResumed;
    private Bundle savedInstance;
    private final Lazy activityCallbacks$delegate = LazyKt.b(new Function0<SparseArray<OnActivityCallback>>() {
        @Override
        public final SparseArray<BaseActivity.OnActivityCallback> invoke() {
            return new SparseArray<>(1);
        }
    });
    private boolean mStarted = true;

    public interface OnActivityCallback {
        void onActivityResult(int i10, Intent intent);
    }

    public static final WindowInsetsCompat fitsSystemWindows$lambda$1(View v10, WindowInsetsCompat insets) {
        Intrinsics.h(v10, "v");
        Intrinsics.h(insets, "insets");
        z0.c insets2 = insets.getInsets(WindowInsetsCompat.Type.systemBars());
        Intrinsics.g(insets2, "insets.getInsets(WindowI…Compat.Type.systemBars())");
        v10.setPadding(v10.getPaddingLeft(), insets2.f76466b, v10.getPaddingRight(), insets2.f76468d);
        return WindowInsetsCompat.CONSUMED;
    }

    private final SparseArray<OnActivityCallback> getActivityCallbacks() {
        return (SparseArray) this.activityCallbacks$delegate.getValue();
    }

    public static final void initSoftKeyboard$lambda$2(BaseActivity this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        this$0.hideKeyboard(this$0.getCurrentFocus());
    }

    private final boolean isShouldHideInput(View view, MotionEvent motionEvent) {
        if (!(view instanceof EditText) && !(view instanceof WebView)) {
            return false;
        }
        int[] iArr = {0, 0};
        view.getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return motionEvent.getX() <= ((float) i10) || motionEvent.getX() >= ((float) (view.getWidth() + i10)) || motionEvent.getY() <= ((float) i11) || motionEvent.getY() >= ((float) (view.getHeight() + i11));
    }

    public static void showLoadingDialog$default(BaseActivity baseActivity, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
        }
        if ((i10 & 1) != 0) {
            str = "";
        }
        baseActivity.showLoadingDialog(str);
    }

    public static final void showLoadingDialog$lambda$0(BaseActivity this$0, String str) {
        TextView textView;
        Intrinsics.h(this$0, "this$0");
        if (this$0.dialogCount <= 0 || this$0.isFinishing() || this$0.isDestroyed()) {
            return;
        }
        if (this$0.dialog == null) {
            this$0.dialog = new o000OOo(this$0).setCancelable(false).create();
        }
        if (str == null || str.length() <= 0) {
            OooO0O0 oooO0O0 = this$0.dialog;
            textView = oooO0O0 != null ? (TextView) oooO0O0.findViewById(R.id.tv_wait_message) : null;
            if (textView != null) {
                textView.setText(this$0.getString(R.string.dialog_loading_tv));
            }
        } else {
            OooO0O0 oooO0O1 = this$0.dialog;
            textView = oooO0O1 != null ? (TextView) oooO0O1.findViewById(R.id.tv_wait_message) : null;
            if (textView != null) {
                textView.setText(str);
            }
        }
        OooO0O0 oooO0O2 = this$0.dialog;
        Intrinsics.e(oooO0O2);
        if (oooO0O2.isShowing()) {
            return;
        }
        OooO0O0 oooO0O3 = this$0.dialog;
        Intrinsics.e(oooO0O3);
        oooO0O3.show();
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent ev2) {
        Intrinsics.h(ev2, "ev");
        if (ev2.getActionMasked() == 0) {
            View currentFocus = getCurrentFocus();
            if (isShouldHideInput(currentFocus, ev2)) {
                hideKeyboard(currentFocus);
            }
        }
        return super.dispatchTouchEvent(ev2);
    }

    @Override
    public void finish() {
        super.finish();
        hideKeyboard(getCurrentFocus());
    }

    public void fitsSystemWindows() {
        WindowCompat.setDecorFitsSystemWindows(getWindow(), false);
        ViewCompat.setOnApplyWindowInsetsListener(getWindow().getDecorView().findViewById(android.R.id.content), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return BaseActivity.fitsSystemWindows$lambda$1(view, windowInsetsCompat);
            }
        });
    }

    @Override
    public Activity getActivity() {
        return ActivityAction.DefaultImpls.getActivity(this);
    }

    @Override
    public boolean getBoolean(String str) {
        return BundleAction.DefaultImpls.getBoolean(this, str);
    }

    @Override
    public Bundle getBundle() {
        return getIntent().getExtras();
    }

    public ViewGroup getContentView() {
        return (ViewGroup) findViewById(android.R.id.content);
    }

    @Override
    public double getDouble(String str) {
        return BundleAction.DefaultImpls.getDouble(this, str);
    }

    @Override
    public float getFloat(String str) {
        return BundleAction.DefaultImpls.getFloat(this, str);
    }

    @Override
    public Handler getHandler() {
        return HandlerAction.DefaultImpls.getHandler(this);
    }

    public final int getInitDataChannel() {
        return this.initDataChannel;
    }

    @Override
    public int getInt(String str) {
        return BundleAction.DefaultImpls.getInt(this, str);
    }

    @Override
    public ArrayList<Integer> getIntegerArrayList(String str) {
        return BundleAction.DefaultImpls.getIntegerArrayList(this, str);
    }

    public abstract int getLayoutId();

    @Override
    public long getLong(String str) {
        return BundleAction.DefaultImpls.getLong(this, str);
    }

    public final boolean getMResumed() {
        return this.mResumed;
    }

    public final boolean getMStarted() {
        return this.mStarted;
    }

    @Override
    public <P extends Parcelable> P getParcelable(String str) {
        return (P) BundleAction.DefaultImpls.getParcelable(this, str);
    }

    public final Bundle getSavedInstance() {
        return this.savedInstance;
    }

    @Override
    public <S extends Serializable> S getSerializable(String str) {
        return (S) BundleAction.DefaultImpls.getSerializable(this, str);
    }

    @Override
    public String getString(String str) {
        return BundleAction.DefaultImpls.getString(this, str);
    }

    @Override
    public ArrayList<String> getStringArrayList(String str) {
        return BundleAction.DefaultImpls.getStringArrayList(this, str);
    }

    @Override
    public void hideKeyboard(View view) {
        KeyboardAction.DefaultImpls.hideKeyboard(this, view);
    }

    public void hideLoadingDialog() {
        OooO0O0 oooO0O0;
        OooO0O0 oooO0O1;
        if (isFinishing() || isDestroyed()) {
            return;
        }
        int i10 = this.dialogCount;
        if (i10 > 0) {
            this.dialogCount = i10 - 1;
        }
        if (this.dialogCount != 0 || (oooO0O0 = this.dialog) == null) {
            return;
        }
        Intrinsics.e(oooO0O0);
        if (oooO0O0.isShowing() && (oooO0O1 = this.dialog) != null) {
            oooO0O1.dismiss();
        }
    }

    public abstract void hideStatusLoading();

    public void initActivity() {
        initLayout();
        Bundle bundle = getBundle();
        if (!(bundle != null ? bundle.getBoolean(TmcConstants.EXTRA_APP_ENABLE_QUICK_MODE) : false)) {
            showStatusLoading();
        }
        initView();
        this.initDataChannel = 0;
        initData();
    }

    public abstract void initData();

    public void initLayout() {
        if (getLayoutId() > 0) {
            setContentView(getLayoutId());
            fitsSystemWindows();
            initSoftKeyboard();
            MiniBarUtils.setStatusBarLightMode(this);
        }
    }

    public void initSoftKeyboard() {
        ViewGroup contentView = getContentView();
        if (contentView != null) {
            contentView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    BaseActivity.initSoftKeyboard$lambda$2(this.f22838a, view);
                }
            });
        }
    }

    public abstract void initView();

    public boolean isShowDialog() {
        OooO0O0 oooO0O0 = this.dialog;
        if (oooO0O0 != null) {
            Intrinsics.e(oooO0O0);
            if (oooO0O0.isShowing()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void onActivityResult(int i10, int i11, Intent intent) {
        OnActivityCallback onActivityCallback = getActivityCallbacks().get(i10);
        OnActivityCallback onActivityCallback2 = onActivityCallback;
        if (onActivityCallback == null) {
            super.onActivityResult(i10, i11, intent);
            return;
        }
        if (onActivityCallback2 != null) {
            onActivityCallback2.onActivityResult(i11, intent);
        }
        getActivityCallbacks().remove(i10);
    }

    @Override
    public void onClick(View view) {
        ClickAction.DefaultImpls.onClick(this, view);
    }

    @Override
    public void onCreate(Bundle bundle) {
        this.savedInstance = bundle;
        super.onCreate(bundle);
        try {
            IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
            if (iMiniAppLifecycleInterface != null) {
                iMiniAppLifecycleInterface.onCreate();
            }
        } catch (Throwable th2) {
            TmcLogger.e("globalMiniAppLifcecyclListener callback onCreate fail:" + th2);
        }
        initActivity();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        try {
            IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
            if (iMiniAppLifecycleInterface != null) {
                iMiniAppLifecycleInterface.onDestroy();
            }
        } catch (Throwable th2) {
            TmcLogger.e("globalMiniAppLifcecyclListener callback onDestroy fail:" + th2);
        }
        removeCallbacks();
        if (isShowDialog()) {
            hideLoadingDialog();
        }
        this.dialog = null;
    }

    @Override
    public void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        setIntent(intent);
    }

    @Override
    public void onPause() {
        super.onPause();
        try {
            IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
            if (iMiniAppLifecycleInterface != null) {
                iMiniAppLifecycleInterface.onPause();
            }
        } catch (Throwable th2) {
            TmcLogger.e("globalMiniAppLifcecyclListener callback onPause fail:" + th2);
        }
        this.mResumed = false;
    }

    @Override
    public void onResume() {
        try {
            super.onResume();
            try {
                IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
                if (iMiniAppLifecycleInterface != null) {
                    iMiniAppLifecycleInterface.onResume();
                }
            } catch (Throwable th2) {
                TmcLogger.e("globalMiniAppLifcecyclListener callback onResume fail:" + th2);
            }
            this.mResumed = true;
        } catch (Throwable th3) {
            TmcLogger.e("BaseActivity", "onResume", th3);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        try {
            IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
            if (iMiniAppLifecycleInterface != null) {
                iMiniAppLifecycleInterface.onStart();
            }
        } catch (Throwable th2) {
            TmcLogger.e("globalMiniAppLifcecyclListener callback onStart fail:" + th2);
        }
        this.mStarted = true;
    }

    @Override
    public void onStop() {
        super.onStop();
        try {
            IMiniAppLifecycleInterface iMiniAppLifecycleInterface = OooO00o.OooO0OO;
            if (iMiniAppLifecycleInterface != null) {
                iMiniAppLifecycleInterface.onStop();
            }
        } catch (Throwable th2) {
            TmcLogger.e("globalMiniAppLifcecyclListener callback onStop fail:" + th2);
        }
        this.mStarted = false;
    }

    @Override
    public boolean post(Runnable runnable) {
        return HandlerAction.DefaultImpls.post(this, runnable);
    }

    @Override
    public boolean postAtTime(Runnable runnable, long j10) {
        return HandlerAction.DefaultImpls.postAtTime(this, runnable, j10);
    }

    @Override
    public boolean postDelayed(Object obj, long j10, Runnable runnable) {
        return HandlerAction.DefaultImpls.postDelayed(this, obj, j10, runnable);
    }

    @Override
    public void removeCallbacks() {
        HandlerAction.DefaultImpls.removeCallbacks(this);
    }

    @Override
    public void removeCallbacksAndMessages(Object obj) {
        HandlerAction.DefaultImpls.removeCallbacksAndMessages(this, obj);
    }

    public final void setInitDataChannel(int i10) {
        this.initDataChannel = i10;
    }

    public final void setMResumed(boolean z10) {
        this.mResumed = z10;
    }

    public final void setMStarted(boolean z10) {
        this.mStarted = z10;
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener, int... iArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, iArr);
    }

    public final void setSavedInstance(Bundle bundle) {
        this.savedInstance = bundle;
    }

    @Override
    public void showKeyboard(View view) {
        KeyboardAction.DefaultImpls.showKeyboard(this, view);
    }

    @JvmOverloads
    public final void showLoadingDialog() {
        showLoadingDialog$default(this, null, 1, null);
    }

    public abstract void showStatusLoading();

    @Override
    public void startActivity(Intent intent) {
        Intrinsics.h(intent, "intent");
        super.startActivity(intent);
    }

    @Override
    public void startActivityForResult(Intent intent, int i10, Bundle bundle) {
        Intrinsics.h(intent, "intent");
        hideKeyboard(getCurrentFocus());
        super.startActivityForResult(intent, i10, bundle);
    }

    @Override
    public void toggleSoftInput(View view) {
        KeyboardAction.DefaultImpls.toggleSoftInput(this, view);
    }

    public final void updateLoadingContent(String str) {
        OooO0O0 oooO0O0 = this.dialog;
        if (oooO0O0 != null) {
            Intrinsics.e(oooO0O0);
            if (oooO0O0.isShowing()) {
                OooO0O0 oooO0O1 = this.dialog;
                TextView textView = oooO0O1 != null ? (TextView) oooO0O1.findViewById(R.id.tv_wait_message) : null;
                if (textView == null) {
                    return;
                }
                textView.setText(str);
            }
        }
    }

    @Override
    public boolean getBoolean(String str, boolean z10) {
        return BundleAction.DefaultImpls.getBoolean(this, str, z10);
    }

    @Override
    public double getDouble(String str, double d10) {
        return BundleAction.DefaultImpls.getDouble(this, str, d10);
    }

    @Override
    public float getFloat(String str, float f10) {
        return BundleAction.DefaultImpls.getFloat(this, str, f10);
    }

    @Override
    public int getInt(String str, int i10) {
        return BundleAction.DefaultImpls.getInt(this, str, i10);
    }

    @Override
    public long getLong(String str, long j10) {
        return BundleAction.DefaultImpls.getLong(this, str, j10);
    }

    @Override
    public boolean postDelayed(Runnable runnable, long j10) {
        return HandlerAction.DefaultImpls.postDelayed(this, runnable, j10);
    }

    @Override
    public void removeCallbacks(Runnable runnable) {
        HandlerAction.DefaultImpls.removeCallbacks(this, runnable);
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener, View... viewArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, onClickListener, viewArr);
    }

    @JvmOverloads
    public void showLoadingDialog(final String str) {
        if (isFinishing() || isDestroyed()) {
            return;
        }
        this.dialogCount++;
        postDelayed(new Runnable() {
            @Override
            public final void run() {
                BaseActivity.showLoadingDialog$lambda$0(this.f22836a, str);
            }
        }, 300L);
    }

    @Override
    public void setOnClickListener(int... iArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, iArr);
    }

    public void startActivityForResult(Class<? extends Activity> clazz, OnActivityCallback onActivityCallback) {
        Intrinsics.h(clazz, "clazz");
        startActivityForResult(new Intent(this, clazz), (Bundle) null, onActivityCallback);
    }

    @Override
    public void setOnClickListener(View... viewArr) {
        ClickAction.DefaultImpls.setOnClickListener(this, viewArr);
    }

    public void startActivityForResult(Intent intent, OnActivityCallback onActivityCallback) {
        Intrinsics.h(intent, "intent");
        startActivityForResult(intent, (Bundle) null, onActivityCallback);
    }

    public void startActivityForResult(Intent intent, Bundle bundle, OnActivityCallback onActivityCallback) {
        Intrinsics.h(intent, "intent");
        int iNextInt = new Random().nextInt((int) Math.pow(2.0d, 16.0d));
        getActivityCallbacks().put(iNextInt, onActivityCallback);
        startActivityForResult(intent, iNextInt, bundle);
    }

    @Override
    public final Context getContext() {
        return this;
    }
}
