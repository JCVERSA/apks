package defpackage;

import android.text.TextUtils;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;

public final class opf implements oof {
    public final zog a;

    public opf(zog zogVar) {
        this.a = zogVar;
    }

    @Override
    public final void a(Map map) {
        String str = (String) map.get("test_mode_enabled");
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.a.p(str.equals(BooleanUtils.TRUE));
    }
}
