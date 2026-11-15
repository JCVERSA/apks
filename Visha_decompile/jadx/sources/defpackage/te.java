package defpackage;

import android.app.Application;
import android.os.Handler;
import com.alibaba.android.arouter.launcher.ARouter;
import com.blankj.utilcode.util.LogUtils;
import com.blankj.utilcode.util.b;
import com.transsion.moduleservice.ICloudDriveService;
import com.transsion.playercommon.vishaapis.APIServiceConfig;
import com.transsion.utils.deviceinfo.a;

public abstract class te {
    public static Application a;
    public static Handler b;

    public static void a(Application application, Handler handler) {
        ge.h(false);
        a = application;
        b = handler;
        sg9.a(application);
        e(application);
        b();
    }

    public static void b() {
        if (ge.e()) {
            oa1.j();
        }
    }

    public static void c() {
        try {
            LogUtils.j("visha_AppInitiater", "Attempting to get CloudDriveService from ARouter");
            ICloudDriveService iCloudDriveService = (ICloudDriveService) ARouter.getInstance().navigation(ICloudDriveService.class);
            if (iCloudDriveService != null) {
                iCloudDriveService.initCloudDriveSdk(a);
                LogUtils.j("visha_AppInitiater", "KtClientSdk initialized successfully via CloudDriveService");
            } else {
                LogUtils.P("visha_AppInitiater", "CloudDriveService not found, skipping CloudDriveService initialization. Check if clouddrive module is included and ARouter annotation processing is correct.");
            }
        } catch (Exception e) {
            LogUtils.m("visha_AppInitiater", "Failed to initialize KtClientSdk via CloudDriveService: " + e.getMessage());
        }
    }

    public static void d() {
        if (ge.e()) {
            StringBuilder sb = new StringBuilder();
            sb.append("*************************************************\n");
            sb.append("package name:");
            sb.append(b.a());
            sb.append("\n");
            sb.append("version name:");
            sb.append(ydc.b());
            sb.append("\n");
            sb.append("version code:");
            sb.append(ydc.a());
            sb.append("\n");
            sb.append("product flavor:");
            sb.append(ge.a());
            sb.append("\n");
            sb.append("brand:");
            sb.append(a.k().f());
            sb.append("\n");
            sb.append("model:");
            sb.append(pp3.a());
            sb.append("\n");
            sb.append("os version:");
            sb.append(pp3.b());
            sb.append("\n");
            sb.append("is os pre installed package:");
            sb.append(pp3.b);
            sb.append("\n");
            sb.append("support lan player:");
            sb.append(pp3.w());
            sb.append("\n");
            sb.append("support visha player:");
            sb.append(pp3.j());
            sb.append("\n");
            sb.append("support subtitle:");
            sb.append(pp3.t());
            sb.append("\n");
            sb.append("support all file manage permission:");
            sb.append(pp3.j);
            sb.append("\n");
            sb.append("support download:");
            sb.append(pp3.k);
            sb.append("\n");
            sb.append("support privacy feature:");
            sb.append(pp3.p);
            sb.append("\n");
            sb.append("show privacy room:");
            sb.append(zdc.l);
            sb.append("\n");
            sb.append("support system picture in picture:");
            sb.append(pp3.u());
            sb.append("\n");
            sb.append("support pip:");
            sb.append(pp3.u());
            sb.append("\n");
            sb.append("is Waterfall Screen:");
            sb.append(pp3.x(a));
            sb.append("\n");
            sb.append("is support ott:");
            sb.append(true);
            sb.append("\n");
            sb.append("is foldable screen:");
            sb.append(pp3.m());
            sb.append("\n");
            sb.append("support cloud:");
            sb.append(zz0.d());
            sb.append("\n");
            sb.append("*************************************************");
            LogUtils.j("visha_AppInitiater", sb);
        }
    }

    public static void e(Application application) {
        if (ge.e()) {
            APIServiceConfig.bTestMode = w6c.d(application, "environment_mode", 0) == 0;
            ah8.a = w6c.d(application, "environment_mode", 0) == 0;
            d();
        }
    }
}
