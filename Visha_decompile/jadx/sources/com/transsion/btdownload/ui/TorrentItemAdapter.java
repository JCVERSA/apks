package com.transsion.btdownload.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.bt_download.R;
import defpackage.hb0;
import defpackage.pk0;
import defpackage.px9;
import defpackage.s44;
import java.util.HashSet;
import java.util.function.Consumer;
import org.proninyaroslav.libretorrent.core.model.data.TorrentInfo;
import org.proninyaroslav.libretorrent.core.model.data.TorrentStateCode;

public class TorrentItemAdapter extends ListAdapter<TorrentInfo, ItemViewHolder> {
    public static final DiffUtil.ItemCallback s = new a();
    public HashSet o;
    public boolean p;
    public Context q;
    public b r;

    public static class ItemViewHolder extends RecyclerView.ViewHolder {
        public Context A;
        public LinearLayout p;
        public LinearLayout q;
        public ImageView r;
        public ImageView s;
        public TextView t;
        public TextView u;
        public TextView v;
        public TextView w;
        public TextView x;
        public ProgressBar y;
        public CheckBox z;

        public class a implements View.OnClickListener {
            public final TorrentInfo b;
            public final boolean c;

            public a(TorrentInfo torrentInfo, boolean z) {
                this.b = torrentInfo;
                this.c = z;
            }

            @Override
            public void onClick(View view) {
                if (px9.a(this.b.stateCode)) {
                    return;
                }
                hb0.markTrackSingle("vd_dl_manager_bt_main_task_se_cl", "type", Integer.valueOf(!this.c ? 1 : 0));
                pk0.f().o(this.b.torrentId);
            }
        }

        public class b implements View.OnLongClickListener {
            public final b b;
            public final int c;

            public b(b bVar, int i) {
                this.b = bVar;
                this.c = i;
            }

            @Override
            public boolean onLongClick(View view) {
                b bVar = this.b;
                if (bVar != null) {
                    return bVar.b(view, this.c);
                }
                return false;
            }
        }

        public class c implements View.OnLongClickListener {
            public final b b;
            public final int c;

            public c(b bVar, int i) {
                this.b = bVar;
                this.c = i;
            }

            @Override
            public boolean onLongClick(View view) {
                b bVar = this.b;
                if (bVar != null) {
                    return bVar.b(view, this.c);
                }
                return false;
            }
        }

        public class d implements View.OnClickListener {
            public final b b;
            public final int c;

            public d(b bVar, int i) {
                this.b = bVar;
                this.c = i;
            }

            @Override
            public void onClick(View view) {
                b bVar = this.b;
                if (bVar != null) {
                    bVar.c(view, this.c);
                }
            }
        }

        public class e implements View.OnClickListener {
            public final b b;
            public final int c;

            public e(b bVar, int i) {
                this.b = bVar;
                this.c = i;
            }

            @Override
            public void onClick(View view) {
                b bVar = this.b;
                if (bVar != null) {
                    bVar.a(view, this.c);
                }
            }
        }

        public ItemViewHolder(View view) {
            super(view);
            this.A = view.getContext();
            this.p = (LinearLayout) view.findViewById(R.id.ll_content);
            this.q = (LinearLayout) view.findViewById(R.id.ll_speed_container);
            this.r = (ImageView) view.findViewById(R.id.iv_bucket_fragment_item);
            this.t = (TextView) view.findViewById(R.id.tv_main_fragment_item);
            this.u = (TextView) view.findViewById(R.id.tv_status);
            this.v = (TextView) view.findViewById(R.id.tv_main_fragment_item_speed);
            this.w = (TextView) view.findViewById(R.id.tv_main_fragment_item_size);
            this.y = (ProgressBar) view.findViewById(R.id.progressBar);
            this.z = (CheckBox) view.findViewById(R.id.iv_bucket_fragment_checkBox);
            this.s = (ImageView) view.findViewById(R.id.iv_start);
            this.x = (TextView) view.findViewById(R.id.tv_start);
        }

        public void a(TorrentInfo torrentInfo, HashSet hashSet, boolean z, int i, b bVar) {
            b(torrentInfo, hashSet, z, i, bVar);
        }

        public final void b(TorrentInfo torrentInfo, HashSet hashSet, boolean z, int i, b bVar) {
            this.t.setText(torrentInfo.name);
            this.y.setProgress(torrentInfo.progress);
            this.v.setText(String.format("%s/s", s44.d(this.itemView.getContext(), torrentInfo.downloadSpeed)));
            this.w.setText(String.format("%s", s44.d(this.itemView.getContext(), torrentInfo.totalBytes)));
            if (z) {
                this.z.setChecked(hashSet.contains(torrentInfo));
            }
            this.z.setVisibility(z ? 0 : 8);
            this.r.setOnClickListener(new a(torrentInfo, px9.b(torrentInfo.stateCode)));
            this.r.setOnLongClickListener(new b(bVar, i));
            this.y.setVisibility(0);
            this.u.setVisibility(0);
            this.q.setVisibility(0);
            this.s.setVisibility(0);
            this.x.setVisibility(0);
            TorrentStateCode torrentStateCode = torrentInfo.stateCode;
            if (torrentStateCode == TorrentStateCode.SEEDING || torrentStateCode == TorrentStateCode.FINISHED) {
                int wantFileCount = torrentInfo.getWantFileCount();
                this.v.setText(this.A.getResources().getString(wantFileCount == 1 ? R.string.video_num_a : R.string.videos_num_a, String.valueOf(wantFileCount)));
                this.y.setVisibility(8);
                this.u.setVisibility(8);
                this.s.setVisibility(8);
                this.x.setVisibility(8);
            } else if (torrentStateCode == TorrentStateCode.PAUSED || torrentStateCode == TorrentStateCode.STOPPED) {
                String str = torrentInfo.getFinishFileCount() + "/" + torrentInfo.getWantFileCount();
                this.u.setText(str + "");
                this.s.setImageResource(R.drawable.ic_bt_start);
                this.x.setText(R.string.paused);
            } else if (torrentStateCode == TorrentStateCode.DOWNLOADING || torrentStateCode == TorrentStateCode.CHECKING || torrentStateCode == TorrentStateCode.DOWNLOADING_METADATA) {
                String str2 = torrentInfo.getFinishFileCount() + "/" + torrentInfo.getWantFileCount();
                this.u.setText(str2 + "");
                this.s.setImageResource(R.drawable.ic_bt_pause);
                this.x.setText(R.string.mv_download);
            } else {
                this.u.setText(R.string.download_failed);
                this.s.setVisibility(8);
                this.x.setVisibility(8);
            }
            this.p.setOnLongClickListener(new c(bVar, i));
            this.p.setOnClickListener(new d(bVar, i));
            this.z.setOnClickListener(new e(bVar, i));
        }
    }

    public class a extends DiffUtil.ItemCallback {
        @Override
        public boolean areContentsTheSame(TorrentInfo torrentInfo, TorrentInfo torrentInfo2) {
            return torrentInfo.name.equals(torrentInfo2.name) && torrentInfo.progress == torrentInfo2.progress && torrentInfo.downloadSpeed == torrentInfo2.downloadSpeed && torrentInfo.totalBytes == torrentInfo2.totalBytes && torrentInfo.stateCode.equals(torrentInfo2.stateCode);
        }

        @Override
        public boolean areItemsTheSame(TorrentInfo torrentInfo, TorrentInfo torrentInfo2) {
            return torrentInfo.torrentId.equals(torrentInfo2.torrentId);
        }
    }

    public interface b {
        void a(View view, int i);

        boolean b(View view, int i);

        void c(View view, int i);
    }

    public TorrentItemAdapter(Context context) {
        super(s);
        this.o = new HashSet();
        this.p = false;
        this.q = context;
    }

    public void A(int i, boolean z) {
        TorrentInfo item = getItem(i);
        if (z) {
            this.o.add(item);
        } else {
            this.o.remove(item);
        }
    }

    public void B(b bVar) {
        this.r = bVar;
    }

    public void C(boolean z) {
        this.p = z;
        notifyDataSetChanged();
    }

    public void D(int i) {
        TorrentInfo item = getItem(i);
        if (this.o.contains(item)) {
            this.o.remove(item);
        } else {
            this.o.add(item);
        }
        notifyItemChanged(i);
    }

    public void E() {
        this.o.clear();
        notifyDataSetChanged();
    }

    public TorrentInfo r(int i) {
        return getItem(i);
    }

    public int s() {
        return this.o.size();
    }

    public HashSet t() {
        return this.o;
    }

    public boolean u() {
        return this.o.size() == getItemCount();
    }

    public final void v(TorrentInfo torrentInfo) {
        this.o.add(torrentInfo);
    }

    @Override
    public void onBindViewHolder(ItemViewHolder itemViewHolder, int i) {
        itemViewHolder.a(getItem(i), this.o, this.p, i, this.r);
    }

    @Override
    public ItemViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ItemViewHolder(LayoutInflater.from(this.q).inflate(R.layout.adapter_torrent_item, viewGroup, false));
    }

    public void y() {
        getCurrentList().stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.v((TorrentInfo) obj);
            }
        });
        notifyDataSetChanged();
    }

    public void z(int i) {
        this.o.clear();
        this.o.add(getItem(i));
        notifyItemChanged(i);
    }
}
