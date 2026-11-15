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
import com.transsion.shorttv.R$color;
import com.transsion.shorttv.R$drawable;
import com.transsion.shorttv.R$id;
import com.transsion.shorttv.R$layout;
import com.transsion.shorttv.R$mipmap;
import com.transsion.shorttv._channel.model.ShortTvCategoryItemBean;
import com.transsion.shorttv._channel.ui.widget.ShortTvDownloadView;
import com.transsion.shorttv.base.widget.CornerTextView;
import com.transsion.shorttv.bean.Cover;
import com.transsion.shorttv.bean.ResourceDetectors;
import com.transsion.shorttv.bean.Subject;
import com.transsion.shorttv.bean.SubjectType;
import java.util.List;
import java.util.Locale;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

public final class m extends BaseItemProvider {

    private final String f43661e;

    public m(String pageName) {
        Intrinsics.h(pageName, "pageName");
        this.f43661e = pageName;
    }

    private final void z(BaseViewHolder baseViewHolder, int i10) {
        AppCompatImageView appCompatImageView = (AppCompatImageView) baseViewHolder.getViewOrNull(R$id.iv_tag);
        if (appCompatImageView != null) {
            if (i10 == 1) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_01);
                AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView != null) {
                    cr.b.b(appCompatTextView);
                    return;
                }
                return;
            }
            if (i10 == 2) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_02);
                AppCompatTextView appCompatTextView2 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView2 != null) {
                    cr.b.b(appCompatTextView2);
                    return;
                }
                return;
            }
            if (i10 == 3) {
                appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_03);
                AppCompatTextView appCompatTextView3 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
                if (appCompatTextView3 != null) {
                    cr.b.b(appCompatTextView3);
                    return;
                }
                return;
            }
            appCompatImageView.setImageResource(R$mipmap.short_tv_ic_rank_defalut);
            appCompatImageView.setRotationY(TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1 ? 180.0f : 0.0f);
            AppCompatTextView appCompatTextView4 = (AppCompatTextView) baseViewHolder.getViewOrNull(R$id.tv_rank);
            if (appCompatTextView4 != null) {
                cr.b.e(appCompatTextView4);
                StringBuilder sb2 = new StringBuilder();
                if (i10 < 10) {
                    sb2.append("0");
                    sb2.append(i10);
                } else {
                    sb2.append(i10);
                }
                appCompatTextView4.setText(sb2);
            }
        }
    }

    @Override
    public int l() {
        return 1;
    }

    @Override
    public int m() {
        return R$layout.short_tv_adapter_play_list;
    }

    @Override
    public void b(BaseViewHolder helper, ShortTvCategoryItemBean item) {
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
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_desc);
            if (appCompatTextView2 != null) {
                Subject subject2 = item.getSubject();
                appCompatTextView2.setText(subject2 != null ? subject2.getDescription() : null);
            }
            AppCompatTextView appCompatTextView3 = (AppCompatTextView) helper.getViewOrNull(R$id.tv_score);
            if (appCompatTextView3 != null) {
                appCompatTextView3.setText(subject.getImdbRate());
            }
            ShortTvDownloadView shortTvDownloadView = (ShortTvDownloadView) helper.getViewOrNull(R$id.ll_download);
            if (shortTvDownloadView != null) {
                shortTvDownloadView.setPageFrom(this.f43661e);
                Integer subjectType = subject.getSubjectType();
                int value = SubjectType.SHORT_TV.getValue();
                if (subjectType != null && subjectType.intValue() == value) {
                    cr.b.e(shortTvDownloadView);
                } else if (xq.e.f75380a.b()) {
                    cr.b.e(shortTvDownloadView);
                    shortTvDownloadView.setShowPlayType();
                } else {
                    Subject subject3 = item.getSubject();
                    if (subject3 != null ? Intrinsics.c(subject3.getHasResource(), Boolean.TRUE) : false) {
                        ShortTvDownloadView shortTvDownloadView2 = (ShortTvDownloadView) helper.getViewOrNull(R$id.ll_download);
                        if (shortTvDownloadView2 != null) {
                            cr.b.e(shortTvDownloadView2);
                            Subject subject4 = item.getSubject();
                            if (subject4 != null && (resourceDetector = subject4.getResourceDetector()) != null) {
                                Subject subject5 = item.getSubject();
                                String subjectId = subject5 != null ? subject5.getSubjectId() : null;
                                String resourceId = resourceDetector.getResourceId();
                                Integer type = resourceDetector.getType();
                                ShortTvDownloadView.setShowType$default(shortTvDownloadView2, subjectId, resourceId, Boolean.valueOf(type != null && type.intValue() == 1), false, 0, 24, null);
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
                    cr.b.e(viewOrNull);
                }
                View viewOrNull2 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull2 != null) {
                    cr.b.e(viewOrNull2);
                }
                View viewOrNull3 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull3 != null) {
                    viewOrNull3.setBackgroundResource(R$drawable.short_tv_bg_category_first_item);
                }
            } else {
                View viewOrNull4 = helper.getViewOrNull(R$id.divider);
                if (viewOrNull4 != null) {
                    cr.b.b(viewOrNull4);
                }
                View viewOrNull5 = helper.getViewOrNull(R$id.bg_gradient);
                if (viewOrNull5 != null) {
                    cr.b.b(viewOrNull5);
                }
                View viewOrNull6 = helper.getViewOrNull(R$id.item_root);
                if (viewOrNull6 != null) {
                    viewOrNull6.setBackgroundColor(androidx.core.content.b.getColor(k(), R$color.short_tv_gray_light_00));
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
                    if (i11 < iG0 && subject.getNonAdDelegate() != null) {
                        i10++;
                    }
                    i11 = i12;
                }
            }
            z(helper, (iG0 + 1) - i10);
            ((CornerTextView) helper.getView(R$id.iv_playlist_page_corner)).setTextWithType(subject.getCorner(), subject.getSubjectType());
        }
    }
}
