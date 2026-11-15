package com.mbridge.msdk.out.reveue;

import android.text.TextUtils;
import com.hisavana.common.tracking.TrackingKey;
import org.json.JSONObject;

public class MBridgeRevenueParamsEntityForTradPlus extends MBridgeRevenueParamsEntity {
    public MBridgeRevenueParamsEntityForTradPlus(String str, String str2) {
        super(str, str2);
        setMediationName("TradPlus");
    }

    @Override
    public void setDspInfo(String str, String str2) {
        super.setDspInfo(str, str2);
    }

    public void setTradPlusAdInfo(String str) {
        String strReplace;
        if (!TextUtils.isEmpty(str)) {
            try {
                String strReplace2 = str.replace("\"", "\\\"").replace("----------------------\n", "{\"").replaceAll("(?<!\"):(?!\")", "\":\"").replace("\n", "\",\"");
                if (strReplace2.endsWith("\"")) {
                    strReplace = (strReplace2 + "}").replace(",\"}", "}");
                } else {
                    strReplace = strReplace2 + "\"}";
                }
                JSONObject jSONObject = new JSONObject(strReplace);
                setAdType(jSONObject.optInt("placementAdType") + "");
                setMediationUnitId(jSONObject.optString("tpAdUnitId"));
                setNetworkName(jSONObject.optString("adSourceName"));
                setBidType(Boolean.valueOf(jSONObject.optBoolean("isBiddingNetwork", false)));
                setRevenue(jSONObject.optString(TrackingKey.ECPM, ""));
                setPrecision(jSONObject.optString("ecpmPrecision", ""));
                JSONObject jSONObject2 = new JSONObject();
                jSONObject2.put("instanceName", jSONObject.optString("adSourceName", ""));
                jSONObject2.put("instanceId", jSONObject.optString("adSourceId", ""));
                setNetworkInfo(jSONObject2);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        setSourceData(str, str);
    }
}
