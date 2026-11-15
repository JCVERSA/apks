package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.util.List;

public abstract class PermissionUtils {

    @RequiresApi(api = 23)
    public static final class PermissionActivityImpl extends UtilsTransActivity.TransActivityDelegate {
        public static int b = -1;
        public static final PermissionActivityImpl c = new PermissionActivityImpl();

        public class a implements Utils.b {
            public final int a;

            public a(int i) {
                this.a = i;
            }

            @Override
            public void accept(Intent intent) {
                intent.putExtra("TYPE", this.a);
            }
        }

        public static void start(int i) {
            UtilsTransActivity.u(new a(i), c);
        }

        public final void a(int i) {
            if (i == 2) {
                PermissionUtils.b();
            } else if (i == 3) {
                PermissionUtils.c();
            }
        }

        public final void b(final UtilsTransActivity utilsTransActivity) {
            PermissionUtils.d();
            if (PermissionUtils.a(null, utilsTransActivity, new Runnable() {
                @Override
                public void run() {
                    UtilsTransActivity utilsTransActivity2 = utilsTransActivity;
                    PermissionUtils.d();
                    utilsTransActivity2.requestPermissions((String[]) PermissionUtils.e(null).toArray(new String[0]), 1);
                }
            })) {
                return;
            }
            PermissionUtils.d();
            utilsTransActivity.requestPermissions((String[]) PermissionUtils.e(null).toArray(new String[0]), 1);
        }

        @Override
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            utilsTransActivity.finish();
            return true;
        }

        @Override
        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i, int i2, Intent intent) {
            utilsTransActivity.finish();
        }

        @Override
        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
            utilsTransActivity.getWindow().addFlags(262160);
            int intExtra = utilsTransActivity.getIntent().getIntExtra("TYPE", -1);
            if (intExtra == 1) {
                PermissionUtils.d();
                Log.e("PermissionUtils", "sInstance is null.");
                utilsTransActivity.finish();
            } else if (intExtra == 2) {
                b = 2;
                PermissionUtils.k(utilsTransActivity, 2);
            } else if (intExtra == 3) {
                b = 3;
                PermissionUtils.j(utilsTransActivity, 3);
            } else {
                utilsTransActivity.finish();
                Log.e("PermissionUtils", "type is wrong.");
            }
        }

        @Override
        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
            int i = b;
            if (i != -1) {
                a(i);
                b = -1;
            }
            super.onDestroy(utilsTransActivity);
        }

        @Override
        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i, @NonNull String[] strArr, @NonNull int[] iArr) {
            utilsTransActivity.finish();
            PermissionUtils.d();
        }
    }

    public interface a {
    }

    public static boolean a(PermissionUtils permissionUtils, UtilsTransActivity utilsTransActivity, Runnable runnable) {
        throw null;
    }

    public static a b() {
        return null;
    }

    public static a c() {
        return null;
    }

    public static PermissionUtils d() {
        return null;
    }

    public static List e(PermissionUtils permissionUtils) {
        throw null;
    }

    public static boolean h() {
        return Settings.canDrawOverlays(Utils.a());
    }

    public static void i() {
        Intent intentP = h.p(Utils.a().getPackageName(), true);
        if (h.z(intentP)) {
            Utils.a().startActivity(intentP);
        }
    }

    public static void j(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (h.z(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            i();
        }
    }

    public static void k(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (h.z(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            i();
        }
    }
}
