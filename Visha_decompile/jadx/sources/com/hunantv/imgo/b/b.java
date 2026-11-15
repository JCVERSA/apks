package com.hunantv.imgo.b;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.mgtv.ssp.R;
import java.util.Objects;

public class b extends Dialog {
    public TextView a;
    public TextView b;
    public TextView c;
    public TextView d;
    public LinearLayout e;
    public LinearLayout f;
    public TextView g;
    private View h;

    @Nullable
    private CharSequence i;

    @Nullable
    private CharSequence j;

    @Nullable
    private a k;

    public interface a {
        void a();

        void b();
    }

    public static class C0127b implements a {
        private b a;

        public C0127b(b bVar) {
            this.a = bVar;
        }

        @Override
        public void a() {
            b.a((Dialog) this.a);
            this.a = null;
        }

        @Override
        public void b() {
            b.a((Dialog) this.a);
            this.a = null;
        }
    }

    public b(Context context) {
        super(context, R.style.MGTransparentDialog);
        a();
    }

    private void c() {
        Window window = getWindow();
        if (window != null) {
            View decorView = getWindow().getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility() | 1024;
            WindowManager.LayoutParams attributes = window.getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            window.setAttributes(attributes);
            decorView.setSystemUiVisibility(systemUiVisibility);
            window.setStatusBarColor(0);
        }
    }

    private void d() {
        Window window = getWindow();
        Objects.requireNonNull(window);
        window.setFlags(1024, 1024);
    }

    private boolean e() {
        if (!TextUtils.isEmpty(this.i) && !TextUtils.isEmpty(this.j)) {
            this.f.setVisibility(0);
            this.e.setVisibility(8);
            this.a.setText(this.i);
            this.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (b.this.k != null) {
                        b.this.k.a();
                    }
                }
            });
            this.b.setText(this.j);
            this.b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (b.this.k != null) {
                        b.this.k.b();
                    }
                }
            });
        } else if (!TextUtils.isEmpty(this.j)) {
            this.f.setVisibility(8);
            this.e.setVisibility(0);
            this.g.setText(this.j);
            this.g.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (b.this.k != null) {
                        b.this.k.b();
                    }
                }
            });
        }
        try {
            show();
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return true;
        }
    }

    public b b(@StringRes int i) {
        return a(d(i));
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        d();
        c();
    }

    @NonNull
    private String d(@StringRes int i) {
        return getContext().getString(i);
    }

    public void a() {
        requestWindowFeature(1);
        setContentView(R.layout.dialog_commonexception);
        this.a = (TextView) findViewById(R.id.left_button);
        this.b = (TextView) findViewById(R.id.right_button);
        this.c = (TextView) findViewById(R.id.tv_big_title);
        this.d = (TextView) findViewById(R.id.tv_title);
        this.e = (LinearLayout) findViewById(R.id.ll_one_button);
        this.f = (LinearLayout) findViewById(R.id.ll_two_button);
        this.g = (TextView) findViewById(R.id.right_button1);
        View viewFindViewById = findViewById(R.id.dialogBgOfBaseExtend);
        this.h = viewFindViewById;
        viewFindViewById.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                b.this.dismiss();
            }
        });
        setCanceledOnTouchOutside(false);
    }

    public b b(String str) {
        this.j = str;
        return this;
    }

    public b b(boolean z) {
        setCanceledOnTouchOutside(z);
        return this;
    }

    public boolean b() {
        if ((getContext() instanceof Activity) && ((Activity) getContext()).isFinishing()) {
            return false;
        }
        return e();
    }

    public b c(@StringRes int i) {
        return b(d(i));
    }

    @Deprecated
    public b a(@StringRes int i) {
        return a((CharSequence) d(i));
    }

    public b a(CharSequence charSequence) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(charSequence);
            this.d.setVisibility(0);
        }
        return this;
    }

    public b a(String str) {
        this.i = str;
        return this;
    }

    public b a(a aVar) {
        this.k = aVar;
        return this;
    }

    public b a(boolean z) {
        setCancelable(z);
        return this;
    }

    public static void a(Dialog dialog) {
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        dialog.dismiss();
    }
}
