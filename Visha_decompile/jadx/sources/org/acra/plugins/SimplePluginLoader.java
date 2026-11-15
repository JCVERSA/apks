package org.acra.plugins;

import defpackage.ac8;
import defpackage.c;
import defpackage.y45;
import java.util.ArrayList;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B-\b\u0007\u0012\"\u0010\u0005\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00030\u0002\"\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\b*\u00020\u00042\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016¢\u0006\u0004\b\u000b\u0010\fJ5\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028\u00000\n\"\b\b\u0000\u0010\b*\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R$\u0010\u0005\u001a\u0012\u0012\u000e\b\u0001\u0012\n\u0012\u0006\b\u0001\u0012\u00020\u00040\u00030\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0011¨\u0006\u0012"}, d2 = {"Lorg/acra/plugins/SimplePluginLoader;", "Lorg/acra/plugins/PluginLoader;", "", "Ljava/lang/Class;", "Lac8;", "plugins", MethodDecl.initName, "([Ljava/lang/Class;)V", "T", "clazz", "", "load", "(Ljava/lang/Class;)Ljava/util/List;", "Lorg/acra/config/CoreConfiguration;", "config", "loadEnabled", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;", "[Ljava/lang/Class;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public final class SimplePluginLoader implements PluginLoader {
    private final Class<? extends ac8>[] plugins;

    @SafeVarargs
    public SimplePluginLoader(Class<? extends ac8>... clsArr) {
        y45.j(clsArr, "plugins");
        this.plugins = clsArr;
    }

    @Override
    public <T extends ac8> List<T> load(Class<T> clazz) {
        ac8 ac8Var;
        y45.j(clazz, "clazz");
        if (c.b) {
            c.d.d(c.c, "SimplePluginLoader loading services from plugin classes : " + this.plugins);
        }
        Class<? extends ac8>[] clsArr = this.plugins;
        ArrayList arrayList = new ArrayList();
        for (Class<? extends ac8> cls : clsArr) {
            if (clazz.isAssignableFrom(cls)) {
                try {
                    ac8 ac8VarNewInstance = cls.newInstance();
                    y45.h(ac8VarNewInstance, "null cannot be cast to non-null type T of org.acra.plugins.SimplePluginLoader.load$lambda$3");
                    ac8Var = ac8VarNewInstance;
                    if (c.b) {
                        c.d.d(c.c, "Loaded plugin from class : " + cls);
                    }
                } catch (Exception e) {
                    c.d.w(c.c, "Could not load plugin from class : " + cls, e);
                    ac8Var = null;
                }
            } else {
                ac8Var = null;
            }
            if (ac8Var != null) {
                arrayList.add(ac8Var);
            }
        }
        return arrayList;
    }

    @Override
    public <T extends ac8> List<T> loadEnabled(CoreConfiguration config, Class<T> clazz) {
        y45.j(config, "config");
        y45.j(clazz, "clazz");
        List<T> listLoad = load(clazz);
        ArrayList arrayList = new ArrayList();
        for (Object obj : listLoad) {
            if (((ac8) obj).enabled(config)) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }
}
