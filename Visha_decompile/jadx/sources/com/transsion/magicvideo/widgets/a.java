package com.transsion.magicvideo.widgets;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.transsion.dbdata.beans.NewFeatureAdvertise;
import com.transsion.magicvideo.R;
import defpackage.fc7;
import defpackage.hb0;
import defpackage.l06;
import defpackage.l9;
import org.greenrobot.greendao.generator.Schema;

public class a {
    public Dialog a;
    public f b;
    public View.OnClickListener c;
    public boolean d = false;
    public NewFeatureAdvertise e;

    public class C0227a implements l9.b {
        public final boolean a;
        public final Context b;

        public C0227a(boolean z, Context context) {
            this.a = z;
            this.b = context;
        }

        @Override
        public void a(NewFeatureAdvertise newFeatureAdvertise) {
            a.this.e = newFeatureAdvertise;
            if (!this.a || a.this.i()) {
                a.this.m(this.b);
            }
        }
    }

    public class b implements View.OnClickListener {
        public b() {
        }

        @Override
        public void onClick(View view) {
            a.this.a.dismiss();
            l06.b(a.this.g());
        }
    }

    public class c implements DialogInterface.OnDismissListener {
        public final TextView b;

        public c(TextView textView) {
            this.b = textView;
        }

        @Override
        public void onDismiss(DialogInterface dialogInterface) {
            if (a.this.c != null) {
                a.this.c.onClick(this.b);
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override
        public void onClick(View view) {
            a.this.b.a(a.this.e);
        }
    }

    public class e implements View.OnClickListener {
        public e() {
        }

        @Override
        public void onClick(View view) {
        }
    }

    public interface f {
        void a(NewFeatureAdvertise newFeatureAdvertise);
    }

    public void f() {
        Dialog dialog = this.a;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.a.dismiss();
    }

    public String g() {
        return i() ? this.e.getAdvertisingList().get(0).getName() : Schema.DEFAULT_NAME;
    }

    public boolean h() {
        return this.d;
    }

    public boolean i() {
        return (this.e.getAdvertisingList() == null || this.e.getAdvertisingList().size() <= 0 || this.e.getAdvertisingList().get(0).getRouterBean() == null) ? false : true;
    }

    public void j(Context context, boolean z) {
        l9.d(context, new C0227a(z, context));
    }

    public void k(boolean z) {
        this.d = z;
    }

    public void l(f fVar) {
        this.b = fVar;
    }

    public void m(Context context) {
        if (fc7.a(context)) {
            return;
        }
        Dialog dialog = this.a;
        if (dialog == null || !dialog.isShowing()) {
            hb0.status = 0;
            l06.d(g());
            Dialog dialog2 = new Dialog(context, R.style.player_dialog);
            this.a = dialog2;
            dialog2.setContentView(R.layout.dialog_player_new_feature_new);
            this.a.show();
            this.a.setCanceledOnTouchOutside(false);
            TextView textView = (TextView) this.a.findViewById(R.id.btn_to_experience_new_feature);
            ImageView imageView = (ImageView) this.a.findViewById(R.id.iv_poster);
            if (i()) {
                Glide.with(context).asBitmap().load2(this.e.getAdvertisingList().get(0).getPicture()).placeholder(R.drawable.iv_default_poster).into(imageView);
            } else {
                imageView.setImageResource(R.drawable.iv_default_poster);
            }
            TextView textView2 = (TextView) this.a.findViewById(R.id.iv_close);
            if (textView2 != null) {
                View.OnClickListener onClickListener = this.c;
                if (onClickListener != null) {
                    textView2.setOnClickListener(onClickListener);
                } else {
                    textView2.setOnClickListener(new b());
                }
            }
            this.a.setOnDismissListener(new c(textView2));
            if (textView != null) {
                if (this.b != null) {
                    textView.setOnClickListener(new d());
                } else {
                    textView.setOnClickListener(new e());
                }
            }
        }
    }

    public void setOnCloseListener(View.OnClickListener onClickListener) {
        this.c = onClickListener;
    }
}
