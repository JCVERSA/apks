package com.transsion.hubsdk.core.view;

import com.transsion.hubsdk.interfaces.view.ITranDisplayCutoutManagerAdapter;
import com.transsion.hubsdk.view.TranDisplayCutoutManager;
import java.util.Map;

public class TranThubDisplayCutoutManager implements ITranDisplayCutoutManagerAdapter {
    private final TranDisplayCutoutManager mManager = new TranDisplayCutoutManager();

    @Override
    public void clean() {
        this.mManager.clean();
    }

    @Override
    public Map<String, Integer> getDisplayCutoutModeSettings() {
        return this.mManager.getDisplayCutoutModeSettings();
    }

    @Override
    public void putDisplayCutoutModeSettings(Map<String, Integer> map) {
        this.mManager.putDisplayCutoutModeSettings(map);
    }
}
