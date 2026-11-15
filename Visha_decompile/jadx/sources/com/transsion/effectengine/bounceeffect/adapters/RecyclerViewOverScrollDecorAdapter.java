package com.transsion.effectengine.bounceeffect.adapters;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;

public class RecyclerViewOverScrollDecorAdapter implements com.transsion.effectengine.bounceeffect.adapters.z1OoOfor {
    protected final z1OoOdo mImpl;
    protected boolean mIsItemTouchInEffect = false;
    protected final RecyclerView mRecyclerView;

    public interface LayoutManager {
        public static final int HORIZONTAL = 0;
        public static final int VERTICAL = 1;

        int getCusOrientation();
    }

    public interface z1OoOdo {
        boolean isInAbsoluteEnd();

        boolean isInAbsoluteStart();
    }

    public class z1OoOfor implements z1OoOdo {
        public z1OoOfor() {
        }

        @Override
        public final boolean isInAbsoluteEnd() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollVertically(1);
        }

        @Override
        public final boolean isInAbsoluteStart() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollVertically(-1);
        }
    }

    public class z1OoOif implements z1OoOdo {
        public z1OoOif() {
        }

        @Override
        public final boolean isInAbsoluteEnd() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollHorizontally(1);
        }

        @Override
        public final boolean isInAbsoluteStart() {
            return !RecyclerViewOverScrollDecorAdapter.this.mRecyclerView.canScrollHorizontally(-1);
        }
    }

    public RecyclerViewOverScrollDecorAdapter(RecyclerView recyclerView) {
        z1OoOdo z1oooif;
        this.mRecyclerView = recyclerView;
        Object layoutManager = recyclerView.getLayoutManager();
        boolean z = layoutManager instanceof LinearLayoutManager;
        if (z || (layoutManager instanceof StaggeredGridLayoutManager)) {
            z1oooif = (z ? ((LinearLayoutManager) layoutManager).getOrientation() : ((StaggeredGridLayoutManager) layoutManager).getOrientation()) == 0 ? new z1OoOif() : new z1OoOfor();
        } else {
            if (!(layoutManager instanceof LayoutManager)) {
                throw new IllegalArgumentException("Set a valid layout managers first, and custom layout manager is not support.");
            }
            z1oooif = ((LayoutManager) layoutManager).getCusOrientation() == 0 ? new z1OoOif() : new z1OoOfor();
        }
        this.mImpl = z1oooif;
    }

    @Override
    public View getView() {
        return this.mRecyclerView;
    }

    @Override
    public boolean isInAbsoluteEnd() {
        return !this.mIsItemTouchInEffect && this.mImpl.isInAbsoluteEnd();
    }

    @Override
    public boolean isInAbsoluteStart() {
        return !this.mIsItemTouchInEffect && this.mImpl.isInAbsoluteStart();
    }
}
