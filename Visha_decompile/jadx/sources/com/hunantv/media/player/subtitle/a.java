package com.hunantv.media.player.subtitle;

import android.view.accessibility.CaptioningManager;
import java.util.Locale;

public class a {
    public static Locale a(CaptioningManager captioningManager) {
        if (captioningManager == null || !a()) {
            return null;
        }
        return captioningManager.getLocale();
    }

    public static boolean b(CaptioningManager captioningManager) {
        if (captioningManager == null || !a()) {
            return false;
        }
        return captioningManager.isEnabled();
    }

    public static boolean a() {
        return true;
    }
}
