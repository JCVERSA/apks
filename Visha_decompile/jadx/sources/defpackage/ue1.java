package defpackage;

import org.acra.config.Configuration;
import org.acra.config.CoreConfiguration;

public abstract class ue1 {
    public static final Configuration a(CoreConfiguration coreConfiguration, Class cls) {
        y45.j(coreConfiguration, "<this>");
        y45.j(cls, "c");
        if (c.b) {
            c.d.d(c.c, "Checking plugin Configurations : " + coreConfiguration.getPluginConfigurations() + " for class : " + cls);
        }
        for (Configuration configuration : coreConfiguration.getPluginConfigurations()) {
            if (c.b) {
                c.d.d(c.c, "Checking plugin Configuration : " + configuration + " against plugin class : " + cls);
            }
            if (cls.isAssignableFrom(configuration.getClass())) {
                y45.h(configuration, "null cannot be cast to non-null type T of org.acra.config.ConfigUtils.findPluginConfiguration");
                return configuration;
            }
        }
        return null;
    }

    public static final Configuration b(CoreConfiguration coreConfiguration, Class cls) {
        y45.j(coreConfiguration, "<this>");
        y45.j(cls, "c");
        Configuration configurationA = a(coreConfiguration, cls);
        if (configurationA != null) {
            return configurationA;
        }
        throw new IllegalArgumentException(cls.getName() + " is no registered configuration");
    }
}
