package androidx.core.app;

import android.app.Activity;
import android.app.SharedElementCallback;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender;
import android.content.pm.PackageManager;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.text.TextUtils;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Map;

public abstract class ActivityCompat extends androidx.core.content.b {

    class AnonymousClass1 implements Runnable {
        final Activity val$activity;
        final String[] val$permissionsArray;
        final int val$requestCode;

        AnonymousClass1(String[] strArr, Activity activity, int i10) {
            this.val$permissionsArray = strArr;
            this.val$activity = activity;
            this.val$requestCode = i10;
        }

        @Override
        public void run() {
            int[] iArr = new int[this.val$permissionsArray.length];
            PackageManager packageManager = this.val$activity.getPackageManager();
            String packageName = this.val$activity.getPackageName();
            int length = this.val$permissionsArray.length;
            for (int i10 = 0; i10 < length; i10++) {
                iArr[i10] = packageManager.checkPermission(this.val$permissionsArray[i10], packageName);
            }
            ((e) this.val$activity).onRequestPermissionsResult(this.val$requestCode, this.val$permissionsArray, iArr);
        }
    }

    static class a {
        static void a(Activity activity) {
            activity.finishAfterTransition();
        }

        static void b(Activity activity) {
            activity.postponeEnterTransition();
        }

        static void c(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setEnterSharedElementCallback(sharedElementCallback);
        }

        static void d(Activity activity, SharedElementCallback sharedElementCallback) {
            activity.setExitSharedElementCallback(sharedElementCallback);
        }

        static void e(Activity activity) {
            activity.startPostponedEnterTransition();
        }
    }

    static class b {
        public static void a(Object obj) {
            ((SharedElementCallback.OnSharedElementsReadyListener) obj).onSharedElementsReady();
        }

        static void b(Activity activity, String[] strArr, int i10) {
            activity.requestPermissions(strArr, i10);
        }

        static boolean c(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    static class c {
        static boolean a(Activity activity, String str) {
            try {
                return ((Boolean) PackageManager.class.getMethod("shouldShowRequestPermissionRationale", String.class).invoke(activity.getApplication().getPackageManager(), str)).booleanValue();
            } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
                return activity.shouldShowRequestPermissionRationale(str);
            }
        }
    }

    static class d {
        static boolean a(Activity activity, String str) {
            return activity.shouldShowRequestPermissionRationale(str);
        }
    }

    public interface e {
        void onRequestPermissionsResult(int i10, String[] strArr, int[] iArr);
    }

    public interface f {
        void validateRequestPermissionsRequestCode(int i10);
    }

    static class g extends SharedElementCallback {

        private final a0 f7623a;

        g(a0 a0Var) {
            this.f7623a = a0Var;
        }

        @Override
        public Parcelable onCaptureSharedElementSnapshot(View view, Matrix matrix, RectF rectF) {
            return this.f7623a.b(view, matrix, rectF);
        }

        @Override
        public View onCreateSnapshotView(Context context, Parcelable parcelable) {
            return this.f7623a.c(context, parcelable);
        }

        @Override
        public void onMapSharedElements(List list, Map map) {
            this.f7623a.d(list, map);
        }

        @Override
        public void onRejectSharedElements(List list) {
            this.f7623a.e(list);
        }

        @Override
        public void onSharedElementEnd(List list, List list2, List list3) {
            this.f7623a.f(list, list2, list3);
        }

        @Override
        public void onSharedElementStart(List list, List list2, List list3) {
            this.f7623a.g(list, list2, list3);
        }

        @Override
        public void onSharedElementsArrived(List list, List list2, final SharedElementCallback.OnSharedElementsReadyListener onSharedElementsReadyListener) {
            this.f7623a.h(list, list2, new a0.a() {
                @Override
                public final void a() {
                    ActivityCompat.b.a(onSharedElementsReadyListener);
                }
            });
        }
    }

    public static void b(Activity activity) {
        activity.finishAffinity();
    }

    public static void c(Activity activity) {
        a.a(activity);
    }

    public static void d(Activity activity) {
        if (activity.isFinishing() || ActivityRecreator.i(activity)) {
            return;
        }
        activity.recreate();
    }

    public static void e(Activity activity) {
        a.b(activity);
    }

    public static void f(final Activity activity) {
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
        } else {
            new Handler(activity.getMainLooper()).post(new Runnable() {
                @Override
                public final void run() {
                    ActivityCompat.d(activity);
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void g(Activity activity, String[] strArr, int i10) {
        HashSet hashSet = new HashSet();
        for (int i11 = 0; i11 < strArr.length; i11++) {
            if (TextUtils.isEmpty(strArr[i11])) {
                throw new IllegalArgumentException("Permission request for permissions " + Arrays.toString(strArr) + " must not contain null or empty values");
            }
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals(strArr[i11], "android.permission.POST_NOTIFICATIONS")) {
                hashSet.add(Integer.valueOf(i11));
            }
        }
        int size = hashSet.size();
        String[] strArr2 = size > 0 ? new String[strArr.length - size] : strArr;
        if (size > 0) {
            if (size == strArr.length) {
                return;
            }
            int i12 = 0;
            for (int i13 = 0; i13 < strArr.length; i13++) {
                if (!hashSet.contains(Integer.valueOf(i13))) {
                    strArr2[i12] = strArr[i13];
                    i12++;
                }
            }
        }
        if (activity instanceof f) {
            ((f) activity).validateRequestPermissionsRequestCode(i10);
        }
        b.b(activity, strArr, i10);
    }

    public static void h(Activity activity, a0 a0Var) {
        a.c(activity, a0Var != null ? new g(a0Var) : null);
    }

    public static void i(Activity activity, a0 a0Var) {
        a.d(activity, a0Var != null ? new g(a0Var) : null);
    }

    public static boolean j(Activity activity, String str) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
            return false;
        }
        if (i10 >= 32) {
            return d.a(activity, str);
        }
        return i10 == 31 ? c.a(activity, str) : b.c(activity, str);
    }

    public static void k(Activity activity, Intent intent, int i10, Bundle bundle) {
        activity.startActivityForResult(intent, i10, bundle);
    }

    public static void l(Activity activity, IntentSender intentSender, int i10, Intent intent, int i11, int i12, int i13, Bundle bundle) {
        activity.startIntentSenderForResult(intentSender, i10, intent, i11, i12, i13, bundle);
    }

    public static void m(Activity activity) {
        a.e(activity);
    }
}
