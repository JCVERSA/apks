package defpackage;

import android.content.Context;
import com.transsion.playercommon.vishaapis.cloud.RegionHostCacheInterceptor;
import java.util.ArrayList;
import java.util.List;
import kotlin.jvm.internal.DefaultConstructorMarker;

public final class qr8 extends vec {
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
        arrayList.add(lw5.class);
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
        RegionHostCacheInterceptor.Companion companion = RegionHostCacheInterceptor.INSTANCE;
        synchronized (companion.getSRegionCache()) {
            companion.ensureCacheLoaded();
            zfb zfbVar = zfb.a;
        }
        return null;
    }
}
