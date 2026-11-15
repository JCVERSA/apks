package defpackage;

import OppOOp0.OppO0O0;
import android.content.Context;
import android.util.Log;
import com.google.gson.Gson;
import com.transsion.xuanniao.account.R;
import com.transsion.xuanniao.account.comm.mvpbase.BaseData;
import java.util.HashMap;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;

public class zn7 {
    public static final MediaType a = MediaType.parse("application/json; charset=utf-8");

    public final String a(String str, HashMap map) {
        if (map == null || map.size() <= 0) {
            return str;
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append("?");
        for (String str2 : map.keySet()) {
            sb.append(str2);
            sb.append("=");
            sb.append((String) map.get(str2));
            sb.append("&");
        }
        return sb.toString().substring(0, sb.length() - 1);
    }

    public Response b(Context context, String str, Object obj) {
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            builderUrl.post(RequestBody.create(a, obj != null ? new Gson().toJson(obj) : ""));
            return jo7.b(context).newCall(builderUrl.build()).execute();
        } catch (Exception e) {
            Log.e("NetWorkProxy", Log.getStackTraceString(e));
            return null;
        }
    }

    public void c(Context context, String str, Object obj, Callback callback) {
        try {
            Request.Builder builderUrl = new Request.Builder().url(str);
            builderUrl.post(RequestBody.create(a, obj != null ? new Gson().toJson(obj) : ""));
            jo7.b(context).newCall(builderUrl.build()).enqueue(callback);
        } catch (Exception e) {
            if (callback instanceof OppO0O0) {
                BaseData baseData = new BaseData();
                baseData.code = 1;
                baseData.message = context.getString(R.string.xn_net_unavailable);
                ((OppO0O0) callback).c(baseData);
            }
            Log.e("NetWorkProxy", Log.getStackTraceString(e));
        }
    }

    public void d(Context context, String str, HashMap map, Callback callback) {
        try {
            jo7.b(context).newCall(new Request.Builder().url(a(str, map)).build()).enqueue(callback);
        } catch (Exception e) {
            if (callback instanceof OppO0O0) {
                BaseData baseData = new BaseData();
                baseData.code = 1;
                baseData.message = context.getString(R.string.xn_net_unavailable);
                ((OppO0O0) callback).c(baseData);
            }
            Log.e("NetWorkProxy", Log.getStackTraceString(e));
        }
    }
}
