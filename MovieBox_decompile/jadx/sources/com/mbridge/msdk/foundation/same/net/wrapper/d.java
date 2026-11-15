package com.mbridge.msdk.foundation.same.net.wrapper;

import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import com.mbridge.msdk.foundation.tools.o0;
import org.json.JSONObject;

public abstract class d extends com.mbridge.msdk.foundation.same.net.c<JSONObject> {

    private static final String f34663a = "d";

    private void a(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        if (eVar.f34595b.f34620d == 204) {
            a(new JSONObject());
        } else {
            b(eVar);
        }
    }

    private void b(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        JSONObject jSONObject = eVar.f34596c;
        if (jSONObject == null) {
            a("response result is null");
            return;
        }
        int iOptInt = jSONObject.optInt(NotificationCompat.CATEGORY_STATUS, -9999);
        if (iOptInt == -9999) {
            a(eVar.f34596c);
            return;
        }
        if (iOptInt == 1 || iOptInt == 200) {
            a(eVar.f34596c.optJSONObject("data"));
            return;
        }
        String strOptString = eVar.f34596c.optString(NotificationCompat.CATEGORY_MESSAGE);
        if (TextUtils.isEmpty(strOptString)) {
            strOptString = "error message is null";
        }
        a(strOptString);
    }

    public abstract void a(String str);

    public abstract void a(JSONObject jSONObject);

    @Override
    public void onError(com.mbridge.msdk.foundation.same.net.exception.a aVar) {
        o0.b(f34663a, "errorCode = " + aVar.f34597a);
        a(com.mbridge.msdk.foundation.same.net.utils.a.a(aVar));
    }

    @Override
    public void onSuccess(com.mbridge.msdk.foundation.same.net.e<JSONObject> eVar) {
        if (eVar == null) {
            a("response is null");
            return;
        }
        super.onSuccess(eVar);
        if (eVar.f34595b == null) {
            b(eVar);
        } else {
            a(eVar);
        }
    }
}
