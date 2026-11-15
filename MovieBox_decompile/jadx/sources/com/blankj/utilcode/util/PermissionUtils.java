package com.blankj.utilcode.util;

import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.util.Pair;
import android.view.MotionEvent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;

public final class PermissionUtils {

    private static PermissionUtils f19408h;

    private static b f19409i;

    private static b f19410j;

    private String[] f19411a;

    private b f19412b;

    private Set f19413c;

    private List f19414d;

    private List f19415e;

    private List f19416f;

    private List f19417g;

    static final class PermissionActivityImpl extends UtilsTransActivity.TransActivityDelegate {

        private static int f19418a = -1;

        private static PermissionActivityImpl f19419b = new PermissionActivityImpl();

        class a implements Utils.b {

            final int f19420a;

            a(int i10) {
                this.f19420a = i10;
            }

            @Override
            public void accept(Intent intent) {
                intent.putExtra("TYPE", this.f19420a);
            }
        }

        PermissionActivityImpl() {
        }

        private void a(int i10) {
            if (i10 == 2) {
                if (PermissionUtils.f19409i == null) {
                    return;
                }
                if (PermissionUtils.u()) {
                    PermissionUtils.f19409i.onGranted();
                } else {
                    PermissionUtils.f19409i.onDenied();
                }
                b unused = PermissionUtils.f19409i = null;
                return;
            }
            if (i10 != 3 || PermissionUtils.f19410j == null) {
                return;
            }
            if (PermissionUtils.t()) {
                PermissionUtils.f19410j.onGranted();
            } else {
                PermissionUtils.f19410j.onDenied();
            }
            b unused2 = PermissionUtils.f19410j = null;
        }

        public void b(final UtilsTransActivity utilsTransActivity) {
            if (PermissionUtils.f19408h.A(utilsTransActivity, new Runnable() {
                @Override
                public void run() {
                    utilsTransActivity.requestPermissions((String[]) PermissionUtils.f19408h.f19414d.toArray(new String[0]), 1);
                }
            })) {
                return;
            }
            utilsTransActivity.requestPermissions((String[]) PermissionUtils.f19408h.f19414d.toArray(new String[0]), 1);
        }

        public static void start(int i10) {
            UtilsTransActivity.P(new a(i10), f19419b);
        }

        @Override
        public boolean dispatchTouchEvent(@NonNull UtilsTransActivity utilsTransActivity, MotionEvent motionEvent) {
            utilsTransActivity.finish();
            return true;
        }

        @Override
        public void onActivityResult(@NonNull UtilsTransActivity utilsTransActivity, int i10, int i11, Intent intent) {
            utilsTransActivity.finish();
        }

        @Override
        public void onCreated(@NonNull UtilsTransActivity utilsTransActivity, @Nullable Bundle bundle) {
            utilsTransActivity.getWindow().addFlags(262160);
            int intExtra = utilsTransActivity.getIntent().getIntExtra("TYPE", -1);
            if (intExtra != 1) {
                if (intExtra == 2) {
                    f19418a = 2;
                    PermissionUtils.D(utilsTransActivity, 2);
                    return;
                } else if (intExtra == 3) {
                    f19418a = 3;
                    PermissionUtils.B(utilsTransActivity, 3);
                    return;
                } else {
                    utilsTransActivity.finish();
                    Log.e("PermissionUtils", "type is wrong.");
                    return;
                }
            }
            if (PermissionUtils.f19408h == null) {
                Log.e("PermissionUtils", "sInstance is null.");
                utilsTransActivity.finish();
                return;
            }
            if (PermissionUtils.f19408h.f19414d == null) {
                Log.e("PermissionUtils", "mPermissionsRequest is null.");
                utilsTransActivity.finish();
            } else if (PermissionUtils.f19408h.f19414d.size() <= 0) {
                Log.e("PermissionUtils", "mPermissionsRequest's size is no more than 0.");
                utilsTransActivity.finish();
            } else {
                PermissionUtils.i(PermissionUtils.f19408h);
                PermissionUtils.j(PermissionUtils.f19408h);
                b(utilsTransActivity);
            }
        }

        @Override
        public void onDestroy(@NonNull UtilsTransActivity utilsTransActivity) {
            int i10 = f19418a;
            if (i10 != -1) {
                a(i10);
                f19418a = -1;
            }
            super.onDestroy(utilsTransActivity);
        }

        @Override
        public void onRequestPermissionsResult(@NonNull UtilsTransActivity utilsTransActivity, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
            utilsTransActivity.finish();
            if (PermissionUtils.f19408h == null || PermissionUtils.f19408h.f19414d == null) {
                return;
            }
            PermissionUtils.f19408h.w(utilsTransActivity);
        }
    }

    public interface a {
    }

    public interface b {
        void onDenied();

        void onGranted();
    }

    public interface c {
    }

    private PermissionUtils(String... strArr) {
        this.f19411a = strArr;
        f19408h = this;
    }

    public boolean A(UtilsTransActivity utilsTransActivity, Runnable runnable) {
        return false;
    }

    public static void B(Activity activity, int i10) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (e0.A(intent)) {
            activity.startActivityForResult(intent, i10);
        } else {
            v();
        }
    }

    private void C() {
        PermissionActivityImpl.start(1);
    }

    public static void D(Activity activity, int i10) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.a().getPackageName()));
        if (e0.A(intent)) {
            activity.startActivityForResult(intent, i10);
        } else {
            v();
        }
    }

    static c i(PermissionUtils permissionUtils) {
        permissionUtils.getClass();
        return null;
    }

    static a j(PermissionUtils permissionUtils) {
        permissionUtils.getClass();
        return null;
    }

    public static List n() {
        return o(Utils.a().getPackageName());
    }

    public static List o(String str) {
        try {
            String[] strArr = Utils.a().getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
            return strArr == null ? Collections.emptyList() : Arrays.asList(strArr);
        } catch (PackageManager.NameNotFoundException e10) {
            e10.printStackTrace();
            return Collections.emptyList();
        }
    }

    private void p(Activity activity) {
        for (String str : this.f19414d) {
            if (r(str)) {
                this.f19415e.add(str);
            } else {
                this.f19416f.add(str);
                if (!activity.shouldShowRequestPermissionRationale(str)) {
                    this.f19417g.add(str);
                }
            }
        }
    }

    private static Pair q(String... strArr) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        List listN = n();
        for (String str : strArr) {
            boolean z10 = false;
            for (String str2 : u5.a.a(str)) {
                if (listN.contains(str2)) {
                    arrayList.add(str2);
                    z10 = true;
                }
            }
            if (!z10) {
                arrayList2.add(str);
                Log.e("PermissionUtils", "U should add the permission of " + str + " in manifest.");
            }
        }
        return Pair.create(arrayList, arrayList2);
    }

    private static boolean r(String str) {
        return androidx.core.content.b.checkSelfPermission(Utils.a(), str) == 0;
    }

    public static boolean s(String... strArr) {
        Pair pairQ = q(strArr);
        if (!((List) pairQ.second).isEmpty()) {
            return false;
        }
        Iterator it = ((List) pairQ.first).iterator();
        while (it.hasNext()) {
            if (!r((String) it.next())) {
                return false;
            }
        }
        return true;
    }

    public static boolean t() {
        return Settings.canDrawOverlays(Utils.a());
    }

    public static boolean u() {
        return Settings.System.canWrite(Utils.a());
    }

    public static void v() {
        Intent intentO = e0.o(Utils.a().getPackageName(), true);
        if (e0.A(intentO)) {
            Utils.a().startActivity(intentO);
        }
    }

    public void w(Activity activity) {
        p(activity);
        z();
    }

    public static PermissionUtils x(String... strArr) {
        return new PermissionUtils(strArr);
    }

    private void z() {
        if (this.f19412b != null) {
            if (this.f19416f.isEmpty()) {
                this.f19412b.onGranted();
            } else {
                this.f19412b.onDenied();
            }
            this.f19412b = null;
        }
    }

    public PermissionUtils m(b bVar) {
        this.f19412b = bVar;
        return this;
    }

    public void y() {
        String[] strArr = this.f19411a;
        if (strArr == null || strArr.length <= 0) {
            Log.w("PermissionUtils", "No permissions to request.");
            return;
        }
        this.f19413c = new LinkedHashSet();
        this.f19414d = new ArrayList();
        this.f19415e = new ArrayList();
        this.f19416f = new ArrayList();
        this.f19417g = new ArrayList();
        Pair pairQ = q(this.f19411a);
        this.f19413c.addAll((Collection) pairQ.first);
        this.f19416f.addAll((Collection) pairQ.second);
        for (String str : this.f19413c) {
            if (r(str)) {
                this.f19415e.add(str);
            } else {
                this.f19414d.add(str);
            }
        }
        if (this.f19414d.isEmpty()) {
            z();
        } else {
            C();
        }
    }
}
