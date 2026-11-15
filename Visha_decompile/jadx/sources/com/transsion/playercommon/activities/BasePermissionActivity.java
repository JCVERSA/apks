package com.transsion.playercommon.activities;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentSender;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.MediaStore;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.RequiresApi;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BasePermissionActivity;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.playercommon.utils.storage.FileOperateUtils;
import com.transsion.playercommon.utils.storage.MountPointManager;
import com.transsion.privacy.MarkPointUtil;
import com.transsion.widgetslib.dialog.d;
import defpackage.af9;
import defpackage.f5;
import defpackage.h27;
import defpackage.m27;
import defpackage.nx8;
import defpackage.p06;
import defpackage.pp3;
import defpackage.t08;
import defpackage.v34;
import defpackage.w6c;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import java.util.function.Predicate;

public class BasePermissionActivity extends BaseActivity implements MountPointManager.a {
    public static final String PERMISSION_ACTION = "com.android.setting.ACTION_GET_PERMISSION_DETAILS";
    public static final String PERMISSION_ACTION_ALL = "android.settings.MANAGE_APP_ALL_FILES_ACCESS_PERMISSION";
    public static final String PERMISSION_ACTION_OTHER = "android.settings.APPLICATION_DETAILS_SETTINGS";
    public static final int PERMISSION_REQUESTCODE = 19001;
    private static final String TAG = "BasePermissionActivity";
    protected boolean mActivityStart;
    protected FileOperateUtils mFileOperateUtils;
    protected boolean mHaveFilePermission;
    protected boolean mIsDelayRequestPermission;
    private boolean mSuccessWritePermissionCalled = false;
    public boolean mAutoRequestGuideDialog = true;
    public boolean mRequestVideoAndAudioPermission = false;
    final boolean[] mIsEnsure = {false};

    public class a implements DialogInterface.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            if (BasePermissionActivity.this.isRestrictPermissionGuideShow()) {
                w6c.r(BasePermissionActivity.this, "file_permission_show", false);
            } else {
                BasePermissionActivity.this.onBackPressed();
            }
        }
    }

    public static boolean v0(String str) {
        return str != null && str.equals("android.permission.POST_NOTIFICATIONS");
    }

    public static void w0(DialogInterface dialogInterface, int i) {
    }

    public static void x0(Context context, DialogInterface dialogInterface, int i) {
        v34.i();
        Intent intent = new Intent("android.settings.APP_NOTIFICATION_SETTINGS");
        intent.putExtra("packagename", context.getPackageName());
        intent.putExtra("android.provider.extra.APP_PACKAGE", context.getPackageName());
        try {
            f5.b(intent, 131, (Activity) context);
        } catch (Exception unused) {
            Intent intent2 = new Intent(PERMISSION_ACTION_OTHER);
            intent2.setData(Uri.fromParts("package", context.getPackageName(), null));
            try {
                f5.b(intent2, 131, (Activity) context);
            } catch (Exception e) {
                String message = e.getMessage();
                Objects.requireNonNull(message);
                Log.e(TAG, message);
            }
        }
    }

    public static void z0(DialogInterface dialogInterface) {
    }

    public final void A0(DialogInterface dialogInterface) {
        if (isRestrictPermissionGuideShow()) {
            return;
        }
        Log.w(TAG, "permissionDialog cancel");
        onBackPressed();
    }

    public void addRegisterMountListener() {
        MountPointManager.f().p(this);
    }

    public void afterGpdrPermission() {
        if (MainApp.o) {
            if (!t08.i(this)) {
                if (Build.VERSION.SDK_INT >= 33) {
                    showNewAudioNotificationSdk33PermissionDialog();
                } else {
                    showNewAudioNotificationPermissionDialog(this);
                }
            }
            w6c.r(this, "is_first_enter_main_activity", false);
        }
        checkFilePermission();
        if (Build.VERSION.SDK_INT >= 33) {
            m27.b(this, 131);
        }
    }

    public void callRequestPermission() {
        t08.m(this, new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE"}, 123);
    }

    public void checkFilePermission() {
        isHaveFilePermission();
        if (this.mHaveFilePermission) {
            return;
        }
        if (t08.n(this)) {
            showRequestPermissionDialog();
        } else {
            t08.l(this);
        }
    }

    public void checkPermissionDialog() {
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.mIsEnsure[0] = true;
        Log.d(TAG, "setCheckPermissionDialog reShow");
        this.permissionDialog.dismiss();
        this.permissionDialog.show();
    }

    public void exitAPP() {
        finish();
    }

    @Override
    public void finish() {
        super.finish();
    }

    public boolean isHaveFilePermission() {
        boolean z = this.mHaveFilePermission || t08.c(this);
        this.mHaveFilePermission = z;
        return z;
    }

    public boolean isRestrictPermissionGuideShow() {
        return true;
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        Log.i(TAG, "onActivityResult " + i + StringUtils.COMMA + i2);
        super.onActivityResult(i, i2, intent);
        if (nx8.p(this, i, i2, intent)) {
            return;
        }
        if (i != 131) {
            if (i == 1234) {
                onFinishRequestPermission(i, isAlertWindowPermissionGranted());
                return;
            }
            if (i == 1236) {
                if (i2 == -1) {
                    recreate();
                    return;
                }
                return;
            }
            if (i != 1246) {
                if (i == 19001) {
                    Log.i(TAG, "onActivityResult mAutoRequestGuideDialog:" + this.mAutoRequestGuideDialog);
                    if (this.mAutoRequestGuideDialog) {
                        requestFilePermission();
                        return;
                    }
                    h27.c().e(1081, new Object[0]);
                    boolean zC = t08.c(this);
                    this.mHaveFilePermission = zC;
                    if (zC) {
                        successWritePermission();
                        return;
                    } else {
                        if (isRestrictPermissionGuideShow()) {
                            return;
                        }
                        showRequestPermissionDialog();
                        return;
                    }
                }
                if (i != 1238 && i != 1239) {
                    return;
                }
            }
            af9.h = true;
            h27.c().e(1109, new Object[0]);
        }
        onFinishRequestPermission(i, i2 == -1);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        addRegisterMountListener();
    }

    @Override
    public void onDestroy() {
        MountPointManager.f().t(this);
        super.onDestroy();
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.mIsEnsure[0] = true;
        this.permissionDialog.dismiss();
    }

    public void onEjected(String str) {
        Log.d(TAG, "onEjected unMountPoint:" + str);
    }

    public void onMounted(String str) {
        Log.d(TAG, "onMounted mountPoint:" + str);
    }

    @Override
    public void onPause() {
        super.onPause();
    }

    @Override
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        Log.e(TAG, "onRequestPermissionsResult requestCode:" + i + StringUtils.COMMA + strArr.toString());
        if (Arrays.stream(strArr).anyMatch(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return BasePermissionActivity.v0((String) obj);
            }
        })) {
            Log.i(TAG, "onRequestPermissionsResult POST_NOTIFICATIONS");
            w6c.r(this, "have_request_notification_permission", true);
        }
        m27.e(false);
        if (i != 132) {
            super.onRequestPermissionsResult(i, strArr, iArr);
        } else if (iArr.length > 1 && iArr[0] == 0 && iArr[1] == 0) {
            successWritePermission();
            onFinishRequestPermission(132, true);
        }
    }

    @Override
    public void onResume() {
        super.onResume();
    }

    public void onSdSwap() {
        Log.d(TAG, "onSdSwap ");
    }

    @Override
    public void onStart() {
        super.onStart();
        this.mActivityStart = true;
        boolean z = (this.mHaveFilePermission || (this.mIsDelayRequestPermission && pp3.u && MainApp.r)) ? false : true;
        Log.d(TAG, "onStart: " + z + StringUtils.COMMA + this);
        if (z) {
            if (MarkPointUtil.c(getApplicationContext()) || UpdateUtils.b(getApplicationContext())) {
                if (!isRestrictPermissionGuideShow() || w6c.c(this, "file_permission_show", true)) {
                    checkFilePermission();
                }
            }
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        this.mActivityStart = false;
    }

    public void onUnMounted(String str) {
        Log.d(TAG, "onUnMounted unMountPoint:" + str);
    }

    public void requestAudioPermission() {
        if (Build.VERSION.SDK_INT >= 33) {
            t08.m(this, new String[]{"android.permission.READ_MEDIA_AUDIO"}, 130);
        } else {
            callRequestPermission();
        }
    }

    public void requestFilePermission() {
        Log.i(TAG, "requestFilePermission");
        t08.l(this);
    }

    public void requestPermissionForAllData(List<Uri> list, int i, boolean z) {
        PendingIntent pendingIntentCreateDeleteRequest;
        if (Build.VERSION.SDK_INT >= 30) {
            if (i == 1238) {
                pendingIntentCreateDeleteRequest = MediaStore.createWriteRequest(getContentResolver(), list);
            } else if (i == 1239) {
                af9.i = list.size();
                pendingIntentCreateDeleteRequest = MediaStore.createDeleteRequest(getContentResolver(), list);
            } else {
                pendingIntentCreateDeleteRequest = null;
            }
            try {
                startIntentSenderForResult(pendingIntentCreateDeleteRequest.getIntentSender(), i, null, 0, 0, 0);
            } catch (IntentSender.SendIntentException e) {
                e.printStackTrace();
            }
        }
    }

    public void requestVideoPermission() {
        if (Build.VERSION.SDK_INT >= 33) {
            t08.m(this, new String[]{"android.permission.READ_MEDIA_VIDEO"}, 129);
        } else {
            callRequestPermission();
        }
    }

    public void showNewAudioNotificationPermissionDialog(final Context context) {
        Log.e(TAG, "showNotificationPermissionDialog ");
        d dVar = this.permissionNewAudioDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(context);
            aVar.m(R.string.cancel, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    BasePermissionActivity.w0(dialogInterface, i);
                }
            });
            aVar.E(LayoutInflater.from(context).inflate(R.layout.dialog_new_audio_notification_permission, (ViewGroup) null, false));
            aVar.f(false);
            aVar.u(R.string.go_to_open, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    BasePermissionActivity.x0(context, dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionNewAudioDialog = dVarA;
            if (dVarA.isShowing()) {
                return;
            }
            this.permissionNewAudioDialog.show();
            m27.f();
            m27.g();
        }
    }

    @RequiresApi(api = 33)
    public void showNewAudioNotificationSdk33PermissionDialog() {
        Intent intent = new Intent("com.transsion.audio.ACTION_START_AUDIO_NEW_NOTIFICATION_TEMP_ACTIVITY");
        intent.addCategory("android.intent.category.DEFAULT");
        intent.addCategory("com.transsion.audio.CATEGORY_AUDIO_NEW_NOTIFICATION");
        intent.setPackage(getPackageName());
        intent.putExtra("requestCode", TAdErrorCode.CODE_AD_REQUEST_FAILED);
        try {
            if (intent.resolveActivity(getPackageManager()) == null) {
                intent.setClassName(getPackageName(), "com.transsion.audio.activities.LaunchTempActivity");
            }
            startActivity(intent);
        } catch (ActivityNotFoundException e) {
            Log.w(TAG, "Request System Notification Permission Error:" + e.getMessage());
        }
    }

    public void showRequestPermissionDialog() {
        this.mIsEnsure[0] = false;
        d dVar = this.permissionDialog;
        if (dVar == null || !dVar.isShowing()) {
            d.a aVar = new d.a(this);
            View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_permission_remind, (ViewGroup) null, false);
            if (Build.VERSION.SDK_INT < 30) {
                ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.permission_only_media_R);
            } else if (pp3.j) {
                ((TextView) viewInflate.findViewById(R.id.title)).setText(R.string.permission_all_file_access);
            }
            ((TextView) viewInflate.findViewById(R.id.tv2)).setText(pp3.c ? R.string.permission_content_desciption_pre : R.string.permission_content_desciption);
            viewInflate.findViewById(R.id.description).setVisibility(8);
            aVar.E(viewInflate);
            aVar.f(false);
            aVar.m(R.string.cancel, new a());
            aVar.u(R.string.permission_go, new DialogInterface.OnClickListener() {
                @Override
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.b.y0(dialogInterface, i);
                }
            });
            d dVarA = aVar.a();
            this.permissionDialog = dVarA;
            dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
                @Override
                public final void onDismiss(DialogInterface dialogInterface) {
                    BasePermissionActivity.z0(dialogInterface);
                }
            });
            this.permissionDialog.setOnCancelListener(new DialogInterface.OnCancelListener() {
                @Override
                public final void onCancel(DialogInterface dialogInterface) {
                    this.b.A0(dialogInterface);
                }
            });
            if (this.permissionDialog.isShowing()) {
                return;
            }
            this.permissionDialog.show();
            p06.e0(null, "popup_mediafile2");
        }
    }

    public void successWritePermission() {
        if (this.mSuccessWritePermissionCalled) {
            return;
        }
        this.mSuccessWritePermissionCalled = true;
        successWritePermissionOnce();
    }

    public void successWritePermissionOnce() {
    }

    public final void y0(DialogInterface dialogInterface, int i) {
        this.mIsEnsure[0] = true;
        v34.i();
        Intent intent = new Intent(PERMISSION_ACTION);
        if (pp3.j) {
            intent = new Intent(PERMISSION_ACTION_ALL);
            intent.setData(Uri.parse("package:" + getPackageName()));
        }
        intent.putExtra("packagename", getPackageName());
        try {
            startActivityForResult(intent, PERMISSION_REQUESTCODE);
        } catch (ActivityNotFoundException unused) {
            Intent intent2 = new Intent(PERMISSION_ACTION_OTHER);
            intent2.setData(Uri.fromParts("package", getPackageName(), null));
            try {
                startActivityForResult(intent2, PERMISSION_REQUESTCODE);
            } catch (ActivityNotFoundException e) {
                Log.e(TAG, e.getMessage());
            }
        }
        this.mAutoRequestGuideDialog = false;
        p06.f0(null, "popup_mediafile2_y", 9324L);
    }
}
