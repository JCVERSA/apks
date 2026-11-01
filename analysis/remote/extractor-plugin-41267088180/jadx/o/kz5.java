package o;

import com.wandoujia.base.config.GlobalConfig;
import java.util.ArrayList;
import java.util.List;

public final class kz5 {
    public static final kz5 a = new kz5();
    public static final List b = new ArrayList();

    public static final void a(ClassLoader classLoader) {
        or3.f(classLoader, "classLoader");
        if (GlobalConfig.isPluginClassLoaderGcEnabled()) {
            return;
        }
        b.add(classLoader);
    }
}
