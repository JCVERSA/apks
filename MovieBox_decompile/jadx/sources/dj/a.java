package dj;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.util.Log;
import com.cloud.tmc.miniapp.ByteAppManager;
import com.transsion.baselib.report.k;
import kotlin.jvm.internal.Intrinsics;

public final class a {

    public static final a f59043a = new a();

    private static boolean f59044b;

    public static final class C0710a implements ByteAppManager.MiniAppLifecycleListener {
        C0710a() {
        }

        @Override
        public void onCreate() {
        }

        @Override
        public void onDestroy() {
        }

        @Override
        public void onPause() {
        }

        @Override
        public void onResume() {
        }

        @Override
        public void onStart() {
            k.f42210a.h();
        }

        @Override
        public void onStop() {
            Log.e("yy", "onStop  activity:");
            k.f42210a.u();
        }
    }

    private a() {
    }

    public final void a(Application app) {
        Intrinsics.h(app, "app");
        ByteAppManager.init(app);
        ByteAppManager.INSTANCE.registerMiniAppLifecycleListener(new C0710a());
    }

    public final void b(Context context, String miniappDeeplink) {
        Intrinsics.h(context, "context");
        Intrinsics.h(miniappDeeplink, "miniappDeeplink");
        ByteAppManager.launchMiniAppDeeplink(context, miniappDeeplink);
    }

    public final void c(Activity activity, String appId, String sceneId) {
        Intrinsics.h(activity, "activity");
        Intrinsics.h(appId, "appId");
        Intrinsics.h(sceneId, "sceneId");
        ByteAppManager.launchMiniAppForId(activity, appId, sceneId);
    }

    public final void d(Context context) {
        Intrinsics.h(context, "context");
        if (f59044b) {
            return;
        }
        f59044b = true;
        ByteAppManager.warmupMiniapp(context);
    }
}
