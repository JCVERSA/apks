package com.transsion.onlinevideo.widgets.view;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.CustomTabLayout;
import defpackage.ly4;
import java.util.ArrayList;
import java.util.List;

public class EpisodesPageView extends LinearLayout {
    public View b;
    public LinearLayout c;
    public ImageView d;
    public TextView e;
    public TextView f;
    public CustomTabLayout g;
    public ViewPager2 h;
    public EpisodesPageAdapter i;
    public List j;
    public List k;
    public d l;
    public e m;
    public View n;
    public ViewPager2.OnPageChangeCallback o;
    public float p;
    public float q;
    public boolean r;
    public int s;
    public ValueAnimator t;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageSelected(int i) {
            CustomTabLayout.Tab tabAt;
            super.onPageSelected(i);
            if (i >= EpisodesPageView.this.g.getTabCount() || (tabAt = EpisodesPageView.this.g.getTabAt(i)) == null) {
                return;
            }
            tabAt.select();
        }
    }

    public class b implements CustomTabLayout.OnTabSelectedListener {
        public b() {
        }

        @Override
        public void onTabReselected(CustomTabLayout.Tab tab) {
        }

        @Override
        public void onTabSelected(CustomTabLayout.Tab tab) {
            EpisodesPageView.this.h.setCurrentItem(tab.getPosition(), true);
        }

        @Override
        public void onTabUnselected(CustomTabLayout.Tab tab) {
        }
    }

    public class c extends AnimatorListenerAdapter {
        public c() {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            if (EpisodesPageView.this.m != null) {
                EpisodesPageView.this.m.a();
            }
            EpisodesPageView.this.setTranslationY(0.0f);
            EpisodesPageView.this.setVisibility(8);
        }
    }

    public interface d {
        void a(List list, int i);
    }

    public interface e {
        void a();
    }

    public EpisodesPageView(Context context) {
        this(context, null);
    }

    private void setEpisodes(List<TranVideoDetail.VideoSerials> list) {
        this.j = list;
        this.k.clear();
        this.g.removeAllTabs();
        if (list == null || list.isEmpty()) {
            this.i.notifyDataSetChanged();
            return;
        }
        int i = 0;
        while (i < list.size()) {
            int i2 = i + 30;
            int iMin = Math.min(i2, list.size());
            this.k.add(new ArrayList(list.subList(i, iMin)));
            CustomTabLayout.Tab tabNewTab = this.g.newTab();
            tabNewTab.setText((i + 1) + "-" + iMin);
            this.g.addTab(tabNewTab);
            i = i2;
        }
        boolean z = this.k.size() <= 1;
        this.g.setVisibility(z ? 8 : 0);
        this.n.setVisibility(z ? 0 : 8);
        this.i.notifyDataSetChanged();
        q();
    }

    private void setVideoInfo(TranVideoDetail.VideoInfoBean videoInfoBean) {
        if (videoInfoBean == null) {
            return;
        }
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(videoInfoBean.getVideoTitle());
        }
        if (this.d != null) {
            ly4.a(getContext(), this.d, videoInfoBean.getCoverY(), R.drawable.ic_online_cover_default);
        }
        if (this.f != null) {
            if (videoInfoBean.getSerialCount() <= videoInfoBean.getUpdateSerialNo()) {
                if (videoInfoBean.getSerialCount() == videoInfoBean.getUpdateSerialNo()) {
                    this.f.setText(getContext().getString(R.string.video_onlinevideo_episodes_all, Integer.valueOf(videoInfoBean.getSerialCount())));
                    return;
                }
                return;
            }
            this.f.setText(getContext().getString(R.string.video_onlinevideo_episodes_update, videoInfoBean.getUpdateSerialNo() + "", videoInfoBean.getSerialCount() + ""));
        }
    }

    public final void h() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getTranslationY(), getHeight());
        this.t = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.m(valueAnimator);
            }
        });
        this.t.addListener(new c());
        this.t.start();
    }

    public final void i() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(getTranslationY(), 0.0f);
        this.t = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(300L);
        this.t.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
            @Override
            public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                this.b.n(valueAnimator);
            }
        });
        this.t.start();
    }

    public final void j() {
        if (getTranslationY() > getHeight() * 0.3f) {
            h();
        } else {
            i();
        }
    }

    public final boolean k(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 0) {
            float rawY = motionEvent.getRawY();
            this.p = rawY;
            this.q = rawY;
            this.r = false;
            ValueAnimator valueAnimator = this.t;
            if (valueAnimator != null && valueAnimator.isRunning()) {
                this.t.cancel();
            }
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                float rawY2 = motionEvent.getRawY();
                float f = rawY2 - this.p;
                if (!this.r && Math.abs(f) > this.s) {
                    this.r = true;
                }
                if (this.r && f > 0.0f) {
                    setTranslationY(f);
                }
                this.q = rawY2;
                return true;
            }
            if (action != 3) {
                return false;
            }
        }
        if (this.r) {
            j();
        }
        this.r = false;
        return true;
    }

    public final void l() {
        setOrientation(1);
        LayoutInflater.from(getContext()).inflate(R.layout.view_episodes_page, (ViewGroup) this, true);
        this.b = findViewById(R.id.drag_handle);
        this.c = (LinearLayout) findViewById(R.id.ll_episode_header);
        this.d = (ImageView) findViewById(R.id.iv_episode_cover);
        this.e = (TextView) findViewById(R.id.tv_episode_title);
        this.f = (TextView) findViewById(R.id.tv_episode_count);
        this.g = (CustomTabLayout) findViewById(R.id.tab_layout);
        this.h = (ViewPager2) findViewById(R.id.view_pager);
        this.n = findViewById(R.id.space_between);
        this.s = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        r();
        this.k = new ArrayList();
        EpisodesPageAdapter episodesPageAdapter = new EpisodesPageAdapter(getContext(), this.k);
        this.i = episodesPageAdapter;
        this.h.setAdapter(episodesPageAdapter);
        s();
        this.i.setOnEpisodeClickListener(new EpisodesPageAdapter.a() {
            @Override
            public final void a(List list, int i) {
                this.a.o(list, i);
            }
        });
    }

    public final void m(ValueAnimator valueAnimator) {
        setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public final void n(ValueAnimator valueAnimator) {
        setTranslationY(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    public void notifyAdapter() {
        this.i.notifyDataSetChanged();
    }

    public final void o(List list, int i) {
        if (this.l != null) {
            this.l.a(this.j, (this.h.getCurrentItem() * 30) + i);
            this.i.notifyDataSetChanged();
        }
    }

    @Override
    public void onDetachedFromWindow() {
        ViewPager2.OnPageChangeCallback onPageChangeCallback;
        super.onDetachedFromWindow();
        ViewPager2 viewPager2 = this.h;
        if (viewPager2 != null && (onPageChangeCallback = this.o) != null) {
            viewPager2.unregisterOnPageChangeCallback(onPageChangeCallback);
        }
        ValueAnimator valueAnimator = this.t;
        if (valueAnimator != null && valueAnimator.isRunning()) {
            this.t.cancel();
        }
        this.l = null;
        this.m = null;
        List list = this.j;
        if (list != null) {
            list.clear();
        }
        List list2 = this.k;
        if (list2 != null) {
            list2.clear();
        }
    }

    public final boolean p(View view, MotionEvent motionEvent) {
        return k(motionEvent);
    }

    public final void q() {
        List list = this.j;
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i = 0; i < this.j.size(); i++) {
            TranVideoDetail.VideoSerials videoSerials = (TranVideoDetail.VideoSerials) this.j.get(i);
            if (videoSerials != null && videoSerials.getSerialId() == PlayDetailDataManger.sCurrentSerialId) {
                int i2 = i / 30;
                if (this.h == null || i2 >= this.k.size()) {
                    return;
                }
                this.h.setCurrentItem(i2, false);
                return;
            }
        }
    }

    public final void r() {
        setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.p(view, motionEvent);
            }
        });
    }

    public final void s() {
        a aVar = new a();
        this.o = aVar;
        this.h.registerOnPageChangeCallback(aVar);
        this.g.addOnTabSelectedListener((CustomTabLayout.OnTabSelectedListener) new b());
        this.g.setTabTextColors(getResources().getColor(R.color.os_color_white40), getResources().getColor(R.color.os_color_white90));
    }

    public void setOnEpisodeClickListener(d dVar) {
        this.l = dVar;
    }

    public void setOnViewHiddenListener(e eVar) {
        this.m = eVar;
    }

    public void setVideoDetail(TranVideoDetail tranVideoDetail) {
        if (tranVideoDetail == null || tranVideoDetail.getVideoInfo() == null) {
            return;
        }
        setVideoInfo(tranVideoDetail.getVideoInfo());
        List<TranVideoDetail.VideoSerials> videoSerials = (tranVideoDetail.getVideoSeries() == null || tranVideoDetail.getVideoSeries().isEmpty()) ? tranVideoDetail.getVideoSerials() : PlayDetailDataManger.getEpisodes(tranVideoDetail.getVideoInfo().getSeriesId());
        if (videoSerials == null || videoSerials.isEmpty()) {
            return;
        }
        setEpisodes(videoSerials);
    }

    public EpisodesPageView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public EpisodesPageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        l();
    }
}
