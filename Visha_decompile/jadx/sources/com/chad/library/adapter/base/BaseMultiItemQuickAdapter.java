package com.chad.library.adapter.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.IExpandable;
import com.chad.library.adapter.base.entity.MultiItemEntity;
import java.util.List;

public abstract class BaseMultiItemQuickAdapter<T extends MultiItemEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    private static final int DEFAULT_VIEW_TYPE = -255;
    public static final int TYPE_NOT_FOUND = -404;
    private SparseIntArray layouts;

    public BaseMultiItemQuickAdapter(List<T> list) {
        super(list);
    }

    private int getLayoutId(int i) {
        return this.layouts.get(i, -404);
    }

    public void addItemType(int i, @LayoutRes int i2) {
        if (this.layouts == null) {
            this.layouts = new SparseIntArray();
        }
        this.layouts.put(i, i2);
    }

    @Override
    public int getDefItemViewType(int i) {
        T t = this.mData.get(i);
        return t != null ? t.getItemType() : DEFAULT_VIEW_TYPE;
    }

    public int getParentPositionInAll(int i) {
        List<T> data = getData();
        T item = getItem(i);
        if (!isExpandable((MultiItemEntity) item)) {
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (isExpandable((MultiItemEntity) data.get(i2))) {
                    return i2;
                }
            }
            return -1;
        }
        IExpandable iExpandable = (IExpandable) item;
        for (int i3 = i - 1; i3 >= 0; i3--) {
            T t = data.get(i3);
            if (isExpandable((MultiItemEntity) t) && iExpandable.getLevel() > ((IExpandable) t).getLevel()) {
                return i3;
            }
        }
        return -1;
    }

    @Override
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, getLayoutId(i));
    }

    @Override
    public void remove(@IntRange(from = 0) int i) {
        List<T> list = this.mData;
        if (list == null || i < 0 || i >= list.size()) {
            return;
        }
        T t = this.mData.get(i);
        if (t instanceof IExpandable) {
            removeAllChild((IExpandable) t, i);
        }
        removeDataFromParent(t);
        super.remove(i);
    }

    public void removeAllChild(IExpandable iExpandable, int i) {
        List subItems;
        if (!iExpandable.isExpanded() || (subItems = iExpandable.getSubItems()) == null || subItems.size() == 0) {
            return;
        }
        int size = subItems.size();
        for (int i2 = 0; i2 < size; i2++) {
            remove(i + 1);
        }
    }

    public void removeDataFromParent(T t) {
        IExpandable iExpandable;
        int parentPosition = getParentPosition(t);
        if (parentPosition < 0 || (iExpandable = (IExpandable) this.mData.get(parentPosition)) == t) {
            return;
        }
        iExpandable.getSubItems().remove(t);
    }

    public void setDefaultViewTypeLayout(@LayoutRes int i) {
        addItemType(DEFAULT_VIEW_TYPE, i);
    }

    @Override
    public boolean isExpandable(MultiItemEntity multiItemEntity) {
        return multiItemEntity != null && (multiItemEntity instanceof IExpandable);
    }
}
