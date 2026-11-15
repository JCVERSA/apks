package rc;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.firebase.perf.config.RemoteConfigManager;
import com.google.firebase.perf.metrics.h;
import com.google.firebase.perf.session.SessionManager;
import com.google.firebase.perf.util.Timer;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import xc.k;

public class e {

    private static final uc.a f70947i = uc.a.e();

    private final Map f70948a = new ConcurrentHashMap();

    private final com.google.firebase.perf.config.a f70949b;

    private final com.google.firebase.perf.util.d f70950c;

    private Boolean f70951d;

    private final com.google.firebase.f f70952e;

    private final kc.b f70953f;

    private final lc.e f70954g;

    private final kc.b f70955h;

    e(com.google.firebase.f fVar, kc.b bVar, lc.e eVar, kc.b bVar2, RemoteConfigManager remoteConfigManager, com.google.firebase.perf.config.a aVar, SessionManager sessionManager) {
        this.f70951d = null;
        this.f70952e = fVar;
        this.f70953f = bVar;
        this.f70954g = eVar;
        this.f70955h = bVar2;
        if (fVar == null) {
            this.f70951d = Boolean.FALSE;
            this.f70949b = aVar;
            this.f70950c = new com.google.firebase.perf.util.d(new Bundle());
            return;
        }
        k.k().r(fVar, eVar, bVar2);
        Context contextK = fVar.k();
        com.google.firebase.perf.util.d dVarA = a(contextK);
        this.f70950c = dVarA;
        remoteConfigManager.setFirebaseRemoteConfigProvider(bVar);
        this.f70949b = aVar;
        aVar.P(dVarA);
        aVar.O(contextK);
        sessionManager.setApplicationContext(contextK);
        this.f70951d = aVar.j();
        uc.a aVar2 = f70947i;
        if (aVar2.h() && d()) {
            aVar2.f(String.format("Firebase Performance Monitoring is successfully initialized! In a minute, visit the Firebase console to view your data: %s", uc.b.b(fVar.n().e(), contextK.getPackageName())));
        }
    }

    private static com.google.firebase.perf.util.d a(Context context) {
        Bundle bundle;
        try {
            bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128).metaData;
        } catch (PackageManager.NameNotFoundException | NullPointerException e10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("No perf enable meta data found ");
            sb2.append(e10.getMessage());
            bundle = null;
        }
        return bundle != null ? new com.google.firebase.perf.util.d(bundle) : new com.google.firebase.perf.util.d();
    }

    public static e c() {
        return (e) com.google.firebase.f.l().j(e.class);
    }

    public Map b() {
        return new HashMap(this.f70948a);
    }

    public boolean d() {
        Boolean bool = this.f70951d;
        return bool != null ? bool.booleanValue() : com.google.firebase.f.l().t();
    }

    public h e(String str, String str2) {
        return new h(str, str2, k.k(), new Timer());
    }
}
