package com.chad.library.adapter.base.callback;

import android.graphics.Canvas;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.ItemTouchHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.R;
import com.chad.library.adapter.base.BaseItemDraggableAdapter;
import com.chad.library.adapter.base.DraggableController;
import com.chad.library.adapter.base.listener.IDraggableListener;

public class ItemDragAndSwipeCallback extends ItemTouchHelper.Callback {
    private BaseItemDraggableAdapter mBaseItemDraggableAdapter;
    private IDraggableListener mDraggableListener;
    private float mMoveThreshold = 0.1f;
    private float mSwipeThreshold = 0.7f;
    private int mDragMoveFlags = 15;
    private int mSwipeMoveFlags = 32;

    public ItemDragAndSwipeCallback(BaseItemDraggableAdapter baseItemDraggableAdapter) {
        this.mBaseItemDraggableAdapter = baseItemDraggableAdapter;
    }

    private boolean isViewCreateByAdapter(@NonNull RecyclerView.ViewHolder viewHolder) {
        int itemViewType = viewHolder.getItemViewType();
        return itemViewType == 273 || itemViewType == 546 || itemViewType == 819 || itemViewType == 1365;
    }

    @Override
    public void clearView(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        super.clearView(recyclerView, viewHolder);
        if (isViewCreateByAdapter(viewHolder)) {
            return;
        }
        View view = viewHolder.itemView;
        int i = R.id.BaseQuickAdapter_dragging_support;
        if (view.getTag(i) != null && ((Boolean) viewHolder.itemView.getTag(i)).booleanValue()) {
            BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
            if (baseItemDraggableAdapter != null) {
                baseItemDraggableAdapter.onItemDragEnd(viewHolder);
            } else {
                IDraggableListener iDraggableListener = this.mDraggableListener;
                if (iDraggableListener != null) {
                    iDraggableListener.onItemDragEnd(viewHolder);
                }
            }
            viewHolder.itemView.setTag(i, Boolean.FALSE);
        }
        View view2 = viewHolder.itemView;
        int i2 = R.id.BaseQuickAdapter_swiping_support;
        if (view2.getTag(i2) == null || !((Boolean) viewHolder.itemView.getTag(i2)).booleanValue()) {
            return;
        }
        BaseItemDraggableAdapter baseItemDraggableAdapter2 = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter2 != null) {
            baseItemDraggableAdapter2.onItemSwipeClear(viewHolder);
        } else {
            IDraggableListener iDraggableListener2 = this.mDraggableListener;
            if (iDraggableListener2 != null) {
                iDraggableListener2.onItemSwipeClear(viewHolder);
            }
        }
        viewHolder.itemView.setTag(i2, Boolean.FALSE);
    }

    @Override
    public float getMoveThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.mMoveThreshold;
    }

    @Override
    public int getMovementFlags(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder) {
        return isViewCreateByAdapter(viewHolder) ? ItemTouchHelper.Callback.makeMovementFlags(0, 0) : ItemTouchHelper.Callback.makeMovementFlags(this.mDragMoveFlags, this.mSwipeMoveFlags);
    }

    @Override
    public float getSwipeThreshold(@NonNull RecyclerView.ViewHolder viewHolder) {
        return this.mSwipeThreshold;
    }

    @Override
    public boolean isItemViewSwipeEnabled() {
        BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter != null) {
            return baseItemDraggableAdapter.isItemSwipeEnable();
        }
        IDraggableListener iDraggableListener = this.mDraggableListener;
        if (iDraggableListener != null) {
            return iDraggableListener.isItemSwipeEnable();
        }
        return false;
    }

    @Override
    public boolean isLongPressDragEnabled() {
        BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter != null) {
            return baseItemDraggableAdapter.isItemDraggable() && !this.mBaseItemDraggableAdapter.hasToggleView();
        }
        IDraggableListener iDraggableListener = this.mDraggableListener;
        if (iDraggableListener != null) {
            return iDraggableListener.isItemDraggable() && !this.mDraggableListener.hasToggleView();
        }
        return false;
    }

    @Override
    public void onChildDrawOver(@NonNull Canvas canvas, @NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, float f, float f2, int i, boolean z) {
        super.onChildDrawOver(canvas, recyclerView, viewHolder, f, f2, i, z);
        if (i != 1 || isViewCreateByAdapter(viewHolder)) {
            return;
        }
        View view = viewHolder.itemView;
        canvas.save();
        if (f > 0.0f) {
            canvas.clipRect(view.getLeft(), view.getTop(), view.getLeft() + f, view.getBottom());
            canvas.translate(view.getLeft(), view.getTop());
        } else {
            canvas.clipRect(view.getRight() + f, view.getTop(), view.getRight(), view.getBottom());
            canvas.translate(view.getRight() + f, view.getTop());
        }
        BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter != null) {
            baseItemDraggableAdapter.onItemSwiping(canvas, viewHolder, f, f2, z);
        } else {
            IDraggableListener iDraggableListener = this.mDraggableListener;
            if (iDraggableListener != null) {
                iDraggableListener.onItemSwiping(canvas, viewHolder, f, f2, z);
            }
        }
        canvas.restore();
    }

    @Override
    public boolean onMove(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, @NonNull RecyclerView.ViewHolder viewHolder2) {
        return viewHolder.getItemViewType() == viewHolder2.getItemViewType();
    }

    @Override
    public void onMoved(@NonNull RecyclerView recyclerView, @NonNull RecyclerView.ViewHolder viewHolder, int i, @NonNull RecyclerView.ViewHolder viewHolder2, int i2, int i3, int i4) {
        super.onMoved(recyclerView, viewHolder, i, viewHolder2, i2, i3, i4);
        BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter != null) {
            baseItemDraggableAdapter.onItemDragMoving(viewHolder, viewHolder2);
            return;
        }
        IDraggableListener iDraggableListener = this.mDraggableListener;
        if (iDraggableListener != null) {
            iDraggableListener.onItemDragMoving(viewHolder, viewHolder2);
        }
    }

    @Override
    public void onSelectedChanged(RecyclerView.ViewHolder viewHolder, int i) {
        if (i == 2 && !isViewCreateByAdapter(viewHolder)) {
            BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
            if (baseItemDraggableAdapter != null) {
                baseItemDraggableAdapter.onItemDragStart(viewHolder);
            } else {
                IDraggableListener iDraggableListener = this.mDraggableListener;
                if (iDraggableListener != null) {
                    iDraggableListener.onItemDragStart(viewHolder);
                }
            }
            viewHolder.itemView.setTag(R.id.BaseQuickAdapter_dragging_support, Boolean.TRUE);
        } else if (i == 1 && !isViewCreateByAdapter(viewHolder)) {
            BaseItemDraggableAdapter baseItemDraggableAdapter2 = this.mBaseItemDraggableAdapter;
            if (baseItemDraggableAdapter2 != null) {
                baseItemDraggableAdapter2.onItemSwipeStart(viewHolder);
            } else {
                IDraggableListener iDraggableListener2 = this.mDraggableListener;
                if (iDraggableListener2 != null) {
                    iDraggableListener2.onItemSwipeStart(viewHolder);
                }
            }
            viewHolder.itemView.setTag(R.id.BaseQuickAdapter_swiping_support, Boolean.TRUE);
        }
        super.onSelectedChanged(viewHolder, i);
    }

    @Override
    public void onSwiped(@NonNull RecyclerView.ViewHolder viewHolder, int i) {
        if (isViewCreateByAdapter(viewHolder)) {
            return;
        }
        BaseItemDraggableAdapter baseItemDraggableAdapter = this.mBaseItemDraggableAdapter;
        if (baseItemDraggableAdapter != null) {
            baseItemDraggableAdapter.onItemSwiped(viewHolder);
            return;
        }
        IDraggableListener iDraggableListener = this.mDraggableListener;
        if (iDraggableListener != null) {
            iDraggableListener.onItemSwiped(viewHolder);
        }
    }

    public void setDragMoveFlags(int i) {
        this.mDragMoveFlags = i;
    }

    public void setMoveThreshold(float f) {
        this.mMoveThreshold = f;
    }

    public void setSwipeMoveFlags(int i) {
        this.mSwipeMoveFlags = i;
    }

    public void setSwipeThreshold(float f) {
        this.mSwipeThreshold = f;
    }

    public ItemDragAndSwipeCallback(DraggableController draggableController) {
        this.mDraggableListener = draggableController;
    }
}
