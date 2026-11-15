package com.cloud.tmc.miniapp.defaultimpl;

import com.cloud.tmc.integration.proxy.IRefreshProxy;
import com.cloud.tmc.integration.ui.fragment.TmcFragment;
import com.cloud.tmc.miniapp.base.MiniAppBaseFragment;

public final class RefreshProxyImpl implements IRefreshProxy {
    @Override
    public void enableLoadMore(TmcFragment tmcFragment, boolean z10) {
        if (tmcFragment instanceof MiniAppBaseFragment) {
            ((MiniAppBaseFragment) tmcFragment).enableLoadMore(z10);
        }
    }

    @Override
    public void enableRefresh(TmcFragment tmcFragment, boolean z10) {
        if (tmcFragment instanceof MiniAppBaseFragment) {
            ((MiniAppBaseFragment) tmcFragment).enableRefresh(z10);
        }
    }

    @Override
    public boolean startPullDownRefresh(TmcFragment tmcFragment) {
        if (tmcFragment instanceof MiniAppBaseFragment) {
            return ((MiniAppBaseFragment) tmcFragment).startRefresh();
        }
        return false;
    }

    @Override
    public boolean stopPullDownRefresh(TmcFragment tmcFragment) {
        if (tmcFragment instanceof MiniAppBaseFragment) {
            return ((MiniAppBaseFragment) tmcFragment).stopRefresh();
        }
        return false;
    }

    @Override
    public boolean stopPullUpRefresh(TmcFragment tmcFragment) {
        if (tmcFragment instanceof MiniAppBaseFragment) {
            return ((MiniAppBaseFragment) tmcFragment).stopLoadMore();
        }
        return false;
    }
}
