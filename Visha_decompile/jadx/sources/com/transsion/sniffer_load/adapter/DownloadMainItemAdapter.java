package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import java.util.List;

public class DownloadMainItemAdapter extends RecyclerView.Adapter<DownloadViewHolder> {
    public final Context o;
    public List p;
    public String q = "";
    public boolean r = false;
    public int s = 4;

    public DownloadMainItemAdapter(Context context) {
        this.o = context;
    }

    @Override
    public void onBindViewHolder(DownloadViewHolder downloadViewHolder, int i) {
        if (downloadViewHolder instanceof DownloadAViewHolder) {
            ((DownloadAViewHolder) downloadViewHolder).d(this.s);
        }
        downloadViewHolder.a(this.o, this.p.get(i));
    }

    @Override
    public DownloadViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        if (i == 1003) {
            DownloadEmptyHolder.s = this.q;
            return new DownloadEmptyHolder(LayoutInflater.from(this.o).inflate(DownloadEmptyHolder.r, viewGroup, false));
        }
        if (i == 0) {
            DownloadAViewHolder downloadAViewHolder = new DownloadAViewHolder(LayoutInflater.from(this.o).inflate(DownloadAViewHolder.u, viewGroup, false));
            downloadAViewHolder.s = this.r;
            downloadAViewHolder.d(this.s);
            return downloadAViewHolder;
        }
        if (i == 2) {
            return new DownloadBViewHolder(LayoutInflater.from(this.o).inflate(DownloadBViewHolder.t, viewGroup, false));
        }
        if (i != 1) {
            return new DownloadCViewHolder(LayoutInflater.from(this.o).inflate(DownloadCViewHolder.t, viewGroup, false));
        }
        Context context = this.o;
        return new DownloadBookMarkHolder(context, LayoutInflater.from(context).inflate(DownloadBookMarkHolder.t, viewGroup, false));
    }

    public void d(List list) {
        this.p = list;
    }

    @Override
    public int getItemCount() {
        List list = this.p;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    @Override
    public int getItemViewType(int i) {
        return ((DownloadMain.PageItem) this.p.get(i)).getWebsite_type();
    }
}
