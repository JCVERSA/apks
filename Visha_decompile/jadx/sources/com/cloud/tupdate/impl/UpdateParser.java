package com.cloud.tupdate.impl;

import android.util.Log;
import com.cloud.tupdate.bean.BaseResponse;
import com.cloud.tupdate.bean.UpdateEntity;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.hisavana.common.tracking.TrackingKey;
import defpackage.j1a;
import defpackage.o6;
import defpackage.vk;
import defpackage.xw4;
import defpackage.y45;

public final class UpdateParser implements xw4 {
    @Override
    public UpdateEntity a(String str) {
        if (str == null || j1a.o0(str)) {
            return null;
        }
        try {
            o6.j().d("update", y45.s("response  ->  ", str));
            if (j1a.X(str, "error_code", false, 2, null) || !j1a.X(str, TrackingKey.CODE, false, 2, null) || !j1a.X(str, "data", false, 2, null)) {
                vk.a.J(0, "0", "fail");
                return null;
            }
            BaseResponse baseResponse = (BaseResponse) new Gson().fromJson(str, new TypeToken<BaseResponse<UpdateEntity>>() {
            }.getType());
            vk.a.J(1, String.valueOf(baseResponse == null ? null : Integer.valueOf(baseResponse.getCode())), baseResponse == null ? null : baseResponse.getMessage());
            if (baseResponse == null) {
                return null;
            }
            return (UpdateEntity) baseResponse.getData();
        } catch (Exception e) {
            vk.a.J(0, "0", "exception fail");
            o6.j().a(Log.getStackTraceString(e));
            return null;
        }
    }
}
