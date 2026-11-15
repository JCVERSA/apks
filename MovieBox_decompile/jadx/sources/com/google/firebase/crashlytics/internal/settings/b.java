package com.google.firebase.crashlytics.internal.settings;

import android.text.TextUtils;
import com.cloud.tmc.integration.event.EventConstants;
import com.google.firebase.crashlytics.internal.common.x;
import com.google.firebase.crashlytics.internal.concurrency.CrashlyticsWorkers;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

class b implements i {

    private final String f30909a;

    private final wb.b f30910b;

    private final qb.g f30911c;

    public b(String str, wb.b bVar) {
        this(str, bVar, qb.g.f());
    }

    private wb.a b(wb.a aVar, h hVar) {
        c(aVar, "X-CRASHLYTICS-GOOGLE-APP-ID", hVar.f30938a);
        c(aVar, "X-CRASHLYTICS-API-CLIENT-TYPE", "android");
        c(aVar, "X-CRASHLYTICS-API-CLIENT-VERSION", x.q());
        c(aVar, "Accept", "application/json");
        c(aVar, "X-CRASHLYTICS-DEVICE-MODEL", hVar.f30939b);
        c(aVar, "X-CRASHLYTICS-OS-BUILD-VERSION", hVar.f30940c);
        c(aVar, "X-CRASHLYTICS-OS-DISPLAY-VERSION", hVar.f30941d);
        c(aVar, "X-CRASHLYTICS-INSTALLATION-ID", hVar.f30942e.a().c());
        return aVar;
    }

    private void c(wb.a aVar, String str, String str2) {
        if (str2 != null) {
            aVar.d(str, str2);
        }
    }

    private JSONObject e(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e10) {
            this.f30911c.l("Failed to parse settings JSON from " + this.f30909a, e10);
            this.f30911c.k("Settings response " + str);
            return null;
        }
    }

    private Map f(h hVar) {
        HashMap map = new HashMap();
        map.put("build_version", hVar.f30945h);
        map.put("display_version", hVar.f30944g);
        map.put(EventConstants.KEY_SOURCE, Integer.toString(hVar.f30946i));
        String str = hVar.f30943f;
        if (!TextUtils.isEmpty(str)) {
            map.put("instance", str);
        }
        return map;
    }

    @Override
    public JSONObject a(h hVar, boolean z10) {
        CrashlyticsWorkers.d();
        if (!z10) {
            throw new RuntimeException("An invalid data collection token was used.");
        }
        try {
            Map mapF = f(hVar);
            wb.a aVarB = b(d(mapF), hVar);
            this.f30911c.b("Requesting settings from " + this.f30909a);
            this.f30911c.i("Settings query params were: " + mapF);
            return g(aVarB.c());
        } catch (IOException e10) {
            this.f30911c.e("Settings request failed.", e10);
            return null;
        }
    }

    protected wb.a d(Map map) {
        return this.f30910b.a(this.f30909a, map).d("User-Agent", "Crashlytics Android SDK/" + x.q()).d("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
    }

    JSONObject g(wb.c cVar) {
        int iB = cVar.b();
        this.f30911c.i("Settings response code was: " + iB);
        if (h(iB)) {
            return e(cVar.a());
        }
        this.f30911c.d("Settings request failed; (status: " + iB + ") from " + this.f30909a);
        return null;
    }

    boolean h(int i10) {
        return i10 == 200 || i10 == 201 || i10 == 202 || i10 == 203;
    }

    b(String str, wb.b bVar, qb.g gVar) {
        if (str == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        this.f30911c = gVar;
        this.f30910b = bVar;
        this.f30909a = str;
    }
}
