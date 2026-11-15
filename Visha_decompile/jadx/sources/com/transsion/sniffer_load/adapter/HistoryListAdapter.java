package com.transsion.sniffer_load.adapter;

import android.text.TextUtils;
import android.text.format.DateUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.adapter.HistoryListAdapter;
import com.transsion.sniffer_load.data.ReviewHistory;
import defpackage.b23;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class HistoryListAdapter extends BaseQuickAdapter<ReviewHistory, BaseViewHolder> {
    public static final int t = R.id.tv_history_url;
    public boolean o;
    public b p;
    public ArrayList q;
    public ArrayList r;
    public c s;

    public interface a {
        void a(byte[] bArr);
    }

    public interface b {
        void a(long j, a aVar);
    }

    public interface c {
        void b(int i);

        void c(boolean z);
    }

    public HistoryListAdapter() {
        super(R.layout.rv_history_item);
        this.q = new ArrayList();
        this.r = new ArrayList();
    }

    public static boolean r(ReviewHistory reviewHistory) {
        return !reviewHistory.isDateItem;
    }

    public void A(b bVar) {
        this.p = bVar;
    }

    public final void B(TextView textView, ImageView imageView, ReviewHistory reviewHistory) {
        imageView.setVisibility(8);
        textView.setVisibility(0);
        String strValueOf = TextUtils.isEmpty(reviewHistory.getName()) ? "" : String.valueOf(reviewHistory.getName().charAt(0));
        textView.setText(strValueOf);
        textView.setBackgroundColor(b23.o(strValueOf));
    }

    public final void d(BaseViewHolder baseViewHolder, ReviewHistory reviewHistory) {
        View view = baseViewHolder.itemView;
        int i = R.id.iv_history_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (!this.o) {
            checkBox.setVisibility(8);
            return;
        }
        checkBox.setVisibility(0);
        baseViewHolder.addOnClickListener(i);
        checkBox.setChecked(this.q.contains(reviewHistory));
    }

    public final void g(BaseViewHolder baseViewHolder, ReviewHistory reviewHistory) {
        int i = R.id.history_cover;
        ImageView imageView = (ImageView) baseViewHolder.getView(i);
        TextView textView = (TextView) baseViewHolder.getView(R.id.custom_history_cover);
        String strJ = j(reviewHistory);
        int i2 = t;
        if (strJ.equals(imageView.getTag(i2))) {
            imageView.setTag(i, Long.valueOf(reviewHistory.getId()));
            return;
        }
        imageView.setTag(i2, strJ);
        imageView.setTag(i, Long.valueOf(reviewHistory.getId()));
        if (!TextUtils.isEmpty(reviewHistory.getImageUri())) {
            Glide.with(this.mContext).asBitmap().load2(reviewHistory.getImageUri()).dontAnimate().into(imageView);
            imageView.setVisibility(0);
            textView.setVisibility(8);
            return;
        }
        byte[] bArr = reviewHistory.bitmap;
        if (bArr == null || bArr.length <= 0) {
            B(textView, imageView, reviewHistory);
            u(reviewHistory, imageView, textView);
        } else {
            Glide.with(this.mContext).load2(reviewHistory.bitmap).dontAnimate().into(imageView);
            imageView.setVisibility(0);
            textView.setVisibility(8);
        }
    }

    @Override
    public int getItemViewType(int i) {
        return getItem(i).isDateItem() ? 1 : 0;
    }

    public void h() {
        this.q.clear();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, ReviewHistory reviewHistory) {
        if (reviewHistory.isDateItem()) {
            s(baseViewHolder, reviewHistory);
        } else {
            t(baseViewHolder, reviewHistory);
        }
    }

    public final String j(ReviewHistory reviewHistory) {
        if (!TextUtils.isEmpty(reviewHistory.getImageUri())) {
            return "uri:" + reviewHistory.getImageUri();
        }
        byte[] bArr = reviewHistory.bitmap;
        if (bArr == null || bArr.length <= 0) {
            return "text:" + reviewHistory.getId();
        }
        return "blob:" + reviewHistory.getId();
    }

    public ArrayList k() {
        return this.q;
    }

    public final void l(ImageView imageView, ReviewHistory reviewHistory, TextView textView, byte[] bArr) {
        Object tag = imageView.getTag(R.id.history_cover);
        if (!(tag instanceof Long) || ((Long) tag).longValue() != reviewHistory.getId() || bArr == null || bArr.length <= 0) {
            return;
        }
        imageView.setTag(t, "blob:" + reviewHistory.getId());
        Glide.with(this.mContext).load2(bArr).dontAnimate().into(imageView);
        imageView.setVisibility(0);
        textView.setVisibility(8);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return i == 1 ? createBaseViewHolder(viewGroup, R.layout.rv_history_date_item) : createBaseViewHolder(viewGroup, R.layout.rv_history_item);
    }

    public void s(BaseViewHolder baseViewHolder, ReviewHistory reviewHistory) {
        if (DateUtils.isToday(reviewHistory.date)) {
            baseViewHolder.setText(R.id.date_title, this.mContext.getString(R.string.sniffer_history_today, reviewHistory.getName()));
        } else if (DateUtils.isToday(reviewHistory.date - 86400000)) {
            baseViewHolder.setText(R.id.date_title, this.mContext.getString(R.string.sniffer_history_yesterody, reviewHistory.getName()));
        } else {
            baseViewHolder.setText(R.id.date_title, reviewHistory.getName());
        }
        baseViewHolder.setVisible(R.id.v_line, baseViewHolder.getAdapterPosition() > 0);
    }

    public void setOnSelectListener(c cVar) {
        this.s = cVar;
    }

    public void t(BaseViewHolder baseViewHolder, ReviewHistory reviewHistory) {
        baseViewHolder.setText(R.id.tv_history_title, !TextUtils.isEmpty(reviewHistory.getName()) ? reviewHistory.getName() : reviewHistory.getUrl()).setText(R.id.tv_history_url, reviewHistory.getUrl());
        g(baseViewHolder, reviewHistory);
        d(baseViewHolder, reviewHistory);
    }

    public final void u(final ReviewHistory reviewHistory, final ImageView imageView, final TextView textView) {
        if (this.p == null || reviewHistory.getId() <= 0) {
            return;
        }
        this.p.a(reviewHistory.getId(), new a() {
            @Override
            public final void a(byte[] bArr) {
                this.a.l(imageView, reviewHistory, textView, bArr);
            }
        });
    }

    public void v() {
        notifyItemRangeChanged(0, getItemCount(), "payload_checkbox_state");
    }

    public void w(boolean z) {
        this.q.clear();
        if (z) {
            y();
            this.q.addAll(this.r);
        }
        this.s.c(z);
        notifyItemRangeChanged(0, getItemCount(), "payload_checkbox_state");
    }

    public void x(ReviewHistory reviewHistory, boolean z, int i) {
        if (z) {
            if (!this.q.contains(reviewHistory)) {
                this.q.add(reviewHistory);
            }
        } else if (this.q.contains(reviewHistory)) {
            this.q.remove(reviewHistory);
        }
        this.s.b(this.q.size());
        notifyItemChanged(i, "payload_checkbox_state");
    }

    public void y() {
        this.r.clear();
        this.r.addAll((List) getData().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return HistoryListAdapter.r((ReviewHistory) obj);
            }
        }).collect(Collectors.toList()));
    }

    public void z(boolean z) {
        this.o = z;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder baseViewHolder, int i, List list) {
        ReviewHistory item;
        if (list.isEmpty() || !list.contains("payload_checkbox_state") || (item = getItem(i)) == null || item.isDateItem()) {
            super.onBindViewHolder(baseViewHolder, i, (List<Object>) list);
        } else {
            d(baseViewHolder, item);
        }
    }
}
