package ls;

import android.net.Uri;
import com.therouter.TheRouter;
import com.transsion.web.api.WebPageIdentity;
import java.util.Iterator;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

public abstract class b {
    public static final int a(List list, Object obj) {
        Intrinsics.h(list, "<this>");
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            int i11 = i10 + 1;
            if (it.next() == obj) {
                return i10;
            }
            i10 = i11;
        }
        return -1;
    }

    public static final boolean b(Uri uri) {
        Intrinsics.h(uri, "<this>");
        return Intrinsics.c(uri.getScheme(), "https") || Intrinsics.c(uri.getScheme(), "http");
    }

    public static final void c(String str, String extraParam) {
        Intrinsics.h(str, "<this>");
        Intrinsics.h(extraParam, "extraParam");
        Uri uri = Uri.parse(str + extraParam);
        Intrinsics.e(uri);
        if (b(uri)) {
            hr.c.k(TheRouter.c(WebPageIdentity.WEB_VIEW).K("url", str));
            return;
        }
        try {
            Uri uriA = hs.a.f61487a.a(uri);
            if (uriA != null) {
                hr.c.j(uriA);
            }
        } catch (Throwable th2) {
            wf.a.C0922a.l(wf.a.f74274a, "Deeplink", "openDeeplink:" + th2, false, 4, null);
            th2.printStackTrace();
        }
    }

    public static void d(String str, String str2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            str2 = "";
        }
        c(str, str2);
    }
}
