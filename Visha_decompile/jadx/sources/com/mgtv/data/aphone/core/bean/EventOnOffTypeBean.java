package com.mgtv.data.aphone.core.bean;

import androidx.media3.extractor.text.ttml.TtmlNode;
import com.google.gson.JsonObject;
import com.mgtv.json.JsonInterface;
import com.transsion.push.PushConstants;
import org.json.JSONObject;

public class EventOnOffTypeBean implements JsonInterface {
    public String all;
    public String appls;
    public String click;
    public String crash;
    public String drm;
    public String hls;
    public String offlinehb;
    public String oriplayer;
    public String pv;
    public String start;
    public String wifi;

    public EventOnOffTypeBean(JSONObject jSONObject) {
        if (jSONObject != null) {
            if (jSONObject.has(TtmlNode.COMBINE_ALL)) {
                this.all = jSONObject.optString(TtmlNode.COMBINE_ALL);
            }
            if (jSONObject.has("pv")) {
                this.pv = jSONObject.optString("pv");
            }
            if (jSONObject.has(TtmlNode.START)) {
                this.start = jSONObject.optString(TtmlNode.START);
            }
            if (jSONObject.has("hls")) {
                this.hls = jSONObject.optString("hls");
            }
            if (jSONObject.has("offlinehb")) {
                this.offlinehb = jSONObject.optString("offlinehb");
            }
            if (jSONObject.has("oriplayer")) {
                this.oriplayer = jSONObject.optString("oriplayer");
            }
            if (jSONObject.has("crash")) {
                this.crash = jSONObject.optString("crash");
            }
            if (jSONObject.has(PushConstants.PUSH_SERVICE_TYPE_CLICK)) {
                this.click = jSONObject.optString(PushConstants.PUSH_SERVICE_TYPE_CLICK);
            }
            if (jSONObject.has("appls")) {
                this.appls = jSONObject.optString("appls");
            }
            if (jSONObject.has("wifi")) {
                this.wifi = jSONObject.optString("wifi");
            }
            if (jSONObject.has("drm")) {
                this.drm = jSONObject.optString("drm");
            }
        }
    }

    public EventOnOffTypeBean(JsonObject jsonObject) {
        if (jsonObject != null) {
            if (jsonObject.has(TtmlNode.COMBINE_ALL)) {
                this.all = jsonObject.get(TtmlNode.COMBINE_ALL).getAsString();
            }
            if (jsonObject.has("pv")) {
                this.pv = jsonObject.get("pv").getAsString();
            }
            if (jsonObject.has(TtmlNode.START)) {
                this.start = jsonObject.get(TtmlNode.START).getAsString();
            }
            if (jsonObject.has("hls")) {
                this.hls = jsonObject.get("hls").getAsString();
            }
            if (jsonObject.has("offlinehb")) {
                this.offlinehb = jsonObject.get("offlinehb").getAsString();
            }
            if (jsonObject.has("oriplayer")) {
                this.oriplayer = jsonObject.get("oriplayer").getAsString();
            }
            if (jsonObject.has("crash")) {
                this.crash = jsonObject.get("crash").getAsString();
            }
            if (jsonObject.has(PushConstants.PUSH_SERVICE_TYPE_CLICK)) {
                this.click = jsonObject.get(PushConstants.PUSH_SERVICE_TYPE_CLICK).getAsString();
            }
            if (jsonObject.has("appls")) {
                this.appls = jsonObject.get("appls").getAsString();
            }
            if (jsonObject.has("wifi")) {
                this.wifi = jsonObject.get("wifi").getAsString();
            }
            if (jsonObject.has("drm")) {
                this.drm = jsonObject.get("drm").getAsString();
            }
        }
    }
}
