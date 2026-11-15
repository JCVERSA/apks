package org.acra.plugins;

import defpackage.ac8;
import java.io.Serializable;
import java.util.List;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J-\u0010\u0007\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0003*\u00020\u00022\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ5\u0010\u000b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0006\"\b\b\u0000\u0010\u0003*\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028\u00000\u0004H&¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lorg/acra/plugins/PluginLoader;", "Ljava/io/Serializable;", "Lac8;", "T", "Ljava/lang/Class;", "clazz", "", "load", "(Ljava/lang/Class;)Ljava/util/List;", "Lorg/acra/config/CoreConfiguration;", "config", "loadEnabled", "(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/List;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface PluginLoader extends Serializable {
    <T extends ac8> List<T> load(Class<T> clazz);

    <T extends ac8> List<T> loadEnabled(CoreConfiguration config, Class<T> clazz);
}
