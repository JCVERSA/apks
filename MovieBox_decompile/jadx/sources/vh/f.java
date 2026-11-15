package vh;

import androidx.room.RoomDatabase;
import com.cloud.tmc.component_api_ps.ipc.constants.MiniAppIpcConfig;
import com.cloud.tmc.integration.event.EventConstants;
import com.transsion.ad.db.pslink.AppInstalledBean;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

public final class f implements vh.a {

    private final RoomDatabase f73611a;

    private final androidx.room.g f73612b = new a();

    private final androidx.room.e f73613c = new b();

    private final androidx.room.e f73614d = new c();

    class a extends androidx.room.g {
        a() {
        }

        @Override
        protected String b() {
            return "INSERT OR REPLACE INTO `app_installed` (`packageName`,`source`,`appName`,`versionName`,`versionCode`,`horizontalImageUrl`,`eCPM`,`installTime`,`lastOpenTime`) VALUES (?,?,?,?,?,?,?,?,?)";
        }

        @Override
        public void a(y3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, appInstalledBean.getPackageName());
            }
            if (appInstalledBean.getSource() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, appInstalledBean.getSource());
            }
            if (appInstalledBean.getAppName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, appInstalledBean.getAppName());
            }
            if (appInstalledBean.getVersionName() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, appInstalledBean.getVersionName());
            }
            if (appInstalledBean.getVersionCode() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, appInstalledBean.getVersionCode());
            }
            if (appInstalledBean.getHorizontalImageUrl() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, appInstalledBean.getHorizontalImageUrl());
            }
            if (appInstalledBean.getECPM() == null) {
                eVar.g(7);
            } else {
                eVar.a(7, appInstalledBean.getECPM().doubleValue());
            }
            if (appInstalledBean.getInstallTime() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, appInstalledBean.getInstallTime().longValue());
            }
            if (appInstalledBean.getLastOpenTime() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, appInstalledBean.getLastOpenTime().longValue());
            }
        }
    }

    class b extends androidx.room.e {
        b() {
        }

        @Override
        protected String b() {
            return "DELETE FROM `app_installed` WHERE `packageName` = ?";
        }

        @Override
        public void a(y3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, appInstalledBean.getPackageName());
            }
        }
    }

    class c extends androidx.room.e {
        c() {
        }

        @Override
        protected String b() {
            return "UPDATE OR ABORT `app_installed` SET `packageName` = ?,`source` = ?,`appName` = ?,`versionName` = ?,`versionCode` = ?,`horizontalImageUrl` = ?,`eCPM` = ?,`installTime` = ?,`lastOpenTime` = ? WHERE `packageName` = ?";
        }

        @Override
        public void a(y3.e eVar, AppInstalledBean appInstalledBean) {
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(1);
            } else {
                eVar.i(1, appInstalledBean.getPackageName());
            }
            if (appInstalledBean.getSource() == null) {
                eVar.g(2);
            } else {
                eVar.i(2, appInstalledBean.getSource());
            }
            if (appInstalledBean.getAppName() == null) {
                eVar.g(3);
            } else {
                eVar.i(3, appInstalledBean.getAppName());
            }
            if (appInstalledBean.getVersionName() == null) {
                eVar.g(4);
            } else {
                eVar.i(4, appInstalledBean.getVersionName());
            }
            if (appInstalledBean.getVersionCode() == null) {
                eVar.g(5);
            } else {
                eVar.i(5, appInstalledBean.getVersionCode());
            }
            if (appInstalledBean.getHorizontalImageUrl() == null) {
                eVar.g(6);
            } else {
                eVar.i(6, appInstalledBean.getHorizontalImageUrl());
            }
            if (appInstalledBean.getECPM() == null) {
                eVar.g(7);
            } else {
                eVar.a(7, appInstalledBean.getECPM().doubleValue());
            }
            if (appInstalledBean.getInstallTime() == null) {
                eVar.g(8);
            } else {
                eVar.c(8, appInstalledBean.getInstallTime().longValue());
            }
            if (appInstalledBean.getLastOpenTime() == null) {
                eVar.g(9);
            } else {
                eVar.c(9, appInstalledBean.getLastOpenTime().longValue());
            }
            if (appInstalledBean.getPackageName() == null) {
                eVar.g(10);
            } else {
                eVar.i(10, appInstalledBean.getPackageName());
            }
        }
    }

    public f(RoomDatabase roomDatabase) {
        this.f73611a = roomDatabase;
    }

    public static List i() {
        return Collections.emptyList();
    }

    public static List j(long j10, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("\n        SELECT * FROM app_installed\n        WHERE lastOpenTime IS NOT NULL\n        AND lastOpenTime >= ?\n    ");
        try {
            eVarF0.c(1, j10);
            int iC = androidx.room.util.i.c(eVarF0, "packageName");
            int iC2 = androidx.room.util.i.c(eVarF0, EventConstants.KEY_SOURCE);
            int iC3 = androidx.room.util.i.c(eVarF0, MiniAppIpcConfig.IPC_ADDHOME_APP_NAME);
            int iC4 = androidx.room.util.i.c(eVarF0, "versionName");
            int iC5 = androidx.room.util.i.c(eVarF0, "versionCode");
            int iC6 = androidx.room.util.i.c(eVarF0, "horizontalImageUrl");
            int iC7 = androidx.room.util.i.c(eVarF0, "eCPM");
            int iC8 = androidx.room.util.i.c(eVarF0, "installTime");
            int iC9 = androidx.room.util.i.c(eVarF0, "lastOpenTime");
            ArrayList arrayList = new ArrayList();
            while (eVarF0.C0()) {
                arrayList.add(new AppInstalledBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Double.valueOf(eVarF0.getDouble(iC7)), eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9))));
            }
            return arrayList;
        } finally {
            eVarF0.close();
        }
    }

    public static AppInstalledBean k(String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("SELECT * FROM app_installed WHERE packageName = ? LIMIT 1");
        try {
            if (str == null) {
                eVarF0.g(1);
            } else {
                eVarF0.i(1, str);
            }
            int iC = androidx.room.util.i.c(eVarF0, "packageName");
            int iC2 = androidx.room.util.i.c(eVarF0, EventConstants.KEY_SOURCE);
            int iC3 = androidx.room.util.i.c(eVarF0, MiniAppIpcConfig.IPC_ADDHOME_APP_NAME);
            int iC4 = androidx.room.util.i.c(eVarF0, "versionName");
            int iC5 = androidx.room.util.i.c(eVarF0, "versionCode");
            int iC6 = androidx.room.util.i.c(eVarF0, "horizontalImageUrl");
            int iC7 = androidx.room.util.i.c(eVarF0, "eCPM");
            int iC8 = androidx.room.util.i.c(eVarF0, "installTime");
            int iC9 = androidx.room.util.i.c(eVarF0, "lastOpenTime");
            AppInstalledBean appInstalledBean = null;
            if (eVarF0.C0()) {
                appInstalledBean = new AppInstalledBean(eVarF0.isNull(iC) ? null : eVarF0.q0(iC), eVarF0.isNull(iC2) ? null : eVarF0.q0(iC2), eVarF0.isNull(iC3) ? null : eVarF0.q0(iC3), eVarF0.isNull(iC4) ? null : eVarF0.q0(iC4), eVarF0.isNull(iC5) ? null : eVarF0.q0(iC5), eVarF0.isNull(iC6) ? null : eVarF0.q0(iC6), eVarF0.isNull(iC7) ? null : Double.valueOf(eVarF0.getDouble(iC7)), eVarF0.isNull(iC8) ? null : Long.valueOf(eVarF0.getLong(iC8)), eVarF0.isNull(iC9) ? null : Long.valueOf(eVarF0.getLong(iC9)));
            }
            eVarF0.close();
            return appInstalledBean;
        } catch (Throwable th2) {
            eVarF0.close();
            throw th2;
        }
    }

    public Long l(AppInstalledBean appInstalledBean, y3.b bVar) {
        return Long.valueOf(this.f73612b.e(bVar, appInstalledBean));
    }

    public static Unit m(long j10, String str, y3.b bVar) {
        y3.e eVarF0 = bVar.F0("\n        UPDATE app_installed \n        SET lastOpenTime = ? \n        WHERE packageName = ?\n    ");
        try {
            eVarF0.c(1, j10);
            if (str == null) {
                eVarF0.g(2);
            } else {
                eVarF0.i(2, str);
            }
            eVarF0.C0();
            return Unit.f64096a;
        } finally {
            eVarF0.close();
        }
    }

    @Override
    public Object a(final AppInstalledBean appInstalledBean, Continuation continuation) {
        appInstalledBean.getClass();
        return androidx.room.util.b.f(this.f73611a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return this.f73605a.l(appInstalledBean, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object b(final String str, Continuation continuation) {
        return androidx.room.util.b.f(this.f73611a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.k(str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object c(final String str, final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73611a, false, true, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.m(j10, str, (y3.b) obj);
            }
        }, continuation);
    }

    @Override
    public Object d(final long j10, Continuation continuation) {
        return androidx.room.util.b.f(this.f73611a, true, false, new Function1() {
            @Override
            public final Object invoke(Object obj) {
                return f.j(j10, (y3.b) obj);
            }
        }, continuation);
    }
}
