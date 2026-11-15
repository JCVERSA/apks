package com.transsion.onlinevideo;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.core.math.MathUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;

public class a {
    public boolean a;
    public boolean b;
    public boolean c = true;
    public int d;
    public int e;
    public d f;

    public class C0231a extends RecyclerView.OnScrollListener {
        public final BaseQuickAdapter c;

        public C0231a(BaseQuickAdapter baseQuickAdapter) {
            this.c = baseQuickAdapter;
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            super.onScrollStateChanged(recyclerView, i);
            if (i == 1) {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
                if (linearLayoutManager == null) {
                    a.this.b = false;
                } else if (linearLayoutManager.findLastVisibleItemPosition() == this.c.getItemCount() - 2) {
                    a.this.b = true;
                } else if (linearLayoutManager.findLastVisibleItemPosition() < this.c.getItemCount() - 2) {
                    a.this.b = false;
                }
            }
            if (a.this.b && a.this.a && i == 0 && !a.this.c) {
                a.this.c = true;
                if (a.this.f != null) {
                    a.this.f.route();
                }
                a.this.k(this.c, recyclerView);
            }
        }

        @Override
        public void onScrolled(RecyclerView recyclerView, int i, int i2) {
            super.onScrolled(recyclerView, i, i2);
            a.this.a = !recyclerView.canScrollHorizontally(1);
            LinearLayout footerLayout = this.c.getFooterLayout();
            if (footerLayout == null) {
                return;
            }
            View childAt = footerLayout.getChildAt(0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) childAt.getLayoutParams();
            ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_arrow);
            LinearLayoutManager linearLayoutManager = (LinearLayoutManager) recyclerView.getLayoutManager();
            if (linearLayoutManager != null && linearLayoutManager.findLastVisibleItemPosition() < this.c.getItemCount() - 2) {
                a.this.b = false;
            }
            if ((!a.this.a || !a.this.b || layoutParams.width >= a.this.e || i <= 0) && (i >= 0 || layoutParams.width <= a.this.d)) {
                return;
            }
            int i3 = layoutParams.width + i;
            layoutParams.width = i3;
            int iClamp = MathUtils.clamp(i3, a.this.d, a.this.e);
            layoutParams.width = iClamp;
            if (imageView != null) {
                imageView.setImageResource(iClamp <= a.this.d ? R.drawable.ic_pull_back_arrow : R.drawable.ic_pull_arrow);
            }
            a aVar = a.this;
            aVar.c = layoutParams.width <= aVar.d;
            childAt.setLayoutParams(layoutParams);
        }
    }

    public class b implements ValueAnimator.AnimatorUpdateListener {
        public final View b;

        public b(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.b.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
            this.b.requestLayout();
        }
    }

    public class c implements Animator.AnimatorListener {
        public final RecyclerView b;
        public final ImageView c;

        public c(RecyclerView recyclerView, ImageView imageView) {
            this.b = recyclerView;
            this.c = imageView;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.b.scrollBy(-a.this.d, 0);
            ImageView imageView = this.c;
            if (imageView != null) {
                imageView.setImageResource(R.drawable.ic_pull_back_arrow);
            }
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface d {
        void route();
    }

    public a(int i, int i2, d dVar) {
        this.d = i;
        this.e = i2;
        this.f = dVar;
    }

    public void j(BaseQuickAdapter baseQuickAdapter, RecyclerView recyclerView, View view) {
        baseQuickAdapter.addFooterView(view, 0, 0);
        recyclerView.addOnScrollListener(new C0231a(baseQuickAdapter));
    }

    public void k(BaseQuickAdapter baseQuickAdapter, RecyclerView recyclerView) {
        LinearLayout footerLayout = baseQuickAdapter.getFooterLayout();
        if (footerLayout == null) {
            return;
        }
        View childAt = footerLayout.getChildAt(0);
        ImageView imageView = (ImageView) childAt.findViewById(R.id.iv_arrow);
        ValueAnimator duration = ValueAnimator.ofInt(((LinearLayout.LayoutParams) childAt.getLayoutParams()).width, this.d).setDuration(300L);
        duration.addUpdateListener(new b(childAt));
        duration.start();
        duration.addListener(new c(recyclerView, imageView));
    }
}
