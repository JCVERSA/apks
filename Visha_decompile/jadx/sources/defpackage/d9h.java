package defpackage;

import com.google.android.gms.ads.internal.client.zzbd;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class d9h implements fyi {
    public static d9h a() {
        return c9h.a;
    }

    @Override
    public final Object zzb() {
        List arrayList = new ArrayList();
        qxe qxeVar = cye.Qb;
        if (!((String) zzbd.zzc().b(qxeVar)).isEmpty()) {
            arrayList = Arrays.asList(((String) zzbd.zzc().b(qxeVar)).split(StringUtils.COMMA));
        }
        pyi.b(arrayList);
        return arrayList;
    }
}
