package com.yandex.mobile.ads.impl;

import android.net.Uri;
import com.transsion.push.PushConstants;
import com.yandex.div2.DivExtension;
import defpackage.y45;
import kotlin.Result;
import org.json.JSONObject;

public final class y20 {
    private final i20 a;

    public y20(int i) {
        this(new i20());
    }

    public final x20 a(defpackage.og2 og2Var) {
        Object objM279constructorimpl;
        y45.j(og2Var, "divBase");
        this.a.getClass();
        DivExtension divExtensionA = i20.a(og2Var, PushConstants.PUSH_SERVICE_TYPE_CLICK);
        if (divExtensionA == null) {
            return null;
        }
        try {
            Result.Companion companion = Result.INSTANCE;
            JSONObject jSONObject = divExtensionA.b;
            objM279constructorimpl = Result.m279constructorimpl(Uri.parse(jSONObject != null ? jSONObject.getString("url") : null));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM279constructorimpl = Result.m279constructorimpl(kotlin.c.a(th));
        }
        if (Result.m285isFailureimpl(objM279constructorimpl)) {
            objM279constructorimpl = null;
        }
        Uri uri = (Uri) objM279constructorimpl;
        if (uri != null) {
            return new x20(uri);
        }
        return null;
    }

    public y20(i20 i20Var) {
        y45.j(i20Var, "divExtensionProvider");
        this.a = i20Var;
    }
}
