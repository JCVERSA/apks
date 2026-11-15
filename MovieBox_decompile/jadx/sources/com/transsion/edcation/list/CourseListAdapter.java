package com.transsion.edcation.list;

import android.app.Application;
import android.view.View;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.google.android.material.imageview.ShapeableImageView;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.R$id;
import com.transsion.edcation.R$layout;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.moviedetailapi.SubjectType;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.web.api.WebConstants;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.k;
import kotlinx.coroutines.o0;
import kotlinx.coroutines.y0;
import t6.f;
import t6.h;
import t6.i;

@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0011\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u001f\u0010\f\u001a\u00020\u000b2\u0006\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0010\u001a\u00020\u000b2\b\u0010\n\u001a\u0004\u0018\u00010\u00022\n\b\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u000e¢\u0006\u0004\b\u0010\u0010\u0011R\u001b\u0010\u0017\u001a\u00020\u00128BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/transsion/edcation/list/CourseListAdapter;", "Lcom/chad/library/adapter/base/BaseQuickAdapter;", "Lcom/transsion/edcation/bean/CourseBean;", "Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;", "Lt6/i;", "", "layoutResId", "<init>", "(I)V", "holder", WebConstants.FIELD_ITEM, "", "E1", "(Lcom/chad/library/adapter/base/viewholder/BaseViewHolder;Lcom/transsion/edcation/bean/CourseBean;)V", "", "playModule", "H1", "(Lcom/transsion/edcation/bean/CourseBean;Ljava/lang/String;)V", "Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "F", "Lkotlin/Lazy;", "G1", "()Lcom/transsion/baselib/db/video/VideoDetailPlayDao;", "mVideoDetailPlayDao", "Education_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
public final class CourseListAdapter extends BaseQuickAdapter implements i {

    private final Lazy mVideoDetailPlayDao;

    public CourseListAdapter() {
        this(0, 1, null);
    }

    public static final void F1(CourseListAdapter courseListAdapter, CourseBean courseBean, View view) {
        I1(courseListAdapter, courseBean, null, 2, null);
    }

    public final VideoDetailPlayDao G1() {
        return (VideoDetailPlayDao) this.mVideoDetailPlayDao.getValue();
    }

    public static void I1(CourseListAdapter courseListAdapter, CourseBean courseBean, String str, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str = null;
        }
        courseListAdapter.H1(courseBean, str);
    }

    public static final VideoDetailPlayDao J1() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    @Override
    public void F(BaseViewHolder holder, final CourseBean item) {
        String url;
        Intrinsics.h(holder, "holder");
        Intrinsics.h(item, "item");
        holder.setText(R$id.item_title, item.getTitle());
        ShapeableImageView shapeableImageView = (ShapeableImageView) holder.getViewOrNull(R$id.item_image);
        if (shapeableImageView != null) {
            Cover cover = item.getCover();
            if (cover == null || (url = cover.getUrl()) == null) {
                url = "";
            }
            cp.a.b(shapeableImageView, url, 12.0f);
        }
        uf.c.j(holder.getView(R$id.item_jump), true);
        holder.itemView.setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                CourseListAdapter.F1(this.f42947a, item, view);
            }
        });
        k.d(o0.a(y0.b()), null, null, new CourseListAdapter$convert$2(this, item, holder, null), 3, null);
    }

    public final void H1(CourseBean item, String playModule) {
        if (item == null) {
            return;
        }
        Navigator navigatorC = TheRouter.c("/movie/detail");
        Integer subjectType = item.getSubjectType();
        Navigator.x(navigatorC.F("subject_type", subjectType != null ? subjectType.intValue() : SubjectType.EDUCATION.getValue()).K("id", item.getSubjectId()).K("module_name", playModule).z("autoPlay", true), getContext(), null, 2, null);
    }

    @Override
    public f b(BaseQuickAdapter baseQuickAdapter) {
        return h.a(this, baseQuickAdapter);
    }

    public CourseListAdapter(int i10, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this((i11 & 1) != 0 ? R$layout.item_my_course_list : i10);
    }

    public CourseListAdapter(int i10) {
        super(i10, null, 2, null);
        this.mVideoDetailPlayDao = LazyKt.b(new Function0() {
            @Override
            public final Object invoke() {
                return CourseListAdapter.J1();
            }
        });
    }
}
