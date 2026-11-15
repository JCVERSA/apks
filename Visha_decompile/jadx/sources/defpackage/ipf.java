package defpackage;

import android.text.TextUtils;
import java.util.Map;

public final class ipf implements oof {
    public final gmh a;

    public ipf(gmh gmhVar) {
        this.a = gmhVar;
    }

    @Override
    public final void a(Map map) {
        String str = (String) map.get("render_in_browser");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.a.b(Boolean.parseBoolean(str));
        } catch (Exception e) {
            throw new IllegalStateException("Invalid render_in_browser state", e);
        }
    }
}
