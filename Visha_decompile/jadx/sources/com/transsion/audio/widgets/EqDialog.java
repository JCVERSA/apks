package com.transsion.audio.widgets;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Rect;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.transsion.audio.R;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.playercommon.adapter.EqPresetAdapter;
import com.transsion.playercommon.widgets.CustomOsSeekbar;
import com.transsion.widgets.DisableDragLinearLayout;
import com.transsion.widgets.GestureUtil;
import defpackage.lc3;
import defpackage.mc3;
import defpackage.raa;
import defpackage.ry5;
import java.util.Arrays;

public class EqDialog extends RxPermissionOSBottomSheetDialog {
    public static String DIALOG_TAG_MORE = "dialog_tag_eq";
    private static final String EQ_1 = "EQ_1";
    private static final String EQ_2 = "EQ_2";
    private static final String EQ_3 = "EQ_3";
    private static final String EQ_3D = "EQ_3D";
    private static final String EQ_4 = "EQ_4";
    private static final String EQ_5 = "EQ_5";
    private static final String EQ_REVERB = "EQ_REVERB";
    private static final String TAG = "visha_EqDialog";
    private EqPresetAdapter eqPresetAdapter;
    private DisableDragLinearLayout ll_cannot_drag;
    private com.transsion.widgets.InterceptLinearLayout ll_content;
    private LinearLayoutManager presetLayoutManager;
    private RecyclerView rv_style;
    private CustomOsSeekbar sb_3d;
    private CustomOsSeekbar sb_bassboot;
    private String[] strings;
    private Switch switch_open;
    private TextView tv_reverb;
    private CustomOsSeekbar[] seekbars = new CustomOsSeekbar[5];
    private CustomOsSeekbar.f onSeekBarChangeListener = new CustomOsSeekbar.f() {
        @Override
        public void onProgressChanged(CustomOsSeekbar customOsSeekbar, int i, float f, boolean z) {
            Log.i(EqDialog.TAG, "onProgressChanged:" + z);
            String str = (String) customOsSeekbar.getTag();
            str.hashCode();
            switch (str) {
                case "EQ_1":
                    EqDialog.this.resetEqTag(z, 0);
                    break;
                case "EQ_2":
                    EqDialog.this.resetEqTag(z, 1);
                    break;
                case "EQ_3":
                    EqDialog.this.resetEqTag(z, 2);
                    break;
                case "EQ_4":
                    EqDialog.this.resetEqTag(z, 3);
                    break;
                case "EQ_5":
                    EqDialog.this.resetEqTag(z, 4);
                    break;
            }
        }

        @Override
        public void onStartTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            Log.i(EqDialog.TAG, "onStartTrackingTouch");
        }

        @Override
        public void onStopTrackingTouch(CustomOsSeekbar customOsSeekbar) {
            Log.i(EqDialog.TAG, "onStopTrackingTouch");
            String str = (String) customOsSeekbar.getTag();
            str.hashCode();
            switch (str) {
                case "EQ_1":
                    lc3.k((short) 0, (short) EqDialog.this.seekbars[0].getProgress());
                    break;
                case "EQ_2":
                    lc3.k((short) 1, (short) EqDialog.this.seekbars[1].getProgress());
                    break;
                case "EQ_3":
                    lc3.k((short) 2, (short) EqDialog.this.seekbars[2].getProgress());
                    break;
                case "EQ_4":
                    lc3.k((short) 3, (short) EqDialog.this.seekbars[3].getProgress());
                    break;
                case "EQ_5":
                    lc3.k((short) 4, (short) EqDialog.this.seekbars[4].getProgress());
                    break;
                case "EQ_3D":
                    lc3.o((short) EqDialog.this.sb_3d.getProgress());
                    break;
                case "EQ_REVERB":
                    lc3.l((short) EqDialog.this.sb_bassboot.getProgress());
                    break;
            }
            mc3.c(lc3.f());
        }
    };

    public void initClickable() {
        if (lc3.f().a) {
            this.ll_content.setAlpha(1.0f);
            this.ll_content.setChildClickable(true);
        } else {
            this.ll_content.setAlpha(0.5f);
            this.ll_content.setChildClickable(false);
        }
    }

    private void initValue(Context context) {
        if (context == null) {
            return;
        }
        int i = 0;
        this.switch_open.setChecked(lc3.f() != null && lc3.f().a);
        this.switch_open.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
            @Override
            public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                EqDialog.this.setEnable(z);
                if (z && EqDialog.this.eqPresetAdapter != null && EqDialog.this.eqPresetAdapter.g() == -1) {
                    EqDialog.this.eqPresetAdapter.r(0);
                    lc3.a((short) 0);
                    EqDialog.this.setValues();
                    mc3.c(lc3.f());
                }
                EqDialog.this.initClickable();
                ry5.c(z);
            }
        });
        this.tv_reverb.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.lambda$initValue$2(view);
            }
        });
        int i2 = R.array.preset_array;
        int i3 = R.layout.os_spinner_item_layout;
        ArrayAdapter.createFromResource(context, i2, i3).setDropDownViewResource(i3);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(context, 0, false);
        this.presetLayoutManager = linearLayoutManager;
        this.rv_style.setLayoutManager(linearLayoutManager);
        this.strings = getResources().getStringArray(R.array.band_array);
        EqPresetAdapter eqPresetAdapter = new EqPresetAdapter(context);
        this.eqPresetAdapter = eqPresetAdapter;
        this.rv_style.setAdapter(eqPresetAdapter);
        this.eqPresetAdapter.setNewData(Arrays.asList(this.strings));
        this.eqPresetAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
            @Override
            public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i4) {
                if (!lc3.f().a && raa.i(EqDialog.this.getApplication())) {
                    Log.i(EqDialog.TAG, "onItemClick: " + i4);
                    return;
                }
                EqDialog.this.eqPresetAdapter.r(i4);
                lc3.a((short) i4);
                for (short s = 0; s < lc3.e(); s = (short) (s + 1)) {
                    EqDialog.this.seekbars[s].setProgress(lc3.b(s));
                }
                mc3.c(lc3.f());
                ry5.d(i4);
            }
        });
        this.sb_bassboot.setOnProgressChangedListener(this.onSeekBarChangeListener);
        this.sb_3d.setOnProgressChangedListener(this.onSeekBarChangeListener);
        for (int i4 = 0; i4 < lc3.f().c.length; i4++) {
            setBandProgress(i4, lc3.f().c[i4]);
        }
        while (true) {
            CustomOsSeekbar[] customOsSeekbarArr = this.seekbars;
            if (i >= customOsSeekbarArr.length) {
                setValues();
                return;
            } else {
                customOsSeekbarArr[i].setOnProgressChangedListener(this.onSeekBarChangeListener);
                i++;
            }
        }
    }

    public void lambda$initGesture$3(int i) {
        if (i == 4 || i == 5) {
            animateDismiss();
        }
    }

    public void lambda$initValue$2(View view) {
        showListDialog();
        ry5.e();
    }

    public void lambda$initView$0() {
        this.sb_bassboot.setSystemGestureExclusionRects(Arrays.asList(new Rect(0, 0, this.sb_bassboot.getWidth(), this.sb_bassboot.getHeight())));
    }

    public void lambda$initView$1() {
        this.sb_3d.setSystemGestureExclusionRects(Arrays.asList(new Rect(0, 0, this.sb_3d.getWidth(), this.sb_3d.getHeight())));
    }

    public void resetEqTag(boolean z, int i) {
        if (z) {
            lc3.f().b = (short) 0;
            if (this.eqPresetAdapter.g() != 0) {
                this.eqPresetAdapter.r(0);
                this.rv_style.smoothScrollToPosition(0);
            }
            for (short s = 0; s < lc3.e(); s = (short) (s + 1)) {
                lc3.f().c[s] = (short) this.seekbars[s].getProgress();
            }
            Log.i(TAG, "resetEqTag index:" + i);
        }
    }

    private void setBandProgress(int i, int i2) {
        this.seekbars[i].setProgress(i2);
    }

    public void setEnable(boolean z) {
        lc3.m(z);
    }

    public void setValues() {
        this.sb_bassboot.setProgress(lc3.f().e);
        this.sb_3d.setProgress(lc3.f().f);
        for (short s = 0; s < lc3.f().c.length; s = (short) (s + 1)) {
            this.seekbars[s].setProgress(mc3.b(lc3.b(s)));
        }
        this.tv_reverb.setText(getResources().getStringArray(R.array.preset_array)[lc3.f().d]);
        this.switch_open.setChecked(lc3.f().a);
        this.eqPresetAdapter.r(lc3.f().b);
        this.presetLayoutManager.scrollToPositionWithOffset(lc3.f().b, com.transsion.utils.a.d(this, 150.0f));
        initClickable();
    }

    public static void showEqDialog(Context context) {
        if (context == null) {
            return;
        }
        Intent intent = new Intent();
        intent.setClass(context, EqDialog.class);
        context.startActivity(intent);
    }

    private void showListDialog() {
        final short s = lc3.f().d;
        final CharSequence[] textArray = getResources().getTextArray(R.array.preset_array);
        new com.transsion.widgetslib.dialog.d.a(this, 4).A(R.string.eq_reverb).z(textArray, s, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                EqDialog.this.tv_reverb.setText(textArray[i]);
                lc3.n((short) i);
            }
        }).u(R.string.apply, null).m(R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialogInterface, int i) {
                EqDialog.this.tv_reverb.setText(textArray[s]);
                lc3.n(s);
            }
        }).F();
    }

    @Override
    public void afterGpdrPermission() {
        super.afterGpdrPermission();
    }

    @Override
    public void animateDismiss() {
        super.animateDismiss();
        mc3.c(lc3.f());
        mc3 mc3VarF = lc3.f();
        if (mc3VarF != null) {
            ry5.b(mc3VarF.a, mc3VarF.b, mc3VarF.c, mc3VarF.e, mc3VarF.f, mc3VarF.d);
        }
    }

    public void initGesture(View view) {
        GestureUtil.scrollGesture(view, new GestureUtil.ScorllToListener() {
            @Override
            public final void scrollTo(int i) {
                this.a.lambda$initGesture$3(i);
            }
        });
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.audio_eq_dialog, (ViewGroup) null);
        addPage(viewInflate).setTitle("").showTitle(false).setCloseIconVisibility(false);
        initView(viewInflate);
        initGesture(viewInflate);
        initValue(this);
    }

    @Override
    public void onConfigurationChanged(@NonNull Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override
    public void onStart() {
        super.onStart();
    }

    @Override
    public void requestFilePermission() {
        super.requestFilePermission();
    }

    private void initView(View view) {
        this.switch_open = (Switch) view.findViewById(R.id.switch_open);
        DisableDragLinearLayout disableDragLinearLayout = (DisableDragLinearLayout) view.findViewById(R.id.ll_cannot_drag);
        this.ll_cannot_drag = disableDragLinearLayout;
        disableDragLinearLayout.setCanDrag(false);
        this.rv_style = (RecyclerView) view.findViewById(R.id.rv_style);
        this.tv_reverb = (TextView) view.findViewById(R.id.tv_reverb);
        this.seekbars[0] = (CustomOsSeekbar) view.findViewById(R.id.seekbar1);
        this.seekbars[1] = (CustomOsSeekbar) view.findViewById(R.id.seekbar2);
        this.seekbars[2] = (CustomOsSeekbar) view.findViewById(R.id.seekbar3);
        this.seekbars[3] = (CustomOsSeekbar) view.findViewById(R.id.seekbar4);
        this.seekbars[4] = (CustomOsSeekbar) view.findViewById(R.id.seekbar5);
        this.sb_bassboot = (CustomOsSeekbar) view.findViewById(R.id.sb_bassboot);
        this.sb_3d = (CustomOsSeekbar) view.findViewById(R.id.sb_3d);
        this.ll_content = (com.transsion.widgets.InterceptLinearLayout) view.findViewById(R.id.ll_content);
        this.seekbars[0].setTag(EQ_1);
        this.seekbars[1].setTag(EQ_2);
        this.seekbars[2].setTag(EQ_3);
        this.seekbars[3].setTag(EQ_4);
        this.seekbars[4].setTag(EQ_5);
        this.sb_bassboot.setTag(EQ_REVERB);
        this.sb_3d.setTag(EQ_3D);
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R.id.ll_sger1);
        LinearLayout linearLayout2 = (LinearLayout) view.findViewById(R.id.ll_sger2);
        linearLayout.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$initView$0();
            }
        });
        linearLayout2.post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$initView$1();
            }
        });
    }
}
