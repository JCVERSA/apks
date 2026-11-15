package com.chad.library.adapter.base.listener;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.view.GestureDetectorCompat;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public abstract class SimpleClickListener implements RecyclerView.OnItemTouchListener {
    public static String TAG = "SimpleClickListener";
    protected BaseQuickAdapter baseQuickAdapter;
    private GestureDetectorCompat mGestureDetector;
    private boolean mIsPrepressed = false;
    private boolean mIsShowPress = false;
    private View mPressedView = null;
    private RecyclerView recyclerView;

    public class ItemTouchHelperGestureListener implements GestureDetector.OnGestureListener {
        private RecyclerView recyclerView;

        public ItemTouchHelperGestureListener(RecyclerView recyclerView) {
            this.recyclerView = recyclerView;
        }

        private void resetPressedView(final View view) {
            if (view != null) {
                view.postDelayed(new Runnable() {
                    @Override
                    public void run() {
                        View view2 = view;
                        if (view2 != null) {
                            view2.setPressed(false);
                        }
                    }
                }, 50L);
            }
            SimpleClickListener.this.mIsPrepressed = false;
            SimpleClickListener.this.mPressedView = null;
        }

        @Override
        public boolean onDown(MotionEvent motionEvent) {
            SimpleClickListener.this.mIsPrepressed = true;
            SimpleClickListener.this.mPressedView = this.recyclerView.findChildViewUnder(motionEvent.getX(), motionEvent.getY());
            return false;
        }

        @Override
        public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override
        public void onLongPress(MotionEvent motionEvent) {
            if (this.recyclerView.getScrollState() == 0 && SimpleClickListener.this.mIsPrepressed && SimpleClickListener.this.mPressedView != null) {
                SimpleClickListener.this.mPressedView.performHapticFeedback(0);
                BaseViewHolder baseViewHolder = (BaseViewHolder) this.recyclerView.getChildViewHolder(SimpleClickListener.this.mPressedView);
                int adapterPosition = baseViewHolder.getAdapterPosition();
                if (adapterPosition == -1 || SimpleClickListener.this.isHeaderOrFooterPosition(adapterPosition)) {
                    return;
                }
                HashSet<Integer> itemChildLongClickViewIds = baseViewHolder.getItemChildLongClickViewIds();
                Set<Integer> nestViews = baseViewHolder.getNestViews();
                if (itemChildLongClickViewIds != null && itemChildLongClickViewIds.size() > 0) {
                    for (Integer num : itemChildLongClickViewIds) {
                        View viewFindViewById = SimpleClickListener.this.mPressedView.findViewById(num.intValue());
                        if (SimpleClickListener.this.inRangeOfView(viewFindViewById, motionEvent) && viewFindViewById.isEnabled()) {
                            if (nestViews == null || !nestViews.contains(num)) {
                                SimpleClickListener.this.setPressViewHotSpot(motionEvent, viewFindViewById);
                                SimpleClickListener simpleClickListener = SimpleClickListener.this;
                                BaseQuickAdapter baseQuickAdapter = simpleClickListener.baseQuickAdapter;
                                simpleClickListener.onItemChildLongClick(baseQuickAdapter, viewFindViewById, adapterPosition - baseQuickAdapter.getHeaderLayoutCount());
                                viewFindViewById.setPressed(true);
                                SimpleClickListener.this.mIsShowPress = true;
                                return;
                            }
                            return;
                        }
                    }
                }
                SimpleClickListener simpleClickListener2 = SimpleClickListener.this;
                simpleClickListener2.onItemLongClick(simpleClickListener2.baseQuickAdapter, simpleClickListener2.mPressedView, adapterPosition - SimpleClickListener.this.baseQuickAdapter.getHeaderLayoutCount());
                SimpleClickListener simpleClickListener3 = SimpleClickListener.this;
                simpleClickListener3.setPressViewHotSpot(motionEvent, simpleClickListener3.mPressedView);
                SimpleClickListener.this.mPressedView.setPressed(true);
                if (itemChildLongClickViewIds != null) {
                    Iterator<Integer> it = itemChildLongClickViewIds.iterator();
                    while (it.hasNext()) {
                        View viewFindViewById2 = SimpleClickListener.this.mPressedView.findViewById(it.next().intValue());
                        if (viewFindViewById2 != null) {
                            viewFindViewById2.setPressed(false);
                        }
                    }
                }
                SimpleClickListener.this.mIsShowPress = true;
            }
        }

        @Override
        public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
            return false;
        }

        @Override
        public void onShowPress(MotionEvent motionEvent) {
            if (!SimpleClickListener.this.mIsPrepressed || SimpleClickListener.this.mPressedView == null) {
                return;
            }
            SimpleClickListener.this.mIsShowPress = true;
        }

        @Override
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            if (SimpleClickListener.this.mIsPrepressed && SimpleClickListener.this.mPressedView != null) {
                if (this.recyclerView.getScrollState() != 0) {
                    return false;
                }
                View view = SimpleClickListener.this.mPressedView;
                BaseViewHolder baseViewHolder = (BaseViewHolder) this.recyclerView.getChildViewHolder(view);
                int adapterPosition = baseViewHolder.getAdapterPosition();
                if (adapterPosition == -1 || SimpleClickListener.this.isHeaderOrFooterPosition(adapterPosition)) {
                    return false;
                }
                int headerLayoutCount = adapterPosition - SimpleClickListener.this.baseQuickAdapter.getHeaderLayoutCount();
                HashSet<Integer> childClickViewIds = baseViewHolder.getChildClickViewIds();
                Set<Integer> nestViews = baseViewHolder.getNestViews();
                if (childClickViewIds == null || childClickViewIds.size() <= 0) {
                    SimpleClickListener.this.setPressViewHotSpot(motionEvent, view);
                    SimpleClickListener.this.mPressedView.setPressed(true);
                    if (childClickViewIds != null && childClickViewIds.size() > 0) {
                        Iterator<Integer> it = childClickViewIds.iterator();
                        while (it.hasNext()) {
                            View viewFindViewById = view.findViewById(it.next().intValue());
                            if (viewFindViewById != null) {
                                viewFindViewById.setPressed(false);
                            }
                        }
                    }
                    SimpleClickListener simpleClickListener = SimpleClickListener.this;
                    simpleClickListener.onItemClick(simpleClickListener.baseQuickAdapter, view, headerLayoutCount);
                } else {
                    for (Integer num : childClickViewIds) {
                        View viewFindViewById2 = view.findViewById(num.intValue());
                        if (viewFindViewById2 != null) {
                            if (SimpleClickListener.this.inRangeOfView(viewFindViewById2, motionEvent) && viewFindViewById2.isEnabled()) {
                                if (nestViews != null && nestViews.contains(num)) {
                                    return false;
                                }
                                SimpleClickListener.this.setPressViewHotSpot(motionEvent, viewFindViewById2);
                                viewFindViewById2.setPressed(true);
                                SimpleClickListener simpleClickListener2 = SimpleClickListener.this;
                                simpleClickListener2.onItemChildClick(simpleClickListener2.baseQuickAdapter, viewFindViewById2, headerLayoutCount);
                                resetPressedView(viewFindViewById2);
                                return true;
                            }
                            viewFindViewById2.setPressed(false);
                        }
                    }
                    SimpleClickListener.this.setPressViewHotSpot(motionEvent, view);
                    SimpleClickListener.this.mPressedView.setPressed(true);
                    Iterator<Integer> it2 = childClickViewIds.iterator();
                    while (it2.hasNext()) {
                        View viewFindViewById3 = view.findViewById(it2.next().intValue());
                        if (viewFindViewById3 != null) {
                            viewFindViewById3.setPressed(false);
                        }
                    }
                    SimpleClickListener simpleClickListener3 = SimpleClickListener.this;
                    simpleClickListener3.onItemClick(simpleClickListener3.baseQuickAdapter, view, headerLayoutCount);
                }
                resetPressedView(view);
            }
            return true;
        }
    }

    public boolean isHeaderOrFooterPosition(int i) {
        if (this.baseQuickAdapter == null) {
            RecyclerView recyclerView = this.recyclerView;
            if (recyclerView == null) {
                return false;
            }
            this.baseQuickAdapter = (BaseQuickAdapter) recyclerView.getAdapter();
        }
        int itemViewType = this.baseQuickAdapter.getItemViewType(i);
        return itemViewType == 1365 || itemViewType == 273 || itemViewType == 819 || itemViewType == 546;
    }

    private boolean isHeaderOrFooterView(int i) {
        return i == 1365 || i == 273 || i == 819 || i == 546;
    }

    public void setPressViewHotSpot(MotionEvent motionEvent, View view) {
        if (view == null || view.getBackground() == null) {
            return;
        }
        view.getBackground().setHotspot(motionEvent.getRawX(), motionEvent.getY() - view.getY());
    }

    public boolean inRangeOfView(View view, MotionEvent motionEvent) {
        int[] iArr = new int[2];
        if (view != null && view.isShown()) {
            view.getLocationOnScreen(iArr);
            int i = iArr[0];
            int i2 = iArr[1];
            if (motionEvent.getRawX() >= i && motionEvent.getRawX() <= i + view.getWidth() && motionEvent.getRawY() >= i2 && motionEvent.getRawY() <= i2 + view.getHeight()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean onInterceptTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        BaseViewHolder baseViewHolder;
        RecyclerView recyclerView2 = this.recyclerView;
        if (recyclerView2 == null || recyclerView2 != recyclerView) {
            this.recyclerView = recyclerView;
            this.baseQuickAdapter = (BaseQuickAdapter) recyclerView.getAdapter();
            this.mGestureDetector = new GestureDetectorCompat(this.recyclerView.getContext(), new ItemTouchHelperGestureListener(this.recyclerView));
        }
        if (!this.mGestureDetector.onTouchEvent(motionEvent) && motionEvent.getActionMasked() == 1 && this.mIsShowPress) {
            View view = this.mPressedView;
            if (view != null && ((baseViewHolder = (BaseViewHolder) this.recyclerView.getChildViewHolder(view)) == null || !isHeaderOrFooterView(baseViewHolder.getItemViewType()))) {
                this.mPressedView.setPressed(false);
            }
            this.mIsShowPress = false;
            this.mIsPrepressed = false;
        }
        return false;
    }

    public abstract void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view, int i);

    public abstract void onItemChildLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);

    public abstract void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i);

    public abstract void onItemLongClick(BaseQuickAdapter baseQuickAdapter, View view, int i);

    @Override
    public void onRequestDisallowInterceptTouchEvent(boolean z) {
    }

    @Override
    public void onTouchEvent(RecyclerView recyclerView, MotionEvent motionEvent) {
        this.mGestureDetector.onTouchEvent(motionEvent);
    }
}
