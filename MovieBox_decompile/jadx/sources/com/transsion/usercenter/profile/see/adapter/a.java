package com.transsion.usercenter.profile.see.adapter;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.fragment.app.FragmentActivity;
import com.alibaba.sdk.android.oss.common.RequestParameters;
import com.blankj.utilcode.util.a0;
import com.chad.library.adapter.base.BaseProviderMultiAdapter;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.tn.lib.widget.R$color;
import com.tn.lib.widget.R$mipmap;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.StaffType;
import com.transsion.usercenter.R$id;
import com.transsion.usercenter.R$layout;
import com.transsion.usercenter.profile.see.bean.ProfileSeeStaffItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeSubjectItem;
import com.transsion.usercenter.profile.see.bean.ProfileSeeTimeItem;
import com.transsnet.downloader.DownloadManagerApi;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import ni.f;
import sm.e;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0010\b\n\u0002\b\t\u0018\u0000 \f2\b\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003:\u0004\r\u000e\u000f\u0010B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J%\u0010\n\u001a\u00020\b2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\n\u0010\u000b¨\u0006\u0011"}, d2 = {"Lcom/transsion/usercenter/profile/see/adapter/a;", "Lcom/chad/library/adapter/base/BaseProviderMultiAdapter;", "Lp6/a;", "Lt6/i;", "<init>", "()V", "", "data", "", RequestParameters.POSITION, "N1", "(Ljava/util/List;I)I", "G", "a", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "c", "UserCenter_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class a extends BaseProviderMultiAdapter<p6.a> implements i {
    public static final int H = 1;
    public static final int I = 2;
    public static final int J = 3;

    public static final class b extends BaseItemProvider {

        private final int f55131e = a0.a(72.0f);

        private final int f55132f = a0.a(98.0f);

        private final void A(final BaseViewHolder baseViewHolder, final ProfileSeeSubjectItem profileSeeSubjectItem) {
            uf.c.g((AppCompatTextView) baseViewHolder.getView(R$id.desTv));
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a.b.B(profileSeeSubjectItem, this, baseViewHolder, view);
                }
            });
        }

        public static final void B(ProfileSeeSubjectItem profileSeeSubjectItem, b bVar, BaseViewHolder baseViewHolder, View view) {
            if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
                return;
            }
            Integer subjectType = profileSeeSubjectItem.getSubjectType();
            int value = SubjectType.SHORT_TV.getValue();
            if (subjectType == null || subjectType.intValue() != value) {
                Navigator navigatorC = TheRouter.c("/movie/detail");
                Integer subjectType2 = profileSeeSubjectItem.getSubjectType();
                Navigator.x(navigatorC.F("subject_type", subjectType2 != null ? subjectType2.intValue() : SubjectType.MOVIE.getValue()).K("id", profileSeeSubjectItem.getSubjectId()).K("ops", profileSeeSubjectItem.getOps()), baseViewHolder.itemView.getContext(), null, 2, null);
            } else {
                DownloadManagerApi downloadManagerApiA = DownloadManagerApi.f56187j.a();
                Context contextK = bVar.k();
                Intrinsics.f(contextK, "null cannot be cast to non-null type androidx.fragment.app.FragmentActivity");
                downloadManagerApiA.d0((FragmentActivity) contextK, "movie_audio_archies", (384 & 4) != 0 ? "" : "", profileSeeSubjectItem.getOps(), (384 & 16) != 0 ? null : "download_subject", (384 & 32) != 0 ? false : false, (384 & 64) != 0 ? null : profileSeeSubjectItem, (384 & 128) != 0 ? null : null, (384 & 256) != 0 ? Boolean.FALSE : null);
            }
        }

        private final void C(BaseViewHolder baseViewHolder, ProfileSeeSubjectItem profileSeeSubjectItem) {
            String url;
            String thumbnail;
            ImageView imageView = (ImageView) baseViewHolder.getView(R$id.coverIv);
            f.a aVar = f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            Cover cover = profileSeeSubjectItem.getCover();
            String str = "";
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            f.b bVarC = bVarM.g(url).m(this.f55131e).c(this.f55132f);
            Cover cover2 = profileSeeSubjectItem.getCover();
            if (cover2 != null && (thumbnail = cover2.getThumbnail()) != null) {
                str = thumbnail;
            }
            bVarC.l(str).d(imageView);
            baseViewHolder.setText(R$id.nameTv, profileSeeSubjectItem.getTitle());
            baseViewHolder.setText(R$id.maskTv, profileSeeSubjectItem.getCorner());
            View view = baseViewHolder.getView(R$id.maskTv);
            String corner = profileSeeSubjectItem.getCorner();
            view.setVisibility(corner == null || corner.length() == 0 ? 8 : 0);
            ((AppCompatTextView) baseViewHolder.getView(R$id.tagTv)).setText(e.f72346a.f(profileSeeSubjectItem));
            uf.c.g(baseViewHolder.getView(R$id.desTv));
        }

        @Override
        public int l() {
            return 2;
        }

        @Override
        public int m() {
            return R$layout.profile_item_see_content;
        }

        @Override
        public void b(BaseViewHolder helper, p6.a item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            ProfileSeeSubjectItem profileSeeSubjectItem = (ProfileSeeSubjectItem) item;
            C(helper, profileSeeSubjectItem);
            A(helper, profileSeeSubjectItem);
        }
    }

    public static final class c extends BaseItemProvider {

        private final int f55133e = a0.a(72.0f);

        private final int f55134f = a0.a(98.0f);

        private final void A(final BaseViewHolder baseViewHolder, final ProfileSeeStaffItem profileSeeStaffItem) {
            ((ImageView) baseViewHolder.getView(R$id.jumpTv)).setImageResource(R$mipmap.ic_btn_arrow_transparent);
            baseViewHolder.itemView.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    a.c.B(profileSeeStaffItem, baseViewHolder, view);
                }
            });
        }

        public static final void B(ProfileSeeStaffItem profileSeeStaffItem, BaseViewHolder baseViewHolder, View view) {
            if (com.transsion.baseui.util.c.f42332a.a(view.getId(), 1000L)) {
                return;
            }
            Navigator.x(TheRouter.c("/movie/staff").J("staff", profileSeeStaffItem), baseViewHolder.itemView.getContext(), null, 2, null);
        }

        private final void C(BaseViewHolder baseViewHolder, ProfileSeeStaffItem profileSeeStaffItem) {
            ImageView imageView = (ImageView) baseViewHolder.getView(R$id.coverIv);
            f.a aVar = f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            f.b bVarM = aVar.m(context);
            String avatarUrl = profileSeeStaffItem.getAvatarUrl();
            String str = "";
            if (avatarUrl == null) {
                avatarUrl = "";
            }
            bVarM.g(avatarUrl).i(com.transsion.usercenter.R$mipmap.profile_staff_default_avatar).m(this.f55133e).c(this.f55134f).d(imageView);
            baseViewHolder.setText(R$id.nameTv, profileSeeStaffItem.getName());
            baseViewHolder.getView(R$id.maskTv).setVisibility(8);
            AppCompatTextView appCompatTextView = (AppCompatTextView) baseViewHolder.getView(R$id.tagTv);
            List<StaffType> staffTypes = profileSeeStaffItem.getStaffTypes();
            if (staffTypes != null) {
                for (StaffType staffType : staffTypes) {
                    if (str.length() > 0) {
                        str = ((Object) str) + " I ";
                    }
                    str = ((Object) str) + staffType.getName();
                }
            }
            appCompatTextView.setTextColor(k().getResources().getColor(R$color.white_60));
            appCompatTextView.setText(str);
            appCompatTextView.setCompoundDrawablesRelativeWithIntrinsicBounds(com.transsion.usercenter.R$mipmap.profile_ic_staff, 0, 0, 0);
            AppCompatTextView appCompatTextView2 = (AppCompatTextView) baseViewHolder.getView(R$id.desTv);
            appCompatTextView2.setText(profileSeeStaffItem.getDescription());
            String description = profileSeeStaffItem.getDescription();
            appCompatTextView2.setVisibility(description == null || description.length() == 0 ? 8 : 0);
        }

        @Override
        public int l() {
            return 3;
        }

        @Override
        public int m() {
            return R$layout.profile_item_see_content;
        }

        @Override
        public void b(BaseViewHolder helper, p6.a item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            ProfileSeeStaffItem profileSeeStaffItem = (ProfileSeeStaffItem) item;
            C(helper, profileSeeStaffItem);
            A(helper, profileSeeStaffItem);
        }
    }

    public static final class d extends BaseItemProvider {
        @Override
        public int l() {
            return 1;
        }

        @Override
        public int m() {
            return R$layout.profile_item_see_time;
        }

        @Override
        public void b(BaseViewHolder helper, p6.a item) {
            Intrinsics.h(helper, "helper");
            Intrinsics.h(item, "item");
            ((TextView) helper.getView(R$id.tv_time)).setText(((ProfileSeeTimeItem) item).getDate());
        }
    }

    public a() {
        super(null, 1, null);
        F1(new d());
        F1(new b());
        F1(new c());
    }

    @Override
    protected int N1(List<? extends p6.a> data, int position) {
        Intrinsics.h(data, "data");
        return data.get(position).getItemType();
    }

    @Override
    public t6.f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }
}
