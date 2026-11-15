package com.cloud.hisavana.sdk.common.util;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R$id;
import com.cloud.hisavana.sdk.R$layout;
import com.cloud.hisavana.sdk.R$style;
import kotlin.jvm.internal.Intrinsics;

public final class v extends Dialog {

    private a f21609a;

    private TextView f21610b;

    private TextView f21611c;

    private TextView f21612d;

    private TextView f21613e;

    private TextView f21614f;

    private View f21615g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(Context context, a aVar) {
        super(context, R$style.HSDialogTheme);
        Intrinsics.h(context, "context");
        this.f21609a = aVar;
        View viewInflate = LayoutInflater.from(context).inflate(R$layout.hs_confirm_dialog_layout, (ViewGroup) null);
        setContentView(viewInflate);
        setCancelable(false);
        this.f21610b = (TextView) viewInflate.findViewById(R$id.title);
        this.f21611c = (TextView) viewInflate.findViewById(R$id.content);
        TextView textView = (TextView) viewInflate.findViewById(R$id.positive);
        this.f21612d = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    v.d(this.f21606a, view);
                }
            });
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R$id.negative);
        this.f21613e = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    v.e(this.f21607a, view);
                }
            });
        }
        this.f21615g = viewInflate.findViewById(R$id.separator_v);
        TextView textView3 = (TextView) viewInflate.findViewById(R$id.confirm);
        this.f21614f = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    v.f(this.f21608a, view);
                }
            });
        }
        l();
    }

    public static final void d(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f21609a;
        if (aVar != null) {
            aVar.b();
        }
    }

    public static final void e(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f21609a;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static final void f(v this$0, View view) {
        Intrinsics.h(this$0, "this$0");
        a aVar = this$0.f21609a;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void g(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.f21614f;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void h(String content) {
        Intrinsics.h(content, "content");
        TextView textView = this.f21611c;
        if (textView != null) {
            textView.setText(content);
        }
    }

    public final void i(String text) {
        Intrinsics.h(text, "text");
        TextView textView = this.f21612d;
        if (textView != null) {
            textView.setText(text);
        }
    }

    public final void j(boolean z10) {
        TextView textView = this.f21614f;
        if (textView != null) {
            textView.setVisibility(z10 ? 0 : 8);
        }
        TextView textView2 = this.f21612d;
        if (textView2 != null) {
            textView2.setVisibility(z10 ? 8 : 0);
        }
        TextView textView3 = this.f21613e;
        if (textView3 != null) {
            textView3.setVisibility(z10 ? 8 : 0);
        }
        View view = this.f21615g;
        if (view == null) {
            return;
        }
        view.setVisibility(z10 ? 8 : 0);
    }

    public final void k(String title) {
        Intrinsics.h(title, "title");
        TextView textView = this.f21610b;
        if (textView != null) {
            textView.setText(title);
        }
    }

    public final void l() {
        float f10 = getContext().getResources().getConfiguration().orientation == 2 ? 0.5f : 0.9f;
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) (getContext().getResources().getDisplayMetrics().widthPixels * f10), -2);
        }
    }

    public interface a {
        void a();

        void b();

        void c();

        public static final class C0281a {
            public static void a(a aVar) {
            }

            public static void b(a aVar) {
            }

            public static void c(a aVar) {
            }
        }
    }
}
