package com.mbridge.msdk.videocommon.download;

import android.net.Uri;
import android.text.TextUtils;
import android.util.Patterns;
import android.webkit.URLUtil;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.foundation.tools.o0;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.CopyOnWriteArrayList;

public class d {

    private static d f39076h;

    private CopyOnWriteArrayList<String> f39077a;

    private ConcurrentMap<String, Object> f39078b;

    private i f39079c;

    private f f39080d;

    private boolean f39081e;

    private final String f39082f = CampaignEx.JSON_KEY_LOCAL_REQUEST_ID;

    private final String f39083g = "down_type";

    private d() {
        this.f39081e = false;
        try {
            this.f39079c = i.a();
            this.f39080d = f.a();
            this.f39077a = new CopyOnWriteArrayList<>();
            this.f39078b = new ConcurrentHashMap();
            com.mbridge.msdk.setting.g gVarD = com.mbridge.msdk.setting.h.b().d(com.mbridge.msdk.foundation.controller.c.m().b());
            if (gVarD != null) {
                this.f39081e = gVarD.b(1);
            }
        } catch (Throwable th2) {
            o0.b("H5DownLoadManager", th2.getMessage(), th2);
        }
    }

    public static synchronized d a() {
        try {
            if (f39076h == null) {
                f39076h = new d();
            }
        } catch (Throwable th2) {
            throw th2;
        }
        return f39076h;
    }

    private String b(String str) {
        f fVar = this.f39080d;
        return fVar != null ? fVar.b(str) : str;
    }

    public String c(String str) {
        i iVar = this.f39079c;
        if (iVar != null) {
            return iVar.a(str);
        }
        return null;
    }

    public String a(String str) {
        try {
            if (Patterns.WEB_URL.matcher(str).matches() || URLUtil.isValidUrl(str)) {
                Uri uri = Uri.parse(str);
                String path = uri.getPath();
                if (TextUtils.isEmpty(path) || !TextUtils.isEmpty(uri.getQueryParameter("urlDebug"))) {
                    return str;
                }
                if (path.toLowerCase().endsWith(".zip")) {
                    return c(str);
                }
                return b(str);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return str;
    }
}
