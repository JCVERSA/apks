package o0;

import android.content.Context;

public abstract class a {
    public static final e a(Context context) {
        float f10 = context.getResources().getConfiguration().fontScale;
        float f11 = context.getResources().getDisplayMetrics().density;
        p0.a aVarB = p0.b.f68952a.b(f10);
        if (aVarB == null) {
            aVarB = new v(f10);
        }
        return new h(f11, f10, aVarB);
    }
}
