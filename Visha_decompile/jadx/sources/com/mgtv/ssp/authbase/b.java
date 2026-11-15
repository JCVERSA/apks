package com.mgtv.ssp.authbase;

import android.content.Context;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import com.alibaba.android.arouter.utils.Consts;
import com.hunantv.imgo.net.ImgoHttpCallBack;
import com.hunantv.imgo.net.ImgoHttpParams;
import com.mgtv.ssp.bean.GetUserToken;
import com.mgtv.task.m;
import io.appmetrica.analytics.coreutils.internal.system.ConstantDeviceInfo;

public class b {

    public interface a {
        void onChanged(boolean z);
    }

    public static void b(GetUserToken getUserToken, a aVar, long j, ImgoHttpParams imgoHttpParams) {
        GetUserToken.c cVar;
        GetUserToken.a aVar2;
        if (aVar != null) {
            boolean z = getUserToken != null;
            try {
                GetUserToken.b bVar = getUserToken.data;
                if ((!(bVar != null) || !z) || (cVar = bVar.a) == null || (aVar2 = cVar.a) == null || TextUtils.isEmpty(aVar2.a)) {
                    return;
                }
                boolean zEquals = getUserToken.data.a.a.a.equals(com.hunantv.imgo.util.b.X());
                boolean z2 = true ^ zEquals;
                com.hunantv.imgo.util.b.a(getUserToken.data.b);
                com.hunantv.imgo.util.b.g(getUserToken.data.c);
                if (!zEquals) {
                    com.hunantv.imgo.util.b.q(getUserToken.data.a.a.a);
                }
                aVar.onChanged(z2);
            } catch (Exception e) {
                e.printStackTrace();
                System.out.println("init data error  " + e.getStackTrace());
            }
        }
    }

    public static void a(Context context, final a aVar) {
        m mVar = new m(context);
        final ImgoHttpParams imgoHttpParams = new ImgoHttpParams();
        imgoHttpParams.put("platform", ConstantDeviceInfo.APP_PLATFORM);
        imgoHttpParams.put("abroad", Integer.valueOf(com.hunantv.imgo.b.a.a()));
        imgoHttpParams.put("openid", com.hunantv.imgo.util.b.R());
        imgoHttpParams.put("rtype", com.hunantv.imgo.util.b.S());
        imgoHttpParams.put("token", com.hunantv.imgo.util.b.V());
        imgoHttpParams.put("seqId", com.hunantv.imgo.util.b.t() + Consts.DOT + System.currentTimeMillis());
        imgoHttpParams.put("invoker", "hunantvphone");
        final long jCurrentTimeMillis = System.currentTimeMillis();
        mVar.a(true).b(5000).a(com.hunantv.imgo.net.b.v(), imgoHttpParams, new ImgoHttpCallBack<GetUserToken>() {
            @Override
            public void b(GetUserToken getUserToken) {
            }

            @Override
            public void a(GetUserToken getUserToken) {
                if (getUserToken == null) {
                    System.out.println("init http vast format erro");
                } else {
                    b.b(getUserToken, aVar, jCurrentTimeMillis, imgoHttpParams);
                }
            }

            @Override
            public void a(@Nullable GetUserToken getUserToken, int i, int i2, @Nullable String str, @Nullable Throwable th) {
                super.a(getUserToken, i, i2, str, th);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    try {
                        aVar2.onChanged(true);
                    } catch (Exception unused) {
                        th.printStackTrace();
                        System.out.println("init data error  " + th.getStackTrace());
                    }
                }
            }
        });
    }
}
