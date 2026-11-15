package com.transsion.hubsdk.api.view;

import com.transsion.hubsdk.aosp.view.TranAospDisplayCutoutManager;
import com.transsion.hubsdk.common.api.TranAdapter;
import com.transsion.hubsdk.common.version.TranVersion;
import com.transsion.hubsdk.core.view.TranThubDisplayCutoutManager;
import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutManagerAdapter;
import java.util.Map;
import java.util.function.Supplier;

public class TranDisplayCutoutManager {
    private static final TranAdapter<ITranDisplayCutoutManagerAdapter> ADAPTER = new TranAdapter<>(new Supplier() {
        @Override
        public final Object get() {
            return new TranAospDisplayCutoutManager();
        }
    }, new Supplier() {
        @Override
        public final Object get() {
            return new TranThubDisplayCutoutManager();
        }
    });

    public void clean() {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).clean();
    }

    public Map<String, Integer> getDisplayCutoutModeSettings() {
        return ADAPTER.getImpl(TranVersion.Core.VERSION_37511).getDisplayCutoutModeSettings();
    }

    public void putDisplayCutoutModeSettings(Map<String, Integer> map) {
        ADAPTER.getImpl(TranVersion.Core.VERSION_37511).putDisplayCutoutModeSettings(map);
    }
}
