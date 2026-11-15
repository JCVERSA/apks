package androidx.recyclerview.widget;

import android.annotation.SuppressLint;
import androidx.annotation.Nullable;

public class SortedList$BatchedCallback<T2> extends SortedList$Callback<T2> {
    private final d mBatchingListUpdateCallback;
    final SortedList$Callback<T2> mWrappedCallback;

    @SuppressLint({"UnknownNullness"})
    public SortedList$BatchedCallback(SortedList$Callback<T2> sortedList$Callback) {
        this.mWrappedCallback = sortedList$Callback;
        this.mBatchingListUpdateCallback = new d(sortedList$Callback);
    }

    @Override
    public boolean areContentsTheSame(T2 t10, T2 t11) {
        return this.mWrappedCallback.areContentsTheSame(t10, t11);
    }

    @Override
    public boolean areItemsTheSame(T2 t10, T2 t11) {
        return this.mWrappedCallback.areItemsTheSame(t10, t11);
    }

    @Override
    public int compare(T2 t10, T2 t11) {
        return this.mWrappedCallback.compare(t10, t11);
    }

    public void dispatchLastEvent() {
        this.mBatchingListUpdateCallback.a();
    }

    @Override
    @Nullable
    public Object getChangePayload(T2 t10, T2 t11) {
        return this.mWrappedCallback.getChangePayload(t10, t11);
    }

    @Override
    public void onChanged(int i10, int i11) {
        this.mBatchingListUpdateCallback.onChanged(i10, i11, null);
    }

    @Override
    public void onInserted(int i10, int i11) {
        this.mBatchingListUpdateCallback.onInserted(i10, i11);
    }

    @Override
    public void onMoved(int i10, int i11) {
        this.mBatchingListUpdateCallback.onMoved(i10, i11);
    }

    @Override
    public void onRemoved(int i10, int i11) {
        this.mBatchingListUpdateCallback.onRemoved(i10, i11);
    }

    @Override
    @SuppressLint({"UnknownNullness"})
    public void onChanged(int i10, int i11, Object obj) {
        this.mBatchingListUpdateCallback.onChanged(i10, i11, obj);
    }
}
