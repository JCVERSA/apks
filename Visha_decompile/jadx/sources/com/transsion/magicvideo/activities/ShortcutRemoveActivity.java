package com.transsion.magicvideo.activities;

import android.content.Context;
import android.content.pm.ShortcutManager;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import defpackage.t81;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class ShortcutRemoveActivity extends AppCompatActivity {
    public static void t(Context context) {
        List<ShortcutInfoCompat> dynamicShortcuts = ShortcutManagerCompat.getDynamicShortcuts(context);
        if (dynamicShortcuts.isEmpty()) {
            return;
        }
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService("shortcut");
        Iterator<ShortcutInfoCompat> it = dynamicShortcuts.iterator();
        while (it.hasNext()) {
            if ("short_cut_id".equals(it.next().getId())) {
                List<String> listSingletonList = Collections.singletonList("short_cut_id");
                try {
                    shortcutManager.disableShortcuts(listSingletonList);
                    shortcutManager.removeDynamicShortcuts(listSingletonList);
                    return;
                } catch (Exception unused) {
                    return;
                }
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        t81.a(this);
        t(this);
        getSharedPreferences(getPackageName(), 0).edit().putInt("resume_count", -1).apply();
        finish();
    }
}
