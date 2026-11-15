package com.transsion.tools.activities;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewStub;
import android.widget.TextView;
import com.transsion.playercommon.activities.BaseActivity;
import com.transsion.playercommon.utils.UpdateUtils;
import com.transsion.tools.R;
import defpackage.bs8;
import defpackage.ge;
import defpackage.p06;
import defpackage.pp3;

public class UpdateActivity extends BaseActivity {
    public TextView N;
    public TextView O;
    public TextView P;
    public TextView Q;
    public TextView R;
    public TextView S;
    public View T;

    private void initView() {
        this.T.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.s0(view);
            }
        });
        this.S.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.t0(view);
            }
        });
        this.N.setText(R.string.version_update);
        this.P.setText(getResources().getString(R.string.current_version, UpdateUtils.h(this)));
        this.O.setText(getResources().getString(R.string.find_new_version, bs8.a == null ? "" : bs8.a.getVersionName()));
        this.Q.setText(bs8.a == null ? "" : bs8.a.getVersionDesAll());
        this.R.setText(getResources().getString(R.string.version_size, bs8.a != null ? bs8.a.fileSize : ""));
    }

    public void s0(View view) {
        onBackPressed();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_update);
        r0();
        initView();
    }

    public final void r0() {
        View viewInflate = ((ViewStub) findViewById(R.id.title_bar)).inflate();
        this.N = (TextView) viewInflate.findViewById(R.id.title_bar_title);
        this.T = viewInflate.findViewById(R.id.title_bar_back);
        this.O = (TextView) findViewById(R.id.tv_new_version);
        this.P = (TextView) findViewById(R.id.tv_version);
        this.Q = (TextView) findViewById(R.id.tv_des);
        this.R = (TextView) findViewById(R.id.tv_size);
        this.S = (TextView) findViewById(R.id.tv_update);
        ((TextView) findViewById(R.id.tv_app_name)).setText(pp3.c ? R.string.visha_Player_pre : R.string.visha_Player);
    }

    public final void t0(View view) {
        Log.i("UpdateActivity", "pkg feature " + ge.a());
        p06.P(bs8.a == null ? "" : bs8.a.getVersionName(), UpdateUtils.h(this), "version_updat_cl");
        UpdateUtils.p(this);
    }
}
