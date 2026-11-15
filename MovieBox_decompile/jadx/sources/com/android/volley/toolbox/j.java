package com.android.volley.toolbox;

import com.android.volley.ParseError;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class j extends k {
    public j(int i10, String str, JSONObject jSONObject, com.android.volley.i.b bVar, com.android.volley.i.a aVar) {
        super(i10, str, jSONObject != null ? jSONObject.toString() : null, bVar, aVar);
    }

    @Override
    protected com.android.volley.i parseNetworkResponse(com.android.volley.g gVar) {
        try {
            return com.android.volley.i.c(new JSONObject(new String(gVar.f18618b, d.f(gVar.f18619c, "utf-8"))), d.e(gVar));
        } catch (UnsupportedEncodingException e10) {
            return com.android.volley.i.a(new ParseError(e10));
        } catch (JSONException e11) {
            return com.android.volley.i.a(new ParseError(e11));
        }
    }
}
