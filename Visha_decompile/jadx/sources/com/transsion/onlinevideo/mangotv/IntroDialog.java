package com.transsion.onlinevideo.mangotv;

import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.LogUtils;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.Tag;
import com.transsion.dbdata.beans.onlinevideo.TranVideoDetail;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.TagAdapter;
import com.transsion.onlinevideo.mangotv.IntroDialog;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.widgets.BaseFullBottomSheetFragment;
import com.transsion.utils.a;
import com.transsion.widgets.ratingbar.RtlDfRatingBar;
import defpackage.f38;
import defpackage.hb0;
import defpackage.ly4;
import defpackage.wz5;

public class IntroDialog extends BaseFullBottomSheetFragment {
    public String A = "";
    public TranVideoDetail.VideoSerials B;
    public int C;
    public long D;
    public TranVideoDetail n;
    public RecyclerView o;
    public RtlDfRatingBar p;
    public TextView q;
    public TextView r;
    public View s;
    public TextView t;
    public TextView u;
    public TextView v;
    public ImageView w;
    public TextView x;
    public TextView y;
    public View z;

    public static void H(View view) {
        LogUtils.j("v", "ratingBarUnClickble");
    }

    public static boolean I(View view, MotionEvent motionEvent) {
        return true;
    }

    public static void J(BottomSheetBehavior bottomSheetBehavior, View view) {
        wz5.n();
        bottomSheetBehavior.setState(5);
    }

    public static IntroDialog L(TranVideoDetail tranVideoDetail, TranVideoDetail.VideoSerials videoSerials) {
        IntroDialog introDialog = new IntroDialog();
        introDialog.n = tranVideoDetail;
        introDialog.B = videoSerials;
        return introDialog;
    }

    private void N(TranVideoDetail.VideoInfoBean videoInfoBean) {
        this.C = videoInfoBean.getCategory();
        this.D = videoInfoBean.getVideoId();
        this.q.setText(videoInfoBean.getVideoTitle());
        if (videoInfoBean.getYear() != null && !TextUtils.isEmpty(videoInfoBean.getYear().trim())) {
            this.A = videoInfoBean.getYear();
        }
        this.p.setRating(videoInfoBean.getScores() / 2.0f);
        this.x.setText("" + Float.valueOf(videoInfoBean.getScores()));
        boolean z = videoInfoBean.getTags() != null && videoInfoBean.getTags().size() > 0;
        this.o.setVisibility(z ? 0 : 8);
        if (z) {
            hb0.markDirect("vd_ott_detail_label_show");
            final TagAdapter tagAdapter = new TagAdapter();
            tagAdapter.setNewData(videoInfoBean.getTags());
            this.o.setAdapter(tagAdapter);
            this.o.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
            tagAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.K(tagAdapter, baseQuickAdapter, view, i);
                }
            });
        }
        this.t.setVisibility((videoInfoBean.getVideoDescription() == null || TextUtils.isEmpty(videoInfoBean.getVideoDescription())) ? false : true ? 0 : 8);
        this.t.setText(videoInfoBean.getVideoDescription());
        ly4.a(getContext(), this.w, videoInfoBean.getCoverY(), R.drawable.ic_online_cover_default);
        boolean zHasDirectors = videoInfoBean.hasDirectors();
        boolean zHasActors = videoInfoBean.hasActors();
        this.u.setVisibility(zHasDirectors ? 0 : 8);
        this.v.setVisibility(zHasActors ? 0 : 8);
        this.u.setText(getString(R.string.video_onlinevideo_directors, videoInfoBean.getDirectors()));
        this.v.setText(getString(R.string.video_onlinevideo_actors, videoInfoBean.getActors()));
    }

    public int G() {
        return getResources().getDisplayMetrics().heightPixels - ((a.m(getContext()) * 9) / 16);
    }

    public final void K(TagAdapter tagAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        Tag tag = tagAdapter.getData().get(i);
        RouterBean.RouterData routerData = new RouterBean.RouterData();
        routerData.setTopic_id((int) tag.getTopicId());
        routerData.setTopic_name(tag.getName());
        routerData.setData_type(2);
        routerData.setSourceType(tag.getTagType().intValue());
        routerData.setChannel(tag.getTagId().intValue());
        routerData.setBottom_position(((Integer) tag.getSourceType()).intValue());
        wz5.g0("vd_ott_detail_label_cl", tag.getName(), this.D, tag.getTagId().intValue());
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(routerData).withMarkParam("vd_ott_label_cl").build(), getContext());
    }

    public final void M() {
        boolean zIsEmpty = TextUtils.isEmpty(this.A);
        f38 f38VarC = f38.c();
        TranVideoDetail.VideoSerials videoSerials = this.B;
        String strD = f38VarC.d(videoSerials == null ? 0L : videoSerials.getDuration());
        boolean z = (!TextUtils.isEmpty(strD) && this.C == 1) || this.C == 3;
        this.r.setVisibility(zIsEmpty ? 8 : 0);
        this.s.setVisibility(zIsEmpty ? 8 : 0);
        this.z.setVisibility(!z ? 8 : 0);
        this.y.setVisibility(z ? 0 : 8);
        this.r.setText(this.A);
        this.y.setText(strD);
        int i = this.C;
        if (i == 1) {
            this.y.setText(strD);
        } else if (i == 3) {
            this.y.setText(R.string.video_category_variety);
        }
    }

    @Override
    public int getLayoutId() {
        return R.layout.layout_introduce;
    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {
        super.onDismiss(dialogInterface);
    }

    @Override
    public void onStart() {
        super.onStart();
        Log.i("IntroDialog", "onStart");
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) getDialog();
        Window window = bottomSheetDialog.getWindow();
        int i = R.id.design_bottom_sheet;
        window.findViewById(i).setBackgroundDrawable(new ColorDrawable(0));
        FrameLayout frameLayout = (FrameLayout) bottomSheetDialog.getDelegate().findViewById(i);
        if (frameLayout != null) {
            CoordinatorLayout.LayoutParams layoutParams = (CoordinatorLayout.LayoutParams) frameLayout.getLayoutParams();
            ((ViewGroup.MarginLayoutParams) layoutParams).height = G();
            frameLayout.setLayoutParams(layoutParams);
            final BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(frameLayout);
            bottomSheetBehaviorFrom.setPeekHeight(G());
            bottomSheetBehaviorFrom.setState(3);
            ((ImageView) this.l.findViewById(R.id.intro_close)).setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    IntroDialog.J(bottomSheetBehaviorFrom, view);
                }
            });
        }
    }

    @Override
    public void v(View view) {
        this.q = (TextView) view.findViewById(R.id.intro_title);
        this.o = (RecyclerView) view.findViewById(R.id.intro_flow);
        this.p = (RtlDfRatingBar) view.findViewById(R.id.score);
        this.r = (TextView) view.findViewById(R.id.intro_date);
        this.y = (TextView) view.findViewById(R.id.intro_time);
        this.s = view.findViewById(R.id.intro_date_line);
        this.z = view.findViewById(R.id.intro_time_line);
        this.v = (TextView) view.findViewById(R.id.intro_actors);
        this.w = (ImageView) view.findViewById(R.id.cover);
        this.t = (TextView) view.findViewById(R.id.introduce_infos);
        this.u = (TextView) view.findViewById(R.id.intro_directors);
        this.x = (TextView) view.findViewById(R.id.intro_score_point);
        int i = R.id.score_container_unbale;
        view.findViewById(i).setOnClickListener(new View.OnClickListener() {
            @Override
            public final void onClick(View view2) {
                IntroDialog.H(view2);
            }
        });
        view.findViewById(i).setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return IntroDialog.I(view2, motionEvent);
            }
        });
        TranVideoDetail tranVideoDetail = this.n;
        if (tranVideoDetail != null) {
            N(tranVideoDetail.getVideoInfo());
            M();
        }
    }
}
