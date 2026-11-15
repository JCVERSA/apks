package com.chad.library.adapter.base;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.entity.SectionEntity;
import java.util.List;

public abstract class BaseSectionQuickAdapter<T extends SectionEntity, K extends BaseViewHolder> extends BaseQuickAdapter<T, K> {
    protected static final int SECTION_HEADER_VIEW = 1092;
    protected int mSectionHeadResId;

    public BaseSectionQuickAdapter(int i, int i2, List<T> list) {
        super(i, list);
        this.mSectionHeadResId = i2;
    }

    public abstract void convertHead(K k, T t);

    @Override
    public int getDefItemViewType(int i) {
        if (this.mData.get(i).isHeader) {
            return SECTION_HEADER_VIEW;
        }
        return 0;
    }

    @Override
    public boolean isFixedViewType(int i) {
        return super.isFixedViewType(i) || i == SECTION_HEADER_VIEW;
    }

    @Override
    public K onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return i == SECTION_HEADER_VIEW ? createBaseViewHolder(getItemView(this.mSectionHeadResId, viewGroup)) : (K) super.onCreateDefViewHolder(viewGroup, i);
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
