package io.appmetrica.analytics.impl;

import android.content.Context;
import androidx.annotation.NonNull;
import io.appmetrica.analytics.coreapi.internal.data.IBinaryDataHelper;
import io.appmetrica.analytics.coreapi.internal.data.ProtobufStateStorage;

public abstract class AbstractC2897tm {
    public final ProtobufStateStorage<Object> a(@NonNull Context context) {
        return a(context, c(context));
    }

    @NonNull
    public abstract ProtobufStateStorage<Object> a(@NonNull Context context, @NonNull IBinaryDataHelper iBinaryDataHelper);

    public final ProtobufStateStorage<Object> b(@NonNull Context context) {
        return a(context, d(context));
    }

    @NonNull
    public abstract IBinaryDataHelper c(@NonNull Context context);

    @NonNull
    public abstract IBinaryDataHelper d(@NonNull Context context);
}
