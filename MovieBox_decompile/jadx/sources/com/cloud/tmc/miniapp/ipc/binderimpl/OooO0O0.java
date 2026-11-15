package com.cloud.tmc.miniapp.ipc.binderimpl;

import android.os.Bundle;
import com.cloud.tmc.miniapp.IIpcMiniPSChannel;
import com.cloud.tmc.miniapp.ipc.helper.OooO;
import com.cloud.tmc.miniapp.ipc.helper.OooO0OO;

public final class OooO0O0 extends IIpcMiniPSChannel.Stub {
    @Override
    public boolean miniAppAbility(String str, String str2, Bundle bundle) {
        com.cloud.tmc.miniapp.ipc.helper.OooO00o.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }

    @Override
    public boolean miniAppDataSync(String str, String str2, Bundle bundle) {
        OooO0OO.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }

    @Override
    public boolean miniAppExtra(String str, String str2, Bundle bundle) {
        return true;
    }

    @Override
    public boolean miniAppPerformance(String str, String str2, Bundle bundle) {
        OooO.OooO00o.OooO00o(str, str2, bundle);
        return true;
    }
}
