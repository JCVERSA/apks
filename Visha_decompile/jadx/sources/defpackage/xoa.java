package defpackage;

import android.content.Context;
import android.widget.Toast;

public final class xoa {
    public static final xoa a = new xoa();

    public static final void a(Context context, String str, int i) {
        y45.j(context, "context");
        try {
            Toast.makeText(context, str, i).show();
        } catch (RuntimeException e) {
            c.d.w(c.c, "Could not send crash Toast", e);
        }
    }
}
