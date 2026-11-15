package com.cloud.hisavana.sdk;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.Icon;
import android.os.Build;
import android.os.PersistableBundle;
import android.util.Log;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.cloud.hisavana.sdk.F0;
import com.cloud.hisavana.sdk.common.activity.MiniAppSchemeActivity;
import com.cloud.hisavana.sdk.common.bean.MiniAppInfo;
import com.cloud.sdk.commonutil.util.HSScopeHelper;
import com.cloud.sdk.commonutil.util.Preconditions;
import com.transsion.push.PushConstants;
import defpackage.e74;
import defpackage.ikd;
import defpackage.ul4;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Ref$ObjectRef;

public final class F0 {
    public static final F0 a = new F0();
    public static G0 b;
    public static e74 c;

    @Metadata(d1 = {"\u0000\u000e\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"", "result", "Lzfb;", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "(I)V"}, k = 3, mv = {1, 9, 0})
    public static final class a extends Lambda implements e74 {
        public static final a a = new a();

        public a() {
            super(1);
        }

        public final void a(int i) {
            F0.a.k();
            e74 e74Var = F0.c;
            if (e74Var != null) {
                e74Var.invoke(Integer.valueOf(i));
            }
            F0.c = null;
        }

        @Override
        public Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return zfb.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void g(String str, final ShortcutInfo.Builder builder, final ShortcutManager shortcutManager, final MiniAppInfo miniAppInfo, final e74 e74Var) {
        Bitmap bitmapDecodeFile;
        T tCreateWithResource;
        Icon iconCreateWithBitmap;
        y45.j(builder, "$builder");
        y45.j(e74Var, "$onAddResult");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        if (str != null) {
            try {
                bitmapDecodeFile = BitmapFactory.decodeFile(str);
            } catch (Exception unused) {
            }
        } else {
            bitmapDecodeFile = null;
        }
        if (bitmapDecodeFile == null || (iconCreateWithBitmap = Icon.createWithBitmap(bitmapDecodeFile)) == null) {
            tCreateWithResource = iconCreateWithBitmap;
            tCreateWithResource = Icon.createWithResource(a.j(), R.drawable.hs_ad_miniapp_default_icon);
        }
        tCreateWithResource = iconCreateWithBitmap;
        ref$ObjectRef.element = tCreateWithResource;
        Preconditions.d(new Preconditions.a() {
            @Override
            public final void onRun() {
                F0.i(ref$ObjectRef, builder, shortcutManager, miniAppInfo, e74Var);
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(Ref$ObjectRef ref$ObjectRef, ShortcutInfo.Builder builder, ShortcutManager shortcutManager, MiniAppInfo miniAppInfo, e74 e74Var) {
        y45.j(ref$ObjectRef, "$icon");
        y45.j(builder, "$builder");
        y45.j(e74Var, "$onAddResult");
        try {
            Icon icon = (Icon) ref$ObjectRef.element;
            if (icon != null) {
                builder.setIcon(icon);
            }
            ShortcutInfo shortcutInfoBuild = builder.build();
            y45.i(shortcutInfoBuild, "build(...)");
            Intent intentCreateShortcutResultIntent = shortcutManager.createShortcutResultIntent(shortcutInfoBuild);
            F0 f0 = a;
            PendingIntent broadcast = PendingIntent.getBroadcast(f0.j(), 99, intentCreateShortcutResultIntent, 67108864);
            String appId = miniAppInfo.getAppId();
            y45.i(appId, "getAppId(...)");
            f0.f(appId);
            shortcutManager.requestPinShortcut(shortcutInfoBuild, broadcast != null ? broadcast.getIntentSender() : null);
        } catch (Exception e) {
            ikd.b().e("MiniApp", "Failed to add to homescreen: " + Log.getStackTraceString(e));
            e74Var.invoke(-1);
        }
    }

    public final void f(String str) {
        k();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("action_add_item_result_receiver");
        b = new G0(str, a.a);
        try {
            if (Build.VERSION.SDK_INT >= 33) {
                j().registerReceiver(b, intentFilter, 2);
            } else {
                j().registerReceiver(b, intentFilter);
            }
        } catch (Throwable th) {
            ikd.b().e("MiniApp", "Failed to register broadcast receiver: " + Log.getStackTraceString(th));
        }
    }

    public final void h(final String str, final MiniAppInfo miniAppInfo, final e74 e74Var) {
        Object next;
        y45.j(e74Var, "onAddResult");
        if (j() == null || miniAppInfo == null) {
            e74Var.invoke(-1);
            return;
        }
        try {
            final ShortcutManager shortcutManager = (ShortcutManager) j().getSystemService(ShortcutManager.class);
            if (shortcutManager != null && shortcutManager.isRequestPinShortcutSupported()) {
                List<ShortcutInfo> pinnedShortcuts = shortcutManager.getPinnedShortcuts();
                y45.i(pinnedShortcuts, "getPinnedShortcuts(...)");
                Iterator<T> it = pinnedShortcuts.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                } while (!y45.e(((ShortcutInfo) next).getId(), miniAppInfo.getAppId()));
                if (((ShortcutInfo) next) != null) {
                    e74Var.invoke(2);
                    return;
                }
                c = e74Var;
                ShortcutInfo.Builder builder = new ShortcutInfo.Builder(j(), miniAppInfo.getAppId());
                Intent intent = new Intent(j(), (Class<?>) MiniAppSchemeActivity.class);
                intent.setAction(miniAppInfo.getAppId());
                intent.putExtra("deeplink", miniAppInfo.getDeepLinkUrl());
                ShortcutInfo.Builder shortLabel = builder.setIntent(intent).setShortLabel(miniAppInfo.getName());
                PersistableBundle persistableBundle = new PersistableBundle();
                persistableBundle.putString(PushConstants.PROVIDER_FIELD_APP_ID, miniAppInfo.getAppId());
                persistableBundle.putBoolean("extraAddHomeShowDialog", false);
                final ShortcutInfo.Builder extras = shortLabel.setExtras(persistableBundle);
                y45.i(extras, "setExtras(...)");
                HSScopeHelper.a.l(new Runnable() {
                    @Override
                    public final void run() {
                        F0.g(str, extras, shortcutManager, miniAppInfo, e74Var);
                    }
                });
                return;
            }
            e74Var.invoke(-1);
        } catch (Throwable th) {
            ikd.b().e("MiniApp", "Failed to create shortcut: " + Log.getStackTraceString(th));
            e74Var.invoke(-1);
        }
    }

    public final Context j() {
        return ul4.a().getApplicationContext();
    }

    public final void k() {
        G0 g0 = b;
        if (g0 != null) {
            try {
                a.j().unregisterReceiver(g0);
            } catch (Throwable th) {
                ikd.b().e("MiniApp", "Failed to unregister broadcast receiver: " + Log.getStackTraceString(th));
            }
        }
        b = null;
    }
}
