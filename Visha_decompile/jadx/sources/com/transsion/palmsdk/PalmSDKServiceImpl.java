package com.transsion.palmsdk;

import android.content.Context;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.transsion.moduleservice.IPalmSDKService;

@Route(path = "/palmsdk/palmsdkservice")
public class PalmSDKServiceImpl implements IPalmSDKService {
    @Override
    public void init(Context context) {
    }
}
