package com.transsion.sniffer_load.adapter;

import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.request.target.SimpleTarget;
import com.bumptech.glide.request.transition.Transition;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.sniffer_load.R;
import defpackage.b23;
import java.util.ArrayList;
import java.util.List;

public class BookmarkListAdapter extends BaseQuickAdapter<Bookmark, BaseViewHolder> {
    public boolean o;
    public ArrayList p;
    public b q;

    public class a extends SimpleTarget {
        public final ImageView b;

        public a(ImageView imageView) {
            this.b = imageView;
        }

        @Override
        public void onResourceReady(Bitmap bitmap, Transition transition) {
            this.b.setImageBitmap(bitmap);
        }
    }

    public interface b {
        void b(int i);

        void c(boolean z);
    }

    public BookmarkListAdapter() {
        super(R.layout.rv_bookmark_list);
        this.p = new ArrayList();
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Bookmark bookmark) {
        baseViewHolder.setText(R.id.tv_bookmark_title, bookmark.getName()).setText(R.id.tv_bookmark_url, bookmark.getUri());
        int i = R.id.bookmark_cover;
        ImageView imageView = (ImageView) baseViewHolder.getView(i);
        TextView textView = (TextView) baseViewHolder.getView(R.id.custom_bookmark_cover);
        if (bookmark.getImageResId() > 0) {
            imageView.setImageResource(bookmark.getImageResId());
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else if (bookmark.getImageUri() != null) {
            Glide.with(this.mContext).asBitmap().load2(bookmark.getImageUri()).placeholder(R.drawable.ic_bookmark_placeholder).into((ImageView) baseViewHolder.itemView.findViewById(i));
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            byte[] bArr = bookmark.bitmap;
            if (bArr == null || bArr.length <= 0) {
                imageView.setVisibility(8);
                textView.setVisibility(0);
                String strValueOf = TextUtils.isEmpty(bookmark.getName()) ? "" : String.valueOf(bookmark.getName().charAt(0));
                textView.setText(strValueOf);
                textView.setBackgroundColor(b23.o(strValueOf));
            } else {
                Glide.with(this.mContext).asBitmap().load2(bookmark.bitmap).dontAnimate().into(new a(imageView));
                imageView.setVisibility(0);
                textView.setVisibility(8);
            }
        }
        View view = baseViewHolder.itemView;
        int i2 = R.id.iv_bookmark_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i2);
        if (!this.o || bookmark.isLoadFromCode()) {
            checkBox.setVisibility(8);
            baseViewHolder.itemView.setAlpha(this.o ? 0.5f : 1.0f);
        } else {
            checkBox.setVisibility(0);
            baseViewHolder.addOnClickListener(i2);
            checkBox.setChecked(this.p.contains(bookmark));
            baseViewHolder.itemView.setAlpha(1.0f);
        }
    }

    @Override
    public void convertPayloads(BaseViewHolder baseViewHolder, Bookmark bookmark, List list) {
        super.convertPayloads(baseViewHolder, bookmark, list);
        if (list.isEmpty()) {
            convert(baseViewHolder, bookmark);
            return;
        }
        View view = baseViewHolder.itemView;
        int i = R.id.iv_bookmark_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        if (!this.o || bookmark.isLoadFromCode()) {
            checkBox.setVisibility(8);
            baseViewHolder.itemView.setAlpha(this.o ? 0.5f : 1.0f);
        } else {
            checkBox.setVisibility(0);
            baseViewHolder.addOnClickListener(i);
            checkBox.setChecked(this.p.contains(bookmark));
            baseViewHolder.itemView.setAlpha(1.0f);
        }
    }

    public ArrayList g() {
        return this.p;
    }

    public void h(boolean z) {
        this.p.clear();
        if (z) {
            this.p.addAll(getData());
        }
        this.q.c(z);
        notifyItemRangeChanged(0, getItemCount(), new Object());
    }

    public void i(Bookmark bookmark, boolean z, int i) {
        if (z) {
            if (!bookmark.isLoadFromCode() && !this.p.contains(bookmark)) {
                this.p.add(bookmark);
            }
        } else if (this.p.contains(bookmark)) {
            this.p.remove(bookmark);
        }
        this.q.b(this.p.size());
        notifyItemChanged(i, new Object());
    }

    public void j(boolean z) {
        this.o = z;
    }

    public void setOnSelectListener(b bVar) {
        this.q = bVar;
    }
}
