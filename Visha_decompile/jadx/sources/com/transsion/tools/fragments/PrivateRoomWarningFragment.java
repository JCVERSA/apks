package com.transsion.tools.fragments;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.fragment.app.DialogFragment;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.tools.R;
import defpackage.pp3;
import java.util.Objects;

public class PrivateRoomWarningFragment extends DialogFragment {
    public int l;
    public a m;

    public interface a {
        void onCancel();

        void onClose();
    }

    public void D(View view) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.onClose();
        }
        if (getDialog() != null) {
            getDialog().dismiss();
        }
    }

    public void E(View view) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.onCancel();
        }
        if (getDialog() != null) {
            getDialog().dismiss();
        }
    }

    public static PrivateRoomWarningFragment G() {
        return new PrivateRoomWarningFragment();
    }

    public final boolean F(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
        if (i != 4 || keyEvent.getAction() != 0) {
            return false;
        }
        dismiss();
        a aVar = this.m;
        if (aVar == null) {
            return false;
        }
        aVar.onCancel();
        return false;
    }

    public void H(Context context, String str, a aVar) {
        this.m = aVar;
        ((BaseActivity) context).getSupportFragmentManager().beginTransaction().add(this, str).commitAllowingStateLoss();
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        Dialog dialog = getDialog();
        Objects.requireNonNull(dialog);
        dialog.requestWindowFeature(1);
        return layoutInflater.inflate(R.layout.dialog_show_privateroom_warning, (ViewGroup) null);
    }

    @Override
    public void onStart() {
        super.onStart();
        if (getDialog() == null || getContext() == null) {
            return;
        }
        Window window = getDialog().getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = com.transsion.utils.a.m(getContext()) - 96;
        attributes.height = -2;
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.gravity = 81;
        attributes2.width = getResources().getDisplayMetrics().widthPixels - 96;
        window.getDecorView().setBackgroundColor(getContext().getResources().getColor(R.color.transparent));
        window.getDecorView().setPadding(0, 0, 0, 84);
        window.setAttributes(attributes2);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ((TextView) view.findViewById(R.id.tv_show_privateromm_warning)).setText(pp3.c ? R.string.setting_not_show_privateroom_warning_pre : R.string.setting_not_show_privateroom_warning);
        int i = R.id.tv_close;
        TextView textView = (TextView) view.findViewById(i);
        int[] iArr = {R.attr.os_platform_basic_color, R.attr.os_platform_disabled_color};
        if (getContext() != null) {
            int color = getContext().obtainStyledAttributes(iArr).getColor(0, R.color.visha_basic_color);
            this.l = color;
            textView.setTextColor(color);
        }
        setCancelable(false);
        view.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.D(view2);
            }
        });
        view.findViewById(R.id.cancel).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                this.b.E(view2);
            }
        });
        if (getDialog() != null) {
            getDialog().setOnKeyListener(new DialogInterface.OnKeyListener() {
                @Override
                public final boolean onKey(DialogInterface dialogInterface, int i2, KeyEvent keyEvent) {
                    return this.b.F(dialogInterface, i2, keyEvent);
                }
            });
        }
    }
}
