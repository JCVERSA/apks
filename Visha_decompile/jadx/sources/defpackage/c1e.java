package defpackage;

import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.a;
import com.hunantv.media.player.subtitle.MediaFormat;

public abstract class c1e {
    public static final a.g a;
    public static final a.g b;
    public static final a.AbstractC0089a c;
    public static final a.AbstractC0089a d;
    public static final Scope e;
    public static final Scope f;
    public static final a g;
    public static final a h;

    static {
        a.g gVar = new a.g();
        a = gVar;
        a.g gVar2 = new a.g();
        b = gVar2;
        gzd gzdVar = new gzd();
        c = gzdVar;
        wzd wzdVar = new wzd();
        d = wzdVar;
        e = new Scope(MediaFormat.KEY_PROFILE);
        f = new Scope(NotificationCompat.CATEGORY_EMAIL);
        g = new a("SignIn.API", gzdVar, gVar);
        h = new a("SignIn.INTERNAL_API", wzdVar, gVar2);
    }
}
