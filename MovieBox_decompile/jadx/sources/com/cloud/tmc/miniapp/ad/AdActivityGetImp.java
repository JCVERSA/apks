package com.cloud.tmc.miniapp.ad;

import com.cloud.tmc.integration.proxy.IAdActivityGetProxy;

public final class AdActivityGetImp implements IAdActivityGetProxy {
    @Override
    public Class<?> getAdFormActivity() {
        return WebviewAdFormActivity.class;
    }

    @Override
    public Class<?> getAdLandingPageActivity() {
        return WebviewAdLandingPageActivity.class;
    }

    @Override
    public Class<?> getAdPersonalizationActivity() {
        return WebviewPersonalizationActivity.class;
    }
}
