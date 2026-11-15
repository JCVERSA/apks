package com.transsion.sniffer_load;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.tencent.mmkv.MMKV;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.sniffer_load.WhatsAppGuideActivity;
import com.transsion.sniffer_load.data.WhatsBookmark;
import com.transsion.utils.ToastUtils;
import com.transsion.widgetslib.dialog.d;
import defpackage.f5;
import defpackage.ikc;
import defpackage.p06;
import defpackage.pp3;
import defpackage.raa;

public class WhatsAppGuideActivity extends BaseActivity {
    public View N;
    public TextView O;
    public TextView P;
    public d Q;
    public boolean R;

    private void u0() {
        d dVar = this.Q;
        if (dVar == null || !dVar.isShowing()) {
            return;
        }
        this.Q.cancel();
    }

    public void v0(View view) {
        onBackPressed();
    }

    public void w0(View view) {
        A0();
    }

    public static void z0(DialogInterface dialogInterface) {
    }

    public final void A0() {
        p06.d0("dl_wa_connect_cl");
        if (raa.l(this)) {
            this.R = true;
        } else {
            ToastUtils.s(R.string.whats_app_not_installed);
        }
    }

    public final void B0() {
        u0();
        d.a aVar = new d.a(this);
        View viewInflate = LayoutInflater.from(this).inflate(com.transsion.playercommon.R.layout.dialog_permission_remind, (ViewGroup) null, false);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.title)).setText(com.transsion.playercommon.R.string.whats_app_permission_content);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.tv2)).setText(com.transsion.playercommon.R.string.whats_app_permission_notice);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.description)).setText(com.transsion.playercommon.R.string.whats_app_permission_guide);
        ((TextView) viewInflate.findViewById(com.transsion.playercommon.R.id.content)).setText(com.transsion.playercommon.R.string.whats_app_permission_explanation);
        aVar.E(viewInflate);
        aVar.m(com.transsion.playercommon.R.string.cancel, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.x0(dialogInterface, i);
            }
        });
        aVar.f(false);
        aVar.u(com.transsion.playercommon.R.string.permission_go, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i) {
                this.b.y0(dialogInterface, i);
            }
        });
        d dVarA = aVar.a();
        this.Q = dVarA;
        dVarA.setOnDismissListener(new DialogInterface.OnDismissListener() {
            @Override
            public final void onDismiss(DialogInterface dialogInterface) {
                WhatsAppGuideActivity.z0(dialogInterface);
            }
        });
        if (this.Q.isShowing()) {
            return;
        }
        this.Q.show();
        p06.f0(null, "popup_mediafile2", 9324L);
    }

    @Override
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 20001 && i2 == -1) {
            Uri data = intent.getData();
            if (!data.toString().contains(".Statuses")) {
                ToastUtils.s(R.string.error_auhtor);
            } else {
                getContentResolver().takePersistableUriPermission(data, 3);
                u0();
            }
        }
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!ikc.b(this)) {
            B0();
        }
        setContentView(R.layout.activity_whats_guide);
        this.O = (TextView) findViewById(R.id.tv_s1);
        this.P = (TextView) findViewById(R.id.tv_s2);
        TextView textView = this.O;
        int i = R.string.wahtsapp_step1;
        textView.setText(getString(i, 1));
        this.P.setText(getString(i, 2));
        ((TextView) findViewById(R.id.tv_content2)).setText(pp3.c ? R.string.wahtsapp_step2_content_pre : R.string.wahtsapp_step2_content);
        View viewFindViewById = findViewById(R.id.title_bar_back);
        this.N = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.v0(view);
            }
        });
        ((TextView) findViewById(R.id.title_bar_title)).setText(R.string.whatsapp);
        findViewById(R.id.fl_link).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.w0(view);
            }
        });
        p06.d0("dl_wa_guide_show");
    }

    @Override
    public void onStart() {
        super.onStart();
        if (this.R) {
            Intent intent = new Intent(this, (Class<?>) WhatsAppSaveActivity.class);
            intent.putExtra("from", true);
            f5.c(intent, this);
            finish();
        }
    }

    @Override
    public void onStop() {
        super.onStop();
        MMKV.p().y(WhatsBookmark.WHATSAPP_GUIDE_SHOWED, true);
    }

    public final void x0(DialogInterface dialogInterface, int i) {
        p06.f0(null, "popup_mediafile2_n", 9324L);
        onBackPressed();
    }

    public final void y0(DialogInterface dialogInterface, int i) {
        ikc.g(this, false);
    }
}
