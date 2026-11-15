package com.transsion.tools;

import android.content.Context;
import android.os.Bundle;
import com.alibaba.android.arouter.facade.annotation.Route;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.moduleservice.IVishaSettingService;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.arouter.VishaRouterTable;
import com.transsion.playercommon.fragments.BaseFragment;
import com.transsion.tools.fragments.SettingFragment;

@Route(path = VishaRouterTable.PATH_SERVICE_TOOLS_SEVICE)
public class VishaSettingServiceImpl implements IVishaSettingService {
    @Override
    public BaseFragment getSettingFragment(BaseActivity baseActivity, Bundle bundle) {
        return SettingFragment.newInstance(bundle).setBaseActivity(baseActivity);
    }

    @Override
    public void init(Context context) {
        LogUtils.j("Router", "VishaSettingServiceImpl init");
    }
}
