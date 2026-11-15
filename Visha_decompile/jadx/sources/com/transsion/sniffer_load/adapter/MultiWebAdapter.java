package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.data.WebPreviewRecord;
import defpackage.d39;
import java.util.ArrayList;
import java.util.List;

public class MultiWebAdapter extends RecyclerView.Adapter<PreviewViewHolder> {
    public final Context o;
    public List p;
    public int q = 0;
    public Drawable r;
    public a s;
    public PreviewViewHolder t;

    public class PreviewViewHolder extends RecyclerView.ViewHolder {
        public ImageView p;
        public ImageView q;
        public ImageView r;
        public TextView s;
        public ConstraintLayout t;
        public FrameLayout u;

        public class a extends ViewOutlineProvider {
            public final MultiWebAdapter a;
            public final View b;

            public a(MultiWebAdapter multiWebAdapter, View view) {
                this.a = multiWebAdapter;
                this.b = view;
            }

            @Override
            public void getOutline(View view, Outline outline) {
                outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), d39.a(this.b.getContext(), 17.0f));
            }
        }

        public PreviewViewHolder(View view) {
            super(view);
            this.p = (ImageView) view.findViewById(R.id.iv_web_icon);
            this.q = (ImageView) view.findViewById(R.id.iv_close);
            this.r = (ImageView) view.findViewById(R.id.iv_web_preview);
            this.s = (TextView) view.findViewById(R.id.tv_title);
            this.t = (ConstraintLayout) view.findViewById(R.id.cl_content_parent);
            this.u = (FrameLayout) view.findViewById(R.id.fl_item_root);
            this.t.setOutlineProvider(new a(MultiWebAdapter.this, view));
            this.t.setClipToOutline(true);
            this.q.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.lambda$new$0(view2);
                }
            });
            this.u.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view2) {
                    this.b.g(view2);
                }
            });
        }

        public void h(boolean z) {
            if (z) {
                this.u.setBackground(MultiWebAdapter.this.r);
            } else {
                this.u.setBackground(null);
            }
        }

        public void lambda$new$0(View view) {
            int adapterPosition;
            if (MultiWebAdapter.this.s == null || (adapterPosition = getAdapterPosition()) == -1) {
                return;
            }
            MultiWebAdapter.this.s.a(adapterPosition);
        }

        public final void g(View view) {
            int adapterPosition;
            if (MultiWebAdapter.this.s == null || (adapterPosition = getAdapterPosition()) == -1) {
                return;
            }
            MultiWebAdapter.this.s.onItemClick(adapterPosition);
        }
    }

    public interface a {
        void a(int i);

        void onItemClick(int i);
    }

    public MultiWebAdapter(Context context, a aVar) {
        this.o = context;
        this.s = aVar;
        this.r = context.getDrawable(R.drawable.multi_web_item_bg);
    }

    @Override
    public void onBindViewHolder(PreviewViewHolder previewViewHolder, int i) {
        List list = this.p;
        if (list == null || i < 0 || i >= list.size()) {
            return;
        }
        WebPreviewRecord webPreviewRecord = (WebPreviewRecord) this.p.get(i);
        previewViewHolder.h(i == this.q);
        if (i == this.q) {
            this.t = previewViewHolder;
        }
        previewViewHolder.s.setText(webPreviewRecord.title);
        if (webPreviewRecord.icon == null) {
            previewViewHolder.p.setImageResource(R.drawable.ic_default_web_icon);
        } else {
            Glide.with(this.o).load2(webPreviewRecord.icon).into(previewViewHolder.p);
        }
        Glide.with(this.o).load2(webPreviewRecord.previewBitmap).error(R.color.os_fill_icon_primary_color).into(previewViewHolder.r);
    }

    @Override
    public PreviewViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new PreviewViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.multi_web_adapter, viewGroup, false));
    }

    @Override
    public int getItemCount() {
        List list = this.p;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public void h(List list) {
        if (list == null) {
            this.p = new ArrayList();
        } else {
            this.p = new ArrayList(list);
        }
    }

    public void r(int i) {
        if (getItemCount() <= 0) {
            this.q = 0;
            return;
        }
        int iMax = Math.max(0, Math.min(i, getItemCount() - 1));
        int i2 = this.q;
        this.q = iMax;
        if (i2 >= 0 && i2 < getItemCount()) {
            notifyItemChanged(i2);
        }
        if (iMax < 0 || iMax >= getItemCount() || iMax == i2) {
            return;
        }
        notifyItemChanged(iMax);
    }

    public void s(List list, int i) {
        h(list);
        int itemCount = getItemCount();
        if (itemCount <= 0) {
            this.q = 0;
        } else {
            this.q = Math.max(0, Math.min(i, itemCount - 1));
        }
        notifyDataSetChanged();
    }
}
