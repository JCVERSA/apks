package com.cloud.tmc.miniapp.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.cloud.tmc.miniapp.action.ResourcesAction;
import com.cloud.tmc.miniapp.base.BaseAdapter.BaseViewHolder;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

public abstract class BaseAdapter<VH extends BaseAdapter<VH>.BaseViewHolder> extends RecyclerView.Adapter implements ResourcesAction {
    private final Lazy childClickListeners$delegate;
    private final Lazy childLongClickListeners$delegate;
    private final Context context;
    private OnItemClickListener itemClickListener;
    private OnItemLongClickListener itemLongClickListener;
    private int positionOffset;
    private RecyclerView recyclerView;

    public interface OnChildClickListener {
        void onChildClick(RecyclerView recyclerView, View view, int i10);
    }

    public interface OnChildLongClickListener {
        boolean onChildLongClick(RecyclerView recyclerView, View view, int i10);
    }

    public interface OnItemClickListener {
        void onItemClick(RecyclerView recyclerView, View view, int i10);
    }

    public interface OnItemLongClickListener {
        boolean onItemLongClick(RecyclerView recyclerView, View view, int i10);
    }

    public BaseAdapter(Context context) {
        Intrinsics.h(context, "context");
        this.context = context;
        this.childClickListeners$delegate = LazyKt.b(new Function0<SparseArray<OnChildClickListener>>() {
            @Override
            public final SparseArray<BaseAdapter.OnChildClickListener> invoke() {
                return new SparseArray<>();
            }
        });
        this.childLongClickListeners$delegate = LazyKt.b(new Function0<SparseArray<OnChildLongClickListener>>() {
            @Override
            public final SparseArray<BaseAdapter.OnChildLongClickListener> invoke() {
                return new SparseArray<>();
            }
        });
    }

    private final void checkRecyclerViewState() {
        if (this.recyclerView != null) {
            throw new IllegalStateException("are you ok?");
        }
    }

    public final SparseArray<OnChildClickListener> getChildClickListeners() {
        return (SparseArray) this.childClickListeners$delegate.getValue();
    }

    public final SparseArray<OnChildLongClickListener> getChildLongClickListeners() {
        return (SparseArray) this.childLongClickListeners$delegate.getValue();
    }

    public RecyclerView.m generateDefaultLayoutManager(Context context) {
        Intrinsics.h(context, "context");
        return new LinearLayoutManager(context);
    }

    @Override
    public int getColor(int i10) {
        return ResourcesAction.DefaultImpls.getColor(this, i10);
    }

    @Override
    public Context getContext() {
        return this.context;
    }

    @Override
    public Drawable getDrawable(int i10) {
        return ResourcesAction.DefaultImpls.getDrawable(this, i10);
    }

    public RecyclerView getRecyclerView() {
        return this.recyclerView;
    }

    @Override
    public Resources getResources() {
        return ResourcesAction.DefaultImpls.getResources(this);
    }

    @Override
    public String getString(int i10) {
        return ResourcesAction.DefaultImpls.getString(this, i10);
    }

    @Override
    public <S> S getSystemService(Class<S> cls) {
        return (S) ResourcesAction.DefaultImpls.getSystemService(this, cls);
    }

    @Override
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        RecyclerView recyclerView2;
        Intrinsics.h(recyclerView, "recyclerView");
        this.recyclerView = recyclerView;
        if ((recyclerView != null ? recyclerView.getLayoutManager() : null) != null || (recyclerView2 = this.recyclerView) == null) {
            return;
        }
        recyclerView2.setLayoutManager(generateDefaultLayoutManager(this.context));
    }

    @Override
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        Intrinsics.h(recyclerView, "recyclerView");
        this.recyclerView = null;
    }

    public void setOnChildClickListener(int i10, OnChildClickListener onChildClickListener) {
        checkRecyclerViewState();
        getChildClickListeners().put(i10, onChildClickListener);
    }

    public void setOnChildLongClickListener(int i10, OnChildLongClickListener onChildLongClickListener) {
        checkRecyclerViewState();
        getChildLongClickListeners().put(i10, onChildLongClickListener);
    }

    public void setOnItemClickListener(OnItemClickListener onItemClickListener) {
        checkRecyclerViewState();
        this.itemClickListener = onItemClickListener;
    }

    public void setOnItemLongClickListener(OnItemLongClickListener onItemLongClickListener) {
        checkRecyclerViewState();
        this.itemLongClickListener = onItemLongClickListener;
    }

    @Override
    public String getString(int i10, Object... objArr) {
        return ResourcesAction.DefaultImpls.getString(this, i10, objArr);
    }

    @Override
    public void onBindViewHolder(VH holder, int i10) {
        Intrinsics.h(holder, "holder");
        this.positionOffset = i10 - holder.getAdapterPosition();
        holder.onBindView(i10);
    }

    public abstract class BaseViewHolder extends RecyclerView.a0 implements View.OnClickListener, View.OnLongClickListener {
        public final BaseAdapter<VH> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BaseViewHolder(BaseAdapter baseAdapter, View itemView) {
            super(itemView);
            Intrinsics.h(itemView, "itemView");
            this.this$0 = baseAdapter;
            if (baseAdapter.itemClickListener != null) {
                itemView.setOnClickListener(this);
            }
            if (baseAdapter.itemLongClickListener != null) {
                itemView.setOnLongClickListener(this);
            }
            int size = baseAdapter.getChildClickListeners().size();
            for (int i10 = 0; i10 < size; i10++) {
                View viewFindViewById = findViewById(this.this$0.getChildClickListeners().keyAt(i10));
                if (viewFindViewById != null) {
                    viewFindViewById.setOnClickListener(this);
                }
            }
            int size2 = this.this$0.getChildLongClickListeners().size();
            for (int i11 = 0; i11 < size2; i11++) {
                View viewFindViewById2 = findViewById(this.this$0.getChildLongClickListeners().keyAt(i11));
                if (viewFindViewById2 != null) {
                    viewFindViewById2.setOnLongClickListener(this);
                }
            }
        }

        public <V extends View> V findViewById(int i10) {
            return (V) getItemView().findViewById(i10);
        }

        public View getItemView() {
            View itemView = this.itemView;
            Intrinsics.g(itemView, "itemView");
            return itemView;
        }

        public int getViewHolderPosition() {
            return ((BaseAdapter) this.this$0).positionOffset + getLayoutPosition();
        }

        public abstract void onBindView(int i10);

        @Override
        public void onClick(View view) {
            Intrinsics.h(view, "view");
            int viewHolderPosition = getViewHolderPosition();
            if (viewHolderPosition < 0 || viewHolderPosition >= this.this$0.getItemCount()) {
                return;
            }
            if (view == getItemView()) {
                OnItemClickListener onItemClickListener = ((BaseAdapter) this.this$0).itemClickListener;
                if (onItemClickListener != null) {
                    onItemClickListener.onItemClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                    return;
                }
                return;
            }
            OnChildClickListener onChildClickListener = (OnChildClickListener) this.this$0.getChildClickListeners().get(view.getId());
            if (onChildClickListener != null) {
                onChildClickListener.onChildClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
            }
        }

        @Override
        public boolean onLongClick(View view) {
            Intrinsics.h(view, "view");
            int viewHolderPosition = getViewHolderPosition();
            if (viewHolderPosition >= 0 && viewHolderPosition < this.this$0.getItemCount()) {
                if (view == getItemView()) {
                    if (((BaseAdapter) this.this$0).itemLongClickListener == null) {
                        return false;
                    }
                    OnItemLongClickListener onItemLongClickListener = ((BaseAdapter) this.this$0).itemLongClickListener;
                    Intrinsics.e(onItemLongClickListener);
                    return onItemLongClickListener.onItemLongClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                }
                OnChildLongClickListener onChildLongClickListener = (OnChildLongClickListener) this.this$0.getChildLongClickListeners().get(view.getId());
                if (onChildLongClickListener != null) {
                    return onChildLongClickListener.onChildLongClick(((BaseAdapter) this.this$0).recyclerView, view, viewHolderPosition);
                }
            }
            return false;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public BaseViewHolder(BaseAdapter baseAdapter, int i10) {
            View viewInflate = LayoutInflater.from(baseAdapter.getContext()).inflate(i10, (ViewGroup) baseAdapter.recyclerView, false);
            Intrinsics.g(viewInflate, "from(getContext()).infla…(id, recyclerView, false)");
            this(baseAdapter, viewInflate);
        }
    }
}
