package com.transsion.playercommon.activities;

import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDelegate;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.widgetsbottomsheet.bottomsheet.OSBaseCloseBottomSheetDialog;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.dialog.d;
import com.trello.rxlifecycle3.android.ActivityEvent;
import defpackage.ax8;
import defpackage.f5;
import defpackage.h27;
import defpackage.ia7;
import defpackage.m27;
import defpackage.mc7;
import defpackage.pp3;
import defpackage.qv4;
import defpackage.t08;
import defpackage.t81;
import defpackage.vha;
import defpackage.xk5;
import defpackage.yk5;
import defpackage.zd0;
import defpackage.zw8;
import java.io.ByteArrayInputStream;
import java.io.ObjectInputStream;
import java.util.List;

public class RxPermissionOSBottomSheetDialog extends OSBaseCloseBottomSheetDialog implements xk5, qv4, h27.b {
    public static final String INTENT_KEY_PARAM_CALL_FROM = "call_from";
    public static final String INTENT_KEY_PARAM_THEME_DARK = "theme_dark";
    public static final String PREFIX = "AppTheme.";
    protected static final String TAG = "RxPermissionOSBottomSheetDialog";
    private final zd0 lifecycleSubject = zd0.o0();
    protected String mCallFrom = "unknown";
    protected boolean mIsDarkTheme;
    protected boolean mIsDayNight;
    protected d permissionDialog;

    public static void c0(DialogInterface dialogInterface, int i) {
    }

    public static void e0(DialogInterface dialogInterface) {
    }

    private void fitSystemStatusBar() {
        Window window = getWindow();
        try {
            window.clearFlags(67108864);
            window.getDecorView().setSystemUiVisibility(1280);
            window.addFlags(Integer.MIN_VALUE);
            window.setStatusBarColor(0);
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            decorView.setSystemUiVisibility(!this.mIsDarkTheme ? systemUiVisibility | 8208 : systemUiVisibility & (-8209));
        } catch (Exception e) {
            Log.e(TAG, "fitSystemStatusBar " + e);
        }
    }

    public static Object getObject(Context context, String str) {
        try {
            String string = context.getSharedPreferences("video_settings", 0).getString(str, "");
            if (TextUtils.isEmpty(string)) {
                return null;
            }
            return new ObjectInputStream(new ByteArrayInputStream(Base64.decode(string.getBytes(), 1))).readObject();
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    public final void b0() {
        Intent intent = getIntent();
        if (intent != null) {
            this.mIsDayNight = intent.getBooleanExtra(INTENT_KEY_PARAM_THEME_DARK, false);
            this.mCallFrom = intent.getStringExtra(INTENT_KEY_PARAM_CALL_FROM);
        }
    }

    @Override
    public <T> yk5 bindToLifecycle() {
        return ax8.a(this.lifecycleSubject);
    }

    public final void d0(DialogInterface dialogInterface, int i) {
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

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1123) {
            finish();
        }
    }

    @Override
    public void finish() {
        super.finish();
        if (Build.VERSION.SDK_INT < 34) {
            overridePendingTransition(0, 0);
        } else {
            overrideActivityTransition(0, 0, 0);
            overrideActivityTransition(1, 0, 0);
        }
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return true;
    }

    @Override
    public int getDragSpaceTop() {
        return getResources().getDimensionPixelSize(R.dimen.os_space200);
    }

    @Override
    public Resources getResources() {
        Resources resources = super.getResources();
        ia7.h(resources, this);
        return resources;
    }

    @Override
    public boolean getSupportGesture() {
        return true;
    }

    @Override
    public void initView() {
        super.initView();
        Log.d(TAG, "initView");
        setCancelable(true);
        setCanceledOnTouchOutside(true);
        setFixedHeight(isFixedHeight());
        if (isFitWindow()) {
            fitSystemStatusBar();
        }
        b0();
    }

    public boolean isFitWindow() {
        return false;
    }

    public boolean isFixedHeight() {
        return true;
    }

    public mc7<ActivityEvent> lifecycle() {
        return this.lifecycleSubject.F();
    }

    public int loadSkin() {
        String str;
        ThemeData themeData = (ThemeData) getObject(getBaseContext(), "skin_theme");
        int i = -1;
        if (themeData == null || (str = themeData.name) == null || str.equals(getResources().getString(com.transsion.common.R.string.default_skin))) {
            getWindow().setStatusBarColor(0);
            return -1;
        }
        int identifier = getResources().getIdentifier("AppTheme." + themeData.name, "style", getPackageName());
        int i2 = 1;
        boolean z = themeData.description != null;
        boolean z2 = identifier != 0;
        Log.d(TAG, "Loading isNotLocalTheme:" + z + ", haveLocalThemeMatch:" + z2);
        if (!z) {
            if (z2) {
                getTheme().applyStyle(identifier, true);
                TypedValue typedValue = new TypedValue();
                getTheme().resolveAttribute(com.transsion.playercommon.R.attr.dark_theme, typedValue, true);
                if (typedValue.data != 0) {
                    i = 2;
                }
            } else {
                Log.e(TAG, "no theme match");
            }
            getWindow().setStatusBarColor(0);
            return i;
        }
        getTheme().applyStyle(getResources().getIdentifier(themeData.description, "style", getPackageName()), true);
        if (!TextUtils.isEmpty(themeData.path) ? themeData.darkMode == 0 : themeData.backgroundType != 1) {
            i2 = 2;
        }
        i = i2;
        getWindow().setStatusBarColor(0);
        return i;
    }

    @Override
    public void onActivityResult(int i, int i2, @Nullable Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 131 && t08.i(this)) {
            h27.c().e(1117, new Object[0]);
        }
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        animateDismiss();
    }

    @Override
    public void onCreate(@Nullable Bundle bundle) {
        this.lifecycleSubject.onNext(ActivityEvent.CREATE);
        vha.v(this);
        int iLoadSkin = loadSkin();
        supportRequestWindowFeature(1);
        getWindow().setBackgroundDrawableResource(com.transsion.playercommon.R.color.transparent);
        super.onCreate(bundle);
        t81.a(this);
        AppCompatDelegate.setDefaultNightMode(iLoadSkin);
        Resources.Theme theme = getTheme();
        if (theme != null) {
            theme.applyStyle(pp3.x(this) ? com.transsion.common.R.style.OSThemeCurve : com.transsion.common.R.style.OSThemeNoCurve, true);
        }
        getWindow().setWindowAnimations(com.transsion.playercommon.R.style.OSNULL);
        Log.d(TAG, "onCreate()" + this);
        h27.c().b(this, 1123);
    }

    @Override
    public void onDestroy() {
        this.lifecycleSubject.onNext(ActivityEvent.DESTROY);
        super.onDestroy();
        Log.d(TAG, "onDestroy()" + this);
        h27.c().f(this, 1123);
    }

    @Override
    public void onPause() {
        this.lifecycleSubject.onNext(ActivityEvent.PAUSE);
        super.onPause();
        Log.d(TAG, "onPause()" + this);
    }

    @Override
    public void onResume() {
        this.lifecycleSubject.onNext(ActivityEvent.RESUME);
        super.onResume();
        if (m27.a(this)) {
            showNotificationPermissionDialog();
        }
        Log.d(TAG, "onResume()" + this);
    }

    @Override
    public void onStart() {
        this.lifecycleSubject.onNext(ActivityEvent.START);
        super.onStart();
        Log.d(TAG, "onStart()" + this);
    }

    @Override
    public void onStop() {
        this.lifecycleSubject.onNext(ActivityEvent.STOP);
        super.onStop();
        Log.d(TAG, "onStop()" + this);
    }

    public void requestPermissionForAllData(List<Uri> list, int i) {
        PendingIntent pendingIntentCreateDeleteRequest;
        if (Build.VERSION.SDK_INT >= 30) {
            if (i == 1238) {
                pendingIntentCreateDeleteRequest = MediaStore.createWriteRequest(getContentResolver(), list);
            } else {
                pendingIntentCreateDeleteRequest = i == 1239 ? MediaStore.createDeleteRequest(getContentResolver(), list) : null;
            }
            try {
                startIntentSenderForResult(pendingIntentCreateDeleteRequest.getIntentSender(), i, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                e.printStackTrace();
            }
        }
    }

    @Override
    public boolean setDecorFitsSystemWindow() {
        return false;
    }

    public void showNotificationPermissionDialog() {
        Log.e(TAG, "showNotificationPermissionDialog ");
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            aVar.E(LayoutInflater.from(this).inflate(com.transsion.playercommon.R.layout.dialog_media_notification_permission, (ViewGroup) null, false));
            aVar.m(com.transsion.playercommon.R.string.sniffer_notice_not_open, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    RxPermissionOSBottomSheetDialog.c0(dialogInterface, i);
                }
            });
            aVar.f(false);
            aVar.u(com.transsion.playercommon.R.string.sniffer_notice_go_setting, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.d0(dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    RxPermissionOSBottomSheetDialog.e0(dialogInterface);
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

    public <T> yk5 bindUntilEvent(ActivityEvent activityEvent) {
        return zw8.c(this.lifecycleSubject, activityEvent);
    }
}
