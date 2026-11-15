package org.acra.collector;

import android.content.Context;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/acra/collector/ApplicationStartupCollector;", "Lorg/acra/collector/Collector;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lzfb;", "collectApplicationStartUp", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ApplicationStartupCollector extends Collector {
    void collectApplicationStartUp(Context context, CoreConfiguration config);

    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
