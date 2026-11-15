package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.model.u;
import defpackage.ey4;
import defpackage.g4d;
import defpackage.l4d;
import defpackage.lbd;
import java.util.List;

public class VoteAdapter extends CommonRecyclerAdapter<u> {
    public int q;
    public b r;

    public class a implements View.OnClickListener {
        public final u b;

        public a(u uVar) {
            this.b = uVar;
        }

        @Override
        public void onClick(View view) {
            if (VoteAdapter.this.r != null) {
                VoteAdapter.this.r.a(this.b);
            }
        }
    }

    public interface b {
        void a(u uVar);
    }

    public VoteAdapter(List list, Context context, int i) {
        super(list, context);
        this.q = i;
    }

    @Override
    public int A(int i) {
        return 0;
    }

    @Override
    public int B() {
        return 0;
    }

    @Override
    public void w(c cVar, int i, u uVar, List list) {
        GradientDrawable gradientDrawable;
        GradientDrawable gradientDrawable2;
        int i2 = this.q;
        if (i2 == 1) {
            ImageView imageView = (ImageView) cVar.getView(R.id.votecontacticon);
            if (imageView != null) {
                ey4.d(imageView, Uri.parse(uVar.e()), lbd.c(uVar.e(), lbd.E).n(0).M(true).t(), null);
            }
            TextView textView = (TextView) cVar.getView(R.id.name);
            if (textView != null) {
                textView.setText(uVar.a());
            }
        } else if (i2 == 0) {
            TextView textView2 = (TextView) cVar.getView(R.id.name);
            if (textView2 != null) {
                textView2.setText(uVar.a());
            }
        } else if (i2 == 3 || i2 == 5) {
            ImageView imageView2 = (ImageView) cVar.getView(R.id.contactIcon);
            if (imageView2 != null) {
                ey4.d(imageView2, Uri.parse(uVar.e()), lbd.c(uVar.e(), lbd.E).R(true).G(15).t(), null);
            }
            TextView textView3 = (TextView) cVar.getView(R.id.contactname);
            if (textView3 != null) {
                textView3.setText(uVar.a());
            }
            if (!TextUtils.isEmpty(uVar.d()) && (gradientDrawable = (GradientDrawable) ((TextView) cVar.getView(R.id.vote_item_bottom)).getBackground()) != null) {
                gradientDrawable.setColor(g4d.w(uVar.d()));
                gradientDrawable.setAlpha(230);
            }
        } else if (i2 == 4 || i2 == 6) {
            ImageView imageView3 = (ImageView) cVar.getView(R.id.contactIcon);
            if (imageView3 != null) {
                ey4.d(imageView3, Uri.parse(uVar.e()), lbd.c(uVar.e(), lbd.E).R(true).G(15).t(), null);
            }
            TextView textView4 = (TextView) cVar.getView(R.id.contactcount);
            if (textView4 != null) {
                textView4.setText(uVar.f() + "%");
            }
            TextView textView5 = (TextView) cVar.getView(R.id.vote_item_bottom);
            if (!TextUtils.isEmpty(uVar.d()) && (gradientDrawable2 = (GradientDrawable) textView5.getBackground()) != null) {
                gradientDrawable2.setColor(g4d.w(uVar.d()));
                gradientDrawable2.setAlpha(230);
            }
            if (!TextUtils.isEmpty(uVar.a())) {
                textView5.setText(uVar.a());
            }
            ImageView imageView4 = (ImageView) cVar.getView(R.id.good_best);
            if (uVar.c()) {
                l4d.f(imageView4, 0);
            } else {
                l4d.f(imageView4, 8);
            }
        } else if (i2 == 2) {
            TextView textView6 = (TextView) cVar.getView(R.id.name);
            if (textView6 != null && !TextUtils.isEmpty(uVar.a())) {
                textView6.setText(uVar.a());
            }
            ImageView imageView5 = (ImageView) cVar.getView(R.id.good_best);
            if (uVar.c()) {
                l4d.f(imageView5, 0);
            } else {
                l4d.f(imageView5, 8);
            }
            ((VoteProgressBar) cVar.getView(R.id.voteprogressbar)).setProgress(uVar.f());
        }
        if (cVar.b() != null) {
            cVar.b().setOnClickListener(new a(uVar));
        }
    }

    public void a(b bVar) {
        this.r = bVar;
    }

    @Override
    public int b(int i) {
        return ((u) this.p.get(i)).b() ? 1 : 0;
    }

    @Override
    public int r(int i) {
        int i2 = this.q;
        if (i2 == 1) {
            return R.layout.vote_sheme_icon_item;
        }
        if (i2 == 0) {
            return R.layout.vote_sheme_noicon_item;
        }
        if (i2 == 2) {
            return i == 1 ? R.layout.vote_sheme_result_item : R.layout.vote_sheme_result_item02;
        }
        if (i2 == 3) {
            return R.layout.vote_float_item;
        }
        if (i2 == 4) {
            return R.layout.vote_float_item_result;
        }
        if (i2 == 5) {
            return R.layout.vote_float_item_harscreen;
        }
        return i2 == 6 ? R.layout.vote_float_item_result_harscreen : R.layout.vote_sheme_noicon_item;
    }
}
