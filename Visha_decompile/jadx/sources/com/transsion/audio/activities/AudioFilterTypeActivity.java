package com.transsion.audio.activities;

import android.os.Bundle;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.tencent.mmkv.MMKV;
import com.transsion.audio.R;
import com.transsion.audio.activities.AudioFilterTypeActivity;
import com.transsion.audio.adapter.AudioFilterSingleChoiceAdapter;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.databinding.ActivityAudioFilterTypeBinding;
import com.transsion.dbdata.utils.AudioFilterUtils;
import com.transsion.playercommon.activities.BasePermissionActivity;
import defpackage.ao;
import defpackage.h27;
import defpackage.hb0;
import defpackage.if7;
import defpackage.k29;
import defpackage.mc7;
import defpackage.t74;
import defpackage.uy5;
import defpackage.vb;
import defpackage.zf1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class AudioFilterTypeActivity extends BasePermissionActivity {
    public static final String U = "AudioFilterTypeActivity";
    public ActivityAudioFilterTypeBinding N;
    public List O;
    public List P;
    public String Q;
    public AudioFilterSingleChoiceAdapter R;
    public AudioItemAdapter S;
    public View T;

    public class a extends if7 {
        public a(int i, boolean z) {
            super(i, z);
        }

        @Override
        public void OnNoDoubleItemClickListener(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if ("filter_size".equals(AudioFilterTypeActivity.this.Q)) {
                AudioFilterUtils.g(i);
                uy5.k(i);
            } else {
                AudioFilterUtils.f(i);
                uy5.h(i);
            }
            h27.c().e(1109, new Object[0]);
            AudioFilterTypeActivity.this.R.notifyItemChanged(AudioFilterTypeActivity.this.R.g());
            AudioFilterTypeActivity.this.R.r(i);
            AudioFilterTypeActivity.this.R.notifyItemChanged(i);
            AudioFilterTypeActivity.this.Q0(i);
            AudioFilterTypeActivity.this.R0(i);
        }
    }

    private void N0() {
        this.N.g.findViewById(R.id.title_bar_back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.O0(view);
            }
        });
        ((TextView) this.N.g.findViewById(R.id.title_bar_title)).setText("filter_size".equals(this.Q) ? R.string.audio_filter_file_size : R.string.audio_filter_file_duration);
    }

    private void initData() {
        M0();
        L0();
        String stringExtra = getIntent().getStringExtra("filter_type");
        this.Q = stringExtra;
        if ("filter_size".equals(stringExtra) || "filter_duration".equals(this.Q)) {
            return;
        }
        LogUtils.m(U, "filterType is error");
        finish();
    }

    private void initView() {
        this.N.f.setLayoutManager(new LinearLayoutManager(this));
        if (this.Q.equals("filter_size")) {
            hb0.markDirect("vd_audio_filt_size_show");
            AudioFilterSingleChoiceAdapter audioFilterSingleChoiceAdapter = new AudioFilterSingleChoiceAdapter(this.O);
            this.R = audioFilterSingleChoiceAdapter;
            audioFilterSingleChoiceAdapter.r(MMKV.p().f("filter_size"));
        } else {
            hb0.markDirect("vd_audio_filt_time_show");
            AudioFilterSingleChoiceAdapter audioFilterSingleChoiceAdapter2 = new AudioFilterSingleChoiceAdapter(this.P);
            this.R = audioFilterSingleChoiceAdapter2;
            audioFilterSingleChoiceAdapter2.r(MMKV.p().f("filter_duration"));
        }
        this.N.f.setAdapter(this.R);
        AudioItemAdapter audioItemAdapter = new AudioItemAdapter(this);
        this.S = audioItemAdapter;
        audioItemAdapter.X(false);
        this.N.e.setAdapter(this.S);
        this.N.e.setLayoutManager(new LinearLayoutManager(this));
        this.R.setOnItemClickListener(new a(200, true));
        Q0(this.R.g());
        R0(this.R.g());
    }

    public final SpannableString I0(String str, String str2) {
        TypedValue typedValue = new TypedValue();
        getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        int i = typedValue.data;
        SpannableString spannableString = new SpannableString(str);
        int iIndexOf = str.indexOf(str2);
        spannableString.setSpan(new ForegroundColorSpan(i), iIndexOf, str2.length() + iIndexOf, 33);
        return spannableString;
    }

    public final List J0(String str) {
        return str.equals("filter_size") ? ao.U().P() : ao.U().O();
    }

    public final void K0(List list) {
        if (list == null || list.isEmpty()) {
            T0();
            return;
        }
        AudioItemAdapter audioItemAdapter = this.S;
        if (audioItemAdapter != null) {
            audioItemAdapter.setNewData(list);
            S0();
        }
    }

    public final void L0() {
        String[] strArr = new String[4];
        for (int i = 0; i < 4; i++) {
            int[] iArr = AudioFilterUtils.h;
            if (iArr[i] == 0) {
                strArr[i] = getResources().getString(R.string.audio_filter_default);
            } else {
                strArr[i] = getResources().getString(R.string.audio_filter_duration, String.valueOf(iArr[i]));
            }
        }
        this.P = new ArrayList(Arrays.asList(strArr));
    }

    public final void M0() {
        String[] strArr = new String[3];
        for (int i = 0; i < 3; i++) {
            int[] iArr = AudioFilterUtils.g;
            if (iArr[i] == 0) {
                strArr[i] = getResources().getString(R.string.audio_filter_default);
            } else {
                strArr[i] = getResources().getString(R.string.audio_filter_size, String.valueOf(iArr[i]));
            }
        }
        this.O = new ArrayList(Arrays.asList(strArr));
    }

    public final void O0(View view) {
        finish();
    }

    public final List P0(AudioFilterTypeActivity audioFilterTypeActivity) {
        return J0(this.Q);
    }

    public final void Q0(int i) {
        if (i == 0) {
            T0();
            return;
        }
        if ("filter_size".equals(this.Q)) {
            this.R.r(MMKV.p().f("filter_size"));
        } else {
            this.R.r(MMKV.p().f("filter_duration"));
        }
        mc7.K(this).g(bindToLifecycle()).L(new t74() {
            @Override
            public final Object apply(Object obj) {
                return this.b.P0((AudioFilterTypeActivity) obj);
            }
        }).d0(k29.c()).M(vb.a()).Z(new zf1() {
            @Override
            public final void accept(Object obj) {
                this.b.K0((List) obj);
            }
        });
    }

    public final void R0(int i) {
        if (this.Q.equals("filter_size")) {
            String strValueOf = String.valueOf(AudioFilterUtils.g[i]);
            this.N.h.setText(I0(String.format(getString(R.string.audio_file_hide_if_size_smaller), strValueOf), strValueOf));
        } else if (this.Q.equals("filter_duration")) {
            String strValueOf2 = String.valueOf(AudioFilterUtils.h[i]);
            this.N.h.setText(I0(String.format(getString(R.string.audio_file_hide_if_time_smaller), strValueOf2), strValueOf2));
        }
    }

    public final void S0() {
        this.N.e.setVisibility(0);
        this.N.c.setVisibility(0);
        View view = this.T;
        if (view != null) {
            view.setVisibility(8);
        }
    }

    public final void T0() {
        this.N.e.setVisibility(8);
        this.N.c.setVisibility(8);
        if (this.T == null) {
            View viewInflate = this.N.d.inflate();
            this.T = viewInflate;
            ((TextView) viewInflate.findViewById(R.id.text_no_audios)).setText(R.string.visha_not_file_hide_by_filter);
        }
        this.T.setVisibility(0);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        ActivityAudioFilterTypeBinding activityAudioFilterTypeBindingC = ActivityAudioFilterTypeBinding.c(getLayoutInflater());
        this.N = activityAudioFilterTypeBindingC;
        setContentView(activityAudioFilterTypeBindingC.getRoot());
        initData();
        N0();
        initView();
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
    }
}
