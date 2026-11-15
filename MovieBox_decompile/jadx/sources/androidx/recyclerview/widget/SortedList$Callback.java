package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;
import java.util.Comparator;

public abstract class SortedList$Callback<T2> implements Comparator<T2>, j {
    public abstract boolean areContentsTheSame(T2 t10, T2 t11);

    public abstract boolean areItemsTheSame(T2 t10, T2 t11);

    @Override
    public abstract int compare(T2 t10, T2 t11);

    @Nullable
    public Object getChangePayload(T2 t10, T2 t11) {
        return null;
    }

    public abstract void onChanged(int i10, int i11);

    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i10, int i11, Object obj) {
        onChanged(i10, i11);
    }

    public abstract void onInserted(int i10, int i11);

    public abstract void onMoved(int i10, int i11);

    public abstract void onRemoved(int i10, int i11);
}
