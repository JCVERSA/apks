package defpackage;

import android.app.Dialog;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.transsion.widgetslib.R;
import com.transsion.widgetslib.view.OSLoadingView;

public class s87 extends Dialog {
    public OSLoadingView b;

    public static class a {
        public s87 a;
        public Context b;
        public View c;
        public OSLoadingView d;

        public a(Context context) {
            this(context, 0);
        }

        public a a(int i, boolean z) {
            b(this.b.getResources().getString(i), z);
            return this;
        }

        public a b(String str, boolean z) {
            View viewInflate = LayoutInflater.from(this.b).inflate(z ? R.layout.os_dialog_loading_mask : R.layout.os_dialog_loading, (ViewGroup) null, true);
            this.c = viewInflate;
            OSLoadingView oSLoadingView = (OSLoadingView) viewInflate.findViewById(R.id.osLoading);
            this.d = oSLoadingView;
            this.a.b = oSLoadingView;
            ((TextView) this.c.findViewById(R.id.messageTv)).setText(str);
            OSLoadingView oSLoadingView2 = this.d;
            if (oSLoadingView2 != null) {
                oSLoadingView2.setDotColor(z ? R.color.os_color_white100 : R.color.os_loading_view_dot_color);
            }
            this.a.setContentView(this.c, new ViewGroup.LayoutParams(-2, -2));
            this.a.getWindow().setBackgroundDrawableResource(z ? R.drawable.os_loading_dialog_ims_bg : R.drawable.os_loading_dialog_bg);
            this.a.getWindow().setWindowAnimations(R.style.OsInputDialogAnimStyle);
            return this;
        }

        public s87 c() {
            s87 s87Var = this.a;
            if (s87Var != null) {
                s87Var.show();
            }
            return this.a;
        }

        public a(Context context, int i) {
            this.b = context;
            s87 s87Var = new s87(context, i < 16777216 ? R.style.OS_Dialog_Loading : i);
            this.a = s87Var;
            s87Var.setCancelable(false);
            this.a.setCanceledOnTouchOutside(false);
            this.a.getWindow().setGravity(17);
            if (olb.w) {
                this.a.setTitle(context.getString(R.string.os_string_fold_dialog_title_verify));
            }
        }
    }

    @Override
    public void dismiss() {
        super.dismiss();
        OSLoadingView oSLoadingView = this.b;
        if (oSLoadingView != null) {
            oSLoadingView.release();
            this.b = null;
        }
    }

    public s87(Context context, int i) {
        super(context, i);
    }
}
