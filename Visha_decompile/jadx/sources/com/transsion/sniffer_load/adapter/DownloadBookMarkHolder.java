package com.transsion.sniffer_load.adapter;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.athena.data.TrackData;
import com.transsion.dbdata.beans.sniff.Bookmark;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.playercommon.core.MainApp;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.DownloadBookMarkHolder;
import com.transsion.utils.CustomGridLayoutManager;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.b23;
import defpackage.f5;
import defpackage.p06;
import defpackage.y45;
import java.lang.ref.WeakReference;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001f2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001 B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u00032\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001d\u0010\u0011\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012R\u0018\u0010\u0016\u001a\u0004\u0018\u00010\u00138\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R\u0018\u0010\u001e\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001c\u0010\u001d¨\u0006!"}, d2 = {"Lcom/transsion/sniffer_load/adapter/DownloadBookMarkHolder;", "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;", "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;", "Landroid/content/Context;", "context", "Landroid/view/View;", "itemView", MethodDecl.initName, "(Landroid/content/Context;Landroid/view/View;)V", "data", "Lzfb;", "d", "(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V", "", "isAnalysis", "Lcom/transsion/dbdata/beans/sniff/Bookmark;", "bookmark", "f", "(ZLcom/transsion/dbdata/beans/sniff/Bookmark;)V", "Landroid/widget/TextView;", TtmlNode.TAG_P, "Landroid/widget/TextView;", "mTvTitle", "Landroidx/recyclerview/widget/RecyclerView;", "q", "Landroidx/recyclerview/widget/RecyclerView;", "mRvItem", "Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;", "r", "Lcom/transsion/sniffer_load/adapter/DownloadBookMarkViewAdapter;", "mAdapter", "s", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadBookMarkHolder extends DownloadViewHolder<DownloadMain.PageItem> {
    public static final int t = R.layout.adapter_item_bookmark;

    public TextView mTvTitle;

    public RecyclerView mRvItem;

    public DownloadBookMarkViewAdapter mAdapter;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadBookMarkHolder(Context context, View view) {
        super(view);
        y45.j(context, "context");
        y45.j(view, "itemView");
        this.mTvTitle = (TextView) view.findViewById(R.id.tv_title);
        this.mRvItem = (RecyclerView) view.findViewById(R.id.rv_item);
    }

    public static final void e(Context context, DownloadBookMarkHolder downloadBookMarkHolder, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Object obj = baseQuickAdapter.getData().get(i);
        y45.h(obj, "null cannot be cast to non-null type com.transsion.dbdata.beans.sniff.Bookmark");
        Bookmark bookmark = (Bookmark) obj;
        if (context != null) {
            downloadBookMarkHolder.f(false, bookmark);
            Intent intent = new Intent(context, (Class<?>) WebActivity.class);
            intent.putExtra(VkConstant.URL, bookmark.getUri());
            intent.putExtra("need_new_web", true);
            intent.putExtra("web_url_from", "dl_bm_cl");
            WeakReference weakReference = MainApp.E;
            f5.b(intent, 1242, weakReference != null ? (Activity) weakReference.get() : null);
        }
    }

    @Override
    public void a(final Context context, DownloadMain.PageItem data) {
        TextView textView = this.mTvTitle;
        if (textView != null) {
            textView.setText(b(data));
        }
        RecyclerView recyclerView = this.mRvItem;
        if (recyclerView != null) {
            CustomGridLayoutManager customGridLayoutManager = new CustomGridLayoutManager(context, 1);
            customGridLayoutManager.setOrientation(0);
            recyclerView.setLayoutManager(customGridLayoutManager);
        }
        if (data != null) {
            final int i = R.layout.adapter_download_bookmark;
            final List<Bookmark> data_remark_list = data.getData_remark_list();
            final String category_name = data.getCategory_name();
            final int website_type = data.getWebsite_type();
            DownloadBookMarkViewAdapter downloadBookMarkViewAdapter = new DownloadBookMarkViewAdapter(i, data_remark_list, category_name, website_type) {
                @Override
                public void b(BaseViewHolder helper, Bookmark item) {
                    y45.j(helper, "helper");
                    y45.j(item, "item");
                    super.b(helper, item);
                    ImageView imageView = (ImageView) helper.getView(R.id.iv_cover);
                    View view = helper.getView(R.id.rfl_custom_bookmark_cover);
                    helper.setText(R.id.tv_name, item.getName());
                    if (item.getImageResId() > 0) {
                        imageView.setImageResource(item.getImageResId());
                        view.setVisibility(8);
                        imageView.setVisibility(0);
                    } else if (item.getImageUri() != null) {
                        Glide.with(this.mContext).load(item.getImageUri()).placeholder(R.drawable.ic_bookmark_placeholder).timeout(10000).into(imageView);
                        view.setVisibility(8);
                        imageView.setVisibility(0);
                    } else {
                        view.setVisibility(0);
                        imageView.setVisibility(8);
                        String strValueOf = TextUtils.isEmpty(item.getName()) ? "" : String.valueOf(item.getName().charAt(0));
                        int i2 = R.id.custom_bookmark_cover;
                        helper.setText(i2, strValueOf);
                        helper.setBackgroundColor(i2, b23.o(strValueOf));
                    }
                }
            };
            this.mAdapter = downloadBookMarkViewAdapter;
            downloadBookMarkViewAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i2) {
                    DownloadBookMarkHolder.e(context, this, baseQuickAdapter, view, i2);
                }
            });
        }
        RecyclerView recyclerView2 = this.mRvItem;
        if (recyclerView2 != null) {
            recyclerView2.setAdapter(this.mAdapter);
        }
    }

    public final void f(boolean isAnalysis, Bookmark bookmark) {
        y45.j(bookmark, "bookmark");
        Bundle bundle = new Bundle();
        TrackData trackData = new TrackData();
        bundle.putString(isAnalysis ? "analysis_name" : "bookmark_name", bookmark.getName());
        bundle.putString(isAnalysis ? "analysis_address" : "bookmark_address", bookmark.getUri());
        trackData.add(isAnalysis ? "analysis_name" : "bookmark_name", bookmark.getName());
        trackData.add(isAnalysis ? "analysis_address" : "bookmark_address", bookmark.getUri());
        if (!isAnalysis) {
            bundle.putInt("TYPE", !bookmark.isLoadFromCode() ? 1 : 0);
            trackData.add("TYPE", !bookmark.isLoadFromCode() ? 1 : 0);
        }
        p06.q0(trackData, bundle, isAnalysis ? "dl_analysis_cl" : "dl_bm_cl", 9324L);
    }
}
