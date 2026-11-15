package com.transsion.home.category.adapter;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.appcompat.widget.AppCompatImageView;
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
import com.transsion.home.R$mipmap;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import ij.t;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class k extends BaseItemProvider {

    private boolean f43660e;

    private final void A(BaseViewHolder baseViewHolder, int i10) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getViewOrNull(R$id.iv_tag);
        if (appCompatImageView != null) {
            if (!this.f43660e) {
                AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView != null) {
                    uf.c.g(appCompatTextView);
                }
                uf.c.g(appCompatImageView);
                return;
            }
            uf.c.k(appCompatImageView);
            if (i10 == 1) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_01);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView2 != null) {
                    uf.c.g(appCompatTextView2);
                    return;
                }
                return;
            }
            if (i10 == 2) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_02);
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView3 != null) {
                    uf.c.g(appCompatTextView3);
                    return;
                }
                return;
            }
            if (i10 == 3) {
                appCompatImageView.setImageResource(R$mipmap.ic_rank_03);
                AppCompatTextView appCompatTextView4 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView4 != null) {
                    uf.c.g(appCompatTextView4);
                    return;
                }
                return;
            }
            appCompatImageView.setImageResource(R$mipmap.ic_rank_defalut);
            appCompatImageView.setRotationY(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? 180.0f : 0.0f);
            AppCompatTextView appCompatTextView5 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
            if (appCompatTextView5 != null) {
                uf.c.k(appCompatTextView5);
                uf.c.k(appCompatTextView5);
                StringBuilder sb2 = new StringBuilder();
                if (i10 < 10) {
                    sb2.append("0");
                    sb2.append(i10);
                } else {
                    sb2.append(i10);
                }
                appCompatTextView5.setText(sb2);
            }
        }
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.adapter_play_list;
    }

    @Override
    public void b(BaseViewHolder helper, Subject item) {
        List<Object> data;
        String url;
        String thumbnail;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        BaseProviderMultiAdapter baseProviderMultiAdapterG = g();
        int i10 = 0;
        int iG0 = baseProviderMultiAdapterG != null ? baseProviderMultiAdapterG.g0(item) : 0;
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_title);
        if (appCompatTextView != null) {
            appCompatTextView.setText(item.getTitle());
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = shapeableImageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            Cover cover = item.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            zg.h hVar = zg.h.f76787a;
            Context context2 = shapeableImageView.getContext();
            Intrinsics.g(context2, "getContext(...)");
            ni.f.b bVarC = bVarG.m(hVar.e(context2)).c(shapeableImageView.getHeight());
            Cover cover2 = item.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarC.l(str).d(shapeableImageView);
        }
        AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_desc);
        if (appCompatTextView2 != null) {
            appCompatTextView2.setText(item.getDescription());
        }
        AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_score);
        if (appCompatTextView3 != null) {
            appCompatTextView3.setText(item.getImdbRate());
        }
        DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
        if (downloadView != null) {
            Integer subjectType = item.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType != null && subjectType.intValue() == value) {
                uf.c.k(downloadView);
            } else if (t.f62121a.b()) {
                uf.c.k(downloadView);
                downloadView.setShowPlayType();
            } else if (Intrinsics.c(item.getHasResource(), Boolean.TRUE)) {
                uf.c.k(downloadView);
                ResourceDetectors resourceDetector = item.getResourceDetector();
                if (resourceDetector != null) {
                    String subjectId = item.getSubjectId();
                    String resourceId = resourceDetector.getResourceId();
                    Integer type = resourceDetector.getType();
                    DownloadView.setShowType$default(downloadView, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
                }
            } else {
                helper.setGone(R$id.ll_download, true);
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
            int i11 = 0;
            for (Object obj : data) {
                int i12 = i11 + 1;
                if (i11 < 0) {
                    CollectionsKt.u();
                }
                Subject subject = (Subject) obj;
                if (i11 < iG0 && subject.getNonAdDelegate() != null) {
                    i10++;
                }
                i11 = i12;
            }
        }
        A(helper, (iG0 + 1) - i10);
        ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(item.getCorner(), item.getSubjectType());
    }

    public final void z(boolean z10) {
        this.f43660e = z10;
    }
}
