package com.transsion.onlinevideo.promotion;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentActivity;
import com.bumptech.glide.Glide;
import com.transsion.dbdata.beans.onlinevideo.PromotionBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.web.VipWebActivity;
import defpackage.f5;
import defpackage.h27;
import defpackage.oc2;
import defpackage.zz5;

public class PromotionDialog extends DialogFragment implements h27.b {
    public PromotionBean l;
    public TextView m;
    public TextView n;
    public ImageView o;
    public int p;

    public static PromotionDialog H(int i, PromotionBean promotionBean) {
        PromotionDialog promotionDialog = new PromotionDialog();
        promotionDialog.p = i;
        Bundle bundle = new Bundle();
        bundle.putSerializable("promotion", promotionBean);
        promotionDialog.setArguments(bundle);
        return promotionDialog;
    }

    public final void E(View view) throws Throwable {
        this.l.setHaveDone(true);
        PromotionManager.c();
        PromotionManager.g(this.l);
        Intent intentK0 = this.l != null ? VipWebActivity.K0(getActivity(), this.l.getVipId().intValue(), "VIP", "ott_promotion", this.l.getVipCardId().longValue()) : VipWebActivity.I0(getActivity(), 1, "VIP", "ott_promotion");
        zz5.d(this.l.getActionTitle(), false);
        f5.c(intentK0, getActivity());
        getDialog().dismiss();
    }

    public final void F(View view) {
        getDialog().dismiss();
    }

    public final void G(View view) {
        getDialog().dismiss();
    }

    public final boolean I(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        dismiss();
        return false;
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1122) {
            dismiss();
        }
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        getDialog().requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_promotion, (ViewGroup) null);
    }

    @Override
    public void onDestroy() {
        super.onDestroy();
        if (this.p == 1) {
            h27.c().f(this, 1122);
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = oc2.a(getContext(), 316.0f);
        attributes.height = -2;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.gravity = 17;
        attributes2.width = oc2.a(getContext(), 316.0f);
        window.getDecorView().setBackgroundColor(getContext().getResources().getColor(com.transsion.playercommon.R.color.transparent));
        window.getDecorView().setPadding(0, 0, 0, 0);
        window.setAttributes(attributes2);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        int i = R.id.go;
        this.m = (TextView) view.findViewById(i);
        this.n = (TextView) view.findViewById(R.id.tip);
        this.o = (ImageView) view.findViewById(R.id.cover);
        if (getArguments() != null && getArguments().getSerializable("promotion") != null) {
            PromotionBean promotionBean = (PromotionBean) getArguments().getSerializable("promotion");
            this.l = promotionBean;
            this.n.setText(promotionBean.getDescription());
            this.m.setText(this.l.getButtonName());
            Glide.with(getContext()).asBitmap().load(this.l.getIcon()).placeholder(R.drawable.ic_feed_stream_placeholder).into(this.o);
            zz5.d(this.l.getActionTitle(), true);
        }
        setCancelable(false);
        view.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) throws Throwable {
                this.b.E(view2);
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.F(view2);
            }
        });
        view.findViewById(R.id.close).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.G(view2);
            }
        });
        if (getDialog() != null) {
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return this.b.I(dialogInterface, i2, keyEvent);
                }
            });
        }
        if (this.p == 1) {
            h27.c().b(this, 1122);
        }
    }

    public void showListDialog(Context context, String str) {
        if (context instanceof FragmentActivity) {
            ((FragmentActivity) context).getSupportFragmentManager().beginTransaction().add(this, str).commitAllowingStateLoss();
        }
    }
}
