package com.cloud.hisavana.sdk.common.http.listener;

import android.os.Handler;
import android.util.Log;
import com.cloud.hisavana.sdk.b4;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.cloud.sdk.commonutil.util.c;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class CommonResponseListener<E> extends ResponseBaseListener {
    protected CommonResponseListener() {
    }

    private void j(final int i10, final String str) {
        final Object objB;
        try {
            Type genericSuperclass = getClass().getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType)) {
                throw new RuntimeException("Missing type parameter.");
            }
            try {
                objB = GsonUtil.b(str, ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
            } catch (Exception e10) {
                b4.b().e("ssp", "GsonUtil parseResponse " + Log.getStackTraceString(e10));
                objB = null;
            }
            Handler handler = this.f21503a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        CommonResponseListener.this.h(i10, objB, str);
                    }
                });
            } else {
                h(i10, objB, str);
            }
        } catch (Throwable th2) {
            b4.b().e("ssp", "parseResponse " + Log.getStackTraceString(th2));
            c.netLog("CommonResponseListener --> 解析网络请求数据异常 --> parseResponse --> catch " + Log.getStackTraceString(th2));
            a(TaErrorCode.ERROR_RESPONSE_PARSING_FAILED);
        }
    }

    protected abstract void g(int i10, Object obj);

    public void h(int i10, Object obj, String str) {
        g(i10, obj);
    }

    public void i(int i10, String str) {
        j(i10, str);
    }

    protected CommonResponseListener(boolean z10) {
        super(z10);
    }
}
