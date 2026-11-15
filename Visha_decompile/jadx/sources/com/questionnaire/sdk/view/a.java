package com.questionnaire.sdk.view;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.questionnaire.sdk.R;

public class a extends Dialog {
    public ImageView b;
    public TextView c;
    public TextView d;
    public TextView e;
    public String f;
    public String g;
    public String h;
    public ScoreView i;
    public int j;
    public d k;

    public class DialogInterfaceOnKeyListenerC0194a implements DialogInterface.OnKeyListener {
        public DialogInterfaceOnKeyListenerC0194a() {
        }

        @Override
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4;
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            a.this.k.onClose();
            a.this.dismiss();
        }
    }

    public class c implements ScoreView.b {
        public c() {
        }

        @Override
        public void a(int i) {
            a.this.k.a(i);
        }
    }

    public interface d {
        void a(int i);

        void onClose();
    }

    public a(Context context) {
        super(context, R.style.Questionsdk_ScoreDialog);
    }

    public final void a() {
        this.b = (ImageView) findViewById(R.id.questionsdk_nps_close);
        this.c = (TextView) findViewById(R.id.questionsdk_title);
        this.d = (TextView) findViewById(R.id.questionsdk_negative_tip);
        this.e = (TextView) findViewById(R.id.questionsdk_positive_tip);
        int i = this.j;
        if (i == 5) {
            this.i = (ScoreView) findViewById(R.id.questionsdk_score_view_5);
        } else if (i == 7) {
            this.i = (ScoreView) findViewById(R.id.questionsdk_score_view_7);
        } else {
            this.i = (ScoreView) findViewById(R.id.questionsdk_score_view_10);
        }
        this.i.setVisibility(0);
    }

    public final void b() {
        if (!TextUtils.isEmpty(this.f)) {
            this.c.setText(this.f);
        }
        if (!TextUtils.isEmpty(this.g)) {
            this.d.setText(this.g);
        }
        if (TextUtils.isEmpty(this.h)) {
            return;
        }
        this.e.setText(this.h);
    }

    public final void c() {
        this.b.setOnClickListener(new b());
        this.i.setSelectedScoreListener(new c());
    }

    public a d(String str) {
        this.g = str;
        return this;
    }

    public a e(d dVar) {
        this.k = dVar;
        return this;
    }

    public a f(String str) {
        this.h = str;
        return this;
    }

    public a g(String str) {
        this.f = str;
        return this;
    }

    public a h(int i) {
        this.j = i;
        return this;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.questionsdk_score_dialog);
        a();
        b();
        setCanceledOnTouchOutside(false);
        getWindow().setGravity(80);
        setOnKeyListener(new DialogInterfaceOnKeyListenerC0194a());
        c();
    }

    @Override
    public void show() {
        super.show();
        b();
    }
}
