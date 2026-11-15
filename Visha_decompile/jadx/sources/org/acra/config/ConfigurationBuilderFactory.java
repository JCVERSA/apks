package org.acra.config;

import android.content.Context;
import defpackage.ac8;
import defpackage.ye1;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Lorg/acra/config/ConfigurationBuilderFactory;", "Lac8;", "Landroid/content/Context;", "annotatedContext", "Lye1;", "create", "(Landroid/content/Context;)Lye1;", "acra-core_release"}, k = 1, mv = {1, 7, 1}, xi = 48)
public interface ConfigurationBuilderFactory extends ac8 {
    ye1 create(Context annotatedContext);

    @Override
    default boolean enabled(CoreConfiguration coreConfiguration) {
        return super.enabled(coreConfiguration);
    }
}
