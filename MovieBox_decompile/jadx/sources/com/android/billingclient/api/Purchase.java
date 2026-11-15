package com.android.billingclient.api;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class Purchase {

    private final String f18417a;

    private final String f18418b;

    private final JSONObject f18419c;

    public Purchase(String str, String str2) {
        this.f18417a = str;
        this.f18418b = str2;
        this.f18419c = new JSONObject(str);
    }

    private final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.f18419c.has("productIds")) {
            JSONArray jSONArrayOptJSONArray = this.f18419c.optJSONArray("productIds");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.optString(i10));
                }
            }
        } else if (this.f18419c.has("productId")) {
            arrayList.add(this.f18419c.optString("productId"));
        }
        return arrayList;
    }

    public a a() {
        JSONObject jSONObject = this.f18419c;
        String strOptString = jSONObject.optString("obfuscatedAccountId");
        String strOptString2 = jSONObject.optString("obfuscatedProfileId");
        if (strOptString == null && strOptString2 == null) {
            return null;
        }
        return new a(strOptString, strOptString2);
    }

    public String b() {
        String strOptString = this.f18419c.optString("orderId");
        if (TextUtils.isEmpty(strOptString)) {
            return null;
        }
        return strOptString;
    }

    public String c() {
        return this.f18417a;
    }

    public List d() {
        return i();
    }

    public int e() {
        return this.f18419c.optInt("purchaseState", 1) != 4 ? 1 : 2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Purchase)) {
            return false;
        }
        Purchase purchase = (Purchase) obj;
        return TextUtils.equals(this.f18417a, purchase.c()) && TextUtils.equals(this.f18418b, purchase.h());
    }

    public long f() {
        return this.f18419c.optLong("purchaseTime");
    }

    public String g() {
        JSONObject jSONObject = this.f18419c;
        return jSONObject.optString("token", jSONObject.optString("purchaseToken"));
    }

    public String h() {
        return this.f18418b;
    }

    public int hashCode() {
        return this.f18417a.hashCode();
    }

    public String toString() {
        return "Purchase. Json: ".concat(String.valueOf(this.f18417a));
    }
}
