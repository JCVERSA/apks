package qu;

import android.app.Application;
import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import com.mbridge.msdk.playercommon.exoplayer2.util.MimeTypes;
import com.transsion.gslb.GslbSdk;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import tu.g;
import tu.h;
import tu.i;

public final class b implements GslbSdk.GslbInitListener {

    public final c f70250a;

    public final Context f70251b;

    public b(c cVar, Context context) {
        this.f70250a = cVar;
        this.f70251b = context;
    }

    @Override
    public final void onInitFail(String str) {
        String msg = "GSLB init fail: " + str;
        Intrinsics.h("UpgradeSdkManager", "tag");
        Intrinsics.h(msg, "msg");
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!g.f72839a && jCurrentTimeMillis - g.f72840b >= 5000) {
            g.f72840b = jCurrentTimeMillis;
            if (Log.isLoggable("upgradeSdkLog", 3)) {
                g.f72839a = true;
            }
        }
        boolean z10 = f.f70259o.a().f70264d;
    }

    @Override
    public final void onInitSuccess(Map map) {
        g.a("GSLB init success: " + map);
        String country = GslbSdk.getCountry();
        if (TextUtils.isEmpty(country)) {
            return;
        }
        this.f70250a.f70255b = country;
        h hVar = i.f72841b;
        i iVarA = hVar.a(this.f70251b);
        Intrinsics.e(country);
        iVarA.b("KV_UPGRADE_GSLB_COUNTRY", country);
        Application application = null;
        if (StringsKt.H(country, "IN", true)) {
            c cVar = this.f70250a;
            if (!TextUtils.equals(cVar.f70255b, cVar.f70256c)) {
                g.a("GSLB init current: " + country + " request: " + this.f70250a.f70256c);
                Application application2 = pu.a.f69263a;
                if (application2 != null) {
                    application = application2;
                } else {
                    Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
                }
                hVar.a(application).b("KV_UPGRADE_LOCAL_CDN_DATA", "");
                return;
            }
        }
        if (StringsKt.H(country, "RU", true)) {
            c cVar2 = this.f70250a;
            if (TextUtils.equals(cVar2.f70255b, cVar2.f70256c)) {
                return;
            }
            g.a("GSLB init current: " + country + " request: " + this.f70250a.f70256c);
            Application application3 = pu.a.f69263a;
            if (application3 != null) {
                application = application3;
            } else {
                Intrinsics.y(MimeTypes.BASE_TYPE_APPLICATION);
            }
            hVar.a(application).b("KV_UPGRADE_LOCAL_CDN_DATA", "");
        }
    }
}
