package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.cloud.hisavana.sdk.R;
import com.transsion.livecaption.constant.ICode;

public final class zl4 extends Dialog {
    public a b;
    public TextView c;
    public TextView d;
    public TextView e;
    public TextView f;
    public TextView g;
    public View h;

    public interface a {

        public static final class C0464a {
            public static void a(a aVar) {
            }

            public static void b(a aVar) {
            }

            public static void c(a aVar) {
            }
        }

        void a();

        void b();

        void c();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zl4(Context context, a aVar) {
        super(context, R.style.HSDialogTheme);
        y45.j(context, "context");
        this.b = aVar;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.hs_confirm_dialog_layout, (ViewGroup) null);
        setContentView(viewInflate);
        setCancelable(false);
        this.c = (TextView) viewInflate.findViewById(R.id.title);
        this.d = (TextView) viewInflate.findViewById(R.id.content);
        TextView textView = (TextView) viewInflate.findViewById(R.id.positive);
        this.e = textView;
        if (textView != null) {
            textView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    zl4.d(this.b, view);
                }
            });
        }
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.negative);
        this.f = textView2;
        if (textView2 != null) {
            textView2.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    zl4.e(this.b, view);
                }
            });
        }
        this.h = viewInflate.findViewById(R.id.separator_v);
        TextView textView3 = (TextView) viewInflate.findViewById(R.id.confirm);
        this.g = textView3;
        if (textView3 != null) {
            textView3.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    zl4.f(this.b, view);
                }
            });
        }
        l();
    }

    public static final void d(zl4 zl4Var, View view) {
        y45.j(zl4Var, "this$0");
        a aVar = zl4Var.b;
        if (aVar != null) {
            aVar.b();
        }
    }

    public static final void e(zl4 zl4Var, View view) {
        y45.j(zl4Var, "this$0");
        a aVar = zl4Var.b;
        if (aVar != null) {
            aVar.a();
        }
    }

    public static final void f(zl4 zl4Var, View view) {
        y45.j(zl4Var, "this$0");
        a aVar = zl4Var.b;
        if (aVar != null) {
            aVar.c();
        }
    }

    public final void g(String str) {
        y45.j(str, "text");
        TextView textView = this.g;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void h(String str) {
        y45.j(str, ICode.CALL.CALL_KEY_CONTENT);
        TextView textView = this.d;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void i(String str) {
        y45.j(str, "text");
        TextView textView = this.e;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void j(boolean z) {
        TextView textView = this.g;
        if (textView != null) {
            textView.setVisibility(z ? 0 : 8);
        }
        TextView textView2 = this.e;
        if (textView2 != null) {
            textView2.setVisibility(z ? 8 : 0);
        }
        TextView textView3 = this.f;
        if (textView3 != null) {
            textView3.setVisibility(z ? 8 : 0);
        }
        View view = this.h;
        if (view == null) {
            return;
        }
        view.setVisibility(z ? 8 : 0);
    }

    public final void k(String str) {
        y45.j(str, "title");
        TextView textView = this.c;
        if (textView != null) {
            textView.setText(str);
        }
    }

    public final void l() {
        float f = getContext().getResources().getConfiguration().orientation == 2 ? 0.5f : 0.9f;
        Window window = getWindow();
        if (window != null) {
            window.setLayout((int) (getContext().getResources().getDisplayMetrics().widthPixels * f), -2);
        }
    }
}
