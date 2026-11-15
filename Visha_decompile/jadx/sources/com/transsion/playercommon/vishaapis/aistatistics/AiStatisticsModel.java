package com.transsion.playercommon.vishaapis.aistatistics;

import androidx.p004lifecycle.ViewModel;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.k29;
import defpackage.pd7;
import defpackage.rc2;
import defpackage.vb;
import java.util.Map;

public class AiStatisticsModel extends ViewModel {
    private static final String TAG = "visha_" + AiStatisticsModel.class.getSimpleName();

    public static void markAlgorithmRecommend(String str, Map<String, Object> map) {
        ((AIStatisicsApiService) AIStatisticsApiManager.getInstance().getApi(AIStatisicsApiService.class)).markRecommend(AiStatisticsProvider.AlgorithmMark(str, map)).d0(k29.c()).M(vb.a()).subscribe(new pd7() {
            @Override
            public void onComplete() {
            }

            @Override
            public void onError(Throwable th) {
                LogUtils.m(AiStatisticsModel.TAG, "---" + th.getMessage());
            }

            @Override
            public void onSubscribe(rc2 rc2Var) {
            }

            @Override
            public void onNext(BaseResponse baseResponse) {
                LogUtils.j(AiStatisticsModel.TAG, baseResponse.getMessage() + "--" + baseResponse.getCode());
            }
        });
    }
}
