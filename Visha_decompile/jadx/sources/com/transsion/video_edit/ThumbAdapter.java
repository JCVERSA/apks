package com.transsion.video_edit;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.e39;
import defpackage.wia;
import java.util.ArrayList;
import java.util.List;

public class ThumbAdapter extends RecyclerView.Adapter<ThumbnailsViewHolder> {
    public int o;
    public int p;
    public List q = null;

    public static class ThumbnailsViewHolder extends RecyclerView.ViewHolder {
        public ThumbnailsImageView p;

        public ThumbnailsViewHolder(View view) {
            super(view);
            this.p = (ThumbnailsImageView) view;
        }

        public void a(wia wiaVar) {
            this.p.setImage(wiaVar);
        }
    }

    public ThumbAdapter(Context context) {
        this.o = e39.a(context, 48.0f);
        this.p = e39.a(context, 48.0f);
    }

    public void b(wia wiaVar, int i) {
        this.q.add(i, wiaVar);
        notifyItemChanged(i);
    }

    public void c(wia wiaVar) {
        b(wiaVar, this.q.size());
    }

    public List g() {
        return this.q;
    }

    @Override
    public int getItemCount() {
        List list = this.q;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public int getItemViewType(int i) {
        return i == this.q.size() + (-1) ? -1 : 0;
    }

    public void r(int i) {
        this.q = new ArrayList(i);
    }

    @Override
    public void onBindViewHolder(ThumbnailsViewHolder thumbnailsViewHolder, int i) {
        thumbnailsViewHolder.a((wia) this.q.get(i));
    }

    @Override
    public ThumbnailsViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        ThumbnailsImageView thumbnailsImageView = new ThumbnailsImageView(viewGroup.getContext());
        if (i == -1) {
            List list = this.q;
            wia wiaVar = (wia) list.get(list.size() - 1);
            thumbnailsImageView.setLayoutParams(new RecyclerView.LayoutParams((int) (((((long) this.o) * wiaVar.c()) * 1.0f) / wiaVar.b()), this.p));
        }
        return new ThumbnailsViewHolder(thumbnailsImageView);
    }
}
