package com.chad.library.adapter.base;

import android.util.SparseIntArray;
import android.view.ViewGroup;
import androidx.annotation.IntRange;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.IExpandable;
import com.chad.library.adapter.base.entity.SectionMultiEntity;
import java.util.List;

public abstract class BaseSectionMultiItemQuickAdapter<T extends SectionMultiEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    private static final int DEFAULT_VIEW_TYPE = -255;
    protected static final int SECTION_HEADER_VIEW = 1092;
    public static final int TYPE_NOT_FOUND = -404;
    private SparseIntArray layouts;
    protected int mSectionHeadResId;

    public BaseSectionMultiItemQuickAdapter(int i, List<T> list) {
        super(list);
        this.mSectionHeadResId = i;
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

    public abstract void convertHead(K k, T t);

    @Override
    public int getDefItemViewType(int i) {
        T t = this.mData.get(i);
        if (t != null) {
            return t.isHeader ? SECTION_HEADER_VIEW : t.getItemType();
        }
        return DEFAULT_VIEW_TYPE;
    }

    @Override
    public boolean isFixedViewType(int i) {
        return super.isFixedViewType(i) || i == SECTION_HEADER_VIEW;
    }

    @Override
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return i == SECTION_HEADER_VIEW ? createBaseViewHolder(getItemView(this.mSectionHeadResId, viewGroup)) : createBaseViewHolder(viewGroup, getLayoutId(i));
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
        int parentPosition = getParentPosition(t);
        if (parentPosition >= 0) {
            ((IExpandable) this.mData.get(parentPosition)).getSubItems().remove(t);
        }
    }

    public void setDefaultViewTypeLayout(@LayoutRes int i) {
        addItemType(DEFAULT_VIEW_TYPE, i);
    }

    @Override
    public void onBindViewHolder(@NonNull K k, int i) {
        if (k.getItemViewType() != SECTION_HEADER_VIEW) {
            super.onBindViewHolder((BaseViewHolder) k, i);
        } else {
            setFullSpan(k);
            convertHead(k, getItem(i - getHeaderLayoutCount()));
        }
    }
}
