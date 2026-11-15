package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;

@Keep
public class RouterMap__TheRouter__1190314991 implements com.therouter.router.d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/commercial/gamecenter\",\"className\":\"com.transsion.commercialization.aha.AhaGameAllActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem("/commercial/gamecenter", "com.transsion.commercialization.aha.AhaGameAllActivity", "", ""));
    }

    @Override
    public void init() {
        addRoute();
    }
}
