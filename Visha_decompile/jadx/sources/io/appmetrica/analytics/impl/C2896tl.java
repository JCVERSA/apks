package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.appmetrica.analytics.coreutils.internal.collection.CollectionUtils;
import io.appmetrica.analytics.networktasks.internal.NetworkResponseHandler;
import io.appmetrica.analytics.networktasks.internal.ResponseDataHolder;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import org.mozilla.javascript.ES6Iterator;

public final class C2896tl implements NetworkResponseHandler {
    public final Al a;
    public final C2779p3 b;

    public C2896tl() {
        this(new Al(), new C2779p3());
    }

    @Override
    @Nullable
    public final Fl handle(@NonNull ResponseDataHolder responseDataHolder) {
        String strOptString;
        String strOptString2;
        if (200 == responseDataHolder.getResponseCode()) {
            byte[] responseData = responseDataHolder.getResponseData();
            Map<String, List<String>> responseHeaders = responseDataHolder.getResponseHeaders();
            List list = responseHeaders != null ? (List) CollectionUtils.getFromMapIgnoreCase(responseHeaders, "Content-Encoding") : null;
            if (!In.a((Collection) list) && "encrypted".equals(list.get(0))) {
                responseData = this.b.a(responseDataHolder.getResponseData());
            }
            if (responseData != null) {
                Al al = this.a;
                al.getClass();
                Fl fl = new Fl();
                try {
                    al.i.getClass();
                    C2687lb c2687lb = new C2687lb(new String(responseData, "UTF-8"));
                    JSONObject jSONObjectOptJSONObject = c2687lb.optJSONObject("device_id");
                    if (jSONObjectOptJSONObject != null) {
                        strOptString = jSONObjectOptJSONObject.optString("hash");
                        strOptString2 = jSONObjectOptJSONObject.optString(ES6Iterator.VALUE_PROPERTY);
                    } else {
                        strOptString = "";
                        strOptString2 = "";
                    }
                    fl.h = strOptString2;
                    fl.i = strOptString;
                    al.a(fl, c2687lb);
                    fl.a = TextUtils.isEmpty(fl.i) ? 1 : 2;
                } catch (Throwable unused) {
                    fl = new Fl();
                    fl.a = 1;
                }
                if (2 == fl.a) {
                    return fl;
                }
            }
        }
        return null;
    }

    public C2896tl(Al al, C2779p3 c2779p3) {
        this.a = al;
        this.b = c2779p3;
    }
}
