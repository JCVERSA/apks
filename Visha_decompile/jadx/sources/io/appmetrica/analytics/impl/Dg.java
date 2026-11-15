package io.appmetrica.analytics.impl;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import com.hunantv.imgo.net.entity.AuthInfo;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.protobuf.nano.MessageNano;
import java.util.HashSet;
import org.json.JSONObject;

public final class Dg extends Gg {
    public Dg(C2706m5 c2706m5) {
        super(c2706m5);
    }

    @Override
    public final boolean a(@NonNull C2408a6 c2408a6) {
        String value = c2408a6.getValue();
        if (TextUtils.isEmpty(value)) {
            return false;
        }
        try {
            JSONObject jSONObject = new JSONObject(value);
            if (!"open".equals(jSONObject.optString("type"))) {
                return false;
            }
            Un un = this.a.t;
            synchronized (un) {
                un.c(un.b() + 1);
            }
            if (!a(jSONObject.optString(AuthInfo.Component.CODE_LINK))) {
                return false;
            }
            c2408a6.n = Boolean.TRUE;
            b();
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }

    public final void b() {
        Un un = this.a.t;
        synchronized (un) {
            un.a(un.a() + 1);
        }
        this.a.y();
        Q8 q8 = this.a.l;
        if (q8.c == null) {
            q8.a();
        }
        S8 s8 = q8.c;
        s8.getClass();
        s8.b = new HashSet();
        s8.d = 0;
        S8 s9 = q8.c;
        s9.a = true;
        V8 v8 = q8.b;
        IBinaryDataHelper iBinaryDataHelper = v8.c;
        U8 u8 = v8.b;
        v8.a.getClass();
        A9 a9A = T8.a(s9);
        u8.getClass();
        iBinaryDataHelper.insert("event_hashes", MessageNano.toByteArray(a9A));
    }

    public final boolean a(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                String queryParameter = Uri.parse(str).getQueryParameter("referrer");
                if (!TextUtils.isEmpty(queryParameter)) {
                    C2778p2 c2778p2 = this.a.s().z;
                    for (String str2 : queryParameter.split("&")) {
                        int iIndexOf = str2.indexOf("=");
                        if (iIndexOf >= 0 && a(Uri.decode(str2.substring(0, iIndexOf)), Uri.decode(str2.substring(iIndexOf + 1)), c2778p2)) {
                            return true;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
        return false;
    }

    public static boolean a(String str, String str2, C2778p2 c2778p2) {
        Object obj;
        if ("reattribution".equals(str) && "1".equals(str2)) {
            return true;
        }
        if (c2778p2 == null) {
            return false;
        }
        for (Pair pair : c2778p2.a) {
            if (In.a(pair.first, str) && ((obj = pair.second) == null || ((C2753o2) obj).a.equals(str2))) {
                return true;
            }
        }
        return false;
    }
}
