package com.transsion.audio.activities;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.adapter.FilterItemAdapter;
import com.transsion.audio.databinding.DialogFilterAudioBinding;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.playercommon.activities.BasePermissionActivity;
import defpackage.f5;
import defpackage.hb0;
import java.util.ArrayList;

public class AudioFilterMainActivity extends BasePermissionActivity {
    public String[] N;
    public String[] O;
    public FilterItemAdapter P;
    public DialogFilterAudioBinding Q;

    public class a implements BaseQuickAdapter.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            int i2 = ((FilterItemAdapter.a) view.getTag()).c;
            if (i2 == 0) {
                hb0.markDirect("vd_audio_filt_size_cl");
                AudioFilterMainActivity.this.G0("filter_size");
                return;
            }
            if (i2 == 1) {
                hb0.markDirect("vd_audio_filt_time_cl");
                AudioFilterMainActivity.this.G0("filter_duration");
            } else if (i2 == 2) {
                hb0.markDirect("vd_audio_filt_fd_cl");
                AudioFilterMainActivity.this.H0();
            } else {
                if (i2 != 3) {
                    return;
                }
                hb0.markDirect("vd_audio_filt_hide_cl");
                AudioFilterMainActivity.this.F0();
            }
        }
    }

    private void initData() {
        this.N = J0();
        this.O = I0();
    }

    private void initView() {
        this.Q.f.setLayoutManager(new LinearLayoutManager(this));
        FilterItemAdapter filterItemAdapter = new FilterItemAdapter();
        this.P = filterItemAdapter;
        this.Q.f.setAdapter(filterItemAdapter);
        this.Q.c.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.K0(view);
            }
        });
        this.P.setOnItemClickListener(new a());
    }

    public final void F0() {
        f5.c(new Intent(this, (Class<?>) FilterResultActivity.class), this);
    }

    public final void G0(String str) {
        Intent intent = new Intent(this, (Class<?>) AudioFilterTypeActivity.class);
        intent.putExtra("filter_type", str);
        f5.c(intent, this);
    }

    public final void H0() {
        f5.c(new Intent(this, (Class<?>) AudioFilterFolderActivity.class), this);
    }

    public final String[] I0() {
        String[] strArr = new String[4];
        for (int i = 0; i < 4; i++) {
            int[] iArr = AudioFilterUtils.h;
            if (iArr[i] == 0) {
                strArr[i] = getResources().getString(R.string.audio_filter_default);
            } else {
                strArr[i] = getResources().getString(R.string.audio_filter_duration, String.valueOf(iArr[i]));
            }
        }
        return strArr;
    }

    public final String[] J0() {
        String[] strArr = new String[3];
        for (int i = 0; i < 3; i++) {
            int[] iArr = AudioFilterUtils.g;
            if (iArr[i] == 0) {
                strArr[i] = getResources().getString(R.string.audio_filter_default);
            } else {
                strArr[i] = getResources().getString(R.string.audio_filter_size, String.valueOf(iArr[i]));
            }
        }
        return strArr;
    }

    public final void K0(View view) {
        finish();
    }

    public final void L0() {
        ArrayList arrayList = new ArrayList();
        FilterItemAdapter.a aVar = new FilterItemAdapter.a();
        aVar.c = 0;
        aVar.a = getResources().getString(R.string.audio_filter_file_size);
        aVar.b = this.N[MMKV.p().f("filter_size")];
        arrayList.add(aVar);
        FilterItemAdapter.a aVar2 = new FilterItemAdapter.a();
        aVar2.c = 1;
        aVar2.a = getResources().getString(R.string.audio_filter_file_duration);
        aVar2.b = this.O[MMKV.p().f("filter_duration")];
        arrayList.add(aVar2);
        FilterItemAdapter.a aVar3 = new FilterItemAdapter.a();
        aVar3.c = 2;
        aVar3.a = getResources().getString(R.string.folders);
        aVar3.b = getResources().getString(R.string.audio_filter_bucket_hint);
        arrayList.add(aVar3);
        FilterItemAdapter.a aVar4 = new FilterItemAdapter.a();
        aVar4.c = 3;
        aVar4.a = getResources().getString(R.string.audio_filter_view_title);
        aVar4.b = getResources().getString(R.string.audio_filter_view_hint);
        arrayList.add(aVar4);
        FilterItemAdapter filterItemAdapter = this.P;
        if (filterItemAdapter != null) {
            filterItemAdapter.setNewData(arrayList);
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        DialogFilterAudioBinding dialogFilterAudioBindingC = DialogFilterAudioBinding.c(getLayoutInflater());
        this.Q = dialogFilterAudioBindingC;
        setContentView(dialogFilterAudioBindingC.getRoot());
        initData();
        initView();
    }

    @Override
    public void onResume() {
        super.onResume();
        L0();
        hb0.markDirect("vd_audio_filt_show");
    }
}
