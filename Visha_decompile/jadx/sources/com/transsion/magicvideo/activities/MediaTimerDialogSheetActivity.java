package com.transsion.magicvideo.activities;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.SimpleItemAnimator;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.magicvideo.activities.MediaTimerDialogSheetActivity;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.TimerChoiceAdapter;
import com.transsion.playercommon.widgets.CustomTimePicker;
import com.transsion.widgetslib.dialog.d;
import defpackage.h27;
import defpackage.se;
import defpackage.w6c;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.lang3.time.DateUtils;

public class MediaTimerDialogSheetActivity extends RxPermissionOSBottomSheetDialog {
    public TimerChoiceAdapter N;
    public List O;
    public int P;
    public RecyclerView Q;
    public Runnable R = new Runnable() {
        @Override
        public void run() {
            se.b().postDelayed(MediaTimerDialogSheetActivity.this.R, 500L);
            MediaTimerDialogSheetActivity.this.x0();
        }
    };

    public static void A0(Context context) {
        context.startActivity(new Intent(context, (Class<?>) MediaTimerDialogSheetActivity.class));
    }

    public void p0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y0(i);
    }

    public void q0(BaseQuickAdapter baseQuickAdapter, View view, int i) {
        y0(i);
    }

    public static WindowInsetsCompat r0(View view, WindowInsetsCompat windowInsetsCompat) {
        return windowInsetsCompat.consumeSystemWindowInsets();
    }

    private void w0(long j, int i) {
        w6c.G(this, i);
        w6c.F(this, i == 0 ? 0L : j + System.currentTimeMillis());
        this.N.r(i);
        this.P = i;
        this.N.notifyDataSetChanged();
        se.b().removeCallbacks(this.R);
        se.b().postDelayed(this.R, 500L);
        h27.c().e(1147, new Object[0]);
        h27.c().e(1150, new Object[0]);
    }

    public void x0() {
        long jO0 = o0();
        Log.i("timer", "refreshTimer: " + jO0);
        if (jO0 >= 1000) {
            B0(jO0);
            return;
        }
        this.P = 0;
        this.N.r(0);
        B0(0L);
        se.b().removeCallbacks(this.R);
    }

    private void y0(int i) {
        if (i == 0) {
            w0(0L, i);
        } else if (i != 5) {
            w0(((TimerChoiceAdapter.a) this.O.get(i)).b * 60000, i);
        } else {
            this.N.notifyDataSetChanged();
            z0();
        }
    }

    private void z0() {
        final d dVarA = new d.a(this).D(R.layout.video_custom_timepicker).u(R.string.timer_confirm, null).m(R.string.cancel, null).a();
        dVarA.getWindow().addFlags(1024);
        ViewCompat.setOnApplyWindowInsetsListener(dVarA.getWindow().getDecorView(), new OnApplyWindowInsetsListener() {
            @Override
            public final WindowInsetsCompat onApplyWindowInsets(View view, WindowInsetsCompat windowInsetsCompat) {
                return MediaTimerDialogSheetActivity.r0(view, windowInsetsCompat);
            }
        });
        dVarA.setTitle(getResources().getString(com.transsion.magicvideo.R.string.music_timer_custom_format_m, 0));
        dVarA.show();
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
                this.b.t0(dVarA, customTimePicker, view);
            }
        });
        buttonE2.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.u0(dVarA, view);
            }
        });
        buttonE.setEnabled(false);
        customTimePicker.setOnTimeChangeListener(new CustomTimePicker.c() {
            @Override
            public final void a(int i, int i2) {
                this.a.v0(buttonE, dVarA, customTimePicker, i, i2);
            }
        });
    }

    public void B0(long j) {
        for (int i = 0; i < this.O.size(); i++) {
            TimerChoiceAdapter.a aVar = (TimerChoiceAdapter.a) this.O.get(i);
            int i2 = this.P;
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
        String string = getResources().getString(com.transsion.magicvideo.R.string.minute);
        this.O = new ArrayList();
        this.O.add(new TimerChoiceAdapter.a(getString(com.transsion.magicvideo.R.string.music_timer_close), 0L));
        this.O.add(new TimerChoiceAdapter.a(15 + string, 15L));
        this.O.add(new TimerChoiceAdapter.a(30 + string, 30L));
        this.O.add(new TimerChoiceAdapter.a(45 + string, 45L));
        this.O.add(new TimerChoiceAdapter.a(60 + string, 60L));
        this.O.add(new TimerChoiceAdapter.a(getString(com.transsion.magicvideo.R.string.timer_custom), -1L));
        long jO0 = o0();
        int i = this.P;
        if (i == 0 || jO0 != 0) {
            ((TimerChoiceAdapter.a) this.O.get(i)).c = jO0 >= System.currentTimeMillis() ? jO0 - System.currentTimeMillis() : 0L;
        } else {
            ((TimerChoiceAdapter.a) this.O.get(i)).c = -1L;
        }
        this.N.r(this.P);
        this.N.setNewData(this.O);
        B0(((TimerChoiceAdapter.a) this.O.get(this.P)).c);
        if (this.P != 0) {
            this.R.run();
        }
    }

    public void initRv(View view) {
        RecyclerView recyclerView = (RecyclerView) view.findViewById(com.transsion.magicvideo.R.id.rv_timer);
        this.Q = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        TimerChoiceAdapter timerChoiceAdapter = new TimerChoiceAdapter(this);
        this.N = timerChoiceAdapter;
        this.Q.setAdapter(timerChoiceAdapter);
        if (this.Q.getItemAnimator() != null && (this.Q.getItemAnimator() instanceof SimpleItemAnimator)) {
            ((SimpleItemAnimator) this.Q.getItemAnimator()).setSupportsChangeAnimations(false);
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
    }

    @Override
    public void initView() {
        super.initView();
        this.P = w6c.m(this);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.magicvideo.R.layout.audio_timer_dialog, (ViewGroup) null);
        viewInflate.findViewById(com.transsion.magicvideo.R.id.rl_finish_current_song).setVisibility(8);
        viewInflate.findViewById(com.transsion.magicvideo.R.id.view_line).setVisibility(8);
        initRv(viewInflate);
        initData();
        initSwitchBtn(viewInflate);
        addPage(viewInflate).setTitle(com.transsion.magicvideo.R.string.play_timer).setCloseIconVisibility(false);
    }

    public long o0() {
        return w6c.l(this) - System.currentTimeMillis();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        se.b().removeCallbacks(this.R);
    }

    @Override
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
    }

    public final void t0(d dVar, CustomTimePicker customTimePicker, View view) {
        dVar.dismiss();
        w0((((long) customTimePicker.getmSelectedMin()) * 60000) + (((long) customTimePicker.getmSelectedHour()) * DateUtils.MILLIS_PER_HOUR), 5);
    }

    public final void u0(d dVar, View view) {
        dVar.dismiss();
        TimerChoiceAdapter timerChoiceAdapter = this.N;
        if (timerChoiceAdapter != null) {
            timerChoiceAdapter.r(this.P);
        }
    }

    public final void v0(Button button, d dVar, CustomTimePicker customTimePicker, int i, int i2) {
        button.setEnabled((i == 0 && i2 == 0) ? false : true);
        dVar.setTitle(customTimePicker.getmSelectedHour() == 0 ? getResources().getString(com.transsion.magicvideo.R.string.music_timer_custom_format_m, Integer.valueOf(customTimePicker.getmSelectedMin())) : getResources().getString(com.transsion.magicvideo.R.string.music_timer_custom_format_hm, Integer.valueOf(customTimePicker.getmSelectedHour()), Integer.valueOf(customTimePicker.getmSelectedMin())));
    }
}
