package com.cloud.config;

import android.util.Log;
import com.cloud.config.bean.CloudConfigResponse;
import com.cloud.config.bean.ConditionInfo;
import com.cloud.config.bean.ConditionParam;
import com.cloud.config.bean.ShuntInfo;
import com.cloud.config.utils.ConstantsKt;
import com.cloud.config.utils.ExecutorUtils;
import com.cloud.config.utils.XLogUtil;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.tencent.mmkv.MMKV;
import java.io.IOException;
import java.util.concurrent.ExecutorService;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.Response;
import okhttp3.ResponseBody;

public final class AbsConfigStore$RequestRunnableConfig$run$1 implements Callback {

    final AbsConfigStore.RequestRunnableConfig f20593a;

    AbsConfigStore$RequestRunnableConfig$run$1(AbsConfigStore.RequestRunnableConfig requestRunnableConfig) {
        this.f20593a = requestRunnableConfig;
    }

    public static final void c(AbsConfigStore.RequestRunnableConfig this$0) {
        Intrinsics.h(this$0, "this$0");
        s configResultListener = this$0.getConfigResultListener();
        if (configResultListener == null) {
            return;
        }
        configResultListener.onLoadDataFailure(1004, ConstantsKt.ERROR_1004_MESSAGE);
    }

    public static final void d(AbsConfigStore.RequestRunnableConfig this$0) {
        Intrinsics.h(this$0, "this$0");
        s configResultListener = this$0.getConfigResultListener();
        if (configResultListener == null) {
            return;
        }
        configResultListener.onLoadDataFailure(1003, ConstantsKt.ERROR_1003_MESSAGE);
    }

    @Override
    public void onFailure(Call call, IOException e10) {
        Intrinsics.h(call, "call");
        Intrinsics.h(e10, "e");
        XLogUtil log = XLogUtil.INSTANCE.getLog();
        String stackTraceString = Log.getStackTraceString(e10);
        Intrinsics.g(stackTraceString, "getStackTraceString(e)");
        log.e(XLogUtil.TAG, stackTraceString);
        ExecutorService executorServiceMain = ExecutorUtils.main();
        final AbsConfigStore.RequestRunnableConfig requestRunnableConfig = this.f20593a;
        executorServiceMain.execute(new Runnable() {
            @Override
            public final void run() {
                AbsConfigStore$RequestRunnableConfig$run$1.c(requestRunnableConfig);
            }
        });
    }

    @Override
    public void onResponse(Call call, Response response) {
        ConditionInfo conditionInfo;
        String matchCacheUrl;
        Intrinsics.h(call, "call");
        Intrinsics.h(response, "response");
        try {
            if (response.body() == null) {
                return;
            }
            AbsConfigStore.RequestRunnableConfig requestRunnableConfig = this.f20593a;
            ResponseBody responseBodyBody = response.body();
            Intrinsics.e(responseBodyBody);
            String strString = responseBodyBody.string();
            MMKV mmkvE = requestRunnableConfig.getStore().e();
            String str = requestRunnableConfig.packageName;
            mmkvE.putString(str == null ? null : ConstantsKt.toStoreConfigName(str), strString);
            MMKV mmkvE2 = requestRunnableConfig.getStore().e();
            String str2 = requestRunnableConfig.packageName;
            mmkvE2.putString(str2 == null ? null : ConstantsKt.toStoreMd5Name(str2), requestRunnableConfig.getContentMd5());
            XLogUtil.INSTANCE.getLog().i(XLogUtil.TAG, Intrinsics.q("response --> ", strString));
            CloudConfigResponse cloudConfigResponse = (CloudConfigResponse) new Gson().fromJson(strString, new TypeToken<CloudConfigResponse>() {
            }.getType());
            if (cloudConfigResponse != null && (conditionInfo = cloudConfigResponse.getConditionInfo()) != null && (matchCacheUrl = conditionInfo.getMatchCacheUrl()) != null) {
                AbsConfigStore store = requestRunnableConfig.getStore();
                ConditionParam conditionParam = cloudConfigResponse.getConditionInfo().get_conditionParam();
                ShuntInfo shuntInfo = conditionParam != null ? conditionParam.getShuntInfo() : null;
                String str3 = requestRunnableConfig.packageName;
                AbsConfigStore store2 = requestRunnableConfig.getStore();
                requestRunnableConfig.getConfigListener();
                store.h(matchCacheUrl, shuntInfo, str3, store2, null, requestRunnableConfig.getConfigResultListener());
            }
        } catch (Throwable th2) {
            XLogUtil log = XLogUtil.INSTANCE.getLog();
            String stackTraceString = Log.getStackTraceString(th2);
            Intrinsics.g(stackTraceString, "getStackTraceString(e)");
            log.e(XLogUtil.TAG, stackTraceString);
            ExecutorService executorServiceMain = ExecutorUtils.main();
            final AbsConfigStore.RequestRunnableConfig requestRunnableConfig2 = this.f20593a;
            executorServiceMain.execute(new Runnable() {
                @Override
                public final void run() {
                    AbsConfigStore$RequestRunnableConfig$run$1.d(requestRunnableConfig2);
                }
            });
        }
    }
}
