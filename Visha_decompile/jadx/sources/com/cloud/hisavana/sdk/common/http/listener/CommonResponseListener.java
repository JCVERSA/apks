package com.cloud.hisavana.sdk.common.http.listener;

import android.os.Handler;
import android.util.Log;
import com.cloud.hisavana.sdk.common.constant.TaErrorCode;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import defpackage.ikd;
import defpackage.ja1;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;

public abstract class CommonResponseListener<E> extends ResponseBaseListener {
    public CommonResponseListener() {
    }

    public abstract void g(int i, Object obj);

    public void h(int i, Object obj, String str) {
        g(i, obj);
    }

    public void i(int i, String str) {
        j(i, str);
    }

    public final void j(final int i, final String str) {
        final Object objB;
        try {
            Type genericSuperclass = getClass().getGenericSuperclass();
            if (!(genericSuperclass instanceof ParameterizedType)) {
                throw new RuntimeException("Missing type parameter.");
            }
            try {
                objB = GsonUtil.b(str, ((ParameterizedType) genericSuperclass).getActualTypeArguments()[0]);
            } catch (Exception e) {
                ikd.b().e("ssp", "GsonUtil parseResponse " + Log.getStackTraceString(e));
                objB = null;
            }
            Handler handler = this.a;
            if (handler != null) {
                handler.post(new Runnable() {
                    @Override
                    public void run() {
                        CommonResponseListener.this.h(i, objB, str);
                    }
                });
            } else {
                h(i, objB, str);
            }
        } catch (Throwable th) {
            ikd.b().e("ssp", "parseResponse " + Log.getStackTraceString(th));
            ja1.netLog("CommonResponseListener --> 解析网络请求数据异常 --> parseResponse --> catch " + Log.getStackTraceString(th));
            a(TaErrorCode.ERROR_RESPONSE_PARSING_FAILED);
        }
    }

    public CommonResponseListener(boolean z) {
        super(z);
    }
}
