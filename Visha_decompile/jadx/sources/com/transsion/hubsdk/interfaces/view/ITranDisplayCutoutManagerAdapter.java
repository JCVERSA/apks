package com.transsion.hubsdk.interfaces.view;

import java.util.Map;

public interface ITranDisplayCutoutManagerAdapter {
    void clean();

    Map<String, Integer> getDisplayCutoutModeSettings();

    void putDisplayCutoutModeSettings(Map<String, Integer> map);
}
