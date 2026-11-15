package org.acra.plugins;

import defpackage.ac8;
import defpackage.ue1;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.Configuration;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\b&\u0018\u00002\u00020\u0001B\u0017\u0012\u000e\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u0004\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00030\u00028\u0012X\u0092\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\f¨\u0006\r"}, d2 = {"Lorg/acra/plugins/HasConfigPlugin;", "Lac8;", "Ljava/lang/Class;", "Lorg/acra/config/Configuration;", "configClass", MethodDecl.initName, "(Ljava/lang/Class;)V", "Lorg/acra/config/CoreConfiguration;", "config", "", "enabled", "(Lorg/acra/config/CoreConfiguration;)Z", "Ljava/lang/Class;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public abstract class HasConfigPlugin implements ac8 {
    private final Class<? extends Configuration> configClass;

    public HasConfigPlugin(Class<? extends Configuration> cls) {
        y45.j(cls, "configClass");
        this.configClass = cls;
    }

    @Override
    public boolean enabled(CoreConfiguration config) {
        y45.j(config, "config");
        Configuration configurationA = ue1.a(config, this.configClass);
        if (configurationA != null) {
            return configurationA.getEnabled();
        }
        return false;
    }
}
