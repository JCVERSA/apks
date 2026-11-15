package androidx.p004lifecycle;

import androidx.annotation.MainThread;
import defpackage.e74;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u001e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001aG\u0010\b\u001a\b\u0012\u0004\u0012\u00028\u00000\u0007\"\u0004\b\u0000\u0010\u0000*\b\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0003\u001a\u00020\u00022\u0014\b\u0004\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00050\u0004H\u0087\bø\u0001\u0000¢\u0006\u0004\b\b\u0010\t\u0082\u0002\u0007\n\u0005\b\u009920\u0001¨\u0006\n"}, d2 = {"T", "Landroidx/lifecycle/LiveData;", "Landroidx/lifecycle/LifecycleOwner;", "owner", "Lkotlin/Function1;", "Lzfb;", "onChanged", "Landroidx/lifecycle/Observer;", "observe", "(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/LifecycleOwner;Le74;)Landroidx/lifecycle/Observer;", "lifecycle-livedata-core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class LiveDataKt {
    @MainThread
    public static final <T> Observer<T> observe(LiveData<T> liveData, LifecycleOwner lifecycleOwner, final e74 e74Var) {
        y45.j(liveData, "<this>");
        y45.j(lifecycleOwner, "owner");
        y45.j(e74Var, "onChanged");
        Observer<T> observer = new Observer() {
            @Override
            public final void onChanged(T t) {
                e74Var.invoke(t);
            }
        };
        liveData.observe(lifecycleOwner, observer);
        return observer;
    }
}
