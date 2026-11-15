package com.transsion.onlinevideo.membership;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.view.Window;
import android.widget.TextView;
import androidx.p004lifecycle.Observer;
import androidx.p004lifecycle.ViewModelProvider;
import com.blankj.utilcode.util.Utils;
import com.transsion.dbdata.beans.onlinevideo.SubscribeDetail;
import com.transsion.onlinevideo.OnlineBaseActivity;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.web.VipViewModel;
import com.transsion.vishaplayersdk.gsyplayer.video.base.CustomClickableSpan;
import com.transsion.widgetslib.dialog.d;
import com.transsion.widgetslib.widget.timepicker.OSDateTimePicker;
import defpackage.f5;
import defpackage.it1;
import defpackage.wz5;

public class SubscribeDatailActivity extends OnlineBaseActivity {
    public static final String U = "visha_" + SubscribeDatailActivity.class.getSimpleName();
    public VipViewModel N;
    public TextView O;
    public TextView P;
    public TextView Q;
    public TextView R;
    public TextView S;
    public long T;

    public class a extends CustomClickableSpan {
        public a(Context context, boolean z) {
            super(context, z);
        }

        @Override
        public void onClick(View view) {
            SubscribeDatailActivity.this.G0();
        }
    }

    public static void E0(long j, Context context) {
        Intent intent = new Intent(context, (Class<?>) SubscribeDatailActivity.class);
        intent.putExtra("subscribe_id", j);
        f5.c(intent, context);
    }

    public final void A0(SubscribeDetail subscribeDetail) {
        if (subscribeDetail != null) {
            this.O.setText(subscribeDetail.getPrice());
            this.P.setText(it1.b(subscribeDetail.getNextExpireDate(), OSDateTimePicker.FORMAT_Y_M_D));
            this.Q.setText(subscribeDetail.getRenewalWay());
        }
    }

    public final void B0(Integer num) {
        if (num.intValue() == 1) {
            this.R.setEnabled(false);
            this.R.setTextColor(Color.parseColor("#87DEDEDE"));
        }
    }

    public final void C0(DialogInterface dialogInterface, int i) {
        this.N.a(getBaseContext(), this.T);
        dialogInterface.dismiss();
    }

    public void F0() {
        d.a aVar = new d.a(this);
        int i = R.string.unsubscribe;
        aVar.A(i).k(getResources().getString(R.string.tip_unsubscribe)).d(true).u(i, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                this.b.C0(dialogInterface, i2);
            }
        }).m(R.string.unsubscribe_later, new DialogInterface.OnClickListener() {
            @Override
            public final void onClick(DialogInterface dialogInterface, int i2) {
                dialogInterface.dismiss();
            }
        }).a().show();
        wz5.a0(this.T + "");
    }

    public final void G0() {
        startActivity(new Intent("android.intent.action.VIEW", Uri.parse("https://play.google.com/store/account/subscriptions")));
        wz5.b0();
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_subscribe_detail);
        Window window = getWindow();
        int i = R.color.black;
        window.setBackgroundDrawableResource(i);
        getWindow().setStatusBarColor(getResources().getColor(R.color.color_F06000));
        getWindow().setNavigationBarColor(getResources().getColor(i));
        this.N = (VipViewModel) new ViewModelProvider(this, new ViewModelProvider.AndroidViewModelFactory(Utils.a())).get(VipViewModel.class);
        x0();
        this.N.h().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.A0((SubscribeDetail) obj);
            }
        });
        this.N.e().observe(this, new Observer() {
            @Override
            public final void onChanged(Object obj) {
                this.a.B0((Integer) obj);
            }
        });
        long longExtra = getIntent().getLongExtra("subscribe_id", 0L);
        this.T = longExtra;
        this.N.g(longExtra);
        wz5.c0();
    }

    public void w0() {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        spannableStringBuilder.append((CharSequence) getResources().getString(R.string.unsubscribe_tip));
        a aVar = new a(this, true);
        SpannableString spannableString = new SpannableString(getResources().getString(R.string.unsubscribe_turn));
        spannableString.setSpan(aVar, 0, spannableString.length(), 18);
        this.S.setMovementMethod(LinkMovementMethod.getInstance());
        spannableStringBuilder.append((CharSequence) spannableString);
        this.S.setText(spannableStringBuilder);
    }

    public void x0() {
        this.O = (TextView) findViewById(R.id.price);
        this.P = (TextView) findViewById(R.id.date);
        this.Q = (TextView) findViewById(R.id.pay);
        this.R = (TextView) findViewById(R.id.cancel);
        this.S = (TextView) findViewById(R.id.tip);
        findViewById(R.id.back).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.y0(view);
            }
        });
        this.R.setEnabled(true);
        this.R.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                this.b.z0(view);
            }
        });
        this.N.g(getIntent().getLongExtra("subscribe_id", 0L));
        w0();
    }

    public final void y0(View view) {
        finish();
    }

    public final void z0(View view) {
        F0();
    }
}
