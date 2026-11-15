package com.transsion.liblan.stubs;

import android.content.Context;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranLibLANFactory;
import java.util.List;

public class StubTranLibLANFactory implements ITranLibLANFactory {
    @Override
    public ITranLibLAN getLibLanFromContext(Context context) {
        return new StubTranLibLAN(context);
    }

    @Override
    public ITranLibLAN getLibLanFromOptions(Context context, List<String> list) {
        return new StubTranLibLAN(context, list);
    }
}
