package com.android.billingclient.api;

import org.json.JSONException;
import org.json.JSONObject;

public final class y0 {
    y0(JSONObject jSONObject) throws JSONException {
        jSONObject.getInt("commitmentPaymentsCount");
        jSONObject.optInt("subsequentCommitmentPaymentsCount");
    }
}
