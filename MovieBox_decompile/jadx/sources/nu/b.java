package nu;

import android.graphics.drawable.Drawable;
import androidx.collection.s;
import kotlin.jvm.internal.Intrinsics;

public final class b {

    public String f67359a;

    public Drawable f67360b;

    public String f67361c;

    public long f67362d;

    public String f67363e;

    public String f67364f;

    public String f67365g;

    public String f67366h;

    public String f67367i;

    public String f67368j;

    public String f67369k;

    public String f67370l;

    public String f67371m;

    public b(String packageName, Drawable drawable, String appName, long j10, String versionName, String lan, String appKey, String countryCode, String brand, String model, String originModel, String androidVersion, String defaultLocal) {
        Intrinsics.h(packageName, "packageName");
        Intrinsics.h(appName, "appName");
        Intrinsics.h(versionName, "versionName");
        Intrinsics.h(lan, "lan");
        Intrinsics.h(appKey, "appKey");
        Intrinsics.h(countryCode, "countryCode");
        Intrinsics.h(brand, "brand");
        Intrinsics.h(model, "model");
        Intrinsics.h(originModel, "originModel");
        Intrinsics.h(androidVersion, "androidVersion");
        Intrinsics.h(defaultLocal, "defaultLocal");
        this.f67359a = packageName;
        this.f67360b = drawable;
        this.f67361c = appName;
        this.f67362d = j10;
        this.f67363e = versionName;
        this.f67364f = lan;
        this.f67365g = appKey;
        this.f67366h = countryCode;
        this.f67367i = brand;
        this.f67368j = model;
        this.f67369k = originModel;
        this.f67370l = androidVersion;
        this.f67371m = defaultLocal;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        return Intrinsics.c(this.f67359a, bVar.f67359a) && Intrinsics.c(this.f67360b, bVar.f67360b) && Intrinsics.c(this.f67361c, bVar.f67361c) && this.f67362d == bVar.f67362d && Intrinsics.c(this.f67363e, bVar.f67363e) && Intrinsics.c(this.f67364f, bVar.f67364f) && Intrinsics.c(this.f67365g, bVar.f67365g) && Intrinsics.c(this.f67366h, bVar.f67366h) && Intrinsics.c(this.f67367i, bVar.f67367i) && Intrinsics.c(this.f67368j, bVar.f67368j) && Intrinsics.c(this.f67369k, bVar.f67369k) && Intrinsics.c(this.f67370l, bVar.f67370l) && Intrinsics.c(this.f67371m, bVar.f67371m);
    }

    public final int hashCode() {
        int iHashCode = this.f67359a.hashCode() * 31;
        Drawable drawable = this.f67360b;
        return this.f67371m.hashCode() + a.a(this.f67370l, a.a(this.f67369k, a.a(this.f67368j, a.a(this.f67367i, a.a(this.f67366h, a.a(this.f67365g, a.a(this.f67364f, a.a(this.f67363e, (s.a(this.f67362d) + a.a(this.f67361c, (iHashCode + (drawable == null ? 0 : drawable.hashCode())) * 31, 31)) * 31, 31), 31), 31), 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "CurrentPackageInfo(packageName=" + this.f67359a + ", iconDrawable=" + this.f67360b + ", appName=" + this.f67361c + ", currentVersion=" + this.f67362d + ", versionName=" + this.f67363e + ", lan=" + this.f67364f + ", appKey=" + this.f67365g + ", countryCode=" + this.f67366h + ", brand=" + this.f67367i + ", model=" + this.f67368j + ", originModel=" + this.f67369k + ", androidVersion=" + this.f67370l + ", defaultLocal=" + this.f67371m + ')';
    }
}
