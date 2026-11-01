package v0;

import android.content.Intent;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Icon;
import android.os.Build;
import java.util.ArrayList;
import java.util.Iterator;
import ru.zdevs.zarchiver.ZApp;
import ru.zdevs.zarchiver.ZArchiver;

public final class g {
    public static void a(ZApp zApp, ArrayList arrayList) {
        ShortcutManager shortcutManager;
        if (Build.VERSION.SDK_INT >= 25 && (shortcutManager = (ShortcutManager) zApp.getSystemService(ShortcutManager.class)) != null) {
            Resources resources = zApp.getResources();
            Resources.Theme themeNewTheme = resources.newTheme();
            themeNewTheme.applyStyle(t0.b.f2088i, true);
            int iA = z0.c.a(24);
            ArrayList arrayList2 = new ArrayList();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                c0.e eVar = (c0.e) it.next();
                if (!h.e(eVar.f410b)) {
                    Intent intent = new Intent(zApp, (Class<?>) ZArchiver.class);
                    intent.setAction("android.intent.action.VIEW");
                    intent.addCategory("ZA_SHORTCUT");
                    intent.putExtra("shrtct", eVar.f411c.r());
                    Bitmap bitmapE = q0.b.e(resources, themeNewTheme, z0.b.b(t0.b.d(), eVar.f409a), iA, iA, 0);
                    if (bitmapE.getHeight() != 1) {
                        arrayList2.add(new ShortcutInfo.Builder(zApp, eVar.f410b).setShortLabel(eVar.f410b).setIcon(Icon.createWithBitmap(bitmapE)).setIntent(intent).build());
                        if (arrayList2.size() >= 4) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
            }
            try {
                shortcutManager.removeAllDynamicShortcuts();
                shortcutManager.setDynamicShortcuts(arrayList2);
            } catch (IllegalStateException unused) {
            }
        }
    }
}
