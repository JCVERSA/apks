package com.cloud.h5update.impl;

import com.cloud.h5update.bean.BaseResponse;
import com.cloud.h5update.bean.UpdateEntity;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import kotlin.text.StringsKt;
import v6.d;

public final class UpdateParser implements d {
    @Override
    public UpdateEntity a(String str) {
        BaseResponse baseResponse;
        if (str == null || StringsKt.q0(str)) {
            return null;
        }
        try {
            if (StringsKt.c0(str, "error_code", false, 2, null) || !StringsKt.c0(str, "code", false, 2, null) || !StringsKt.c0(str, "data", false, 2, null) || (baseResponse = (BaseResponse) new Gson().fromJson(str, new TypeToken<BaseResponse<UpdateEntity>>() {
            }.getType())) == null) {
                return null;
            }
            return (UpdateEntity) baseResponse.getData();
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
