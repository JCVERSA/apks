package com.transsion.playercommon.widgets;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.motion.widget.MotionLayout;
import androidx.p004lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.WindowInfoViewModel;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.adapter.VideoSpeedAdapter;
import defpackage.mb8;
import defpackage.woc;
import java.util.ArrayList;
import java.util.List;

public class VideoPlayerSpeedChooserView extends MotionLayout {
    public static final int SPEED_CHANGING_1 = 0;
    public static final int SPEED_CHANGING_2 = 1;
    public static final int SPEED_CHANGING_3 = 2;
    public static final int SPEED_CHANGING_4 = 3;
    public static final int SPEED_FIXED = -1;
    public MotionLayout b;
    public TextView c;
    public RecyclerView d;
    public VideoSpeedAdapter e;
    public LinearLayout f;
    public List g;
    public Context h;
    public int i;
    public WindowInfoViewModel j;
    public MotionLayout.TransitionListener k;
    public boolean l;
    public final Observer m;

    public class a implements MotionLayout.TransitionListener {
        public a() {
        }

        @Override
        public void onTransitionChange(MotionLayout motionLayout, int i, int i2, float f) {
        }

        @Override
        public void onTransitionCompleted(MotionLayout motionLayout, int i) {
            VideoPlayerSpeedChooserView.this.l = false;
            VideoPlayerSpeedChooserView videoPlayerSpeedChooserView = VideoPlayerSpeedChooserView.this;
            videoPlayerSpeedChooserView.changeChildVisible(videoPlayerSpeedChooserView.i);
        }

        @Override
        public void onTransitionStarted(MotionLayout motionLayout, int i, int i2) {
        }

        @Override
        public void onTransitionTrigger(MotionLayout motionLayout, int i, boolean z, float f) {
        }
    }

    public VideoPlayerSpeedChooserView(Context context) {
        super(context);
        this.g = new ArrayList();
        this.i = -2;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.h((woc) obj);
            }
        };
        init(context);
    }

    private void f() {
        if (getContext() == null || !(getContext() instanceof BaseActivity)) {
            return;
        }
        BaseActivity baseActivity = (BaseActivity) getContext();
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) baseActivity.getViewModel(WindowInfoViewModel.class);
        this.j = windowInfoViewModel;
        windowInfoViewModel.a.observe(baseActivity, this.m);
    }

    public void h(woc wocVar) {
        if (this.b == null || wocVar.h() || wocVar.g()) {
            return;
        }
        d(wocVar.f() ? R.id.start : R.id.land);
    }

    @SuppressLint({"NotifyDataSetChanged"})
    public void changeChildVisible(int i) {
        if (i == -1) {
            this.f.setVisibility(0);
            this.d.setVisibility(8);
            this.c.setText(this.h.getString(R.string.play_speed_circle_2_0));
            setBackgroundResource(R.color.transparent);
            return;
        }
        if (i != 0 && i != 1 && i != 2 && i != 3) {
            this.f.setVisibility(8);
            this.d.setVisibility(8);
            setBackgroundResource(R.color.transparent);
        } else {
            setBackgroundResource(R.drawable.speed_chooser_view_bg);
            this.d.setVisibility(0);
            this.e.setSelectedItemPosition(i);
            this.e.notifyDataSetChanged();
            this.f.setVisibility(8);
        }
    }

    public final void d(int i) {
        if (this.b.getCurrentState() != i) {
            this.l = true;
        }
        if (this.k == null) {
            this.k = new a();
        }
        MotionLayout motionLayout = this.b;
        if (motionLayout != null) {
            motionLayout.transitionToState(i, 1);
            this.b.setTransitionListener(this.k);
        }
    }

    public final void e() {
        this.d.setLayoutManager(new LinearLayoutManager(this.h));
        VideoSpeedAdapter videoSpeedAdapter = new VideoSpeedAdapter();
        this.e = videoSpeedAdapter;
        this.d.setAdapter(videoSpeedAdapter);
        if (mb8.a >= 3.0f) {
            this.g.add(getResources().getString(R.string.play_speed_circle_3_0));
        }
        if (mb8.a >= 2.0f) {
            this.g.add(getResources().getString(R.string.play_speed_circle_2_0));
        }
        if (mb8.a >= 1.5f) {
            this.g.add(getResources().getString(R.string.play_speed_circle_1_5));
        }
        if (mb8.a >= 1.25f) {
            this.g.add(getResources().getString(R.string.play_speed_circle_1_25));
        }
        this.e.setNewData(this.g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void g() {
        woc wocVar;
        if (this.b == null || getContext() == null || !(getContext() instanceof BaseActivity) || (wocVar = (woc) ((WindowInfoViewModel) ((BaseActivity) getContext()).getViewModel(WindowInfoViewModel.class)).a.getValue()) == null) {
            return;
        }
        d(wocVar.f() ? R.id.start : R.id.land);
    }

    public void init(Context context) {
        this.h = context;
        View viewInflate = View.inflate(context, R.layout.player_speed_choose_view, this);
        this.b = (MotionLayout) viewInflate.findViewById(R.id.motionLayout);
        this.f = (LinearLayout) viewInflate.findViewById(R.id.ll_play_speed);
        this.d = (RecyclerView) viewInflate.findViewById(R.id.rv_speed);
        this.c = (TextView) viewInflate.findViewById(R.id.tv_play_speed);
        f();
        e();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        WindowInfoViewModel windowInfoViewModel = this.j;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.m);
        }
        this.b.setTransitionListener(null);
    }

    public void setSpeedLayout(boolean z, boolean z2) {
        if (z) {
            d(z2 ? R.id.half_up : R.id.half_down);
        } else {
            g();
        }
    }

    public void setSpeedState(int i) {
        if (this.i != i) {
            this.i = i;
            if (this.l) {
                return;
            }
            changeChildVisible(i);
        }
    }

    @Override
    public void setVisibility(int i) {
        if (i != 0) {
            this.l = false;
            setSpeedState(-2);
        }
        super.setVisibility(i);
    }

    public VideoPlayerSpeedChooserView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.g = new ArrayList();
        this.i = -2;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.h((woc) obj);
            }
        };
        init(context);
    }

    public VideoPlayerSpeedChooserView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = new ArrayList();
        this.i = -2;
        this.m = new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.h((woc) obj);
            }
        };
        init(context);
    }
}
