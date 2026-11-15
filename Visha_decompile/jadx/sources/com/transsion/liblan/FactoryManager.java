package com.transsion.liblan;

import android.util.Log;
import com.transsion.liblan.interfaces.ITranComponentFactory;
import com.transsion.liblan.interfaces.ITranLibLANFactory;
import com.transsion.liblan.interfaces.ITranMediaFactory;
import java.util.HashMap;
import java.util.Map;

public class FactoryManager {
    private static Map<String, ITranComponentFactory> factories = new HashMap();

    public static ITranComponentFactory getFactory(String str) {
        ITranComponentFactory iTranComponentFactory = factories.get(str);
        if (iTranComponentFactory != null) {
            return iTranComponentFactory;
        }
        Log.e("FactoryManager", "Factory doesn't exist. Falling back to hard coded one");
        String str2 = ITranMediaFactory.FACTORY_ID;
        if (str.equals(str2)) {
            registerFactory(str2, new TranMediaFactory());
        }
        String str3 = ITranLibLANFactory.FACTORY_ID;
        if (str.equals(str3)) {
            registerFactory(str3, new LibTranLANFactory());
        }
        return factories.get(str);
    }

    public static void registerFactory(String str, ITranComponentFactory iTranComponentFactory) {
        factories.put(str, iTranComponentFactory);
    }
}
