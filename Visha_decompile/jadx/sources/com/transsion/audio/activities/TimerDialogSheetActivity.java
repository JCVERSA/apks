package com.transsion.audio.activities;

import android.content.DialogInterface;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.Switch;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.activities.TimerDialogSheetActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.TimerChoiceAdapter;
import com.transsion.playercommon.widgets.CustomTimePicker;
import com.transsion.widgetslib.dialog.d;
import defpackage.hb0;
import defpackage.se;
import defpackage.vy5;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;

public class TimerDialogSheetActivity extends RxPermissionOSBottomSheetDialog {
    public TimerChoiceAdapter N;
    public List O;
    public MusicPlayManager P;
    public int Q;
    public RecyclerView R;
    public Runnable S = new Runnable() {
        @Override
        public void run() {
            se.b().postDelayed(TimerDialogSheetActivity.this.S, 500L);
            TimerDialogSheetActivity.this.y0();
        }
    };

    public void q0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        z0(i);
    }

    public static WindowInsetsCompat s0(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    public void y0() {
        long jE = w6c.e(this, "music_timer", 0L) - System.currentTimeMillis();
        if (jE >= 1000) {
            B0(jE);
            return;
        }
        vy5.c(((int) w6c.e(this, "music_timer_for_mark", 0L)) / 1000);
        boolean zC = w6c.c(this, "music_timer_finish_current", true);
        int iD = w6c.d(this, "music_timer_choice", 0);
        if (!zC || iD == 0) {
            B0(0L);
        } else {
            B0(-1L);
        }
        se.b().removeCallbacks(this.S);
    }

    public final void A0() {
        final d dVarA = new d.a(this).D(R.layout.video_custom_timepicker).u(R.string.timer_confirm, null).m(R.string.cancel, null).a();
        dVarA.getWindow().addFlags(1024);
        ViewCompat.setOnApplyWindowInsetsListener(dVarA.getWindow().getDecorView(), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return TimerDialogSheetActivity.s0(view, windowInsetsCompat);
            }
        });
        dVarA.setTitle(getResources().getString(com.transsion.audio.R.string.music_timer_custom_format_m, 0));
        dVarA.show();
        hb0.markDirect("vd_audio_timer_pop_custom_show");
        final CustomTimePicker customTimePicker = (CustomTimePicker) dVarA.findViewById(R.id.time_picker);
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                customTimePicker.removeTimeChangeUpdate();
            }
        });
        final Button buttonE = dVarA.e(-1);
        Button buttonE2 = dVarA.e(-2);
        buttonE.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.u0(dVarA, customTimePicker, view);
            }
        });
        buttonE2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v0(dVarA, view);
            }
        });
        buttonE.setEnabled(false);
        customTimePicker.setOnTimeChangeListener(new CustomTimePicker.c() {
            @Override
            public final void a(int i, int i2) {
                this.a.w0(buttonE, dVarA, customTimePicker, i, i2);
            }
        });
    }

    public void B0(long j) {
        for (int i = 1; i < this.O.size(); i++) {
            TimerChoiceAdapter.a aVar = (TimerChoiceAdapter.a) this.O.get(i);
            int i2 = this.Q;
            if (i == i2) {
                aVar.c = j;
                this.N.notifyItemChanged(i2);
            } else if (aVar.c != 0) {
                aVar.c = 0L;
                this.N.notifyItemChanged(i);
            }
        }
    }

    public void initData() {
        String string = getResources().getString(com.transsion.audio.R.string.minute);
        this.O = new ArrayList();
        this.O.add(new TimerChoiceAdapter.a(getString(com.transsion.audio.R.string.music_timer_close), 0L));
        this.O.add(new TimerChoiceAdapter.a(15 + string, 15L));
        this.O.add(new TimerChoiceAdapter.a(30 + string, 30L));
        this.O.add(new TimerChoiceAdapter.a(45 + string, 45L));
        this.O.add(new TimerChoiceAdapter.a(60 + string, 60L));
        this.O.add(new TimerChoiceAdapter.a(getString(com.transsion.audio.R.string.timer_custom), 0L));
        long jE = w6c.e(this, "music_timer", 0L);
        int i = this.Q;
        if (i == 0 || jE != 0) {
            ((TimerChoiceAdapter.a) this.O.get(i)).c = jE >= System.currentTimeMillis() ? jE - System.currentTimeMillis() : 0L;
        } else {
            ((TimerChoiceAdapter.a) this.O.get(i)).c = -1L;
        }
        this.N.r(this.Q);
        this.N.setNewData(this.O);
        B0(((TimerChoiceAdapter.a) this.O.get(this.Q)).c);
        if (this.Q != 0) {
            this.S.run();
        }
    }

    public void initRv(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.audio.R.id.rv_timer);
        this.R = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        TimerChoiceAdapter timerChoiceAdapter = new TimerChoiceAdapter(this);
        this.N = timerChoiceAdapter;
        this.R.setAdapter(timerChoiceAdapter);
        if (this.R.getItemAnimator() != null && (this.R.getItemAnimator() instanceof SimpleItemAnimator)) {
            ((SimpleItemAnimator) this.R.getItemAnimator()).setSupportsChangeAnimations(false);
        }
        this.N.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.b.p0(baseQuickAdapter, view2, i);
            }
        });
        this.N.setOnItemChildClickListener(new BaseQuickAdapter.OnItemChildClickListener() {
            @Override
            public final void onItemChildClick(BaseQuickAdapter baseQuickAdapter, View view2, int i) {
                this.a.q0(baseQuickAdapter, view2, i);
            }
        });
    }

    public void initSwitchBtn(View view) {
        final Switch r3 = (Switch) view.findViewById(com.transsion.audio.R.id.switch_btn);
        r3.setChecked(w6c.c(this, "music_timer_finish_current", true));
        r3.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.r0(r3, view2);
            }
        });
    }

    @Override
    public void initView() {
        super.initView();
        this.P = MusicPlayManager.S();
        this.Q = w6c.d(this, "music_timer_choice", 0);
        vy5.e(this.Q, w6c.c(this, "music_timer_finish_current", true) ? 1 : 0);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.audio.R.layout.audio_timer_dialog, (ViewGroup) null);
        initRv(viewInflate);
        initData();
        initSwitchBtn(viewInflate);
        addPage(viewInflate).setTitle(com.transsion.audio.R.string.play_timer).setCloseIconVisibility(false);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        se.b().removeCallbacks(this.S);
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    public final void p0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        z0(i);
    }

    public final void r0(Switch r1, View view) {
        vy5.f(r1.isChecked() ? 1 : 0);
        w6c.r(this, "music_timer_finish_current", r1.isChecked());
    }

    public final void u0(d dVar, CustomTimePicker customTimePicker, View view) {
        dVar.dismiss();
        long j = (((long) customTimePicker.getmSelectedMin()) * 60000) + (((long) customTimePicker.getmSelectedHour()) * DateUtils.MILLIS_PER_HOUR);
        x0(j, 5);
        vy5.b(((int) j) / 1000);
    }

    public final void v0(d dVar, View view) {
        dVar.dismiss();
        TimerChoiceAdapter timerChoiceAdapter = this.N;
        if (timerChoiceAdapter != null) {
            timerChoiceAdapter.r(this.Q);
        }
        hb0.markDirect("vd_audio_timer_pop_custom_cancel_cl");
    }

    public final void w0(Button button, d dVar, CustomTimePicker customTimePicker, int i, int i2) {
        button.setEnabled((i == 0 && i2 == 0) ? false : true);
        dVar.setTitle(customTimePicker.getmSelectedHour() == 0 ? getResources().getString(com.transsion.audio.R.string.music_timer_custom_format_m, Integer.valueOf(customTimePicker.getmSelectedMin())) : getResources().getString(com.transsion.audio.R.string.music_timer_custom_format_hm, Integer.valueOf(customTimePicker.getmSelectedHour()), Integer.valueOf(customTimePicker.getmSelectedMin())));
    }

    public final void x0(long j, int i) {
        w6c.t(this, "music_timer_choice", i);
        w6c.v(this, "music_timer", i == 0 ? 0L : System.currentTimeMillis() + j);
        w6c.v(this, "music_timer_for_mark", j);
        this.P.H(i != 0);
        this.N.r(i);
        this.Q = i;
        this.N.notifyDataSetChanged();
        se.b().removeCallbacks(this.S);
        se.b().postDelayed(this.S, 500L);
    }

    public final void z0(int i) {
        vy5.d(i);
        if (i == 0) {
            x0(0L, i);
        } else if (i != 5) {
            x0(((TimerChoiceAdapter.a) this.O.get(i)).b * 60000, i);
        } else {
            this.N.notifyDataSetChanged();
            A0();
        }
    }
}
