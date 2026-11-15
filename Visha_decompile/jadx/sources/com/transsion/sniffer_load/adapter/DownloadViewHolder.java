package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.sniffer_load.R;

public abstract class DownloadViewHolder<T> extends RecyclerView.ViewHolder {
    public DownloadViewHolder(View view) {
        super(view);
    }

    public abstract void a(Context context, Object obj);

    /* JADX WARN: Code duplicated, block: B:21:0x0038  */
    public String b(DownloadMain.PageItem pageItem) {
        Integer numValueOf;
        int category_id = pageItem.getCategory_id();
        if (category_id == 1) {
            numValueOf = Integer.valueOf(R.string.visha_download_category_social_media);
        } else if (category_id == 20) {
            numValueOf = Integer.valueOf(R.string.visha_popular_sites);
        } else if (category_id == 3) {
            numValueOf = Integer.valueOf(R.string.visha_download_category_movies);
        } else if (category_id == 4) {
            numValueOf = Integer.valueOf(R.string.visha_download_category_others);
        } else if (category_id == 5) {
            numValueOf = Integer.valueOf(R.string.visha_download_category_downloader);
        } else if (category_id == 6) {
            numValueOf = Integer.valueOf(R.string.visha_download_category_popular_music);
        } else if (category_id != 7) {
            numValueOf = null;
        } else {
            numValueOf = Integer.valueOf(R.string.visha_popular_sites);
        }
        return numValueOf == null ? pageItem.getCategory_name() : this.itemView.getContext().getString(numValueOf.intValue());
    }
}
