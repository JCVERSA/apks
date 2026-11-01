package u0;

import android.content.pm.ActivityInfo;
import android.content.pm.ResolveInfo;

public final class b {

    public String f2174a;

    public String f2175b;

    public String f2176c;

    public int f2177d;

    public int f2178e;

    public b(ResolveInfo resolveInfo) {
        this.f2174a = null;
        ActivityInfo activityInfo = resolveInfo.activityInfo;
        this.f2175b = activityInfo.packageName;
        this.f2176c = activityInfo.name;
        this.f2177d = 1;
        this.f2178e = 0;
    }

    public b() {
    }
}
