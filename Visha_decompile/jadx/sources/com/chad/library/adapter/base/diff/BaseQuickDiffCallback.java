package com.chad.library.adapter.base.diff;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.DiffUtil;
import java.util.ArrayList;
import java.util.List;

public abstract class BaseQuickDiffCallback<T> extends DiffUtil.Callback {
    private List<T> newList;
    private List<T> oldList;

    public BaseQuickDiffCallback(@Nullable List<T> list) {
        this.newList = list == null ? new ArrayList<>() : list;
    }

    @Override
    public boolean areContentsTheSame(int i, int i2) {
        return areContentsTheSame(this.oldList.get(i), this.newList.get(i2));
    }

    public abstract boolean areContentsTheSame(@NonNull T t, @NonNull T t2);

    @Override
    public boolean areItemsTheSame(int i, int i2) {
        return areItemsTheSame(this.oldList.get(i), this.newList.get(i2));
    }

    public abstract boolean areItemsTheSame(@NonNull T t, @NonNull T t2);

    @Nullable
    public Object getChangePayload(@NonNull T t, @NonNull T t2) {
        return null;
    }

    public List<T> getNewList() {
        return this.newList;
    }

    @Override
    public int getNewListSize() {
        return this.newList.size();
    }

    public List<T> getOldList() {
        return this.oldList;
    }

    @Override
    public int getOldListSize() {
        return this.oldList.size();
    }

    public void setOldList(@Nullable List<T> list) {
        if (list == null) {
            list = new ArrayList<>();
        }
        this.oldList = list;
    }

    @Override
    @Nullable
    public Object getChangePayload(int i, int i2) {
        return getChangePayload(this.oldList.get(i), this.newList.get(i2));
    }
}
