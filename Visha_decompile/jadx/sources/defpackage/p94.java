package defpackage;

import android.app.Application;
import android.content.Context;
import com.blankj.utilcode.util.c;
import com.transsion.moduleservice.IOnlineVideoService;
import com.transsion.playercommon.vishaapis.APIServiceConfig;
import java.util.ArrayList;
import java.util.List;

public class p94 extends vec {
    public static List b;

    public class a implements com.transsion.utils.deviceinfo.a.b {
        public final Context a;

        public a(Context context) {
            this.a = context;
        }

        @Override
        public void a() {
            p94.j(this.a);
        }

        @Override
        public void b(String str) {
            p94.j(this.a);
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        b = arrayList;
        arrayList.add(zz4.class);
        b.add(bg.class);
    }

    public static void j(Context context) {
        String strJ = com.transsion.utils.deviceinfo.a.j();
        if (r0a.g(strJ)) {
            strJ = c.a();
        }
        IOnlineVideoService service = IOnlineVideoService.ServiceInstance.getService();
        if (service == null || !(context instanceof Application)) {
            return;
        }
        boolean zE = ge.e();
        yv9.a = zE;
        service.initPlayer((Application) context, strJ, zE);
        service.setAPIServiceDebugMode(APIServiceConfig.bTestMode);
    }

    @Override
    public boolean b() {
        return false;
    }

    @Override
    public boolean c() {
        return false;
    }

    @Override
    public List dependencies() {
        return b;
    }

    @Override
    public Void create(Context context) {
        com.transsion.utils.deviceinfo.a.k().g(new a(context));
        return null;
    }
}
