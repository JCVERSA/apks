package f;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import kotlin.jvm.internal.Intrinsics;

public class b extends a {
    @Override
    public Intent a(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        Intent type = new Intent("android.intent.action.GET_CONTENT").addCategory("android.intent.category.OPENABLE").setType(input);
        Intrinsics.g(type, "Intent(Intent.ACTION_GET…          .setType(input)");
        return type;
    }

    @Override
    public final a.C0728a b(Context context, String input) {
        Intrinsics.h(context, "context");
        Intrinsics.h(input, "input");
        return null;
    }

    @Override
    public final Uri c(int i10, Intent intent) {
        if (i10 != -1) {
            intent = null;
        }
        if (intent != null) {
            return intent.getData();
        }
        return null;
    }
}
