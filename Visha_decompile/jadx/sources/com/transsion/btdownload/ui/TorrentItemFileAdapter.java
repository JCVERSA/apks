package com.transsion.btdownload.ui;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.util.Pair;
import com.alibaba.android.arouter.utils.Consts;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.bt_download.R;
import com.transsion.btdownload.TorrentHeaderFileTree;
import com.transsion.btdownload.TorrentedFileTree;
import com.transsion.btdownload.TorrentingFileTree;
import com.transsion.btdownload.activiy.TorrentItemViewModel;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.utils.ToastUtils;
import com.transsion.widgets.InterceptLinearLayout;
import defpackage.hb0;
import defpackage.hk3;
import defpackage.m8;
import defpackage.yx2;
import defpackage.z7c;
import java.io.File;
import java.util.HashSet;
import java.util.List;
import java.util.function.Consumer;
import org.proninyaroslav.libretorrent.core.model.filetree.TorrentContentFileTree;

public class TorrentItemFileAdapter extends BaseQuickAdapter<TorrentContentFileTree, BaseViewHolder> {
    public Context o;
    public BaseViewHolder p;
    public BaseViewHolder q;
    public boolean r;
    public String s;
    public HashSet t;
    public boolean u;
    public int v;
    public int w;
    public TorrentItemViewModel x;

    public class a implements View.OnClickListener {
        public a() {
        }

        @Override
        public void onClick(View view) {
            if (TorrentItemFileAdapter.this.u) {
                return;
            }
            hb0.markDirect("vd_dl_manager_bt_main_task_add_cl");
            Pair pairO = TorrentItemFileAdapter.this.x.o(TorrentItemFileAdapter.this.s);
            List list = (List) pairO.second;
            if (list == null || list.size() == 0) {
                ToastUtils.s(R.string.all_file_added);
            } else {
                m8.k(view.getContext(), (List) pairO.first, list, TorrentItemFileAdapter.this.s);
            }
        }
    }

    public TorrentItemFileAdapter(Context context, boolean z, String str, TorrentItemViewModel torrentItemViewModel) {
        super(R.layout.adapter_header_torrent_file);
        this.t = new HashSet();
        this.u = false;
        this.v = 0;
        this.w = 0;
        this.o = context;
        this.r = z;
        this.s = str;
        this.x = torrentItemViewModel;
    }

    public void A(int i) {
        this.w = i;
    }

    public void B(int i, boolean z) {
        TorrentContentFileTree item = getItem(i);
        if (z) {
            this.t.add(item);
        } else {
            this.t.remove(item);
        }
    }

    public void C(boolean z) {
        this.r = z;
        notifyItemChanged(0);
    }

    public void D(boolean z) {
        this.u = z;
        notifyDataSetChanged();
    }

    public void E(int i) {
        TorrentContentFileTree item = getItem(i);
        if (this.t.contains(item)) {
            this.t.remove(item);
        } else {
            this.t.add(item);
        }
        notifyItemChanged(i);
    }

    public void F() {
        this.t.clear();
        notifyDataSetChanged();
    }

    @Override
    public int getItemViewType(int i) {
        TorrentContentFileTree item = getItem(i);
        if (item instanceof TorrentingFileTree) {
            return 1001;
        }
        if (item instanceof TorrentedFileTree) {
            return 1003;
        }
        if (item instanceof TorrentHeaderFileTree) {
            return 1005;
        }
        return item.size() <= item.getReceivedBytes() ? 1004 : 1002;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        switch (baseViewHolder.getItemViewType()) {
            case 1001:
                l(baseViewHolder, torrentContentFileTree);
                break;
            case 1002:
                j(baseViewHolder, torrentContentFileTree);
                break;
            case 1003:
                k(baseViewHolder, torrentContentFileTree);
                break;
            case 1004:
                i(baseViewHolder, torrentContentFileTree);
                break;
            case 1005:
                t(baseViewHolder, torrentContentFileTree);
                break;
        }
    }

    public final void i(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        baseViewHolder.setText(R.id.tv_main_fragment_item, torrentContentFileTree.getRealName());
        baseViewHolder.setText(R.id.tv_main_fragment_item_size, Formatter.formatFileSize(this.mContext, torrentContentFileTree.size()));
        if (this.u) {
            baseViewHolder.setChecked(R.id.iv_bucket_fragment_checkBox, this.t.contains(torrentContentFileTree));
        }
        int i = R.id.iv_bucket_fragment_item_more;
        baseViewHolder.setGone(i, !this.u);
        int i2 = R.id.iv_bucket_fragment_checkBox;
        baseViewHolder.setGone(i2, this.u);
        baseViewHolder.addOnClickListener(i2);
        baseViewHolder.addOnClickListener(i);
        baseViewHolder.addOnLongClickListener(i);
        y(baseViewHolder, torrentContentFileTree, true);
    }

    public final void j(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        baseViewHolder.setText(R.id.tv_main_fragment_item, torrentContentFileTree.getRealName());
        long receivedBytes = torrentContentFileTree.getReceivedBytes();
        long size = torrentContentFileTree.size();
        if (size != 0) {
            baseViewHolder.setProgress(R.id.progressBar, (int) ((receivedBytes * 100) / size));
        }
        baseViewHolder.setText(R.id.tv_main_fragment_item_speed, Formatter.formatFileSize(this.mContext, torrentContentFileTree.getReceivedBytes()) + "/" + Formatter.formatFileSize(this.mContext, torrentContentFileTree.size()));
        baseViewHolder.setGone(R.id.tv_main_fragment_item_size, false);
        if (this.u) {
            baseViewHolder.setChecked(R.id.iv_bucket_fragment_checkBox, this.t.contains(torrentContentFileTree));
        }
        y(baseViewHolder, torrentContentFileTree, false);
    }

    public final void k(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        baseViewHolder.setText(R.id.tv_downloaded_count, this.o.getString(R.string.downloaded_status_count, String.valueOf(this.v)));
    }

    public final void l(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        InterceptLinearLayout interceptLinearLayout = (InterceptLinearLayout) baseViewHolder.getView(R.id.ll_enable_ing);
        interceptLinearLayout.setAlpha(this.u ? 0.5f : 1.0f);
        interceptLinearLayout.setChildClickable(!this.u);
        baseViewHolder.setText(R.id.tv_downloading_count, this.o.getString(R.string.downloading_status_count, String.valueOf(this.w)));
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        switch (i) {
            case 1001:
                BaseViewHolder baseViewHolderCreateBaseViewHolder = super.createBaseViewHolder(viewGroup, R.layout.item_title_downloading);
                this.p = baseViewHolderCreateBaseViewHolder;
                return baseViewHolderCreateBaseViewHolder;
            case 1002:
                return super.createBaseViewHolder(viewGroup, R.layout.item_downloading);
            case 1003:
                BaseViewHolder baseViewHolderCreateBaseViewHolder2 = super.createBaseViewHolder(viewGroup, R.layout.item_title_downloaded);
                this.q = baseViewHolderCreateBaseViewHolder2;
                return baseViewHolderCreateBaseViewHolder2;
            case 1004:
                return super.createBaseViewHolder(viewGroup, R.layout.item_downloaded);
            case 1005:
                return super.onCreateDefViewHolder(viewGroup, R.layout.adapter_header_torrent_file);
            default:
                return super.onCreateDefViewHolder(viewGroup, i);
        }
    }

    public int r() {
        return this.t.size();
    }

    public HashSet s() {
        return this.t;
    }

    @Override
    public void setNewData(List<TorrentContentFileTree> list) {
        super.setNewData(list);
    }

    public final void t(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree) {
        int i = R.id.ll_enable_add;
        baseViewHolder.getView(i).setAlpha(this.u ? 0.5f : 1.0f);
        ((InterceptLinearLayout) baseViewHolder.getView(i)).setChildClickable(!this.u);
        baseViewHolder.getView(i).setOnClickListener(new a());
    }

    public boolean u() {
        return this.t.size() == ((getItemCount() - (this.v == 0 ? 0 : 1)) - (this.w == 0 ? 0 : 1)) - 1;
    }

    public final void v(TorrentContentFileTree torrentContentFileTree) {
        if ((torrentContentFileTree instanceof TorrentedFileTree) || (torrentContentFileTree instanceof TorrentingFileTree)) {
            return;
        }
        this.t.add(torrentContentFileTree);
    }

    public void w() {
        getData().stream().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.v((TorrentContentFileTree) obj);
            }
        });
        notifyDataSetChanged();
    }

    public void x(int i) {
        this.t.clear();
        this.t.add(getItem(i));
        notifyItemChanged(i);
    }

    public final void y(BaseViewHolder baseViewHolder, TorrentContentFileTree torrentContentFileTree, boolean z) {
        int iLastIndexOf;
        String realName = torrentContentFileTree.getRealName();
        String strSubstring = (TextUtils.isEmpty(realName) || (iLastIndexOf = realName.lastIndexOf(Consts.DOT)) <= 0) ? "unknow" : realName.substring(iLastIndexOf);
        int i = R.id.iv_bucket_fragment_checkBox;
        baseViewHolder.setGone(i, this.u);
        baseViewHolder.addOnClickListener(i);
        if (hk3.a.contains(strSubstring)) {
            z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(new File(yx2.j, torrentContentFileTree.getReceivedBytes() >= torrentContentFileTree.size() ? torrentContentFileTree.getRealPath() : torrentContentFileTree.getPath())), this.mContext.getDrawable(R.drawable.ic_bt_video_cover), (ImageView) baseViewHolder.getView(R.id.iv_bucket_fragment_item));
            return;
        }
        if (hk3.d.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_audio_default_placeholder);
            return;
        }
        if (hk3.e.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_subtitle_defalut_placeholder);
            return;
        }
        if (!hk3.g.contains(strSubstring)) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_others_default_holder);
            return;
        }
        if (!z) {
            baseViewHolder.setImageResource(R.id.iv_bucket_fragment_item, R.drawable.ic_bt_img_cover);
            return;
        }
        File file = new File(yx2.j, torrentContentFileTree.getPath());
        int i2 = R.id.iv_bucket_fragment_item;
        RequestBuilder<Drawable> requestBuilderLoad2 = Glide.with(baseViewHolder.getView(i2)).load2(file);
        int i3 = R.drawable.ic_bt_img_cover;
        requestBuilderLoad2.placeholder(i3).error(i3).into((ImageView) baseViewHolder.getView(i2));
    }

    public void z(int i) {
        this.v = i;
    }
}
