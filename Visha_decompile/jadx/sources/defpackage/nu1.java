package defpackage;

import android.content.Context;
import android.net.Uri;
import com.blankj.utilcode.util.LogUtils;
import java.util.LinkedHashMap;
import java.util.Map;

public final class nu1 {
    public static final nu1 a = new nu1();
    public static final Map b = new LinkedHashMap();

    public final void a(Context context, Uri uri) {
        y45.j(context, "context");
        if (uri == null) {
            LogUtils.m("DeepLinkManager", "process: uri is null");
            return;
        }
        String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null || lastPathSegment.length() == 0) {
            LogUtils.m("DeepLinkManager", "process: subBusinessName is null or empty");
            return;
        }
        ru4 ru4Var = (ru4) b.get(lastPathSegment);
        if (ru4Var != null) {
            ru4Var.a(context, uri);
            return;
        }
        LogUtils.m("DeepLinkManager", "No DeepLink task found for: " + lastPathSegment);
    }

    public final void b(ru4 ru4Var) {
        y45.j(ru4Var, "task");
        String strB = ru4Var.b();
        Map map = b;
        if (!map.containsKey(strB)) {
            map.put(strB, ru4Var);
            return;
        }
        LogUtils.P("DeepLinkManager", "Duplicate DeepLink task registration for: " + strB);
    }
}
