package androidx.work.impl.utils;

import android.content.ComponentName;
import android.content.Context;

public abstract class n {

    private static final String f15370a = androidx.work.j.i("PackageManagerHelper");

    public static void a(Context context, Class cls, boolean z10) {
        try {
            context.getPackageManager().setComponentEnabledSetting(new ComponentName(context, cls.getName()), z10 ? 1 : 2, 1);
            androidx.work.j jVarE = androidx.work.j.e();
            String str = f15370a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cls.getName());
            sb2.append(" ");
            sb2.append(z10 ? "enabled" : "disabled");
            jVarE.a(str, sb2.toString());
        } catch (Exception e10) {
            androidx.work.j jVarE2 = androidx.work.j.e();
            String str2 = f15370a;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(cls.getName());
            sb3.append("could not be ");
            sb3.append(z10 ? "enabled" : "disabled");
            jVarE2.b(str2, sb3.toString(), e10);
        }
    }
}
