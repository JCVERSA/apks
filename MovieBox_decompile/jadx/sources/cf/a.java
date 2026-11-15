package cf;

import android.os.Build;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gf.h;
import gf.o0;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    private FragmentActivity f16928a;

    private Fragment f16929b;

    public a(FragmentActivity activity) {
        Intrinsics.h(activity, "activity");
        this.f16928a = activity;
    }

    public final h a(List permissions) {
        int i10;
        Intrinsics.h(permissions, "permissions");
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
        int i11 = Build.VERSION.SDK_INT;
        FragmentActivity fragmentActivity = this.f16928a;
        if (fragmentActivity != null) {
            Intrinsics.e(fragmentActivity);
            i10 = fragmentActivity.getApplicationInfo().targetSdkVersion;
        } else {
            Fragment fragment = this.f16929b;
            Intrinsics.e(fragment);
            i10 = fragment.requireContext().getApplicationInfo().targetSdkVersion;
        }
        Iterator it = permissions.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (ff.b.a().contains(str)) {
                linkedHashSet2.add(str);
            } else {
                linkedHashSet.add(str);
            }
        }
        if (linkedHashSet2.contains("android.permission.ACCESS_BACKGROUND_LOCATION") && (i11 == 29 || (i11 == 30 && i10 < 30))) {
            linkedHashSet2.remove("android.permission.ACCESS_BACKGROUND_LOCATION");
            linkedHashSet.add("android.permission.ACCESS_BACKGROUND_LOCATION");
        }
        if (linkedHashSet2.contains("android.permission.POST_NOTIFICATIONS") && i11 >= 33 && i10 >= 33) {
            linkedHashSet2.remove("android.permission.POST_NOTIFICATIONS");
            linkedHashSet.add("android.permission.POST_NOTIFICATIONS");
        }
        return new o0(this.f16928a, this.f16929b, linkedHashSet, linkedHashSet2);
    }

    public final h b(String... permissions) {
        Intrinsics.h(permissions, "permissions");
        return a(CollectionsKt.o(Arrays.copyOf(permissions, permissions.length)));
    }
}
