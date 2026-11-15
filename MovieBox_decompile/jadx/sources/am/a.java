package am;

import com.therouter.router.RouteItem;
import kotlin.jvm.internal.Intrinsics;

public class a {
    public final void a(RouteItem postcard, mf.b callback) {
        Intrinsics.h(postcard, "postcard");
        Intrinsics.h(callback, "callback");
        e.f407a.d(postcard.getPath(), postcard.getExtras());
        callback.a(postcard);
    }
}
