package com.mgmi.ViewGroup.a;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StringRes;
import com.mgmi.R;

public final class a extends Dialog {
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
    private InterfaceC0160a k;

    public interface InterfaceC0160a {
        void a();

        void b();

        void c();
    }

    public static class b implements InterfaceC0160a {
        private a a;

        public b(a aVar) {
            this.a = aVar;
        }

        @Override
        public void a() {
            a aVar = this.a;
            if (aVar != null && aVar.isShowing()) {
                this.a.dismiss();
            }
            this.a = null;
        }

        @Override
        public void b() {
            a aVar = this.a;
            if (aVar != null && aVar.isShowing()) {
                this.a.dismiss();
            }
            this.a = null;
        }

        @Override
        public void c() {
            this.a = null;
        }
    }

    public a(Context context) {
        super(context, R.style.MgmiTransparentDialog);
        a();
    }

    private boolean d() {
        if (!TextUtils.isEmpty(this.i) && !TextUtils.isEmpty(this.j)) {
            this.f.setVisibility(0);
            this.e.setVisibility(8);
            this.a.setText(this.i);
            this.a.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (a.this.k != null) {
                        a.this.k.b();
                    }
                }
            });
            this.b.setText(this.j);
            this.b.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View view) {
                    if (a.this.k != null) {
                        a.this.k.a();
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
                    if (a.this.k != null) {
                        a.this.k.a();
                    }
                }
            });
        }
        show();
        return true;
    }

    public a b(@StringRes int i) {
        return a(d(i));
    }

    public a c(@StringRes int i) {
        return b(d(i));
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c();
    }

    public void a() {
        requestWindowFeature(1);
        setContentView(R.layout.mgmi_common_dialog);
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
                a.this.dismiss();
            }
        });
        setCanceledOnTouchOutside(false);
    }

    public a b(String str) {
        this.j = str;
        return this;
    }

    public void c() {
        try {
            InterfaceC0160a interfaceC0160a = this.k;
            if (interfaceC0160a != null) {
                interfaceC0160a.c();
            }
            if (isShowing()) {
                dismiss();
            }
        } catch (Throwable unused) {
        }
    }

    public boolean b() {
        if ((getContext() instanceof Activity) && ((Activity) getContext()).isFinishing()) {
            return false;
        }
        return d();
    }

    @NonNull
    private String d(@StringRes int i) {
        return getContext().getString(i);
    }

    @Deprecated
    public a a(@StringRes int i) {
        return a((CharSequence) d(i));
    }

    public a a(CharSequence charSequence) {
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(charSequence);
            this.d.setVisibility(0);
        }
        return this;
    }

    public a a(String str) {
        this.i = str;
        return this;
    }

    public a a(InterfaceC0160a interfaceC0160a) {
        this.k = interfaceC0160a;
        return this;
    }

    public a a(boolean z) {
        setCanceledOnTouchOutside(z);
        return this;
    }
}
