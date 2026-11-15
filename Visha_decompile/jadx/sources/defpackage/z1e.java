package defpackage;

import android.content.Context;
import android.util.SparseIntArray;
import com.google.android.gms.common.api.a;

public final class z1e {
    public final SparseIntArray a = new SparseIntArray();
    public aj4 b;

    public z1e(aj4 aj4Var) {
        wd8.l(aj4Var);
        this.b = aj4Var;
    }

    public final int a(Context context, int i) {
        return this.a.get(i, -1);
    }

    public final int b(Context context, a.f fVar) {
        wd8.l(context);
        wd8.l(fVar);
        int i = 0;
        if (!fVar.requiresGooglePlayServices()) {
            return 0;
        }
        int minApkVersion = fVar.getMinApkVersion();
        int iA = a(context, minApkVersion);
        if (iA == -1) {
            int i2 = 0;
            while (true) {
                if (i2 >= this.a.size()) {
                    i = -1;
                    break;
                }
                int iKeyAt = this.a.keyAt(i2);
                if (iKeyAt > minApkVersion && this.a.get(iKeyAt) == 0) {
                    break;
                }
                i2++;
            }
            iA = i == -1 ? this.b.i(context, minApkVersion) : i;
            this.a.put(minApkVersion, iA);
        }
        return iA;
    }

    public final void c() {
        this.a.clear();
    }
}
