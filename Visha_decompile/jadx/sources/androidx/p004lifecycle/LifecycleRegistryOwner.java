package androidx.p004lifecycle;

import androidx.annotation.NonNull;

@Deprecated
public interface LifecycleRegistryOwner extends LifecycleOwner {
    @Override
    @NonNull
    LifecycleRegistry getLifecycle();
}
