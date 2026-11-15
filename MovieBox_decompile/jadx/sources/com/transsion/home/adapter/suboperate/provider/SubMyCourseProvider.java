package com.transsion.home.adapter.suboperate.provider;

import android.app.Application;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.blankj.utilcode.util.Utils;
import com.chad.library.adapter.base.provider.BaseItemProvider;
import com.chad.library.adapter.base.viewholder.BaseViewHolder;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.therouter.TheRouter;
import com.therouter.router.Navigator;
import com.transsion.baselib.db.AppDatabase;
import com.transsion.baselib.db.video.VideoDetailPlayDao;
import com.transsion.edcation.bean.CourseBean;
import com.transsion.home.R$id;
import com.transsion.home.R$layout;
import com.transsion.home.bean.OperateItem;
import com.transsion.home.fragment.tab.SubTabFragment;
import com.transsion.moviedetailapi.bean.Cover;
import com.transsion.moviedetailapi.bean.PostItemType;
import com.transsion.moviedetailapi.bean.Subject;
import java.util.Arrays;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlinx.coroutines.t1;
import kotlinx.coroutines.y0;

public final class SubMyCourseProvider extends BaseItemProvider implements androidx.p009lifecycle.f {

    private final int f43365e;

    private t1 f43366f;

    private BaseViewHolder f43367g;

    private CourseBean f43368h;

    private final Lazy f43369i = LazyKt.b(new Function0() {
        @Override
        public final Object invoke() {
            return SubMyCourseProvider.P();
        }
    });

    public SubMyCourseProvider(int i10) {
        this.f43365e = i10;
    }

    public static final void L(BaseViewHolder baseViewHolder, View view) {
        Navigator.x(TheRouter.c("/edu/courseList"), baseViewHolder.itemView.getContext(), null, 2, null);
    }

    public static final void M(SubMyCourseProvider subMyCourseProvider, BaseViewHolder baseViewHolder, OperateItem operateItem, View view) {
        Navigator.x(TheRouter.c("/home/filter").F("tabId", subMyCourseProvider.f43365e), baseViewHolder.itemView.getContext(), null, 2, null);
        subMyCourseProvider.T("click_my_course_explore", operateItem);
    }

    public static final void N(SubMyCourseProvider subMyCourseProvider, OperateItem operateItem, View view) {
        CourseBean courseBean = subMyCourseProvider.f43368h;
        if ((courseBean != null ? courseBean.getSubjectId() : null) != null) {
            CourseBean courseBean2 = subMyCourseProvider.f43368h;
            String subjectId = courseBean2 != null ? courseBean2.getSubjectId() : null;
            CourseBean courseBean3 = subMyCourseProvider.f43368h;
            zk.h.f(new Subject(subjectId, courseBean3 != null ? courseBean3.getSubjectType() : null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, false, false, null, null, null, null, null, false, false, null, null, 0, false, false, 0L, null, null, 0L, null, 0, false, null, 0, null, null, null, null, null, 0, null, null, null, null, null, -4, 67108863, null), "operation_course");
        }
        subMyCourseProvider.T("click_my_course_learn", operateItem);
    }

    public final VideoDetailPlayDao O() {
        return (VideoDetailPlayDao) this.f43369i.getValue();
    }

    public static final VideoDetailPlayDao P() {
        AppDatabase.Companion companion = AppDatabase.INSTANCE;
        Application applicationA = Utils.a();
        Intrinsics.g(applicationA, "getApp(...)");
        return companion.b(applicationA).C1();
    }

    public static final void Q(SubMyCourseProvider subMyCourseProvider) {
        subMyCourseProvider.W();
    }

    private final void R() {
        this.f43366f = kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubMyCourseProvider$registerCourse$1(this, null), 3, null);
    }

    private final void S(OperateItem operateItem) {
        HashMap map = new HashMap();
        map.put("event_type", "browse_my_course");
        map.put(CampaignEx.JSON_KEY_TITLE, String.valueOf(operateItem.getTitle()));
        map.put("tabId", String.valueOf(this.f43365e));
        com.transsion.baselib.helper.a.f42121a.a(SubTabFragment.INSTANCE.a(this.f43365e), map);
    }

    private final void T(String str, OperateItem operateItem) {
        String subjectId;
        HashMap map = new HashMap();
        map.put("event_type", str);
        map.put(CampaignEx.JSON_KEY_TITLE, String.valueOf(operateItem.getTitle()));
        map.put("tabId", String.valueOf(this.f43365e));
        CourseBean courseBean = this.f43368h;
        if (courseBean == null || (subjectId = courseBean.getSubjectId()) == null) {
            subjectId = "";
        }
        map.put("subjectId", subjectId);
        com.transsion.baselib.helper.a.f42121a.f(SubTabFragment.INSTANCE.a(this.f43365e), map);
    }

    public final void U(final BaseViewHolder baseViewHolder, final float f10) {
        TextView textView;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f64324a;
        String str = String.format("%.0f", Arrays.copyOf(new Object[]{Float.valueOf(f10)}, 1));
        Intrinsics.g(str, "format(...)");
        String str2 = str + "%";
        if (baseViewHolder != null && (textView = (TextView) baseViewHolder.getView(R$id.sub_operation_course_item_percent_text)) != null) {
            textView.setText(str2);
        }
        final View view = baseViewHolder != null ? baseViewHolder.getView(R$id.sub_operation_course_item_percent_bg) : null;
        if (view != null) {
            view.post(new Runnable() {
                @Override
                public final void run() {
                    SubMyCourseProvider.V(baseViewHolder, view, f10);
                }
            });
        }
    }

    public static final void V(BaseViewHolder baseViewHolder, View view, float f10) {
        View view2 = baseViewHolder.getView(R$id.sub_operation_course_item_percent_view);
        view2.getLayoutParams().width = (int) ((view.getWidth() * f10) / 100);
        view2.setLayoutParams(view2.getLayoutParams());
    }

    public final void W() {
        TextView textView;
        String title;
        ImageView imageView;
        String url;
        String thumbnail;
        Cover cover;
        Cover cover2;
        View view;
        View view2;
        View view3;
        View view4;
        if (this.f43368h == null) {
            BaseViewHolder baseViewHolder = this.f43367g;
            if (baseViewHolder != null && (view4 = baseViewHolder.getView(R$id.sub_operation_course_start_liner)) != null) {
                uf.c.k(view4);
            }
            BaseViewHolder baseViewHolder2 = this.f43367g;
            if (baseViewHolder2 == null || (view3 = baseViewHolder2.getView(R$id.sub_operation_course_item_liner)) == null) {
                return;
            }
            uf.c.h(view3);
            return;
        }
        BaseViewHolder baseViewHolder3 = this.f43367g;
        if (baseViewHolder3 != null && (view2 = baseViewHolder3.getView(R$id.sub_operation_course_start_liner)) != null) {
            uf.c.h(view2);
        }
        BaseViewHolder baseViewHolder4 = this.f43367g;
        if (baseViewHolder4 != null && (view = baseViewHolder4.getView(R$id.sub_operation_course_item_liner)) != null) {
            uf.c.k(view);
        }
        BaseViewHolder baseViewHolder5 = this.f43367g;
        String str = "";
        if (baseViewHolder5 != null && (imageView = (ImageView) baseViewHolder5.getView(R$id.sub_operation_course_item_image)) != null) {
            ni.f.a aVar = ni.f.f67269a;
            Context context = imageView.getContext();
            Intrinsics.g(context, "getContext(...)");
            ni.f.b bVarM = aVar.m(context);
            CourseBean courseBean = this.f43368h;
            if (courseBean == null || (cover2 = courseBean.getCover()) == null || (url = cover2.getUrl()) == null) {
                url = "";
            }
            ni.f.b bVarG = bVarM.g(url);
            CourseBean courseBean2 = this.f43368h;
            if (courseBean2 == null || (cover = courseBean2.getCover()) == null || (thumbnail = cover.getThumbnail()) == null) {
                thumbnail = "";
            }
            bVarG.l(thumbnail).m(imageView.getWidth()).d(imageView);
        }
        CourseBean courseBean3 = this.f43368h;
        if (courseBean3 != null && (title = courseBean3.getTitle()) != null) {
            str = title;
        }
        BaseViewHolder baseViewHolder6 = this.f43367g;
        if (baseViewHolder6 != null && (textView = (TextView) baseViewHolder6.getView(R$id.sub_operation_course_item_title_text)) != null) {
            textView.setText(str);
        }
        kotlinx.coroutines.k.d(kotlinx.coroutines.o0.a(y0.b()), null, null, new SubMyCourseProvider$updateCurrentCourse$2(this, null), 3, null);
    }

    @Override
    public void b(final BaseViewHolder helper, final OperateItem item) {
        Intrinsics.h(helper, "helper");
        Intrinsics.h(item, "item");
        helper.getView(R$id.sub_operation_course_title).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubMyCourseProvider.L(helper, view);
            }
        });
        helper.getView(R$id.sub_operation_course_explore).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubMyCourseProvider.M(this.f43407a, helper, item, view);
            }
        });
        helper.getView(R$id.sub_operation_course_learn).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view) {
                SubMyCourseProvider.N(this.f43412a, item, view);
            }
        });
        S(item);
    }

    @Override
    public int l() {
        return PostItemType.MY_COURSE.ordinal();
    }

    @Override
    public int m() {
        return R$layout.item_sub_operation_my_course;
    }

    @Override
    public void onCreate(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.a(this, uVar);
    }

    @Override
    public void onDestroy(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.b(this, uVar);
    }

    @Override
    public void onPause(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.c(this, uVar);
    }

    @Override
    public void onResume(androidx.p009lifecycle.u owner) {
        Intrinsics.h(owner, "owner");
        androidx.p009lifecycle.e.d(this, owner);
        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() {
            @Override
            public final void run() {
                SubMyCourseProvider.Q(this.f43402a);
            }
        }, 1000L);
    }

    @Override
    public void onStart(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.e(this, uVar);
    }

    @Override
    public void onStop(androidx.p009lifecycle.u uVar) {
        androidx.p009lifecycle.e.f(this, uVar);
    }

    @Override
    public void t(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.t(holder);
        this.f43367g = holder;
        if (this.f43366f == null) {
            R();
        }
    }

    @Override
    public void u(BaseViewHolder holder) {
        Intrinsics.h(holder, "holder");
        super.u(holder);
        this.f43367g = null;
        t1 t1Var = this.f43366f;
        if (t1Var != null) {
            t1.a.b(t1Var, null, 1, null);
        }
        this.f43366f = null;
    }
}
