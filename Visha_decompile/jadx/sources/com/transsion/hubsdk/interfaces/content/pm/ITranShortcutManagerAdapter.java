package com.transsion.hubsdk.interfaces.content.pm;

import android.content.IntentSender;
import android.content.pm.ShortcutInfo;

public interface ITranShortcutManagerAdapter {
    boolean requestPinShortcut(String str, ShortcutInfo shortcutInfo, IntentSender intentSender, int i);
}
