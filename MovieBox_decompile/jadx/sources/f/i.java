package f;

import android.content.Context;
import android.content.Intent;
import kotlin.jvm.internal.Intrinsics;

public final class i extends a {
    @Override
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return h.f59874a.a(new String[]{input});
    }

    @Override
    public a.C0728a b(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        if (androidx.core.content.b.checkSelfPermission(context, input) == 0) {
            return new a.C0728a(Boolean.TRUE);
        }
        return null;
    }

    @Override
    public Boolean c(int i10, Intent intent) {
        if (intent == null || i10 != -1) {
            return Boolean.FALSE;
        }
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        boolean z10 = false;
        if (intArrayExtra != null) {
            for (int i11 : intArrayExtra) {
                if (i11 == 0) {
                    z10 = true;
                    break;
                }
            }
        }
        return Boolean.valueOf(z10);
    }
}
