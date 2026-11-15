package zk;

import com.transsion.mb.config.manager.ConfigBean;
import org.json.JSONObject;

public final class a {

    public static final a f76804a = new a();

    private a() {
    }

    public final boolean a() {
        String value;
        ConfigBean configBeanC = cm.f.f17019c.a().c("app_center_switch", true);
        if (configBeanC != null && (value = configBeanC.getValue()) != null) {
            try {
                return new JSONObject(value).optBoolean("app_center_off");
            } catch (Throwable unused) {
            }
        }
        return false;
    }
}
