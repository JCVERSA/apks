package org.acra.interaction;

import android.content.Context;
import defpackage.ac8;
import java.io.File;
import kotlin.Metadata;
import org.acra.config.CoreConfiguration;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J'\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H&¢\u0006\u0004\b\t\u0010\n¨\u0006\u000b"}, d2 = {"Lorg/acra/interaction/ReportInteraction;", "Lac8;", "Landroid/content/Context;", "context", "Lorg/acra/config/CoreConfiguration;", "config", "Ljava/io/File;", "reportFile", "", "performInteraction", "(Landroid/content/Context;Lorg/acra/config/CoreConfiguration;Ljava/io/File;)Z", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ReportInteraction extends ac8 {
    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }

    boolean performInteraction(Context context, CoreConfiguration config, File reportFile);
}
