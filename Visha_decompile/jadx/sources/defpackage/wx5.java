package defpackage;

import android.content.Context;
import android.net.Uri;

public final class wx5 implements ru4 {
    @Override
    public void a(Context context, Uri uri) {
        y45.j(context, "context");
        y45.j(uri, "uri");
        vx5.b(context, uri);
    }

    @Override
    public String b() {
        return "main_tab";
    }
}
