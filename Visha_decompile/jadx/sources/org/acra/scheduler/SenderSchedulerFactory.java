package org.acra.scheduler;

import android.content.Context;
import defpackage.ac8;
import defpackage.gc9;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u001f\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lorg/acra/scheduler/SenderSchedulerFactory;", "Lac8;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Lgc9;", "create", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;)Lgc9;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface SenderSchedulerFactory extends ac8 {
    gc9 create(Context context, CoreConfiguration config);

    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
