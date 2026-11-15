package com.hunantv.imgo.a;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.JsonObject;
import com.hunantv.imgo.data.ContentPlayData;
import com.hunantv.imgo.data.ErrorData;
import com.mgtv.downloader.p2p.mg.DownloadFacadeEnum;

public class f extends b {
    private static volatile f e;
    private int d;

    public f(Context context) {
        super(context);
        this.d = 0;
    }

    public static f a(Context context) {
        if (e == null) {
            synchronized (f.class) {
                try {
                    if (e == null) {
                        e = new f(context.getApplicationContext());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    private ContentPlayData b(long j, String str, ErrorData errorData) {
        ContentPlayData contentPlayDataA = a(str, errorData);
        contentPlayDataA.setEvent_duration(j);
        return contentPlayDataA;
    }

    @Override
    public String b() {
        return com.hunantv.imgo.report.c.w();
    }

    public void a(ContentPlayData contentPlayData) {
        if (contentPlayData == null) {
            return;
        }
        this.a.b(b(), contentPlayData.createBaseRequestParams().toJsonNew(), null);
    }

    public void a(long j, String str, ErrorData errorData) {
        ContentPlayData contentPlayDataB = b(j, str, errorData);
        contentPlayDataB.setEvent_name("app");
        a(contentPlayDataB);
    }

    public void a(long j, String str, ErrorData errorData, String str2) {
        ContentPlayData contentPlayDataB = b(j, str, errorData);
        contentPlayDataB.setEvent_name(DownloadFacadeEnum.USER_MOD);
        if ("vod".equals(str2)) {
            contentPlayDataB.setSource("vod");
        } else {
            contentPlayDataB.setSource("feed");
        }
        contentPlayDataB.setMod_type(str2);
        a(contentPlayDataB);
    }

    public void a(String str, String str2, ErrorData errorData, String str3) {
        a(a(str2, str, str3, errorData));
    }

    public void a(String str, String str2, String str3, ErrorData errorData, String str4, String str5, String str6, String str7, int i, String str8, String str9) {
        ContentPlayData contentPlayDataA = a(str3, str, str4, errorData);
        if (!TextUtils.isEmpty(str5)) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("fdParams", str5);
            contentPlayDataA.setLob(jsonObject.toString());
        }
        contentPlayDataA.setVideo_id(str6);
        contentPlayDataA.setVideo_code(str7);
        contentPlayDataA.setAuto_play(i);
        contentPlayDataA.setMod_position(str8);
        contentPlayDataA.setElement_id(str2);
        contentPlayDataA.setCollection_id(str9);
        contentPlayDataA.setOffline(this.d);
        a(contentPlayDataA);
    }

    public void a(String str, String str2, long j, long j2, long j3, long j4, String str3, String str4, String str5, String str6, String str7, int i) {
        ContentPlayData contentPlayDataA = a(str3, str, str4, (ErrorData) null);
        contentPlayDataA.setEvent_duration(j);
        if (!TextUtils.isEmpty(str5)) {
            JsonObject jsonObject = new JsonObject();
            jsonObject.addProperty("fdParams", str5);
            contentPlayDataA.setLob(jsonObject.toString());
        }
        contentPlayDataA.setElement_id(str2);
        contentPlayDataA.setAuto_play(i);
        contentPlayDataA.setVideo_id(str6);
        contentPlayDataA.setVideo_code(str7);
        if (j2 > -1) {
            contentPlayDataA.setSrc1(j2);
        }
        if (j3 > -1) {
            contentPlayDataA.setSrc2(j3);
        }
        if (j4 > -1) {
            contentPlayDataA.setSrc3(j4);
        }
        contentPlayDataA.setOffline(this.d);
        a(contentPlayDataA);
    }

    private ContentPlayData a(String str, ErrorData errorData) {
        ContentPlayData contentPlayData = new ContentPlayData();
        if (!TextUtils.isEmpty(str)) {
            contentPlayData.setStatus(str);
        }
        if (errorData != null) {
            contentPlayData.setErr_info(com.mgtv.json.a.a(errorData, (Class<? extends ErrorData>) ErrorData.class));
        }
        return contentPlayData;
    }

    private ContentPlayData a(String str, String str2, String str3, ErrorData errorData) {
        ContentPlayData contentPlayDataA = a(str, errorData);
        contentPlayDataA.setEvent_name(str2);
        if ("vod".equals(str3)) {
            contentPlayDataA.setSource("vod");
        } else if ("ad".equals(str3)) {
            contentPlayDataA.setSource("ad");
        } else if (TextUtils.isEmpty(str3) || "detail".equals(str3)) {
            contentPlayDataA.setSource("vod");
        } else if ("live".equals(str3)) {
            contentPlayDataA.setSource("live");
        } else {
            contentPlayDataA.setSource("feed");
        }
        if (TextUtils.isEmpty(str3) || "live".equals(str3)) {
            contentPlayDataA.setMod_type("vod");
        } else {
            contentPlayDataA.setMod_type(str3);
        }
        return contentPlayDataA;
    }

    public void a(int i) {
        this.d = i;
    }
}
