package com.mgtv.ssp;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.util.k;
import com.mgtv.ssp.bean.SspJumpBean;
import com.mgtv.ssp.net.ContentSdkBaseImgoHttpParams;
import com.mgtv.task.m;

public class b {
    private static b a;
    private SspJumpBean.JumperData b;
    private String c;
    private String d;

    public static b a() {
        if (a == null) {
            synchronized (b.class) {
                try {
                    if (a == null) {
                        a = new b();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return a;
    }

    public void a(Context context, String str, String str2, final MgtvJumpDataCallback mgtvJumpDataCallback) {
        com.mgtv.ssp.bean.config.a aVarC = com.mgtv.ssp.auth.b.a().c();
        if (aVarC == null || com.mgtv.ssp.auth.b.a().b() != 0 || TextUtils.isEmpty(str)) {
            if (mgtvJumpDataCallback != null) {
                mgtvJumpDataCallback.onResult(false, "");
            }
        } else {
            this.c = str2;
            m mVar = new m(context);
            ContentSdkBaseImgoHttpParams contentSdkBaseImgoHttpParamsA = com.mgtv.ssp.net.a.a(aVarC);
            contentSdkBaseImgoHttpParamsA.put("vcode", str2);
            contentSdkBaseImgoHttpParamsA.put("mid", str);
            mVar.a(true).b(10000).a(com.hunantv.imgo.net.b.w(), contentSdkBaseImgoHttpParamsA, new ImgoHttpCallBack<SspJumpBean>() {
                @Override
                public void b(SspJumpBean sspJumpBean) {
                }

                @Override
                public void a(SspJumpBean sspJumpBean) {
                    if (sspJumpBean != null) {
                        b.this.a(sspJumpBean, mgtvJumpDataCallback);
                        return;
                    }
                    MgtvJumpDataCallback mgtvJumpDataCallback2 = mgtvJumpDataCallback;
                    if (mgtvJumpDataCallback2 != null) {
                        mgtvJumpDataCallback2.onResult(false, "is null");
                    }
                }

                @Override
                public void a(@Nullable SspJumpBean sspJumpBean, int i, int i2, @Nullable String str3, @Nullable Throwable th) {
                    super.a(sspJumpBean, i, i2, str3, th);
                    MgtvJumpDataCallback mgtvJumpDataCallback2 = mgtvJumpDataCallback;
                    if (mgtvJumpDataCallback2 != null) {
                        mgtvJumpDataCallback2.onResult(false, "ERR: " + i2 + " " + str3);
                    }
                }
            });
        }
    }

    public void a(SspJumpBean sspJumpBean, MgtvJumpDataCallback mgtvJumpDataCallback) {
        if (mgtvJumpDataCallback != null) {
            boolean z = sspJumpBean != null;
            try {
                SspJumpBean.JumperData jumperData = sspJumpBean.data;
                if (z & (jumperData != null)) {
                    this.b = jumperData;
                    if (TextUtils.isEmpty(jumperData.schemaUrl) && TextUtils.isEmpty(this.b.downloadUrl)) {
                        mgtvJumpDataCallback.onResult(false, "jump url is null");
                    } else {
                        this.d = this.c;
                        mgtvJumpDataCallback.onResult(true, sspJumpBean.data.btnTitle);
                    }
                } else {
                    mgtvJumpDataCallback.onResult(false, "data is null");
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public void a(Context context, String str, String str2) {
        if (this.b != null) {
            if (!TextUtils.isEmpty(str)) {
                if (!str.equals(this.d)) {
                    return;
                }
            } else if (!TextUtils.isEmpty(this.d)) {
                return;
            }
            String targetUrl = this.b.getTargetUrl();
            SspJumpBean.JumperData jumperData = this.b;
            k.a(context, targetUrl, jumperData.downloadUrl, jumperData.schemaHint, "v_play", this.d, str2);
        }
    }
}
