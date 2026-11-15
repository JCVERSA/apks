package a;

import androidx.annotation.Keep;
import com.therouter.router.RouteItem;
import com.therouter.router.RouteMapKt;
import com.transsion.web.api.WebPageIdentity;

@Keep
public class RouterMap__TheRouter__1544766231 implements com.therouter.router.d {
    public static final String COUNT = "1";
    public static final String ROUTERMAP0 = "[{\"path\":\"/web/web\",\"className\":\"com.transsion.web.activity.WebActivity\",\"action\":\"\",\"description\":\"\",\"params\":{}}]";
    public static final String TAG = "Created by kymjs, and APT Version is 1.3.0.";
    public static final String THEROUTER_APT_VERSION = "1.3.0";

    public static void addRoute() {
        RouteMapKt.c(new RouteItem(WebPageIdentity.WEB_VIEW, "com.transsion.web.activity.WebActivity", "", ""));
    }

    @Override
    public void init() {
        addRoute();
    }
}
