package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.io.IOException;
import java.util.Map;
import org.apache.commons.lang3.BooleanUtils;

public final class u2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        try {
            String str = (String) map.get("enabled");
            n3f n3fVar = m3f.a;
            if (!d2i.c(BooleanUtils.TRUE, str) && !d2i.c(BooleanUtils.FALSE, str)) {
                return;
            }
            uzh.a(ejfVar.getContext()).b(Boolean.parseBoolean(str));
        } catch (IOException e) {
            zzv.zzp().x(e, "DefaultGmsgHandlers.SetPaidv2PersonalizationEnabled");
        }
    }
}
