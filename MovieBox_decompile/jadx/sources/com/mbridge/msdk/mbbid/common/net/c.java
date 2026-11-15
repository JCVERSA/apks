package com.mbridge.msdk.mbbid.common.net;

import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.same.net.e;
import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.mbbid.common.BidResponsedEx;
import com.mbridge.msdk.tracker.network.g;
import java.util.List;
import org.json.JSONObject;

public abstract class c extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    private static final String f35384a = "c";

    public c(String str, String str2) {
        this.unitId = str2;
        this.placementId = str;
    }

    private void a(List<g> list, JSONObject jSONObject) {
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS);
        if (200 != iOptInt) {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
            return;
        }
        BidResponsedEx bidResponsedEx = BidResponsedEx.parseBidResponsedEx(jSONObject.optJSONObject("data"), this.unitId);
        if (bidResponsedEx != null) {
            a(bidResponsedEx);
        } else {
            a(iOptInt, jSONObject.optString(NotificationCompat.CATEGORY_MESSAGE));
        }
    }

    public abstract void a(int i10, String str);

    public abstract void a(BidResponsedEx bidResponsedEx);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f35384a, "errorCode = " + aVar.f34597a);
        a(aVar.f34597a, com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onSuccess(e<JSONObject> eVar) {
        com.mbridge.msdk.foundation.same.net.toolbox.a aVar;
        super.onSuccess(eVar);
        if (eVar == null || (aVar = eVar.f34595b) == null) {
            return;
        }
        a(aVar.f34618b, eVar.f34596c);
    }
}
