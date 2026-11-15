package com.transsion.home.adapter.trending.provider;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableStringBuilder;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.tn.lib.view.CornerTextView;
import com.tn.lib.widget.R$color;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.ResourceDetectors;
import com.transsion.moviedetailapi.bean.Subject;
import com.transsnet.downloader.widget.DownloadView;
import com.vungle.ads.internal.protos.Sdk$SDKError;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Date;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;

public final class SubjectSingleImgItemProvider extends b {

    private final boolean f43535e;

    private final int f43536f;

    private final double f43537g;

    private BaseViewHolder f43538h;

    public SubjectSingleImgItemProvider(boolean z10) {
        this.f43535e = z10;
        int iMin = Math.min(com.blankj.utilcode.util.y.e(), com.blankj.utilcode.util.y.c());
        this.f43536f = iMin;
        this.f43537g = ((double) iMin) * 0.5d;
    }

    public static final Unit F(Subject subject, boolean z10, boolean z11, long j10) {
        subject.setLoadCoverSuccess(z10);
        subject.setCoverCache(z11);
        subject.setLoadCoverDuration(j10);
        return Unit.f64096a;
    }

    private final String G(int i10) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%02d:%02d:%02d", Arrays.copyOf(new Object[]{Integer.valueOf(i10 / 3600), Integer.valueOf((i10 % 3600) / 60), Integer.valueOf(i10 % 60)}, 3));
        Intrinsics.g(str, "format(...)");
        return str;
    }

    /* JADX WARN: Code duplicated, block: B:52:0x0113  */
    /* JADX WARN: Code duplicated, block: B:54:0x012d  */
    /* JADX WARN: Code duplicated, block: B:55:0x0132  */
    /* JADX WARN: Code duplicated, block: B:91:0x021c  */
    /* JADX WARN: Code duplicated, block: B:93:0x0222  */
    @Override
    public void b(BaseViewHolder helper, OperateItem item) {
        String subjectId;
        ResourceDetectors resourceDetector;
        Integer type;
        Integer durationSeconds;
        int iIntValue;
        String url;
        String thumbnail;
        ConstraintLayout constraintLayout;
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        final Subject feedsSubject = item.getFeedsSubject();
        if (feedsSubject == null || (subjectId = feedsSubject.getSubjectId()) == null || subjectId.length() == 0) {
            return;
        }
        if (this.f43535e && (constraintLayout = (ConstraintLayout) helper.getViewOrNull(R$id.cl_cover)) != null) {
            ViewGroup.LayoutParams layoutParams = constraintLayout.getLayoutParams();
            layoutParams.height = lj.a.b(Sdk$SDKError.Reason.INVALID_ADS_ENDPOINT_VALUE);
            layoutParams.width = ((int) this.f43537g) - lj.a.b(36);
            constraintLayout.setLayoutParams(layoutParams);
        }
        ShapeableImageView shapeableImageView = (ShapeableImageView) helper.getViewOrNull(R$id.iv_cover);
        if (shapeableImageView != null) {
            if (feedsSubject.getBuiltIn()) {
                kotlinx.coroutines.k.d(o0.a(y0.c()), null, null, new SubjectSingleImgItemProvider$convert$2$1(feedsSubject, shapeableImageView, null), 3, null);
            } else {
                ni.f.a aVar = ni.f.f67269a;
                Context context = shapeableImageView.getContext();
                Intrinsics.g(context, "getContext(...)");
                ni.f.b bVarM = aVar.m(context);
                Cover cover = feedsSubject.getCover();
                String str = "";
                if (cover == null || (url = cover.getUrl()) == null) {
                    url = "";
                }
                ni.f.b bVarG = bVarM.g(url);
                Cover cover2 = feedsSubject.getCover();
                if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                    str = thumbnail;
                }
                bVarG.l(str).i(R$color.skeleton).m(this.f43536f).b(new Function3() {
                    @Override
                    public final Object invoke(Object obj, Object obj2, Object obj3) {
                        return SubjectSingleImgItemProvider.F(feedsSubject, ((Boolean) obj).booleanValue(), ((Boolean) obj2).booleanValue(), ((Long) obj3).longValue());
                    }
                }).d(shapeableImageView);
            }
        }
        AppCompatImageView appCompatImageView = (AppCompatImageView) helper.getViewOrNull(R$id.ic_player);
        if (appCompatImageView != null) {
            if (feedsSubject.getTrailer() == null) {
                uf.c.g(appCompatImageView);
            } else {
                uf.c.k(appCompatImageView);
            }
        }
        helper.setText(R$id.tv_subject, feedsSubject.getTitle());
        Integer subjectType = feedsSubject.getSubjectType();
        int value = SubjectType.MUSIC.getValue();
        boolean z10 = false;
        if (subjectType != null && subjectType.intValue() == value) {
            uf.c.h(helper.getView(R$id.tv_score));
            TextView textView = (TextView) helper.getView(R$id.tv_duration);
            uf.c.k(textView);
            durationSeconds = feedsSubject.getDurationSeconds();
            if (durationSeconds != null) {
                iIntValue = durationSeconds.intValue();
            } else {
                iIntValue = 0;
            }
            textView.setText(G(iIntValue));
        } else {
            Integer subjectType2 = feedsSubject.getSubjectType();
            int value2 = SubjectType.AUDIO.getValue();
            if (subjectType2 != null && subjectType2.intValue() == value2) {
                uf.c.h(helper.getView(R$id.tv_score));
                TextView textView2 = (TextView) helper.getView(R$id.tv_duration);
                uf.c.k(textView2);
                durationSeconds = feedsSubject.getDurationSeconds();
                if (durationSeconds != null) {
                    iIntValue = durationSeconds.intValue();
                } else {
                    iIntValue = 0;
                }
                textView2.setText(G(iIntValue));
            } else {
                Integer subjectType3 = feedsSubject.getSubjectType();
                int value3 = SubjectType.EDUCATION.getValue();
                if (subjectType3 != null && subjectType3.intValue() == value3) {
                    uf.c.h(helper.getView(R$id.tv_score));
                    TextView textView3 = (TextView) helper.getView(R$id.tv_duration);
                    uf.c.k(textView3);
                    durationSeconds = feedsSubject.getDurationSeconds();
                    if (durationSeconds != null) {
                        iIntValue = durationSeconds.intValue();
                    } else {
                        iIntValue = 0;
                    }
                    textView3.setText(G(iIntValue));
                }
            }
        }
        ((CornerTextView) helper.getView(R$id.tv_tips)).setTextWithType(feedsSubject.getCorner(), feedsSubject.getSubjectType());
        Date dateL = com.blankj.utilcode.util.c0.l(feedsSubject.getReleaseDate(), "yyyy-MM-dd");
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(dateL);
        AppCompatTextView appCompatTextView = (AppCompatTextView) helper.getViewOrNull(R$id.tv_subject_year);
        if (appCompatTextView != null) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
            spannableStringBuilder.append((CharSequence) String.valueOf(calendar.get(1)));
            String countryName = feedsSubject.getCountryName();
            if (countryName != null && countryName.length() != 0) {
                spannableStringBuilder.append((CharSequence) " • ").append((CharSequence) feedsSubject.getCountryName());
            }
            String genre = feedsSubject.getGenre();
            if (genre != null && genre.length() != 0) {
                SpannableStringBuilder spannableStringBuilderAppend = spannableStringBuilder.append((CharSequence) " • ");
                String genre2 = feedsSubject.getGenre();
                spannableStringBuilderAppend.append((CharSequence) (genre2 != null ? StringsKt.Q(genre2, "，", " • ", false, 4, null) : null));
            }
            appCompatTextView.setText(spannableStringBuilder.toString());
            Drawable drawable = androidx.core.content.b.getDrawable(appCompatTextView.getContext(), com.transsion.moviedetailapi.h.a(feedsSubject.getSubjectType()));
            if (drawable != null) {
                drawable.setTint(androidx.core.content.b.getColor(appCompatTextView.getContext(), R$color.gray_40));
            }
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
        }
        if (Intrinsics.c(feedsSubject.getHasResource(), Boolean.TRUE)) {
            DownloadView downloadView = (DownloadView) helper.getViewOrNull(R$id.ll_download);
            if (downloadView != null) {
                uf.c.k(downloadView);
                if (ij.t.f62121a.b()) {
                    Integer subjectType4 = feedsSubject.getSubjectType();
                    int value4 = SubjectType.SHORT_TV.getValue();
                    if (subjectType4 != null && subjectType4.intValue() == value4) {
                        resourceDetector = feedsSubject.getResourceDetector();
                        if (resourceDetector != null) {
                            String subjectId2 = feedsSubject.getSubjectId();
                            String resourceId = resourceDetector.getResourceId();
                            type = resourceDetector.getType();
                            if (type != null && type.intValue() == 1) {
                                z10 = true;
                            }
                            DownloadView.setShowType$default(downloadView, subjectId2, resourceId, Boolean.valueOf(z10), false, 0, 24, null);
                        }
                    } else {
                        downloadView.setShowPlayType();
                    }
                } else {
                    resourceDetector = feedsSubject.getResourceDetector();
                    if (resourceDetector != null) {
                        String subjectId3 = feedsSubject.getSubjectId();
                        String resourceId2 = resourceDetector.getResourceId();
                        type = resourceDetector.getType();
                        if (type != null) {
                            z10 = true;
                        }
                        DownloadView.setShowType$default(downloadView, subjectId3, resourceId2, Boolean.valueOf(z10), false, 0, 24, null);
                    }
                }
            }
        } else {
            helper.setGone(R$id.ll_download, true);
        }
        this.f43538h = helper;
        A(helper, feedsSubject);
    }

    public final View H() {
        BaseViewHolder baseViewHolder = this.f43538h;
        if (baseViewHolder != null) {
            return (DownloadView) baseViewHolder.getViewOrNull(R$id.ll_download);
        }
        return null;
    }

    @Override
    public int l() {
        return PostItemType.SINGLE_SUBJECT.ordinal();
    }

    @Override
    public int m() {
        return R$layout.post_list_item_subject_single_img;
    }
}
