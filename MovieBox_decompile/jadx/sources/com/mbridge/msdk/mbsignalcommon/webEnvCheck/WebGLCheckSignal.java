package com.mbridge.msdk.mbsignalcommon.webEnvCheck;

import com.mbridge.msdk.foundation.controller.c;
import org.json.JSONException;
import org.json.JSONObject;

public class WebGLCheckSignal extends BaseWebGLCheckSignal {

    public static final int f35683g = 0;

    public void webglState(Object obj, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            c.m().c(jSONObject.optInt("webgl"));
            c.m().a(jSONObject);
        } catch (JSONException e10) {
            e10.printStackTrace();
        }
    }
}
