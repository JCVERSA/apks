package defpackage;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.internal.TelemetryData;
import com.google.android.gms.common.internal.service.zai;

public final class f2e extends b implements qea {
    public static final a.g k;
    public static final a.AbstractC0089a l;
    public static final a m;

    static {
        a.g gVar = new a.g();
        k = gVar;
        c2e c2eVar = new c2e();
        l = c2eVar;
        m = new a("ClientTelemetry.API", c2eVar, gVar);
    }

    public f2e(Context context, rea reaVar) {
        super(context, m, reaVar, b.a.c);
    }

    @Override
    public final xda b(final TelemetryData telemetryData) {
        yda.a aVarA = yda.a();
        aVarA.d(n1e.a);
        aVarA.c(false);
        aVarA.b(new as8() {
            @Override
            public final void accept(Object obj, Object obj2) throws RemoteException {
                a.g gVar = f2e.k;
                ((zai) ((i2e) obj).getService()).zae(telemetryData);
                ((zda) obj2).c(null);
            }
        });
        return f(aVarA.a());
    }
}
