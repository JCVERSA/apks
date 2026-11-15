package com.tn.lib.widget.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.KeyEventDispatcher;
import androidx.fragment.app.Fragment;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.MBridgeConstans;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$id;
import com.tn.lib.widget.R$layout;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u001e\u0018\u0000 K2\u00020\u0001:\u0002LMB\u0007¢\u0006\u0004\b\u0002\u0010\u0003JA\u0010\n\u001a\u00020\u00012\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00042\b\u0010\b\u001a\u0004\u0018\u00010\u00042\b\u0010\t\u001a\u0004\u0018\u00010\u0004H\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u000e\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000e\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\fH\u0016¢\u0006\u0004\b\u0016\u0010\u0003R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001c\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001d\u0010\u0019R\u0018\u0010 \u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001f\u0010\u0019R\u0018\u0010$\u001a\u0004\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010(\u001a\u0004\u0018\u00010%8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010'R\u0016\u0010+\u001a\u00020)8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b*\u0010\u0014R\u0018\u0010/\u001a\u0004\u0018\u00010,8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010.R\u0018\u00103\u001a\u0004\u0018\u0001008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b1\u00102R\u0016\u00106\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00105R\u0016\u00108\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b7\u00105R\u0016\u0010:\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b9\u00105R\u0016\u0010<\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b;\u00105R\u0016\u0010>\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b=\u00105R\u0016\u0010@\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b?\u00105R\u0016\u0010B\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bA\u00105R\u0016\u0010D\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bC\u00105R\u0016\u0010F\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bE\u00105R\u0016\u0010H\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bG\u00105R\u0016\u0010J\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bI\u00105¨\u0006N"}, d2 = {"Lcom/tn/lib/widget/dialog/TRDialog;", "Lcom/tn/lib/widget/dialog/TRBaseDialog;", "<init>", "()V", "", CampaignEx.JSON_KEY_TITLE, "message", "leftText", "rightText", "cbTip", "J0", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/tn/lib/widget/dialog/TRBaseDialog;", "", "A0", "H0", "", "Y", "()I", "Landroid/view/View;", MBridgeConstans.DYNAMIC_VIEW_KEY_VIEW, "Z", "(Landroid/view/View;)V", "onResume", "Landroid/widget/TextView;", "f", "Landroid/widget/TextView;", "titleText", "g", "messageText", "h", "leftBtn", "i", "rightBtn", "Landroid/widget/ImageView;", "j", "Landroid/widget/ImageView;", "ivClose", "Landroid/widget/CheckBox;", CampaignEx.JSON_KEY_AD_K, "Landroid/widget/CheckBox;", "cb", "", "l", "isShowClose", "Lcom/tn/lib/widget/dialog/TRDialogListener;", "m", "Lcom/tn/lib/widget/dialog/TRDialogListener;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "n", "Landroid/widget/CompoundButton$OnCheckedChangeListener;", "onCheckedChangeListener", "o", "I", "leftBtnResId", TtmlNode.TAG_P, "rightBtnResId", CampaignEx.JSON_KEY_AD_Q, "leftBtnTextColor", CampaignEx.JSON_KEY_AD_R, "rightBtnTextColor", "s", "leftBtnWidth", "t", "leftBtnHeight", TmcStartParams.KEY_URL_SHORT, "rightBtnWidth", "v", "rightBtnHeight", "w", "rightBtnGravity", "x", "leftBtnGravity", "y", "messageGravity", "z", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "a", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class TRDialog extends TRBaseDialog {

    private TextView titleText;

    private TextView messageText;

    private TextView leftBtn;

    private TextView rightBtn;

    private ImageView ivClose;

    private CheckBox cb;

    private boolean isShowClose;

    private TRDialogListener listener;

    private CompoundButton.OnCheckedChangeListener onCheckedChangeListener;

    private int leftBtnResId;

    private int rightBtnResId;

    private int leftBtnTextColor;

    private int rightBtnTextColor;

    private int leftBtnWidth;

    private int leftBtnHeight;

    private int rightBtnWidth;

    private int rightBtnHeight;

    private int rightBtnGravity = 17;

    private int leftBtnGravity = 17;

    private int messageGravity = 17;

    public static final class a {

        private String f40427a;

        private String f40428b;

        private String f40429c;

        private String f40430d;

        private TRDialogListener f40431e;

        private boolean f40432f;

        private String f40434h;

        private CompoundButton.OnCheckedChangeListener f40435i;

        private boolean f40437k;

        private int f40438l;

        private int f40439m;

        private int f40440n;

        private int f40441o;

        private int f40442p;

        private int f40443q;

        private int f40444r;

        private int f40445s;

        private float f40433g = 0.5f;

        private int f40436j = 8;

        private int f40446t = 17;

        private int f40447u = 17;

        private int f40448v = 17;

        public final TRBaseDialog a() {
            TRDialog tRDialog = new TRDialog();
            Bundle bundle = new Bundle();
            bundle.putString(CampaignEx.JSON_KEY_TITLE, this.f40427a);
            bundle.putString("message", this.f40428b);
            bundle.putString("leftBtn", this.f40429c);
            bundle.putString("rightBtn", this.f40430d);
            bundle.putString("cb_tip", this.f40434h);
            bundle.putBoolean("is_show_close", this.f40437k);
            tRDialog.setArguments(bundle);
            tRDialog.a0(this.f40433g);
            Boolean boolB = b();
            if (boolB != null) {
                tRDialog.b0(boolB.booleanValue());
            }
            tRDialog.listener = this.f40431e;
            tRDialog.getClass();
            tRDialog.onCheckedChangeListener = this.f40435i;
            tRDialog.leftBtnResId = this.f40438l;
            tRDialog.rightBtnResId = this.f40439m;
            tRDialog.leftBtnTextColor = this.f40440n;
            tRDialog.rightBtnTextColor = this.f40441o;
            tRDialog.leftBtnWidth = this.f40442p;
            tRDialog.leftBtnHeight = this.f40443q;
            tRDialog.rightBtnWidth = this.f40444r;
            tRDialog.rightBtnHeight = this.f40445s;
            tRDialog.rightBtnGravity = this.f40446t;
            tRDialog.leftBtnGravity = this.f40447u;
            tRDialog.messageGravity = this.f40448v;
            return tRDialog;
        }

        public final Boolean b() {
            return Boolean.valueOf(this.f40432f);
        }

        public final a c(int i10) {
            this.f40438l = i10;
            return this;
        }

        public final a d(int i10) {
            this.f40440n = i10;
            return this;
        }

        public final a e(String leftText) {
            Intrinsics.h(leftText, "leftText");
            this.f40429c = leftText;
            return this;
        }

        public final a f(TRDialogListener listener) {
            Intrinsics.h(listener, "listener");
            this.f40431e = listener;
            return this;
        }

        public final a g(String message) {
            Intrinsics.h(message, "message");
            this.f40428b = message;
            return this;
        }

        public final a h(int i10) {
            this.f40439m = i10;
            return this;
        }

        public final a i(int i10) {
            this.f40441o = i10;
            return this;
        }

        public final a j(String rightText) {
            Intrinsics.h(rightText, "rightText");
            this.f40430d = rightText;
            return this;
        }

        public final a k(String title) {
            Intrinsics.h(title, "title");
            this.f40427a = title;
            return this;
        }
    }

    private final void A0() {
        TRDialogListener tRDialogListener = this.listener;
        if (tRDialogListener == null) {
            return;
        }
        if (tRDialogListener instanceof Activity) {
            TextView textView = this.leftBtn;
            if (textView != null) {
                textView.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        TRDialog.B0(this.f40450a, view);
                    }
                });
            }
            TextView textView2 = this.rightBtn;
            if (textView2 != null) {
                textView2.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        TRDialog.C0(this.f40451a, view);
                    }
                });
                return;
            }
            return;
        }
        if (tRDialogListener instanceof Fragment) {
            TextView textView3 = this.leftBtn;
            if (textView3 != null) {
                textView3.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        TRDialog.D0(this.f40452a, view);
                    }
                });
            }
            TextView textView4 = this.rightBtn;
            if (textView4 != null) {
                textView4.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public final void onClick(View view) {
                        TRDialog.E0(this.f40453a, view);
                    }
                });
                return;
            }
            return;
        }
        TextView textView5 = this.leftBtn;
        if (textView5 != null) {
            textView5.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TRDialog.F0(this.f40454a, view);
                }
            });
        }
        TextView textView6 = this.rightBtn;
        if (textView6 != null) {
            textView6.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TRDialog.G0(this.f40455a, view);
                }
            });
        }
    }

    public static final void B0(TRDialog tRDialog, View view) {
        KeyEventDispatcher.Component activity = tRDialog.getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.tn.lib.widget.dialog.TRDialogListener");
        ((TRDialogListener) activity).onLeftButtonClick(tRDialog);
        tRDialog.X();
    }

    public static final void C0(TRDialog tRDialog, View view) {
        KeyEventDispatcher.Component activity = tRDialog.getActivity();
        Intrinsics.f(activity, "null cannot be cast to non-null type com.tn.lib.widget.dialog.TRDialogListener");
        ((TRDialogListener) activity).onRightButtonClick(tRDialog);
        tRDialog.X();
    }

    public static final void D0(TRDialog tRDialog, View view) {
        androidx.p010savedstate.e parentFragment = tRDialog.getParentFragment();
        Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.tn.lib.widget.dialog.TRDialogListener");
        ((TRDialogListener) parentFragment).onLeftButtonClick(tRDialog);
        tRDialog.X();
    }

    public static final void E0(TRDialog tRDialog, View view) {
        androidx.p010savedstate.e parentFragment = tRDialog.getParentFragment();
        Intrinsics.f(parentFragment, "null cannot be cast to non-null type com.tn.lib.widget.dialog.TRDialogListener");
        ((TRDialogListener) parentFragment).onRightButtonClick(tRDialog);
        tRDialog.X();
    }

    public static final void F0(TRDialog tRDialog, View view) {
        TRDialogListener tRDialogListener = tRDialog.listener;
        if (tRDialogListener != null) {
            tRDialogListener.onLeftButtonClick(tRDialog);
        }
    }

    public static final void G0(TRDialog tRDialog, View view) {
        TRDialogListener tRDialogListener = tRDialog.listener;
        if (tRDialogListener != null) {
            tRDialogListener.onRightButtonClick(tRDialog);
        }
    }

    private final void H0() {
        Bundle arguments = getArguments();
        boolean z10 = arguments != null ? arguments.getBoolean("is_show_close") : false;
        this.isShowClose = z10;
        if (!z10) {
            ImageView imageView = this.ivClose;
            if (imageView != null) {
                imageView.setVisibility(8);
                return;
            }
            return;
        }
        ImageView imageView2 = this.ivClose;
        if (imageView2 != null) {
            imageView2.setVisibility(0);
        }
        ImageView imageView3 = this.ivClose;
        if (imageView3 != null) {
            imageView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    TRDialog.I0(this.f40456a, view);
                }
            });
        }
    }

    public static final void I0(TRDialog tRDialog, View view) {
        tRDialog.getClass();
        tRDialog.X();
    }

    private final TRBaseDialog J0(String title, String message, String leftText, String rightText, String cbTip) {
        TextView textView;
        TextView textView2;
        ViewGroup.LayoutParams layoutParams;
        TextView textView3;
        TextView textView4;
        Context context = getContext();
        if (context != null) {
            if (TextUtils.isEmpty(title)) {
                TextView textView5 = this.titleText;
                if (textView5 != null) {
                    textView5.setVisibility(8);
                }
                TextView textView6 = this.messageText;
                ViewGroup.LayoutParams layoutParams2 = textView6 != null ? textView6.getLayoutParams() : null;
                if (layoutParams2 instanceof ConstraintLayout.b) {
                    ((ViewGroup.MarginLayoutParams) ((ConstraintLayout.b) layoutParams2)).topMargin = zg.h.f76787a.a(context, 28.0f);
                    TextView textView7 = this.messageText;
                    if (textView7 != null) {
                        textView7.setLayoutParams(layoutParams2);
                    }
                }
            } else {
                TextView textView8 = this.titleText;
                if (textView8 != null) {
                    textView8.setText(title);
                }
                TextView textView9 = this.titleText;
                if (textView9 != null) {
                    textView9.setVisibility(0);
                }
            }
            if (TextUtils.isEmpty(leftText)) {
                TextView textView10 = this.leftBtn;
                if (textView10 != null) {
                    textView10.setVisibility(8);
                }
                TextView textView11 = this.rightBtn;
                ViewGroup.LayoutParams layoutParams3 = textView11 != null ? textView11.getLayoutParams() : null;
                if (layoutParams3 instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar = (ConstraintLayout.b) layoutParams3;
                    bVar.f7391t = 0;
                    bVar.f7395v = 0;
                    bVar.setMarginEnd(0);
                    ((ViewGroup.MarginLayoutParams) bVar).width = zg.h.f76787a.a(context, 150.0f);
                    TextView textView12 = this.rightBtn;
                    if (textView12 != null) {
                        textView12.setLayoutParams(layoutParams3);
                    }
                }
            } else {
                TextView textView13 = this.leftBtn;
                if (textView13 != null) {
                    textView13.setText(leftText);
                }
                int i10 = this.leftBtnResId;
                if (i10 > 0 && (textView2 = this.leftBtn) != null) {
                    textView2.setBackgroundResource(i10);
                }
                int i11 = this.leftBtnTextColor;
                if (i11 != 0 && (textView = this.leftBtn) != null) {
                    textView.setTextColor(i11);
                }
                TextView textView14 = this.leftBtn;
                ViewGroup.LayoutParams layoutParams4 = textView14 != null ? textView14.getLayoutParams() : null;
                Intrinsics.f(layoutParams4, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.b bVar2 = (ConstraintLayout.b) layoutParams4;
                int i12 = this.rightBtnWidth;
                if (i12 > 0) {
                    ((ViewGroup.MarginLayoutParams) bVar2).width = i12;
                }
                int i13 = this.rightBtnHeight;
                if (i13 > 0) {
                    ((ViewGroup.MarginLayoutParams) bVar2).height = i13;
                }
                TextView textView15 = this.leftBtn;
                if (textView15 != null) {
                    textView15.setLayoutParams(bVar2);
                }
            }
            if (TextUtils.isEmpty(rightText)) {
                TextView textView16 = this.rightBtn;
                if (textView16 != null) {
                    textView16.setVisibility(8);
                }
                TextView textView17 = this.leftBtn;
                layoutParams = textView17 != null ? textView17.getLayoutParams() : null;
                if (layoutParams instanceof ConstraintLayout.b) {
                    ConstraintLayout.b bVar3 = (ConstraintLayout.b) layoutParams;
                    bVar3.f7391t = 0;
                    bVar3.f7395v = 0;
                    bVar3.setMarginStart(0);
                    ((ViewGroup.MarginLayoutParams) bVar3).width = zg.h.f76787a.a(context, 150.0f);
                    TextView textView18 = this.leftBtn;
                    if (textView18 != null) {
                        textView18.setLayoutParams(layoutParams);
                    }
                }
            } else {
                TextView textView19 = this.rightBtn;
                if (textView19 != null) {
                    textView19.setText(rightText);
                }
                int i14 = this.rightBtnResId;
                if (i14 > 0 && (textView4 = this.rightBtn) != null) {
                    textView4.setBackgroundResource(i14);
                }
                int i15 = this.rightBtnTextColor;
                if (i15 != 0 && (textView3 = this.rightBtn) != null) {
                    textView3.setTextColor(i15);
                }
                TextView textView20 = this.rightBtn;
                layoutParams = textView20 != null ? textView20.getLayoutParams() : null;
                Intrinsics.f(layoutParams, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams");
                ConstraintLayout.b bVar4 = (ConstraintLayout.b) layoutParams;
                int i16 = this.rightBtnWidth;
                if (i16 > 0) {
                    ((ViewGroup.MarginLayoutParams) bVar4).width = i16;
                }
                int i17 = this.rightBtnHeight;
                if (i17 > 0) {
                    ((ViewGroup.MarginLayoutParams) bVar4).height = i17;
                }
                TextView textView21 = this.rightBtn;
                if (textView21 != null) {
                    textView21.setLayoutParams(bVar4);
                }
            }
            if (TextUtils.isEmpty(title)) {
                TextView textView22 = this.messageText;
                if (textView22 != null) {
                    textView22.setTextSize(16.0f);
                }
            } else {
                TextView textView23 = this.messageText;
                if (textView23 != null) {
                    textView23.setTextSize(14.0f);
                }
            }
            TextView textView24 = this.messageText;
            if (textView24 != null) {
                textView24.setText(message);
            }
            if (TextUtils.isEmpty(cbTip)) {
                CheckBox checkBox = this.cb;
                if (checkBox != null) {
                    checkBox.setVisibility(8);
                }
            } else {
                CheckBox checkBox2 = this.cb;
                if (checkBox2 != null) {
                    checkBox2.setVisibility(0);
                }
                CheckBox checkBox3 = this.cb;
                if (checkBox3 != null) {
                    checkBox3.setText(cbTip);
                }
                CheckBox checkBox4 = this.cb;
                if (checkBox4 != null) {
                    checkBox4.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() {
                        @Override
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                            TRDialog.K0(this.f40449a, compoundButton, z10);
                        }
                    });
                }
            }
            TextView textView25 = this.leftBtn;
            if (textView25 != null) {
                textView25.setGravity(this.leftBtnGravity);
            }
            TextView textView26 = this.rightBtn;
            if (textView26 != null) {
                textView26.setGravity(this.rightBtnGravity);
            }
            TextView textView27 = this.messageText;
            if (textView27 != null) {
                textView27.setGravity(this.messageGravity);
            }
            A0();
            H0();
        }
        return this;
    }

    public static final void K0(TRDialog tRDialog, CompoundButton compoundButton, boolean z10) {
        CompoundButton.OnCheckedChangeListener onCheckedChangeListener = tRDialog.onCheckedChangeListener;
        if (onCheckedChangeListener != null) {
            onCheckedChangeListener.onCheckedChanged(compoundButton, z10);
        }
    }

    @Override
    public int Y() {
        return R$layout.libui_dialog_confirm_layout;
    }

    @Override
    public void Z(View view) {
        Intrinsics.h(view, "view");
        this.titleText = (TextView) view.findViewById(R$id.tv_title);
        this.messageText = (TextView) view.findViewById(R$id.tv_msg);
        this.leftBtn = (TextView) view.findViewById(R$id.tv_left);
        this.rightBtn = (TextView) view.findViewById(R$id.tv_right);
        this.ivClose = (ImageView) view.findViewById(R$id.iv_close);
        this.cb = (CheckBox) view.findViewById(R$id.f40394cb);
        Bundle arguments = getArguments();
        String string = arguments != null ? arguments.getString(CampaignEx.JSON_KEY_TITLE) : null;
        Bundle arguments2 = getArguments();
        String string2 = arguments2 != null ? arguments2.getString("message") : null;
        Bundle arguments3 = getArguments();
        String string3 = arguments3 != null ? arguments3.getString("leftBtn") : null;
        Bundle arguments4 = getArguments();
        String string4 = arguments4 != null ? arguments4.getString("rightBtn") : null;
        Bundle arguments5 = getArguments();
        J0(string, string2, string3, string4, arguments5 != null ? arguments5.getString("cb_tip") : null);
    }

    @Override
    public void onResume() {
        Dialog dialog;
        Window window;
        Context context = getContext();
        if (context != null && (dialog = getDialog()) != null && (window = dialog.getWindow()) != null) {
            window.setLayout(zg.h.f76787a.a(context, 280.0f), -2);
        }
        super.onResume();
    }
}
