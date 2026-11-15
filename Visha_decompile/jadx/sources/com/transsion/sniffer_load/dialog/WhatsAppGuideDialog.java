package com.transsion.sniffer_load.dialog;

import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import com.transsion.playercommon.activities.RxPermissionOSBottomSheetDialog;
import com.transsion.sniffer_load.R;
import defpackage.f5;
import defpackage.hb0;
import defpackage.pp3;

public class WhatsAppGuideDialog extends RxPermissionOSBottomSheetDialog {

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            WhatsAppGuideDialog.this.animateDismiss();
            hb0.markDirect("dl_wa_guide_go");
        }
    }

    public static void f0(Context context) {
        f5.c(new Intent(context, (Class<?>) WhatsAppGuideDialog.class), context);
    }

    @Override
    public boolean getDragHandlerVisibility() {
        return false;
    }

    @Override
    public void initView() {
        super.initView();
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.dialog_for_whatapp_guide, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_s1);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_s2);
        int i = R.string.wahtsapp_step1;
        textView.setText(getString(i, 1));
        textView2.setText(getString(i, 2));
        ((TextView) viewInflate.findViewById(R.id.tv_content2)).setText(pp3.c ? R.string.wahtsapp_step2_content_pre : R.string.wahtsapp_step2_content);
        ((Button) viewInflate.findViewById(R.id.btn_confirm)).setOnClickListener(new a());
        addPage(viewInflate).setTitle(R.string.wahtsapp_instruct).setCloseIconVisibility(true);
    }

    @Override
    public boolean isFixedHeight() {
        return false;
    }
}
