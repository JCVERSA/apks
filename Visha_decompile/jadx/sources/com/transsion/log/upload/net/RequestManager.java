package com.transsion.log.upload.net;

import android.util.Log;
import androidx.core.app.NotificationCompat;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import com.lzy.okgo.model.Progress;
import com.transsion.log.upload.data.RuleRequestModel;
import com.transsion.log.upload.data.UploadUrl;
import com.transsion.log.upload.data.base.HttpUbtError;
import com.transsion.log.upload.data.base.HttpUbtException;
import com.transsion.log.upload.data.base.HttpUbtResponse;
import defpackage.cs4;
import defpackage.iz6;
import defpackage.y45;
import java.io.File;
import java.io.IOException;
import java.util.LinkedHashMap;
import java.util.Map;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import org.json.JSONObject;

public final class RequestManager {
    public static final RequestManager a = new RequestManager();
    public static String b = "";
    public static String c = "";

    public static final class a implements cs4 {
        public final cs4 a;

        public a(cs4 cs4Var) {
            this.a = cs4Var;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            y45.j(httpUbtError, "error");
            cs4 cs4Var = this.a;
            if (cs4Var != null) {
                cs4Var.a(httpUbtError);
            }
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            y45.j(httpUbtResponse, "response");
            if (httpUbtResponse.getCode() != 0 || httpUbtResponse.getData() == null) {
                cs4 cs4Var = this.a;
                if (cs4Var != null) {
                    cs4Var.a(new HttpUbtError(1002, new HttpUbtException(1002, "")));
                    return;
                }
                return;
            }
            cs4 cs4Var2 = this.a;
            if (cs4Var2 != null) {
                cs4Var2.b(httpUbtResponse);
            }
        }
    }

    public static final class b implements cs4 {
        public final cs4 a;

        public b(cs4 cs4Var) {
            this.a = cs4Var;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            y45.j(httpUbtError, "error");
            cs4 cs4Var = this.a;
            if (cs4Var != null) {
                cs4Var.a(httpUbtError);
            }
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            y45.j(httpUbtResponse, "response");
            if (httpUbtResponse.getCode() != 0 || httpUbtResponse.getData() == null) {
                cs4 cs4Var = this.a;
                if (cs4Var != null) {
                    cs4Var.a(new HttpUbtError(1002, new HttpUbtException(1002, "")));
                    return;
                }
                return;
            }
            cs4 cs4Var2 = this.a;
            if (cs4Var2 != null) {
                cs4Var2.b(httpUbtResponse);
            }
        }
    }

    public static final class c implements cs4 {
        public final cs4 a;

        public c(cs4 cs4Var) {
            this.a = cs4Var;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            y45.j(httpUbtError, "error");
            cs4 cs4Var = this.a;
            if (cs4Var != null) {
                cs4Var.a(httpUbtError);
            }
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            y45.j(httpUbtResponse, "response");
            if (httpUbtResponse.getCode() == 0) {
                cs4 cs4Var = this.a;
                if (cs4Var != null) {
                    cs4Var.b(httpUbtResponse);
                    return;
                }
                return;
            }
            cs4 cs4Var2 = this.a;
            if (cs4Var2 != null) {
                cs4Var2.a(new HttpUbtError(1002, new HttpUbtException(1002, "")));
            }
        }
    }

    public static final class d implements cs4 {
        public final cs4 a;

        public d(cs4 cs4Var) {
            this.a = cs4Var;
        }

        @Override
        public void a(HttpUbtError httpUbtError) {
            y45.j(httpUbtError, "error");
            cs4 cs4Var = this.a;
            if (cs4Var != null) {
                cs4Var.a(httpUbtError);
            }
        }

        @Override
        public void b(HttpUbtResponse httpUbtResponse) {
            y45.j(httpUbtResponse, "response");
            if (httpUbtResponse.getCode() == 2000) {
                cs4 cs4Var = this.a;
                if (cs4Var != null) {
                    cs4Var.b(httpUbtResponse);
                    return;
                }
                return;
            }
            cs4 cs4Var2 = this.a;
            if (cs4Var2 != null) {
                cs4Var2.a(new HttpUbtError(1002, new HttpUbtException(1002, "")));
            }
        }
    }

    public static final void a(cs4 cs4Var) {
        com.transsion.log.upload.net.a aVarA = com.transsion.log.upload.net.a.b.a();
        String str = b + "/log_collection_rule";
        final a aVar = new a(cs4Var);
        aVarA.d().newCall(new Request.Builder().url(aVarA.c(str, null)).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").get().build()).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException iOException) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(iOException, "e");
                cs4 cs4Var2 = aVar;
                if (cs4Var2 != null) {
                    cs4Var2.a(new HttpUbtError(1000, new HttpUbtException(1000, iOException.getMessage())));
                }
            }

            @Override
            public void onResponse(Call call, Response response) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(response, "response");
                try {
                    ResponseBody responseBodyBody = response.body();
                    JSONObject jSONObject = new JSONObject(responseBodyBody != null ? responseBodyBody.string() : null);
                    String strOptString = jSONObject.optString("data");
                    int iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString2 = jSONObject.optString("message");
                    Object objFromJson = new Gson().fromJson(strOptString, new TypeToken<RuleRequestModel>() {
                    }.getType());
                    if (iOptInt != 0) {
                        cs4 cs4Var2 = aVar;
                        if (cs4Var2 != null) {
                            cs4Var2.a(new HttpUbtError(1001, new HttpUbtException(1001, "")));
                            return;
                        }
                        return;
                    }
                    cs4 cs4Var3 = aVar;
                    if (cs4Var3 != null) {
                        y45.g(strOptString2);
                        cs4Var3.b(new HttpUbtResponse(iOptInt, strOptString2, objFromJson));
                    }
                } catch (Exception e) {
                    cs4 cs4Var4 = aVar;
                    if (cs4Var4 != null) {
                        cs4Var4.a(new HttpUbtError(1001, new HttpUbtException(1001, e.getMessage())));
                    }
                }
            }
        });
    }

    public static final void b(cs4 cs4Var, String str, String str2) {
        y45.j(str, "appSign");
        y45.j(str2, Progress.FILE_NAME);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("appSign", str);
        linkedHashMap.put(Progress.FILE_NAME, str2);
        com.transsion.log.upload.net.a aVarA = com.transsion.log.upload.net.a.b.a();
        String str3 = b + "/get_upload_file_url";
        final b bVar = new b(cs4Var);
        aVarA.d().newCall(new Request.Builder().url(aVarA.c(str3, linkedHashMap)).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").get().build()).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException iOException) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(iOException, "e");
                cs4 cs4Var2 = bVar;
                if (cs4Var2 != null) {
                    cs4Var2.a(new HttpUbtError(1000, new HttpUbtException(1000, iOException.getMessage())));
                }
            }

            @Override
            public void onResponse(Call call, Response response) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(response, "response");
                try {
                    ResponseBody responseBodyBody = response.body();
                    JSONObject jSONObject = new JSONObject(responseBodyBody != null ? responseBodyBody.string() : null);
                    String strOptString = jSONObject.optString("data");
                    int iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString2 = jSONObject.optString("message");
                    Object objFromJson = new Gson().fromJson(strOptString, new TypeToken<UploadUrl>() {
                    }.getType());
                    if (iOptInt != 0) {
                        cs4 cs4Var2 = bVar;
                        if (cs4Var2 != null) {
                            cs4Var2.a(new HttpUbtError(1001, new HttpUbtException(1001, "")));
                            return;
                        }
                        return;
                    }
                    cs4 cs4Var3 = bVar;
                    if (cs4Var3 != null) {
                        y45.g(strOptString2);
                        cs4Var3.b(new HttpUbtResponse(iOptInt, strOptString2, objFromJson));
                    }
                } catch (Exception e) {
                    cs4 cs4Var4 = bVar;
                    if (cs4Var4 != null) {
                        cs4Var4.a(new HttpUbtError(1001, new HttpUbtException(1001, e.getMessage())));
                    }
                }
            }
        });
    }

    public final String c() {
        return c;
    }

    public final void d(String str) {
        y45.j(str, "<set-?>");
        b = str;
    }

    public final void e(String str) {
        y45.j(str, "<set-?>");
        c = str;
    }

    public final void f(cs4 cs4Var, String str, String str2) {
        y45.j(str, "feedbackId");
        y45.j(str2, "logFileUrl");
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("feedbackId", str);
        linkedHashMap.put("logFileUrl", str2);
        com.transsion.log.upload.net.a aVarA = com.transsion.log.upload.net.a.b.a();
        String str3 = b + "/upd_log_file_url";
        final c cVar = new c(cs4Var);
        MediaType mediaType = MediaType.INSTANCE.get("application/json; charset=utf-8");
        String json = new Gson().toJson(linkedHashMap);
        if (json == null) {
            return;
        }
        aVarA.d().newCall(new Request.Builder().url(str3).addHeader("X-API-KEY", "kkLCdl3*p9mQPkZtOy").post(RequestBody.INSTANCE.create(json, mediaType)).build()).enqueue(new Callback() {
            @Override
            public void onFailure(Call call, IOException iOException) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(iOException, "e");
                cs4 cs4Var2 = cVar;
                if (cs4Var2 != null) {
                    cs4Var2.a(new HttpUbtError(1000, new HttpUbtException(1000, iOException.getMessage())));
                }
            }

            @Override
            public void onResponse(Call call, Response response) {
                y45.j(call, NotificationCompat.CATEGORY_CALL);
                y45.j(response, "response");
                try {
                    ResponseBody responseBodyBody = response.body();
                    JSONObject jSONObject = new JSONObject(responseBodyBody != null ? responseBodyBody.string() : null);
                    String strOptString = jSONObject.optString("data");
                    int iOptInt = jSONObject.optInt(TrackingKey.CODE);
                    String strOptString2 = jSONObject.optString("message");
                    Object objFromJson = new Gson().fromJson(strOptString, new TypeToken<String>() {
                    }.getType());
                    if (iOptInt != 0) {
                        cs4 cs4Var2 = cVar;
                        if (cs4Var2 != null) {
                            cs4Var2.a(new HttpUbtError(1001, new HttpUbtException(1001, "")));
                            return;
                        }
                        return;
                    }
                    cs4 cs4Var3 = cVar;
                    if (cs4Var3 != null) {
                        y45.g(strOptString2);
                        cs4Var3.b(new HttpUbtResponse(iOptInt, strOptString2, objFromJson));
                    }
                } catch (Exception e) {
                    cs4 cs4Var4 = cVar;
                    if (cs4Var4 != null) {
                        cs4Var4.a(new HttpUbtError(1001, new HttpUbtException(1001, e.getMessage())));
                    }
                }
            }
        });
    }

    public final void g(String str, String str2, Map map, File file, cs4 cs4Var) {
        y45.j(str, "url");
        y45.j(str2, "fileParamName");
        if (file != null) {
            com.transsion.log.upload.net.a.b.a();
            d dVar = new d(cs4Var);
            try {
                new OkHttpClient().newCall(new Request.Builder().url(str).put(RequestBody.Companion.create$default(RequestBody.INSTANCE, file, (MediaType) null, 1, (Object) null)).build()).enqueue(new iz6(dVar));
            } catch (Exception e) {
                dVar.a(new HttpUbtError(1001, new HttpUbtException(1001, e.getMessage())));
                Log.e("NetWorkHelper", "上传失败" + e.getMessage());
            }
        }
    }
}
