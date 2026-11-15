package ft;

import android.content.Context;
import android.content.Intent;
import com.transsion.subroom.deeplink.DeepLinkHandler;
import kotlin.jvm.internal.Intrinsics;

public final class a implements to.a {
    @Override
    public Intent a(Context context) {
        Intrinsics.h(context, "context");
        return new Intent(context, (Class<?>) DeepLinkHandler.class);
    }
}
