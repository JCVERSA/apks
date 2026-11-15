package defpackage;

import android.content.Context;
import android.util.Log;
import com.transsion.playercommon.share.ShareManager;
import com.transsion.playercommon.vishaapis.appconfig.helper.CloudFeaturesConfigHelper;
import com.transsion.sniffer_load.GlobalDownloadManger;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class jh5 extends vec {
    public static final a b = new a(null);
    public static final List c;

    public static final class a {
        public a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public a() {
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        c = arrayList;
        arrayList.add(bg.class);
        arrayList.add(rr8.class);
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
        return c;
    }

    @Override
    public Void create(Context context) {
        CloudFeaturesConfigHelper.INSTANCE.loadFeaturesConfig();
        zz0.a.b();
        Log.i("KtCloudInitTask", "create isSupportCloudDisk:" + zz0.d());
        if (zz0.d()) {
            te.c();
        }
        mu1.a.a();
        ShareManager.a.c();
        GlobalDownloadManger.B().D(context);
        if (!zz0.d()) {
            return null;
        }
        ri4.e().i(context);
        return null;
    }
}
