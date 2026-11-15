package com.google.android.gms.common.data;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Iterator;

public abstract class AbstractDataBuffer<T> implements DataBuffer<T> {

    @Nullable
    @KeepForSdk
    protected final DataHolder mDataHolder;

    @KeepForSdk
    protected AbstractDataBuffer(@Nullable DataHolder dataHolder) {
        this.mDataHolder = dataHolder;
    }

    @Override
    public final void close() {
        release();
    }

    @Override
    @NonNull
    public abstract T get(int i10);

    @Override
    public int getCount() {
        DataHolder dataHolder = this.mDataHolder;
        if (dataHolder == null) {
            return 0;
        }
        return dataHolder.getCount();
    }

    @Override
    @Nullable
    public final Bundle getMetadata() {
        DataHolder dataHolder = this.mDataHolder;
        if (dataHolder == null) {
            return null;
        }
        return dataHolder.getMetadata();
    }

    @Override
    @Deprecated
    public boolean isClosed() {
        DataHolder dataHolder = this.mDataHolder;
        return dataHolder == null || dataHolder.isClosed();
    }

    @Override
    @NonNull
    public Iterator<T> iterator() {
        return new DataBufferIterator(this);
    }

    @Override
    public void release() {
        DataHolder dataHolder = this.mDataHolder;
        if (dataHolder != null) {
            dataHolder.close();
        }
    }

    @Override
    @NonNull
    public Iterator<T> singleRefIterator() {
        return new SingleRefDataBufferIterator(this);
    }
}
