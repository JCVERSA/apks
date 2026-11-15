package com.transsion.audio.activities;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioSpeedSettingActivity;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.SpeedAdapter;
import com.transsion.playercommon.data.Speed;
import com.transsion.playercommon.widgets.SeekView;
import defpackage.f5;
import defpackage.h27;
import defpackage.ty5;
import defpackage.w6c;
import defpackage.y45;
import java.util.ArrayList;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\u0018\u0000 \r2\u00020\u0001:\u0001\u000eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0004H\u0014¢\u0006\u0004\b\u0006\u0010\u0003J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lcom/transsion/audio/activities/AudioSpeedSettingActivity;", "Lcom/transsion/playercommon/activities/RxPermissionOSBottomSheetDialog;", MethodDecl.initName, "()V", "Lzfb;", "initView", "onDestroy", "", "speed", "", "text", "k0", "(FLjava/lang/String;)V", "N", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioSpeedSettingActivity extends RxPermissionOSBottomSheetDialog {

    public static final Companion INSTANCE = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final void a(Context context) {
            f5.c(new Intent(context, (Class<?>) AudioSpeedSettingActivity.class), context);
        }

        public Companion() {
        }
    }

    public static final void h0(ArrayList arrayList, AudioSpeedSettingActivity audioSpeedSettingActivity, SeekView seekView, SpeedAdapter speedAdapter, int i) {
        float spV = ((Speed) arrayList.get(i)).getSpV();
        String spS = ((Speed) arrayList.get(i)).getSpS();
        y45.i(spS, "getSpS(...)");
        audioSpeedSettingActivity.k0(spV, spS);
        seekView.setSelectValue((int) (100 * spV), true);
        speedAdapter.r(i);
        Log.d("AudioSpeedSettingActivity", "onItemClick v:" + spV + ", s:" + spS);
        ty5.a.c(spV);
    }

    public static final void i0(SpeedAdapter speedAdapter, AudioSpeedSettingActivity audioSpeedSettingActivity, int i, String str) {
        y45.j(str, "drawString");
        float f = (i * 1.0f) / 100;
        speedAdapter.s(f);
        audioSpeedSettingActivity.k0(f, str);
        Log.d("AudioSpeedSettingActivity", "onValueChange speed:" + f);
        ty5.a.a(f);
    }

    public static final void j0(Context context) {
        INSTANCE.a(context);
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_audio_speed_setting, (ViewGroup) null);
        y45.i(viewInflate, "inflate(...)");
        float fB = w6c.b(this);
        final ArrayList arrayList = new ArrayList(4);
        arrayList.add(new Speed("0.5X", 0.5f));
        arrayList.add(new Speed("1.0X", 1.0f));
        arrayList.add(new Speed("1.5X", 1.5f));
        arrayList.add(new Speed("2.0X", 2.0f));
        final SeekView seekView = (SeekView) viewInflate.findViewById(R.id.seekView);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.speed_list_view);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this);
        linearLayoutManager.setOrientation(0);
        recyclerView.setLayoutManager(linearLayoutManager);
        final SpeedAdapter speedAdapter = new SpeedAdapter(arrayList, R.drawable.speed_item_bg_new, R.drawable.settings_item_textcolor_audio);
        speedAdapter.h(new SpeedAdapter.a() {
            @Override
            public final void onItemClick(int i) {
                AudioSpeedSettingActivity.h0(arrayList, this, seekView, speedAdapter, i);
            }
        });
        recyclerView.setAdapter(speedAdapter);
        speedAdapter.s(fB);
        seekView.setStep(10, false);
        seekView.setTextStep(50, false);
        seekView.setRange(50, 200, false);
        seekView.setValueChange(new SeekView.b() {
            @Override
            public final void a(int i, String str) {
                AudioSpeedSettingActivity.i0(speedAdapter, this, i, str);
            }
        });
        seekView.setSelectValue((int) (fB * 100), false);
        addPage(viewInflate).setTitleLayoutVisible(false).setCloseIconVisibility(false);
    }

    public final void k0(float speed, String text) {
        if (speed == w6c.b(this)) {
            return;
        }
        w6c.A(this, speed);
        MusicPlayManager.S().v1(speed);
        h27.c().e(1141, Float.valueOf(speed));
    }

    @Override
    public void onDestroy() {
        ty5.a.b(w6c.b(this));
        super.onDestroy();
    }
}
