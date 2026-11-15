package ff;

import android.content.Context;
import com.transsion.baseui.dialog.BaseDialog;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class c {

    public static final c f60168a = new c();

    private static final List f60169b = new ArrayList();

    private static final Map f60170c = new LinkedHashMap();

    private c() {
    }

    public final void a() {
        f60169b.clear();
        f60170c.clear();
    }

    public final boolean b(BaseDialog dialog, String tag) {
        Intrinsics.h(dialog, "dialog");
        Intrinsics.h(tag, "tag");
        List list = f60169b;
        if (list.isEmpty()) {
            list.add(dialog);
            return true;
        }
        f60170c.put(tag, dialog);
        return false;
    }

    public final void c(Context context) {
        Intrinsics.h(context, "context");
        f60169b.clear();
        Map map = f60170c;
        if (map.isEmpty()) {
            return;
        }
        String str = (String) CollectionsKt.h0(map.keySet());
        BaseDialog baseDialog = (BaseDialog) map.remove(str);
        if (baseDialog == null || !f60168a.b(baseDialog, str)) {
            return;
        }
        baseDialog.k0(context, str);
    }
}
