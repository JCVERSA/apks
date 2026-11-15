package com.transsion.audio.shortcut;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.util.Log;
import androidx.core.content.pm.ShortcutInfoCompat;
import androidx.core.content.pm.ShortcutManagerCompat;
import androidx.core.graphics.drawable.IconCompat;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.hisavana.common.bean.TAdErrorCode;
import com.transsion.playercommon.R;
import defpackage.el0;
import defpackage.maa;
import defpackage.mc2;
import defpackage.pp3;
import defpackage.sy5;
import defpackage.y45;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlinx.coroutines.d;
import kotlinx.coroutines.j;

public abstract class AudioShortCutHelper {
    public static boolean a;

    public static final void a(Context context, boolean z) {
        y45.j(context, "context");
        Intent intent = new Intent("com.transsion.magicmovie.ACION_START_AUDIO");
        intent.setPackage(context.getPackageName());
        intent.putExtra("requestCode", TAdErrorCode.CODE_REQUEST_OBJECT_IS_DESTROYED);
        ShortcutInfoCompat shortcutInfoCompatBuild = new ShortcutInfoCompat.Builder(context.getApplicationContext(), "visha_audio_shortcut").setShortLabel(context.getResources().getString(pp3.c ? R.string.visha_music_pre : R.string.visha_music)).setIcon(IconCompat.createWithResource(context, com.transsion.audio.R.drawable.ic_logo_audio_tab_music_shortcuts)).setIntent(intent).setAlwaysBadged().build();
        y45.i(shortcutInfoCompatBuild, "build(...)");
        try {
            if (ShortcutManagerCompat.isRequestPinShortcutSupported(context.getApplicationContext())) {
                boolean zRequestPinShortcut = ShortcutManagerCompat.requestPinShortcut(context.getApplicationContext(), shortcutInfoCompatBuild, PendingIntent.getBroadcast(context, 0, new Intent(context, (Class<?>) AudioShortcutReceiver.class), 201326592).getIntentSender());
                Log.d("AudioShortCutHelper", "create shortCut result " + zRequestPinShortcut);
                sy5.a aVar = sy5.a;
                aVar.f(z);
                if (zRequestPinShortcut) {
                    return;
                }
                aVar.e(false);
            }
        } catch (Exception e) {
            Log.d("AudioShortCutHelper", "Exception:" + e.getMessage());
        }
    }

    public static final boolean b() {
        return a;
    }

    public static final boolean c(Context context) {
        y45.j(context, "context");
        return Settings.System.getInt(context.getContentResolver(), "child_mode_open", 0) == 0 || !y45.e("1", maa.d("sys.child_mode_open"));
    }

    public static final boolean d(Context context, String str) {
        y45.j(context, "context");
        y45.j(str, TtmlNode.ATTR_ID);
        List<ShortcutInfoCompat> shortcuts = ShortcutManagerCompat.getShortcuts(context, 4);
        y45.i(shortcuts, "getShortcuts(...)");
        List<ShortcutInfoCompat> list = shortcuts;
        if ((list instanceof Collection) && list.isEmpty()) {
            return false;
        }
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            if (y45.e(str, ((ShortcutInfoCompat) it.next()).getId())) {
                return true;
            }
        }
        return false;
    }

    public static final boolean e(Context context) {
        y45.j(context, "context");
        return ShortcutManagerCompat.isRequestPinShortcutSupported(context);
    }

    public static final void f(boolean z) {
        a = z;
    }

    public static final j g(Activity activity, boolean z) {
        y45.j(activity, "activity");
        return el0.d(d.a(mc2.c()), null, null, new AudioShortCutHelper$trySendAudioShortcut$1(z, activity, null), 3, null);
    }
}
