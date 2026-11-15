package org.acra.startup;

import android.content.Context;
import defpackage.ac8;
import java.util.List;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J-\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H&¢\u0006\u0004\b\n\u0010\u000b¨\u0006\f"}, d2 = {"Lorg/acra/startup/StartupProcessor;", "Lac8;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "", "", "reports", "Lzfb;", "processReports", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/util/List;)V", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface StartupProcessor extends ac8 {
    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    void processReports(Context context, CoreConfiguration config, List<Object> reports);
}
