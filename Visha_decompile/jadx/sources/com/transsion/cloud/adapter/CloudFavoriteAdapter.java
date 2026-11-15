package com.transsion.cloud.adapter;

import android.view.View;
import android.view.ViewGroup;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.cloud.weigets.CloudFavoriteCardView;
import com.transsion.dbdata.beans.mimedia.MIMediaLibraryData;
import com.transsion.dbdata.beans.mimedia.MIMediaVideoData;
import com.transsion.netdisk.R;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import defpackage.az5;
import defpackage.c74;
import defpackage.e74;
import defpackage.s74;
import defpackage.y45;
import defpackage.y71;
import defpackage.zfb;
import java.util.List;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J!\u0010\n\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u00020\u000e2\u0018\u0010\u000f\u001a\u0014\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\f¢\u0006\u0004\b\u0010\u0010\u0011J!\u0010\u0013\u001a\u00020\u000e2\u0012\u0010\u000f\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e0\u0012¢\u0006\u0004\b\u0013\u0010\u0014J!\u0010\u0017\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00032\b\u0010\u0016\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0017\u0010\u0018R*\u0010\u000f\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0019\u0010\u001aR$\u0010\u001d\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u00128\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001b\u0010\u001c¨\u0006\u001e"}, d2 = {"Lcom/transsion/cloud/adapter/CloudFavoriteAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;", "Lcom/chad/library/adapter/base/BaseViewHolder;", MethodDecl.initName, "()V", "Landroid/view/ViewGroup;", "parent", "", "viewType", "onCreateDefViewHolder", "(Landroid/view/ViewGroup;I)Lcom/chad/library/adapter/base/BaseViewHolder;", "Lkotlin/Function2;", "Lcom/transsion/dbdata/beans/mimedia/MIMediaVideoData;", "Lzfb;", "listener", CmcdData.STREAMING_FORMAT_HLS, "(Ls74;)V", "Lkotlin/Function1;", GslbInterceptor.HEADER_KEY_GSLB, "(Le74;)V", "viewHolder", "mediaLibraryVO", "d", "(Lcom/chad/library/adapter/base/BaseViewHolder;Lcom/transsion/dbdata/beans/mimedia/MIMediaLibraryData;)V", "o", "Ls74;", TtmlNode.TAG_P, "Le74;", "itemListener", "clouddrive_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class CloudFavoriteAdapter extends BaseQuickAdapter<MIMediaLibraryData, BaseViewHolder> {

    public s74 listener;

    public e74 itemListener;

    public static final class a implements e74 {
        public final MIMediaLibraryData c;

        public a(MIMediaLibraryData mIMediaLibraryData) {
            this.c = mIMediaLibraryData;
        }

        public void a(int i) {
            s74 s74Var = CloudFavoriteAdapter.this.listener;
            if (s74Var != null) {
                List<MIMediaVideoData> videoList = this.c.getVideoList();
                y45.g(videoList);
                s74Var.invoke(videoList.get(i), this.c);
            }
        }

        @Override
        public Object invoke(Object obj) {
            a(((Number) obj).intValue());
            return zfb.a;
        }
    }

    public static final class b implements c74 {
        public final MIMediaLibraryData c;

        public b(MIMediaLibraryData mIMediaLibraryData) {
            this.c = mIMediaLibraryData;
        }

        public void a() {
            e74 e74Var = CloudFavoriteAdapter.this.itemListener;
            if (e74Var != null) {
                e74Var.invoke(this.c);
            }
        }

        @Override
        public Object invoke() {
            a();
            return zfb.a;
        }
    }

    public CloudFavoriteAdapter() {
        super(R.layout.item_cloud_favorite_card);
    }

    @Override
    public void convert(BaseViewHolder viewHolder, MIMediaLibraryData mediaLibraryVO) {
        y45.j(viewHolder, "viewHolder");
        if (mediaLibraryVO == null) {
            return;
        }
        View view = viewHolder.getView(R.id.cloud_favorite_card_view);
        y45.i(view, "getView(...)");
        CloudFavoriteCardView cloudFavoriteCardView = (CloudFavoriteCardView) view;
        cloudFavoriteCardView.setTitle(mediaLibraryVO.getMediaLibraryName());
        List<MIMediaVideoData> videoList = mediaLibraryVO.getVideoList();
        if (videoList == null) {
            videoList = y71.k();
        }
        cloudFavoriteCardView.setVideoShowDataVOList(videoList);
        cloudFavoriteCardView.setOnImageClickListener(new a(mediaLibraryVO));
        cloudFavoriteCardView.setOnItemClickListener(new b(mediaLibraryVO));
        az5.a.e(mediaLibraryVO.getMediaLibraryId(), mediaLibraryVO.getMediaLibraryName(), mediaLibraryVO.getVirtualPersonName(), mediaLibraryVO.getVirtualPersonPhoto());
    }

    public final void g(e74 listener) {
        y45.j(listener, "listener");
        this.itemListener = listener;
    }

    public final void h(s74 listener) {
        y45.j(listener, "listener");
        this.listener = listener;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup parent, int viewType) {
        BaseViewHolder baseViewHolderOnCreateDefViewHolder = super.onCreateDefViewHolder(parent, viewType);
        y45.i(baseViewHolderOnCreateDefViewHolder, "onCreateDefViewHolder(...)");
        return baseViewHolderOnCreateDefViewHolder;
    }
}
