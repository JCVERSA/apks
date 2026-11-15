package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.RelativeLayout;
import androidx.annotation.Nullable;
import com.blankj.utilcode.util.ThreadUtils;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.player.VideoPlayManager;
import defpackage.fz5;
import defpackage.pp3;

public class VideoRetreatForwardLayout extends RelativeLayout {
    public Button b;
    public Button c;
    public boolean d;
    public int e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public boolean k;
    public boolean l;
    public boolean m;
    public a n;
    public final Runnable o;

    public interface a {
        void dismiss();

        void show();
    }

    public VideoRetreatForwardLayout(Context context) {
        super(context);
        this.o = new Runnable() {
            @Override
            public final void run() {
                this.b.hideRetreatOrForwardTip();
            }
        };
        a(context);
    }

    public final void a(Context context) {
        View viewInflate = View.inflate(context, R.layout.video_retreat_forward_tip, this);
        this.b = (Button) viewInflate.findViewById(R.id.video_play_retreat_tip_bt);
        this.c = (Button) viewInflate.findViewById(R.id.video_play_forward_tip_bt);
        b(context);
    }

    public final void b(Context context) {
        this.e = getResources().getDimensionPixelSize(R.dimen.video_tips_start);
        this.f = getResources().getDimensionPixelSize(R.dimen.video_tips_end);
        this.g = getResources().getDimensionPixelSize(R.dimen.video_tips_start_land);
        this.h = getResources().getDimensionPixelSize(R.dimen.video_tips_end_land);
        this.i = getResources().getDimensionPixelSize(R.dimen.video_tips_end_land_gestural);
        if (pp3.x(getContext())) {
            int iG = pp3.g(context);
            int iH = pp3.h(context);
            this.e += iG;
            this.f += iH;
        }
    }

    public final void c(boolean z) {
        int i;
        boolean z2 = this.m;
        int i2 = (z2 || !z) ? this.e : this.g;
        if (z2 || !z) {
            i = this.f;
        } else {
            i = this.l ? this.i : this.h;
        }
        setPadding(i2, 0, i, 0);
    }

    public void hideRetreatOrForwardTip() {
        int i = this.j;
        if (i != 0) {
            fz5.b(!this.k, i, VideoPlayManager.X().G());
            this.j = 0;
            this.b.setVisibility(8);
            this.c.setVisibility(8);
            a aVar = this.n;
            if (aVar != null) {
                aVar.dismiss();
            }
        }
    }

    public void multiWindowModeChanged(boolean z) {
        this.m = z;
        c(this.d);
    }

    public void requestedOrientation(boolean z) {
        this.d = z;
        c(z);
    }

    public void setIsRetreat(boolean z) {
        a aVar;
        if (this.k != z) {
            this.j = 0;
        }
        if (this.j == 0 && (aVar = this.n) != null) {
            aVar.show();
        }
        this.k = z;
        showRetreatOrForwardTip();
    }

    public void setNavigationMode(boolean z) {
        this.l = z;
        c(this.d);
    }

    public void setTime(int i) {
        this.j = i;
    }

    public void setTipShowListener(a aVar) {
        this.n = aVar;
    }

    public void showRetreatOrForwardTip() {
        this.b.setVisibility(this.k ? 0 : 8);
        this.c.setVisibility(this.k ? 8 : 0);
        this.j += 10;
        if (this.k) {
            this.b.setText(getResources().getString(R.string.video_retreat_tip_new, Integer.valueOf(this.j)));
        } else {
            this.c.setText(getResources().getString(R.string.video_forward_tip_new, Integer.valueOf(this.j)));
        }
        ThreadUtils.o().removeCallbacks(this.o);
        ThreadUtils.o().postDelayed(this.o, 800L);
    }

    public VideoRetreatForwardLayout(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.o = new Runnable() {
            @Override
            public final void run() {
                this.b.hideRetreatOrForwardTip();
            }
        };
        a(context);
    }

    public VideoRetreatForwardLayout(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.o = new Runnable() {
            @Override
            public final void run() {
                this.b.hideRetreatOrForwardTip();
            }
        };
        a(context);
    }
}
