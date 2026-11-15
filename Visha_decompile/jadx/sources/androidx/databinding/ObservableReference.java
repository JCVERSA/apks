package androidx.databinding;

import androidx.annotation.RestrictTo;
import androidx.p004lifecycle.LifecycleOwner;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
interface ObservableReference<T> {
    void addListener(T t);

    WeakListener<T> getListener();

    void removeListener(T t);

    void setLifecycleOwner(LifecycleOwner lifecycleOwner);
}
