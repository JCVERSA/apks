package defpackage;

import com.google.android.gms.ads.internal.zzv;
import java.io.IOException;
import java.util.Map;

public final class t2f implements n3f {
    @Override
    public final void a(Object obj, Map map) {
        ejf ejfVar = (ejf) obj;
        try {
            xzh.k(ejfVar.getContext()).l();
            yzh.j(ejfVar.getContext()).k();
            zzh.a(ejfVar.getContext()).b(null);
        } catch (IOException e) {
            zzv.zzp().x(e, "DefaultGmsgHandlers.ResetPaid");
        }
    }
}
