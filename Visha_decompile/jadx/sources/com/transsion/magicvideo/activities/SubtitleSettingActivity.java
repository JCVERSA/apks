package com.transsion.magicvideo.activities;

import android.app.Activity;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import android.widget.Switch;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.p004lifecycle.Observer;
import com.transsion.WindowInfoViewModel;
import com.transsion.dbdata.beans.SubtitleSettingData;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.activities.SubtitleSettingActivity;
import com.transsion.magicvideo.model.VideoSubtitleViewModel;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.widgets.TranOsSeekbar;
import com.transsion.utils.BaseConstant;
import com.transsion.widgetslib.widget.seekbar.OSSectionSeekbar;
import defpackage.f16;
import defpackage.f5;
import defpackage.hb0;
import defpackage.k29;
import defpackage.k6a;
import defpackage.mc7;
import defpackage.t74;
import defpackage.vb;
import defpackage.woc;
import defpackage.zf1;
import java.util.Arrays;

public class SubtitleSettingActivity extends BaseActivity implements View.OnClickListener {
    public Switch N;
    public TextView O;
    public TextView P;
    public OSSectionSeekbar Q;
    public OSSectionSeekbar R;
    public SeekBar S;
    public SeekBar T;
    public TranOsSeekbar U;
    public SubtitleSettingData V;
    public VideoSubtitleViewModel W;
    public View X;
    public TextView Y;
    public View Z;
    public final Observer a0 = new Observer() {
        @Override
        public final void onChanged(Object obj) {
            this.a.K0((woc) obj);
        }
    };

    public class a implements k6a.d {
        public a() {
        }

        @Override
        public void a(int i) {
            SubtitleSettingActivity.this.O.setText(SubtitleSettingActivity.this.getResources().getStringArray(R.array.location_array)[i]);
            SubtitleSettingActivity.this.V.location = i;
            SubtitleSettingActivity.this.V.translateY = 0;
            SubtitleSettingActivity.this.R0();
        }
    }

    public class b implements k6a.d {
        public b() {
        }

        @Override
        public void a(int i) {
            SubtitleSettingActivity.this.P.setText(SubtitleSettingActivity.this.getResources().getStringArray(R.array.text_alignment_array)[i]);
            SubtitleSettingActivity.this.V.textAlignment = i;
            SubtitleSettingActivity.this.T0();
        }
    }

    public class c implements k6a.d {
        public c() {
        }

        @Override
        public void b(int i) {
            SubtitleSettingActivity.this.V.textSize = i / 50;
            SubtitleSettingActivity.this.X0();
        }
    }

    public class d implements k6a.d {
        public d() {
        }

        @Override
        public void b(int i) {
            SubtitleSettingActivity.this.V.textStyle = i / 50;
            SubtitleSettingActivity.this.U0();
        }
    }

    public class e implements k6a.d {
        public e() {
        }

        @Override
        public void b(int i) {
            SubtitleSettingActivity.this.V.textColor = i;
            SubtitleSettingActivity.this.W0();
        }
    }

    public class f implements k6a.d {
        public f() {
        }

        @Override
        public void b(int i) {
            SubtitleSettingActivity.this.V.textBackgroundOpacity = 100 - i;
            SubtitleSettingActivity.this.V0();
        }
    }

    public class g implements k6a.d {
        public g() {
        }

        @Override
        public void b(int i) {
            SubtitleSettingActivity.this.V.textBackgroundColor = i;
            SubtitleSettingActivity.this.V0();
        }
    }

    private void G0() {
        VideoSubtitleViewModel videoSubtitleViewModel = (VideoSubtitleViewModel) getViewModel(VideoSubtitleViewModel.class);
        this.W = videoSubtitleViewModel;
        videoSubtitleViewModel.getSettingLiveData().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.I0((SubtitleSettingData) obj);
            }
        });
        this.W.querySettingData(this);
        WindowInfoViewModel windowInfoViewModel = (WindowInfoViewModel) getViewModel(WindowInfoViewModel.class);
        this.mWindowInfoViewModel = windowInfoViewModel;
        windowInfoViewModel.a.observeForever(this.a0);
    }

    private void H0() {
        this.Z = findViewById(R.id.container);
        this.N = (Switch) findViewById(R.id.switch_move);
        this.O = (TextView) findViewById(R.id.tv_location);
        this.P = (TextView) findViewById(R.id.tv_text_alignment);
        this.Q = (OSSectionSeekbar) findViewById(R.id.seekbar_size);
        this.R = (OSSectionSeekbar) findViewById(R.id.seekbar_weight);
        this.S = (SeekBar) findViewById(R.id.seekbar_text_color);
        this.T = (SeekBar) findViewById(R.id.seekbar_background_color);
        this.U = (TranOsSeekbar) findViewById(R.id.seekbar_opacity);
        View viewFindViewById = findViewById(R.id.title_bar_back);
        this.X = viewFindViewById;
        viewFindViewById.setOnClickListener(this);
        this.Y = (TextView) findViewById(R.id.tv_subtitle_preview);
        final View viewFindViewById2 = findViewById(R.id.subtitle_view);
        viewFindViewById2.post(new Runnable() {
            @Override
            public final void run() {
                SubtitleSettingActivity.J0(viewFindViewById2);
            }
        });
    }

    public static void J0(View view) {
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) view.getLayoutParams();
        layoutParams.height = (view.getWidth() * 534) / 1080;
        view.setLayoutParams(layoutParams);
    }

    public void K0(woc wocVar) {
        int i = wocVar.a;
        boolean z = wocVar.g;
        boolean z2 = wocVar.c;
        if (i == 0) {
            this.Z.setPadding(0, 0, 0, 0);
            return;
        }
        if (i != 2) {
            return;
        }
        if (z2) {
            this.Z.setPadding(0, 0, 0, 0);
        } else if (z) {
            this.Z.setPadding(com.transsion.utils.a.d(this, 93.0f), 0, com.transsion.utils.a.d(this, 93.0f), 0);
        } else {
            this.Z.setPadding(com.transsion.utils.a.d(this, 80.0f), 0, com.transsion.utils.a.d(this, 80.0f), 0);
        }
    }

    public static void Q0(Activity activity) {
        f5.b(new Intent(activity, (Class<?>) SubtitleSettingActivity.class), BaseConstant.d, activity);
    }

    public final void I0(SubtitleSettingData subtitleSettingData) {
        this.V = subtitleSettingData;
        Y0();
    }

    public final Boolean L0(SubtitleSettingActivity subtitleSettingActivity) {
        this.W.insertSettingDataSync(this.V, this);
        return Boolean.TRUE;
    }

    public final void M0(Boolean bool) {
        finish();
    }

    public final void N0(View view) {
        this.V.textDrag = !this.N.isChecked() ? 1 : 0;
    }

    public final void O0(View view) {
        SubtitleSettingData subtitleSettingData = this.V;
        k6a.l(subtitleSettingData.translateY != 0 ? -1 : subtitleSettingData.location, view, this, new a(), Arrays.asList(getResources().getStringArray(R.array.location_array)), false);
    }

    public final void P0(View view) {
        k6a.l(this.V.textAlignment, view, this, new b(), Arrays.asList(getResources().getStringArray(R.array.text_alignment_array)), false);
    }

    public final void R0() {
        this.Y.setLayoutParams(k6a.d((RelativeLayout.LayoutParams) this.Y.getLayoutParams(), this.V.location, true, null, null));
    }

    public final void S0() {
        R0();
        T0();
        X0();
        U0();
        W0();
        V0();
    }

    public final void T0() {
        this.Y.setTextAlignment(k6a.e(this.V.textAlignment));
        this.Y.setText(R.string.subtitle_setting_hint);
    }

    public final void U0() {
        this.Y.setTextAppearance(k6a.f(this.V.textStyle));
    }

    public final void V0() {
        ((GradientDrawable) this.Y.getBackground()).setColor(ColorUtils.setAlphaComponent(getResources().getColor(k6a.c(this.V.textBackgroundColor), getTheme()), (this.V.textBackgroundOpacity * 255) / 100));
    }

    public final void W0() {
        this.Y.setTextColor(getResources().getColor(k6a.c(this.V.textColor), getTheme()));
    }

    public final void X0() {
        this.Y.setTextSize(0, getResources().getDimensionPixelOffset(k6a.g(this.V.textSize)));
    }

    public final void Y0() {
        if (this.V == null) {
            this.V = new SubtitleSettingData(0);
        }
        this.N.setChecked(this.V.canDrag());
        this.N.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.N0(view);
            }
        });
        if (this.V.translateY != 0) {
            this.O.setText(getResources().getString(R.string.subtitle_customize_location_customized));
        } else {
            this.O.setText(getResources().getStringArray(R.array.location_array)[this.V.location]);
        }
        this.O.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.O0(view);
            }
        });
        this.P.setText(getResources().getStringArray(R.array.text_alignment_array)[this.V.textAlignment]);
        this.P.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.P0(view);
            }
        });
        k6a.k(this.Q, this, new c());
        this.Q.setProgress(this.V.textSize * 50);
        k6a.k(this.R, this, new d());
        this.R.setProgress(this.V.textStyle * 50);
        k6a.i(this.S, new e(), ((BaseActivity) this).mIsScreenLandscape, this);
        k6a.j(this.U, this, new f());
        k6a.i(this.T, new g(), ((BaseActivity) this).mIsScreenLandscape, this);
        this.S.setProgress(this.V.textColor);
        this.T.setProgress(this.V.textBackgroundColor);
        this.U.setProgress(100 - this.V.textBackgroundOpacity);
        S0();
    }

    @Override
    public int loadSkin(boolean z) {
        return super.loadSkin(false);
    }

    @Override
    public void onBackPressed() {
        super.onBackPressed();
        f16.c(this.V);
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.L0((SubtitleSettingActivity) obj);
            }
        }).M(vb.a()).d0(k29.c()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.M0((Boolean) obj);
            }
        });
    }

    @Override
    public void onClick(View view) {
        if (view.getId() == R.id.title_bar_back) {
            onBackPressed();
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_subtitle_setting);
        H0();
        G0();
        hb0.markDirect("vd_cp_subtitle_pop_customize_pop");
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        WindowInfoViewModel windowInfoViewModel = this.mWindowInfoViewModel;
        if (windowInfoViewModel != null) {
            windowInfoViewModel.a.removeObserver(this.a0);
        }
    }
}
