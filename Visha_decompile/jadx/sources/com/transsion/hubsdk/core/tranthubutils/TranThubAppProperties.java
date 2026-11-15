package com.transsion.hubsdk.core.tranthubutils;

import com.transsion.hubsdk.interfaces.tranthubutils.ITranAppPropertiesAdapter;
import com.transsion.hubsdk.tranthubutils.TranAppProperties;

public class TranThubAppProperties implements ITranAppPropertiesAdapter {
    @Override
    public String get(String str) {
        return TranAppProperties.get(str);
    }

    @Override
    public boolean getBoolean(String str, boolean z) {
        return TranAppProperties.getBoolean(str, z);
    }

    @Override
    public void initialize(String str) {
        TranAppProperties.initialize(str);
    }
}
