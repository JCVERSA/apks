package org.acra.plugins;

import defpackage.ac8;
import defpackage.c;
import defpackage.e74;
import defpackage.y45;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010 \n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003JA\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u00062\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\t0\bH\u0002¢\u0006\u0004\b\f\u0010\rJ-\u0010\u000e\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\b\b\u0000\u0010\u0005*\u00020\u00042\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ5\u0010\u0012\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b\"\b\b\u0000\u0010\u0005*\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00102\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006H\u0016¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lorg/acra/plugins/ServicePluginLoader;", "Lorg/acra/plugins/PluginLoader;", MethodDecl.initName, "()V", "Lac8;", "T", "Ljava/lang/Class;", "clazz", "Lkotlin/Function1;", "", "shouldLoadPredicate", "", "loadInternal", "(Ljava/lang/Class;Le74;)Ljava/util/List;", "load", "(Ljava/lang/Class;)Ljava/util/List;", "Lorg/acra/config/CoreConfiguration;", "config", "loadEnabled", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class ServicePluginLoader implements PluginLoader {
    private final <T extends ac8> List<T> loadInternal(Class<T> clazz, e74 shouldLoadPredicate) {
        ArrayList arrayList = new ArrayList();
        ServiceLoader serviceLoaderLoad = ServiceLoader.load(clazz, ServicePluginLoader.class.getClassLoader());
        if (c.b) {
            c.d.d(c.c, "ServicePluginLoader loading services from ServiceLoader : " + serviceLoaderLoad);
        }
        Iterator it = serviceLoaderLoad.iterator();
        y45.i(it, "serviceLoader.iterator()");
        while (it.hasNext()) {
            try {
                try {
                    ac8 ac8Var = (ac8) it.next();
                    if (((Boolean) shouldLoadPredicate.invoke(ac8Var)).booleanValue()) {
                        if (c.b) {
                            c.d.d(c.c, "Loaded " + clazz.getSimpleName() + " of type " + ac8Var.getClass().getName());
                        }
                        arrayList.add(ac8Var);
                    } else if (c.b) {
                        c.d.d(c.c, "Ignoring disabled " + clazz.getSimpleName() + " of type " + ac8Var.getClass().getSimpleName());
                    }
                } catch (ServiceConfigurationError e) {
                    c.d.e(c.c, "Unable to load " + clazz.getSimpleName(), e);
                }
            } catch (ServiceConfigurationError e2) {
                c.d.e(c.c, "Broken ServiceLoader for " + clazz.getSimpleName(), e2);
            }
        }
        return arrayList;
    }

    @Override
    public <T extends ac8> List<T> load(Class<T> clazz) {
        y45.j(clazz, "clazz");
        return loadInternal(clazz, new e74() {
            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Boolean; */
            @Override
            public final Boolean invoke(ac8 ac8Var) {
                y45.j(ac8Var, "it");
                return Boolean.TRUE;
            }
        });
    }

    @Override
    public <T extends ac8> List<T> loadEnabled(final CoreConfiguration config, Class<T> clazz) {
        y45.j(config, "config");
        y45.j(clazz, "clazz");
        return loadInternal(clazz, new e74() {
            {
                super(1);
            }

            /* JADX WARN: Incorrect types in method signature: (TT;)Ljava/lang/Boolean; */
            @Override
            public final Boolean invoke(ac8 ac8Var) {
                y45.j(ac8Var, "it");
                return Boolean.valueOf(ac8Var.enabled(config));
            }
        });
    }
}
