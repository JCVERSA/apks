package com.android.billingclient.api;

import android.text.TextUtils;
import com.cloud.tmc.kernel.minicover.NativeComponentConstants;
import com.google.android.gms.internal.play_billing.zzaf;
import com.hisavana.common.tracking.TrackingKey;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public final class r {

    private final String f18536a;

    private final JSONObject f18537b;

    private final String f18538c;

    private final String f18539d;

    private final String f18540e;

    private final String f18541f;

    private final String f18542g;

    private final String f18543h;

    private final String f18544i;

    private final String f18545j;

    private final String f18546k;

    private final List f18547l;

    private final List f18548m;

    public static final class a {

        private final String f18549a;

        private final long f18550b;

        private final String f18551c;

        private final String f18552d;

        private final String f18553e;

        private final zzaf f18554f;

        private final Long f18555g;

        private final z0 f18556h;

        private final c1 f18557i;

        private final a1 f18558j;

        private final b1 f18559k;

        a(JSONObject jSONObject) {
            this.f18549a = jSONObject.optString("formattedPrice");
            this.f18550b = jSONObject.optLong("priceAmountMicros");
            this.f18551c = jSONObject.optString("priceCurrencyCode");
            this.f18552d = jSONObject.optString("offerIdToken");
            this.f18553e = jSONObject.optString("offerId");
            jSONObject.optInt("offerType");
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            ArrayList arrayList = new ArrayList();
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i10));
                }
            }
            this.f18554f = zzaf.zzj(arrayList);
            this.f18555g = jSONObject.has("fullPriceMicros") ? Long.valueOf(jSONObject.optLong("fullPriceMicros")) : null;
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("discountDisplayInfo");
            this.f18556h = jSONObjectOptJSONObject == null ? null : new z0(jSONObjectOptJSONObject);
            JSONObject jSONObjectOptJSONObject2 = jSONObject.optJSONObject("validTimeWindow");
            this.f18557i = jSONObjectOptJSONObject2 == null ? null : new c1(jSONObjectOptJSONObject2);
            JSONObject jSONObjectOptJSONObject3 = jSONObject.optJSONObject("limitedQuantityInfo");
            this.f18558j = jSONObjectOptJSONObject3 == null ? null : new a1(jSONObjectOptJSONObject3);
            JSONObject jSONObjectOptJSONObject4 = jSONObject.optJSONObject("preorderDetails");
            this.f18559k = jSONObjectOptJSONObject4 != null ? new b1(jSONObjectOptJSONObject4) : null;
        }

        public final String a() {
            return this.f18552d;
        }
    }

    public static final class b {

        private final String f18560a;

        private final long f18561b;

        private final String f18562c;

        private final String f18563d;

        private final int f18564e;

        private final int f18565f;

        b(JSONObject jSONObject) {
            this.f18563d = jSONObject.optString("billingPeriod");
            this.f18562c = jSONObject.optString("priceCurrencyCode");
            this.f18560a = jSONObject.optString("formattedPrice");
            this.f18561b = jSONObject.optLong("priceAmountMicros");
            this.f18565f = jSONObject.optInt("recurrenceMode");
            this.f18564e = jSONObject.optInt("billingCycleCount");
        }
    }

    public static class c {

        private final List f18566a;

        c(JSONArray jSONArray) {
            ArrayList arrayList = new ArrayList();
            if (jSONArray != null) {
                for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                    JSONObject jSONObjectOptJSONObject = jSONArray.optJSONObject(i10);
                    if (jSONObjectOptJSONObject != null) {
                        arrayList.add(new b(jSONObjectOptJSONObject));
                    }
                }
            }
            this.f18566a = arrayList;
        }
    }

    public static final class d {

        private final String f18567a;

        private final String f18568b;

        private final String f18569c;

        private final c f18570d;

        private final List f18571e;

        private final y0 f18572f;

        d(JSONObject jSONObject) {
            this.f18567a = jSONObject.optString("basePlanId");
            String strOptString = jSONObject.optString("offerId");
            this.f18568b = true == strOptString.isEmpty() ? null : strOptString;
            this.f18569c = jSONObject.getString("offerIdToken");
            this.f18570d = new c(jSONObject.getJSONArray("pricingPhases"));
            JSONObject jSONObjectOptJSONObject = jSONObject.optJSONObject("installmentPlanDetails");
            this.f18572f = jSONObjectOptJSONObject != null ? new y0(jSONObjectOptJSONObject) : null;
            ArrayList arrayList = new ArrayList();
            JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("offerTags");
            if (jSONArrayOptJSONArray != null) {
                for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                    arrayList.add(jSONArrayOptJSONArray.getString(i10));
                }
            }
            this.f18571e = arrayList;
        }

        public String a() {
            return this.f18569c;
        }
    }

    r(String str) {
        this.f18536a = str;
        JSONObject jSONObject = new JSONObject(str);
        this.f18537b = jSONObject;
        String strOptString = jSONObject.optString("productId");
        this.f18538c = strOptString;
        String strOptString2 = jSONObject.optString(NativeComponentConstants.KEY_COMPONENT_TYPE);
        this.f18539d = strOptString2;
        if (TextUtils.isEmpty(strOptString)) {
            throw new IllegalArgumentException("Product id cannot be empty.");
        }
        if (TextUtils.isEmpty(strOptString2)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.f18540e = jSONObject.optString(CampaignEx.JSON_KEY_TITLE);
        this.f18541f = jSONObject.optString("name");
        this.f18542g = jSONObject.optString(TrackingKey.DESCRIPTION);
        this.f18544i = jSONObject.optString("packageDisplayName");
        this.f18545j = jSONObject.optString("iconUrl");
        this.f18543h = jSONObject.optString("skuDetailsToken");
        this.f18546k = jSONObject.optString("serializedDocid");
        JSONArray jSONArrayOptJSONArray = jSONObject.optJSONArray("subscriptionOfferDetails");
        if (jSONArrayOptJSONArray != null) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < jSONArrayOptJSONArray.length(); i10++) {
                arrayList.add(new d(jSONArrayOptJSONArray.getJSONObject(i10)));
            }
            this.f18547l = arrayList;
        } else {
            this.f18547l = (strOptString2.equals("subs") || strOptString2.equals("play_pass_subs")) ? new ArrayList() : null;
        }
        JSONObject jSONObjectOptJSONObject = this.f18537b.optJSONObject("oneTimePurchaseOfferDetails");
        JSONArray jSONArrayOptJSONArray2 = this.f18537b.optJSONArray("oneTimePurchaseOfferDetailsList");
        ArrayList arrayList2 = new ArrayList();
        if (jSONArrayOptJSONArray2 != null) {
            for (int i11 = 0; i11 < jSONArrayOptJSONArray2.length(); i11++) {
                arrayList2.add(new a(jSONArrayOptJSONArray2.getJSONObject(i11)));
            }
            this.f18548m = arrayList2;
            return;
        }
        if (jSONObjectOptJSONObject == null) {
            this.f18548m = null;
        } else {
            arrayList2.add(new a(jSONObjectOptJSONObject));
            this.f18548m = arrayList2;
        }
    }

    public a a() {
        List list = this.f18548m;
        if (list == null || list.isEmpty()) {
            return null;
        }
        return (a) this.f18548m.get(0);
    }

    public String b() {
        return this.f18538c;
    }

    public String c() {
        return this.f18539d;
    }

    public List d() {
        return this.f18547l;
    }

    public final String e() {
        return this.f18537b.optString("packageName");
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof r) {
            return TextUtils.equals(this.f18536a, ((r) obj).f18536a);
        }
        return false;
    }

    final String f() {
        return this.f18543h;
    }

    public String g() {
        return this.f18546k;
    }

    public int hashCode() {
        return this.f18536a.hashCode();
    }

    public String toString() {
        List list = this.f18547l;
        return "ProductDetails{jsonString='" + this.f18536a + "', parsedJson=" + this.f18537b.toString() + ", productId='" + this.f18538c + "', productType='" + this.f18539d + "', title='" + this.f18540e + "', productDetailsToken='" + this.f18543h + "', subscriptionOfferDetails=" + String.valueOf(list) + "}";
    }
}
