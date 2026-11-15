package com.transsion.playercommon.widgets;

import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.EqPresetAdapter;
import com.transsion.playercommon.widgets.DolbyEqDialog;
import com.transsion.widgets.DisableDragLinearLayout;
import com.transsion.widgets.InterceptLinearLayout;
import defpackage.lc3;
import defpackage.lw2;
import defpackage.mw2;
import defpackage.os8;
import defpackage.raa;
import defpackage.ry5;
import java.util.Arrays;

public class DolbyEqDialog extends RxPermissionOSBottomSheetDialog implements HeadsetHelper.Status {
    public RecyclerView N;
    public InterceptLinearLayout P;
    public EqPresetAdapter Q;
    public LinearLayoutManager R;
    public DisableDragLinearLayout S;
    public CustomOsSeekbar[] O = new CustomOsSeekbar[5];
    public HeadsetHelper T = null;

    public class a extends os8 {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onClick() {
            raa.f(this.b.getContext());
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public b() {
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            if (!mw2.c && raa.i(DolbyEqDialog.this.getApplication())) {
                Log.i("visha_EqDialog", "onItemClick: " + i);
                return;
            }
            int i2 = i + 1;
            DolbyEqDialog.this.Q.r(i);
            mw2.g(i2);
            for (int i3 = 0; i3 < mw2.b(); i3++) {
                DolbyEqDialog.this.setBandProgress(i3, lw2.g(mw2.c(i2, i3)));
            }
            lw2.l(mw2.d());
            ry5.d(i2);
        }
    }

    public static boolean j0(View view, MotionEvent motionEvent) {
        return true;
    }

    public static void showEqDialog(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(context, DolbyEqDialog.class);
        context.startActivity(intent);
    }

    @Override
    public void animateDismiss() {
        super.animateDismiss();
        lw2.l(mw2.d());
        mw2.d();
    }

    public final void i0() {
        lc3.h();
        mw2.c = lc3.c(this);
        View viewFindViewById = findViewById(R.id.ll_dolby_set);
        if (viewFindViewById != null) {
            viewFindViewById.setVisibility(!mw2.c ? 0 : 8);
        }
        InterceptLinearLayout interceptLinearLayout = this.P;
        if (interceptLinearLayout != null) {
            if (mw2.c) {
                interceptLinearLayout.setAlpha(1.0f);
                this.P.setChildClickable(true);
            } else {
                interceptLinearLayout.setAlpha(0.5f);
                this.P.setChildClickable(false);
            }
        }
    }

    public final void initClickable() {
        if (mw2.c) {
            this.P.setAlpha(1.0f);
            this.P.setChildClickable(true);
        } else {
            this.P.setAlpha(0.5f);
            this.P.setChildClickable(false);
        }
    }

    public final void initValue(Context context) {
        if (context == null) {
            return;
        }
        int i = R.array.dolby_preset_array;
        int i2 = R.layout.os_spinner_item_layout;
        ArrayAdapter.createFromResource(context, i, i2).setDropDownViewResource(i2);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.R = linearLayoutManager;
        this.N.setLayoutManager(linearLayoutManager);
        String[] stringArray = getResources().getStringArray(R.array.dolby_band_array);
        EqPresetAdapter eqPresetAdapter = new EqPresetAdapter(context);
        this.Q = eqPresetAdapter;
        this.N.setAdapter(eqPresetAdapter);
        this.Q.setNewData(Arrays.asList(stringArray));
        this.Q.setOnItemClickListener(new b());
        for (int i3 = 0; i3 < mw2.b(); i3++) {
            setBandProgress(i3, lw2.g(mw2.c(mw2.d().a, i3)));
        }
        setValues();
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.audio_dolby_eq_dialog, (ViewGroup) null);
        addPage(viewInflate).setTitle("").showTitle(false).setCloseIconVisibility(false);
        lc3.h();
        mw2.c = lc3.c(this);
        initView(viewInflate);
        initValue(this);
    }

    @Override
    public void k(HeadsetHelper.Status.Sta sta) {
        View viewFindViewById = findViewById(R.id.ll_dolby_set);
        if (sta == HeadsetHelper.Status.Sta.OUT) {
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(8);
            }
        } else if (sta == HeadsetHelper.Status.Sta.IN) {
            lc3.h();
            boolean zC = lc3.c(this);
            mw2.c = zC;
            if (viewFindViewById != null) {
                viewFindViewById.setVisibility(zC ? 8 : 0);
            }
        }
    }

    @Override
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.T = new HeadsetHelper(this);
        getLifecycle().addObserver(this.T);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        getLifecycle().removeObserver(this.T);
        this.T = null;
    }

    @Override
    public void onResume() {
        super.onResume();
        i0();
    }

    public final void setBandProgress(int i, int i2) {
        this.O[i].setProgress(i2);
    }

    public final void setValues() {
        int i = mw2.d().a;
        if (i < 1) {
            mw2.g(1);
            lw2.l(mw2.d());
            i = 1;
        }
        for (short s = 0; s < mw2.b(); s = (short) (s + 1)) {
            setBandProgress(s, lw2.g(mw2.c(i, s)));
        }
        int i2 = i - 1;
        this.Q.r(i2);
        this.R.scrollToPositionWithOffset(i2, com.transsion.utils.a.d(this, 150.0f));
        initClickable();
    }

    private void initView(View view) {
        DisableDragLinearLayout disableDragLinearLayout = (DisableDragLinearLayout) view.findViewById(R.id.ll_cannot_drag);
        this.S = disableDragLinearLayout;
        disableDragLinearLayout.setCanDrag(false);
        this.N = (RecyclerView) view.findViewById(R.id.rv_style);
        this.O[0] = (CustomOsSeekbar) view.findViewById(R.id.seekbar1);
        this.O[1] = (CustomOsSeekbar) view.findViewById(R.id.seekbar2);
        this.O[2] = (CustomOsSeekbar) view.findViewById(R.id.seekbar3);
        this.O[3] = (CustomOsSeekbar) view.findViewById(R.id.seekbar4);
        this.O[4] = (CustomOsSeekbar) view.findViewById(R.id.seekbar5);
        this.P = (InterceptLinearLayout) view.findViewById(R.id.ll_content);
        for (CustomOsSeekbar customOsSeekbar : this.O) {
            customOsSeekbar.setOnTouchListener(new View.OnTouchListener() {
                @Override
                public final boolean onTouch(View view2, MotionEvent motionEvent) {
                    return DolbyEqDialog.j0(view2, motionEvent);
                }
            });
        }
        view.findViewById(R.id.tv_go).setOnClickListener(new a(view));
    }
}
