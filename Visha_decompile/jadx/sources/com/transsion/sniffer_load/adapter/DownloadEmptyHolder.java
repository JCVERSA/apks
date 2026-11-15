package com.transsion.sniffer_load.adapter;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.widget.RelativeLayout;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.transsion.dbdata.beans.sniff.DownloadMain;
import com.transsion.sniffer_load.R;
import com.transsion.sniffer_load.WebActivity;
import com.transsion.sniffer_load.adapter.DownloadEmptyHolder;
import com.transsion.vishaplayersdk.vkPlayer.VkConstant;
import defpackage.az5;
import defpackage.f5;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;

@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u00112\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006J#\u0010\u000b\u001a\u00020\n2\b\u0010\b\u001a\u0004\u0018\u00010\u00072\b\u0010\t\u001a\u0004\u0018\u00010\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0018\u0010\u0010\u001a\u0004\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\u000f¨\u0006\u0013"}, d2 = {"Lcom/transsion/sniffer_load/adapter/DownloadEmptyHolder;", "Lcom/transsion/sniffer_load/adapter/DownloadViewHolder;", "Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;", "Landroid/view/View;", "itemView", MethodDecl.initName, "(Landroid/view/View;)V", "Landroid/content/Context;", "context", "data", "Lzfb;", "f", "(Landroid/content/Context;Lcom/transsion/dbdata/beans/sniff/DownloadMain$PageItem;)V", "Landroid/widget/RelativeLayout;", TtmlNode.TAG_P, "Landroid/widget/RelativeLayout;", "mRlSearchLayout", "q", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "sniffer_load_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DownloadEmptyHolder extends DownloadViewHolder<DownloadMain.PageItem> {

    public static final Companion INSTANCE = new Companion(null);
    public static final int r = R.layout.item_cloud_empty;
    public static String s = "";
    public static String t = "";

    public RelativeLayout mRlSearchLayout;

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final String a() {
            return DownloadEmptyHolder.t;
        }

        public final void b(String str) {
            y45.j(str, "<set-?>");
            DownloadEmptyHolder.t = str;
        }

        public Companion() {
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DownloadEmptyHolder(View view) {
        super(view);
        y45.j(view, "itemView");
        this.mRlSearchLayout = (RelativeLayout) view.findViewById(R.id.ll_search_network);
    }

    public static final void g(Context context, View view) {
        az5.a.E("empty", s, t);
        Intent intent = new Intent(context, (Class<?>) WebActivity.class);
        intent.putExtra(VkConstant.URL, s);
        intent.putExtra("web_url_from", "dl_brower_cycle_search");
        f5.c(intent, context);
    }

    @Override
    public void a(final Context context, DownloadMain.PageItem data) {
        RelativeLayout relativeLayout = this.mRlSearchLayout;
        if (relativeLayout != null) {
            relativeLayout.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    DownloadEmptyHolder.g(context, view);
                }
            });
        }
    }
}
