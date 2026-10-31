package o;

import com.snaptube.dataadapter.plugin.utils.YouTubeApiUtils;
import com.snaptube.premium.app.PhoenixApplication;
import com.snaptube.premium.configs.Config;
import java.util.Iterator;
import kotlin.collections.ArraysKt___ArraysKt;

public final class be implements ba3 {
    @Override
    public ne3 b() {
        ne3 ne3VarL = ((sn) fc1.a(PhoenixApplication.z())).L();
        or3.e(ne3VarL, "nativeAdManager(...)");
        return ne3VarL;
    }

    @Override
    public String getName() {
        return ba3.a.a(this);
    }

    @Override
    public boolean h() {
        boolean zQ = PhoenixApplication.C().Q();
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (zQ) {
            Config.z6(jCurrentTimeMillis);
            return false;
        }
        if ((jCurrentTimeMillis - Config.l2()) / ((long) 1000) < Config.m2()) {
            return false;
        }
        return Config.P2();
    }

    @Override
    public void k(String... strArr) {
        or3.f(strArr, YouTubeApiUtils.LIST);
        Iterator it2 = ArraysKt___ArraysKt.u(strArr).iterator();
        while (it2.hasNext()) {
            ((sn) fc1.a(PhoenixApplication.z())).H0().c(jb.e.a((String) it2.next()));
        }
    }
}
