package com.transsion.home.category.adapter;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$drawable;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.moviedetailapi.bean.CategoryItemBean;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import ij.t;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class g extends BaseItemProvider {

    private final String f43658e;

    private final boolean f43659f;

    public g(String pageName, boolean z10) {
        Intrinsics.h(pageName, "pageName");
        this.f43658e = pageName;
        this.f43659f = z10;
    }

    @Override
    public int l() {
        return 2;
    }

    @Override
    public int m() {
        return R$layout.adapter_play_list_music;
    }

    @Override
    public void b(BaseViewHolder helper, CategoryItemBean item) {
        List<Object> data;
        ResourceDetectors resourceDetector;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        Subject subject = item.getSubject();
        if (subject != null) {
            BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
            int i10 = 0;
            int iG0 = baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.g0(item) : 0;
            AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
            if (appCompatTextView != null) {
                appCompatTextView.setText(subject.getTitle());
            }
            ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
            if (shapeableImageView != null) {
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                Cover cover = subject.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ni.f.b bVarG = bVarM.g(url);
                Cover cover2 = subject.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).d(shapeableImageView);
            }
            TextView textView = (TextView) helper.getViewOrNull(R$id.tvRankNum);
            if (textView != null) {
                textView.setVisibility(this.f43659f ? 0 : 8);
                if (this.f43659f) {
                    int i11 = iG0 + 1;
                    textView.setText(String.valueOf(i11));
                    textView.setTextSize(i11 > 99 ? 14.0f : i11 > 9 ? 18.0f : 20.0f);
                }
            }
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                downloadView.setPageFrom(this.f43658e);
                if (t.f62121a.b()) {
                    uf.c.k(downloadView);
                    downloadView.setShowPlayType();
                } else {
                    Subject subject2 = item.getSubject();
                    if (subject2 != null ? Intrinsics.c(subject2.getHasResource(), Boolean.TRUE) : false) {
                        DownloadView downloadView2 = (DownloadView) helper.getViewOrNull(R$id.ll_download);
                        if (downloadView2 != null) {
                            uf.c.k(downloadView2);
                            Subject subject3 = item.getSubject();
                            if (subject3 != null && (resourceDetector = subject3.getResourceDetector()) != null) {
                                Subject subject4 = item.getSubject();
                                String subjectId = subject4 != null ? subject4.getSubjectId() : null;
                                String resourceId = resourceDetector.getResourceId();
                                Integer type = resourceDetector.getType();
                                DownloadView.setShowType$default(downloadView2, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
                            }
                        }
                    } else {
                        helper.setGone(R$id.ll_download, true);
                    }
                }
            }
            if (iG0 == 0) {
                View viewOrNull = helper.getViewOrNull(R$id.divider);
                if (viewOrNull != null) {
                    uf.c.k(viewOrNull);
                }
                View viewOrNull2 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull2 != null) {
                    uf.c.k(viewOrNull2);
                }
                View viewOrNull3 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull3 != null) {
                    viewOrNull3.setBackgroundResource(R$drawable.bg_category_first_item);
                }
            } else {
                View viewOrNull4 = helper.getViewOrNull(R$id.divider);
                if (viewOrNull4 != null) {
                    uf.c.g(viewOrNull4);
                }
                View viewOrNull5 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull5 != null) {
                    uf.c.g(viewOrNull5);
                }
                View viewOrNull6 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull6 != null) {
                    viewOrNull6.setBackgroundColor(androidx.core.content.b.getColor(k(), R$color.bg_01));
                }
            }
            BaseProviderMultiAdapter baseProviderMultiAdapterG2 = g();
            if (baseProviderMultiAdapterG2 != null && (data = baseProviderMultiAdapterG2.getData()) != null) {
                for (Object obj : data) {
                    int i12 = i10 + 1;
                    if (i10 < 0) {
                        CollectionsKt.u();
                    }
                    if (i10 < iG0) {
                        subject.getNonAdDelegate();
                    }
                    i10 = i12;
                }
            }
            ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(subject.getCorner(), subject.getSubjectType());
        }
    }
}
