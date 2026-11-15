package im;

import android.content.Context;
import java.io.InputStream;
import kotlin.jvm.internal.Intrinsics;
import okio.Okio;

public final class g {

    private final String f62185a = "skulist.json";

    public final String a(Context context) {
        Intrinsics.h(context, "context");
        try {
            InputStream inputStreamOpen = context.getResources().getAssets().open(this.f62185a);
            Intrinsics.e(inputStreamOpen);
            return Okio.buffer(Okio.source(inputStreamOpen)).readUtf8();
        } catch (Exception unused) {
            return null;
        }
    }
}
