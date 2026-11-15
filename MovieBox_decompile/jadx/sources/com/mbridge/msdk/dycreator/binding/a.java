package com.mbridge.msdk.dycreator.binding;

import android.text.TextUtils;
import android.view.View;
import com.mbridge.msdk.dycreator.baseview.MBCountDownView;
import com.mbridge.msdk.dycreator.baseview.MBLinearLayout;
import com.mbridge.msdk.dycreator.baseview.MBRelativeLayout;
import com.mbridge.msdk.dycreator.baseview.inter.InterBase;
import com.mbridge.msdk.dycreator.binding.base.BaseStrategy;
import com.mbridge.msdk.dycreator.bridge.MBSplashData;
import com.mbridge.msdk.dycreator.utils.d;

public class a implements View.OnClickListener {

    private com.mbridge.msdk.dycreator.viewdata.base.a f33899a;

    public a(com.mbridge.msdk.dycreator.viewdata.base.a aVar) {
        this.f33899a = aVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public void onClick(View view) {
        BaseStrategy baseStrategyA;
        com.mbridge.msdk.dycreator.viewdata.base.a aVar;
        if (view == 0 || !(view instanceof InterBase)) {
            return;
        }
        if (!(view instanceof MBCountDownView) || (aVar = this.f33899a) == null || aVar.getEffectData() == null || this.f33899a.getEffectData().isCanSkip()) {
            com.mbridge.msdk.dycreator.viewdata.base.a aVar2 = this.f33899a;
            if (aVar2 != null && (view instanceof MBRelativeLayout) && d.a(view, aVar2)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar3 = this.f33899a;
                if (aVar3 instanceof MBSplashData) {
                    MBRelativeLayout mBRelativeLayout = (MBRelativeLayout) view;
                    ((MBSplashData) aVar3).setxInScreen(mBRelativeLayout.getxInScreen());
                    ((MBSplashData) this.f33899a).setyInScreen(mBRelativeLayout.getyInScreen());
                    ((MBSplashData) this.f33899a).setClickType(1);
                }
            }
            com.mbridge.msdk.dycreator.viewdata.base.a aVar4 = this.f33899a;
            if (aVar4 != null && (view instanceof MBLinearLayout) && d.a(view, aVar4)) {
                com.mbridge.msdk.dycreator.viewdata.base.a aVar5 = this.f33899a;
                if (aVar5 instanceof MBSplashData) {
                    MBLinearLayout mBLinearLayout = (MBLinearLayout) view;
                    ((MBSplashData) aVar5).setxInScreen(mBLinearLayout.getxInScreen());
                    ((MBSplashData) this.f33899a).setyInScreen(mBLinearLayout.getyInScreen());
                    ((MBSplashData) this.f33899a).setClickType(0);
                }
            }
            String strategyDes = ((InterBase) view).getStrategyDes();
            if (TextUtils.isEmpty(strategyDes) || (baseStrategyA = c.a().a(strategyDes)) == null) {
                return;
            }
            baseStrategyA.bindClickData(view, this.f33899a);
        }
    }
}
