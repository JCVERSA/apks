package com.transsion.playercommon.gprating;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.R;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.vishaweb.pages.VishaFeedbackPage;
import com.transsion.utils.ToastUtils;
import com.transsion.utils.a;
import com.transsion.widgets.ratingbar.OnRatingChangedListener;
import com.transsion.widgets.ratingbar.RtlDfRatingBar;
import defpackage.f5;
import defpackage.pp3;
import defpackage.py5;

public class GPRatingDialog extends DialogFragment {
    public int m;
    public TextView n;
    public TextView o;
    public String p;
    public RtlDfRatingBar q;
    public int r;
    public int s;
    public float l = 0.0f;
    public int[] t = {R.string.rating_tip_1, R.string.rating_tip_2, R.string.rating_tip_3, R.string.rating_tip_4, R.string.rating_tip_5};

    private void E() {
        int i = ((int) this.l) - 1;
        if (i > -1) {
            this.o.setText(this.t[i]);
        }
    }

    public void G(ImageView imageView, float f) {
        this.n.setEnabled(true);
        if (F(f, 1.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_one);
        } else if (F(f, 2.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_two);
        } else if (F(f, 3.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_three);
        } else if (F(f, 4.0f) || F(f, 4.5f)) {
            imageView.setImageResource(R.drawable.ic_rating_four);
            f = 4.0f;
        }
        if (F(f, 0.0f)) {
            imageView.setImageResource(R.drawable.ic_rating_default);
            this.n.setTextColor(this.s);
        } else {
            this.n.setTextColor(this.r);
        }
        boolean zF = F(f, 5.0f);
        int dimension = (int) getContext().getResources().getDimension(zF ? R.dimen.gp_guide_normal_five_w : R.dimen.gp_guide_normal);
        int dimension2 = (int) getContext().getResources().getDimension(zF ? R.dimen.gp_guide_normal_five_h : R.dimen.gp_guide_normal);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = dimension;
        layoutParams.height = dimension2;
        imageView.setLayoutParams(layoutParams);
        if (zF) {
            imageView.setImageResource(R.drawable.ic_rating_five);
        }
        this.n.setText(zF ? R.string.gp_go_rate : R.string.submit);
        this.l = f;
        E();
    }

    public void H(View view) {
        if (!F(this.l, 0.0f)) {
            py5.c(this.m, this.l, this.p);
            MMKV.p().y("mmkv_gp_rating", true);
        }
        if (F(this.l, 5.0f)) {
            L(getActivity());
            getDialog().dismiss();
        } else if (F(this.l, 0.0f)) {
            ToastUtils.s(R.string.gp_rating_check);
        } else {
            VishaFeedbackPage.f(getActivity(), getString(R.string.feedback), 1, String.valueOf(this.l));
            getDialog().dismiss();
        }
    }

    public void I(View view) {
        getDialog().dismiss();
        MMKV.p().u("mmkv_gp_rating_interval_3", System.currentTimeMillis());
        MMKV.p().t("mmkv_gp_rating_cancel_count", MMKV.p().g("mmkv_gp_rating_cancel_count", 0) + 1);
        py5.b(this.m, this.p);
    }

    public static GPRatingDialog K(String str) {
        GPRatingDialog gPRatingDialog = new GPRatingDialog();
        gPRatingDialog.p = str;
        return gPRatingDialog;
    }

    public static void L(Context context) {
        try {
            if (context.getPackageName() != null) {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse("market://details?id=" + context.getPackageName()));
                intent.setPackage("com.android.vending");
                intent.addFlags(268435456);
                f5.c(intent, context);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/apps/details?id=" + context.getPackageName()));
            intent2.addFlags(268435456);
            f5.c(intent2, context);
        }
    }

    public boolean F(float f, float f2) {
        return Math.abs(f - f2) < 0.001f;
    }

    public final boolean J(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        dismiss();
        return false;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_gp_rating, (ViewGroup) null);
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = a.m(getContext()) - 96;
        attributes.height = -2;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.gravity = 81;
        attributes2.width = getResources().getDisplayMetrics().widthPixels - 96;
        window.getDecorView().setBackgroundColor(getContext().getResources().getColor(R.color.transparent));
        window.getDecorView().setPadding(0, 0, 0, 162);
        window.setAttributes(attributes2);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.q = (RtlDfRatingBar) view.findViewById(R.id.score);
        ((TextView) view.findViewById(R.id.tv_desc)).setText(pp3.c ? R.string.gp_rating_tip_pre : R.string.gp_rating_tip);
        final ImageView imageView = (ImageView) view.findViewById(R.id.bg_top);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(new int[]{R.attr.os_platform_basic_color, R.attr.os_platform_disabled_color});
        this.r = typedArrayObtainStyledAttributes.getColor(0, R.color.visha_basic_color);
        this.s = typedArrayObtainStyledAttributes.getColor(1, R.color.visha_disabled_color);
        typedArrayObtainStyledAttributes.recycle();
        int i = R.id.submit;
        this.n = (TextView) view.findViewById(i);
        this.m = MMKV.p().g("count", 0) + 1;
        this.o = (TextView) view.findViewById(R.id.rating_tip);
        MMKV.p().t("count", this.m);
        py5.e(this.m, this.p);
        this.q.setOnRatingChangedListener(new OnRatingChangedListener() {
            @Override
            public final void onRatingChanged(float f) {
                this.a.G(imageView, f);
            }
        });
        setCancelable(false);
        view.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.H(view2);
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.I(view2);
            }
        });
        if (getDialog() != null) {
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return this.b.J(dialogInterface, i2, keyEvent);
                }
            });
        }
    }

    public void showListDialog(Context context, String str) {
        ((BaseActivity) context).getSupportFragmentManager().beginTransaction().add(this, str).commitAllowingStateLoss();
    }
}
