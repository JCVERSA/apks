package cf;

import android.app.AppOpsManager;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.core.app.t;
import androidx.fragment.app.FragmentActivity;
import com.tencent.mmkv.MMKV;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f16930a = new c();

    private static final Lazy f16931b = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return c.g();
        }
    });

    private c() {
    }

    public static final MMKV g() {
        MMKV mmkvI = MMKV.I("kv_permission_x");
        Intrinsics.g(mmkvI, "mmkvWithID(...)");
        return mmkvI;
    }

    public final boolean b(Context context) {
        Intrinsics.h(context, "context");
        return t.b(context).a();
    }

    public final boolean c(Context context) {
        Intrinsics.h(context, "context");
        if (Build.VERSION.SDK_INT < 26) {
            return false;
        }
        Object systemService = context.getSystemService("appops");
        AppOpsManager appOpsManager = systemService instanceof AppOpsManager ? (AppOpsManager) systemService : null;
        Integer numValueOf = appOpsManager != null ? Integer.valueOf(appOpsManager.checkOpNoThrow("android:picture_in_picture", Process.myUid(), context.getPackageName())) : null;
        return numValueOf != null && numValueOf.intValue() == 0;
    }

    public final MMKV d() {
        return (MMKV) f16931b.getValue();
    }

    public final a e(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        return new a(activity);
    }

    public final boolean f(Context context, String permission) {
        Intrinsics.h(context, "context");
        Intrinsics.h(permission, "permission");
        return androidx.core.content.b.checkSelfPermission(context, permission) == 0;
    }
}
