package com.mgadplus.viewgroup.dynamicview;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.mgmi.R;
import com.mgmi.model.k;
import defpackage.w3d;
import java.util.List;

public class MultiAdapter extends CommonRecyclerAdapter<k> {
    public Context q;
    public int r;

    public class a implements View.OnClickListener {
        public final k b;

        public a(k kVar) {
            this.b = kVar;
        }

        @Override
        public void onClick(View view) {
            MultiAdapter.E(MultiAdapter.this);
        }
    }

    public interface b {
    }

    public static b E(MultiAdapter multiAdapter) {
        multiAdapter.getClass();
        return null;
    }

    @Override
    public void w(c cVar, int i, k kVar, List list) {
        View view = cVar.getView(R.id.left);
        LinearLayout linearLayout = (LinearLayout) cVar.getView(R.id.ll_content);
        TextView textView = (TextView) cVar.getView(R.id.mgmi_id_title_text_2);
        if (textView != null) {
            textView.setText(kVar.b());
        }
        GradientDrawable gradientDrawable = (GradientDrawable) linearLayout.getBackground();
        if (gradientDrawable != null) {
            if (kVar.a) {
                GradientDrawable gradientDrawable2 = (GradientDrawable) view.getBackground();
                if (gradientDrawable2 != null) {
                    gradientDrawable2.setColor(this.r);
                }
                gradientDrawable.setStroke(w3d.a(this.q, 1.0f), this.r);
                view.setVisibility(0);
            } else {
                view.setVisibility(8);
                gradientDrawable.setStroke(w3d.a(this.q, 1.0f), Color.parseColor("#ff000000"));
            }
        }
        if (cVar.b() != null) {
            cVar.b().setOnClickListener(new a(kVar));
        }
    }

    @Override
    public int r(int i) {
        return R.layout.mgmi_multichoose_item;
    }
}
