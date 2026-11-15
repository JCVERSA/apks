package com.transsion.playercommon.vishaapis.aistatistics;

import com.transsion.retrofit.reponse.BaseResponse;
import defpackage.gg0;
import defpackage.mc7;
import defpackage.wy9;
import defpackage.zu7;

public interface AIStatisicsApiService {
    @wy9
    @zu7(KeyConstant.AI_RECOMMEND_MARK)
    mc7<BaseResponse> markRecommend(@gg0 String str);
}
