package com.cloud.tmc.miniapp.ipc.helper;

import android.os.Bundle;
import android.os.RemoteException;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.miniapp.protocol.IIpcMiniProtocolMainChannel;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Lambda;

public final class OooO0o extends Lambda implements Function2<IIpcMiniProtocolMainChannel, String, Unit> {
    public final String OooO00o;
    public final String OooO0O0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public OooO0o(String str, String str2) {
        super(2);
        this.OooO00o = str;
        this.OooO0O0 = str2;
    }

    @Override
    public Object invoke(Object obj, Object obj2) throws RemoteException {
        IIpcMiniProtocolMainChannel iIpcMiniProtocolMainChannel = (IIpcMiniProtocolMainChannel) obj;
        if (iIpcMiniProtocolMainChannel != null) {
            String str = this.OooO00o;
            Bundle bundle = new Bundle();
            bundle.putString(MiniAppIpcConfig.IPC_RESULT_JSON_DATA, this.OooO0O0);
            Unit unit = Unit.f64096a;
            iIpcMiniProtocolMainChannel.onMiniAppDataSync(MiniAppIpcConfig.TYPE_IPC_DATA_QUERY_MINI_ALL_STORAGE, str, bundle);
        }
        return Unit.f64096a;
    }
}
