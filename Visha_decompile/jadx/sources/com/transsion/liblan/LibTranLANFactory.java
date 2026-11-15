package com.transsion.liblan;

import android.content.Context;
import com.transsion.liblan.interfaces.ITranLibLAN;
import com.transsion.liblan.interfaces.ITranLibLANFactory;
import java.util.List;

public class LibTranLANFactory implements ITranLibLANFactory {
    static {
        FactoryManager.registerFactory(ITranLibLANFactory.FACTORY_ID, new LibTranLANFactory());
    }

    @Override
    public ITranLibLAN getLibLanFromContext(Context context) {
        return new TranLibLAN(context, null);
    }

    @Override
    public ITranLibLAN getLibLanFromOptions(Context context, List<String> list) {
        return new TranLibLAN(context, list);
    }
}
