package com.chad.library.adapter.base;

import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.chad.library.adapter.base.BaseViewHolder;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.util.MultiTypeDelegate;
import com.chad.library.adapter.base.util.ProviderDelegate;
import java.util.List;

public abstract class MultipleItemRvAdapter<T, V extends BaseViewHolder> extends BaseQuickAdapter<T, V> {
    private SparseArray<BaseItemProvider> mItemProviders;
    private MultiTypeDelegate<T> mMultiTypeDelegate;
    protected ProviderDelegate mProviderDelegate;

    public MultipleItemRvAdapter(@Nullable List<T> list) {
        super(list);
    }

    private void bindClick(final V v) {
        BaseQuickAdapter.OnItemClickListener onItemClickListener = getOnItemClickListener();
        BaseQuickAdapter.OnItemLongClickListener onItemLongClickListener = getOnItemLongClickListener();
        if (onItemClickListener == null || onItemLongClickListener == null) {
            if (onItemClickListener == null) {
                v.itemView.setOnClickListener(new View.OnClickListener() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public void onClick(View view) {
                        int adapterPosition = v.getAdapterPosition();
                        if (adapterPosition == -1) {
                            return;
                        }
                        int headerLayoutCount = adapterPosition - MultipleItemRvAdapter.this.getHeaderLayoutCount();
                        ((BaseItemProvider) MultipleItemRvAdapter.this.mItemProviders.get(v.getItemViewType())).onClick(v, MultipleItemRvAdapter.this.mData.get(headerLayoutCount), headerLayoutCount);
                    }
                });
            }
            if (onItemLongClickListener == null) {
                v.itemView.setOnLongClickListener(new View.OnLongClickListener() {
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override
                    public boolean onLongClick(View view) {
                        int adapterPosition = v.getAdapterPosition();
                        if (adapterPosition == -1) {
                            return false;
                        }
                        int headerLayoutCount = adapterPosition - MultipleItemRvAdapter.this.getHeaderLayoutCount();
                        return ((BaseItemProvider) MultipleItemRvAdapter.this.mItemProviders.get(v.getItemViewType())).onLongClick(v, MultipleItemRvAdapter.this.mData.get(headerLayoutCount), headerLayoutCount);
                    }
                });
            }
        }
    }

    @Override
    public void bindViewClickListener(V v) {
        if (v == null) {
            return;
        }
        bindClick(v);
        super.bindViewClickListener(v);
    }

    @Override
    public void convert(@NonNull V v, T t) {
        BaseItemProvider baseItemProvider = this.mItemProviders.get(v.getItemViewType());
        baseItemProvider.mContext = v.itemView.getContext();
        baseItemProvider.convert(v, t, v.getLayoutPosition() - getHeaderLayoutCount());
    }

    @Override
    public void convertPayloads(@NonNull V v, T t, @NonNull List<Object> list) {
        this.mItemProviders.get(v.getItemViewType()).convertPayloads(v, t, v.getLayoutPosition() - getHeaderLayoutCount(), list);
    }

    public void finishInitialize() {
        this.mProviderDelegate = new ProviderDelegate();
        setMultiTypeDelegate(new MultiTypeDelegate<T>() {
            @Override
            public int getItemType(T t) {
                return MultipleItemRvAdapter.this.getViewType(t);
            }
        });
        registerItemProvider();
        this.mItemProviders = this.mProviderDelegate.getItemProviders();
        for (int i = 0; i < this.mItemProviders.size(); i++) {
            int iKeyAt = this.mItemProviders.keyAt(i);
            BaseItemProvider baseItemProvider = this.mItemProviders.get(iKeyAt);
            baseItemProvider.mData = this.mData;
            getMultiTypeDelegate().registerItemType(iKeyAt, baseItemProvider.layout());
        }
    }

    @Override
    public int getDefItemViewType(int i) {
        if (getMultiTypeDelegate() != null) {
            return getMultiTypeDelegate().getDefItemViewType(this.mData, i);
        }
        throw new IllegalStateException("please use setMultiTypeDelegate first!");
    }

    public MultiTypeDelegate<T> getMultiTypeDelegate() {
        return this.mMultiTypeDelegate;
    }

    public abstract int getViewType(T t);

    @Override
    public V onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (getMultiTypeDelegate() != null) {
            return createBaseViewHolder(viewGroup, getMultiTypeDelegate().getLayoutId(i));
        }
        throw new IllegalStateException("please use setMultiTypeDelegate first!");
    }

    public abstract void registerItemProvider();

    public void setMultiTypeDelegate(MultiTypeDelegate<T> multiTypeDelegate) {
        this.mMultiTypeDelegate = multiTypeDelegate;
    }
}
