package com.android.billingclient.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import org.apache.commons.text.StringSubstitutor;
import org.json.JSONException;
import org.json.JSONObject;

@zzu
public final class UnfetchedProduct {
    private final String jsonString;
    private final String productId;
    private final String productType;

    @Nullable
    private final String serializedDocid;
    private final int statusCode;

    @Retention(RetentionPolicy.SOURCE)
    public @interface StatusCode {

        @zzu
        public static final int INVALID_PRODUCT_ID_FORMAT = 2;

        @zzu
        public static final int NO_ELIGIBLE_OFFER = 4;

        @zzu
        public static final int PRODUCT_NOT_FOUND = 3;

        @zzu
        public static final int UNKNOWN = 0;
    }

    public UnfetchedProduct(String str) throws JSONException {
        this.jsonString = str;
        JSONObject jSONObject = new JSONObject(str);
        this.productId = jSONObject.optString("productId");
        String strOptString = jSONObject.optString("type");
        this.productType = strOptString;
        this.statusCode = jSONObject.has("statusCode") ? jSONObject.optInt("statusCode") : 0;
        if (TextUtils.isEmpty(strOptString)) {
            throw new IllegalArgumentException("Product type cannot be empty.");
        }
        this.serializedDocid = jSONObject.optString("serializedDocid");
    }

    @NonNull
    @VisibleForTesting
    public static UnfetchedProduct fromJson(@NonNull String str) throws JSONException {
        return new UnfetchedProduct(str);
    }

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof UnfetchedProduct) {
            return TextUtils.equals(this.jsonString, ((UnfetchedProduct) obj).jsonString);
        }
        return false;
    }

    @NonNull
    @zzu
    public String getProductId() {
        return this.productId;
    }

    @NonNull
    @zzu
    public String getProductType() {
        return this.productType;
    }

    @Nullable
    public String getSerializedDocid() {
        return this.serializedDocid;
    }

    @zzu
    public int getStatusCode() {
        return this.statusCode;
    }

    public int hashCode() {
        return this.jsonString.hashCode();
    }

    @NonNull
    public String toString() {
        return "UnfetchedProduct{productId='" + this.productId + "', productType='" + this.productType + "', statusCode=" + this.statusCode + StringSubstitutor.DEFAULT_VAR_END;
    }
}
