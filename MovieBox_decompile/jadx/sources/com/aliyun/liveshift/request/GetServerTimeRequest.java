package com.aliyun.liveshift.request;

import android.content.Context;
import android.text.TextUtils;
import com.aliyun.player.bean.ErrorCode;
import com.aliyun.utils.BaseRequest;
import com.aliyun.utils.HttpClientHelper;
import com.aliyun.utils.JsonUtil;
import com.cloud.tmc.kernel.utils.UrlUtils;
import com.mbridge.msdk.playercommon.PlayerErrorConstant;
import java.lang.ref.WeakReference;
import org.json.JSONException;
import org.json.JSONObject;

public class GetServerTimeRequest extends BaseRequest {
    private static final String TAG = "GetServerTimeRequest";
    private HttpClientHelper httpClientHelper;
    private WeakReference<Context> mContextWeak;
    private String mHost;

    GetServerTimeRequest(Context context, String str, BaseRequest.OnRequestListener<Long> onRequestListener) {
        super(context, onRequestListener);
        this.httpClientHelper = null;
        this.mHost = str;
        this.mContextWeak = new WeakReference<>(context);
    }

    @Override
    public void runInBackground() throws Throwable {
        String str = "https://" + this.mHost + "/openapi/getutc?lhs_start=1";
        if (this.wantStop) {
            sendFailResult(-1, "", "");
            return;
        }
        try {
            HttpClientHelper httpClientHelper = new HttpClientHelper(str);
            this.httpClientHelper = httpClientHelper;
            String strDoGet = httpClientHelper.doGet();
            if (TextUtils.isEmpty(strDoGet)) {
                sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_REQUEST_ERROR.getValue(), "request fail", "");
                return;
            }
            if (strDoGet.split(UrlUtils.EQUAL_MARK).length != 2) {
                sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_REQUEST_ERROR.getValue(), "request fail", "");
                return;
            }
            long j10 = JsonUtil.getLong(new JSONObject(strDoGet), "GT");
            if (j10 == 0) {
                sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_REQUEST_ERROR.getValue(), "request fail", "");
            } else {
                sendSuccessResult(Long.valueOf(j10), "");
            }
        } catch (JSONException unused) {
            sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_DATA_PARSER_ERROR.getValue(), "response not json", "");
        } catch (Exception unused2) {
            sendFailResult(ErrorCode.ERROR_SERVER_LIVESHIFT_UNKNOWN.getValue(), PlayerErrorConstant.UNKNOW_ERROR, "");
        }
    }

    @Override
    public void stopInner() {
        HttpClientHelper httpClientHelper = this.httpClientHelper;
        if (httpClientHelper != null) {
            httpClientHelper.stop();
        }
    }
}
