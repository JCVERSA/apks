package com.transsion.liblan.stubs;

import android.content.Context;
import com.transsion.liblan.interfaces.ITranLibLAN;
import java.util.List;

public class StubTranLibLAN extends StubTranLANObject<ITranLibLAN.EventTran> implements ITranLibLAN {
    private final Context mContext;

    public StubTranLibLAN(Context context, List<String> list) {
        this.mContext = context;
    }

    @Override
    public Context getAppContext() {
        return this.mContext;
    }

    public StubTranLibLAN(Context context) {
        this(context, null);
    }
}
