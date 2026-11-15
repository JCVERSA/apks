package com.transsion.magicvideo.widgets;

import android.content.Context;
import android.graphics.Point;
import android.graphics.RectF;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.VideoPlayerActivity;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.av3;
import defpackage.pp3;
import defpackage.vha;
import defpackage.wna;

public class VideoTouchPlayUI extends PlayerViewController {
    public int A0;
    public int B0;
    public int C0;
    public int D0;
    public int E0;
    public int F0;
    public OSSeekbar G0;
    public long H0;
    public boolean I0;
    public int J0;
    public int K0;
    public a L0;
    public TextView q0;
    public TextView r0;
    public int s0;
    public int t0;
    public int u0;
    public int v0;
    public int w0;
    public int x0;
    public int y0;
    public int z0;

    public interface a {
        void a(int i, float f, boolean z);
    }

    public VideoTouchPlayUI(Context context) {
        super(context);
    }

    @Override
    public void O(long j, long j2, long j3) {
        TextView textView;
        super.O(j, j2, j3);
        if (this.H0 != j2) {
            this.H0 = j2;
            TextView textView2 = this.r0;
            if (textView2 != null) {
                textView2.setText(wna.c(j2));
            }
        }
        long j4 = this.H0;
        if (j > j4) {
            j = j4;
        }
        int iRound = Math.round((100 * j) / j2);
        if (!this.b0 && (textView = this.q0) != null) {
            textView.setText(wna.d(j));
        }
        if (this.b0) {
            return;
        }
        OSSeekbar oSSeekbar = this.G0;
        if (oSSeekbar != null) {
            oSSeekbar.setProgress(iRound);
        }
        c0(j, j2);
    }

    public final void Z(int i, float f, boolean z) {
        a aVar = this.L0;
        if (aVar != null) {
            aVar.a(i, f, z);
        }
    }

    public void a0(Context context) {
        this.s0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_top);
        this.t0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_bottom);
        this.u0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_start);
        this.w0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_end);
        this.x0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_top_land);
        this.y0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_bottom_land);
        this.z0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_start_land);
        this.A0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_end_land);
        this.B0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_bottom_gestural);
        this.C0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_bottom_land_gestural);
        this.D0 = getResources().getDimensionPixelSize(R.dimen.video_operate_views_end_land_gestural);
        this.v0 = getResources().getDimensionPixelSize(R.dimen.video_operate_content_padding);
        this.J0 = getResources().getDimensionPixelSize(R.dimen.video_play_button_padding);
        this.K0 = getResources().getDimensionPixelSize(R.dimen.video_play_button_padding_land);
        this.E0 = getResources().getDimensionPixelSize(R.dimen.default_speed_size);
        this.F0 = getResources().getDimensionPixelSize(R.dimen.speed_size);
        if (pp3.x(getContext())) {
            int iG = pp3.g(context);
            int iH = pp3.h(context);
            this.u0 += iG;
            this.w0 += iH;
            this.x0 += iH;
            this.y0 += iG;
        }
    }

    public void b0(boolean z) {
        if (pp3.j()) {
            return;
        }
        float f = z ? 0.0f : 1.0f;
        this.g0.i2(f, f);
    }

    public void c0(long j, long j2) {
        PlayerViewController.b bVar;
        if (this.f && (bVar = this.h0) != null) {
            bVar.a(j, j2);
        }
    }

    public void d0() {
        try {
            if (this.G0 == null || !vha.s(this.l)) {
                return;
            }
            this.G0.setThumb(vha.e(this.l));
        } catch (Exception e) {
            Log.e("VideoTouchPlayUI", "updateSeekBarStyle " + e);
        }
    }

    @Override
    public void initTouchBounds() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService(WindowManager.class)).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        boolean z = this.O;
        int i = z ? this.z0 : this.Q;
        int i2 = z ? this.x0 : this.s0;
        int i3 = z ? this.A0 : this.Q;
        this.G.set(0.0f, 0.0f, i, point.y);
        RectF rectF = this.H;
        int i4 = point.x;
        rectF.set(i4 - i3, 0.0f, i4, point.y);
        this.F.set(0.0f, 0.0f, point.x, i2);
        if (this.I) {
            this.E.set(0.0f, 0.0f, point.x, point.y);
            int navbarSize = getNavbarSize("navigation_bar_gesture_height");
            RectF rectF2 = this.E;
            rectF2.top = rectF2.bottom - navbarSize;
        }
        g(point);
    }

    @Override
    public void j() {
        if (this.f) {
            super.j();
        }
    }

    @Override
    public void onProgressUpdateError(long j, long j2, long j3) {
        super.onProgressUpdateError(j, j2, j3);
        OSSeekbar oSSeekbar = this.G0;
        if (oSSeekbar != null) {
            oSSeekbar.setProgress(0.0f);
        }
        this.H0 = 0L;
        TextView textView = this.q0;
        if (textView != null) {
            textView.setText(wna.c(0L));
        }
    }

    @Override
    public void p(int i, float f) {
        if (this.f) {
            super.p(i, f);
            Z(i, f, true);
        }
    }

    public void resetSystemUiFlag() {
        if (Build.VERSION.SDK_INT <= 29 || !(getContext() instanceof VideoPlayerActivity)) {
            return;
        }
        ((VideoPlayerActivity) getContext()).s2();
    }

    @Override
    public void s(int i, float f) {
        if (this.f) {
            super.s(i, f);
            Z(i, f, false);
        }
    }

    public void setVolumeAndBrightnessChangeListener(a aVar) {
        this.L0 = aVar;
    }

    @Override
    public void t() {
        super.t();
        this.I0 = av3.z();
    }

    public VideoTouchPlayUI(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoTouchPlayUI(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
