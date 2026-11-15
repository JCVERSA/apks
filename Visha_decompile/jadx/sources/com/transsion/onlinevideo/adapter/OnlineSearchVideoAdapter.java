package com.transsion.onlinevideo.adapter;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.blankj.utilcode.util.Utils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.VideoInfo;
import com.transsion.hubsdk.api.provider.TranSearchIndexablesContract;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.adapter.OnlineSearchVideoAdapter;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaplayersdk.data.PlayDetailDataManger;
import com.transsion.widgets.ratingbar.RtlDfRatingBar;
import defpackage.f5;
import defpackage.hb0;
import defpackage.wna;
import java.util.ArrayList;
import java.util.List;

public class OnlineSearchVideoAdapter extends BaseQuickAdapter<VideoInfo, BaseViewHolder> {
    public String o;

    public class a implements View.OnClickListener {
        public final VideoInfo.SerialListBean b;

        public a(VideoInfo.SerialListBean serialListBean) {
            this.b = serialListBean;
        }

        @Override
        public void onClick(View view) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(this.b.getVideoId().intValue(), this.b.getSourceId(), this.b.getSerialId().intValue(), this.b.getTitle(), false).setShortVideo(PlayDetailDataManger.isShortVideo(this.b.getVideoId() + ""))).withMarkParam("vd_ott_search_show").build(), ((BaseQuickAdapter) OnlineSearchVideoAdapter.this).mContext);
        }
    }

    public class b implements View.OnClickListener {
        public final VideoInfo.SerialListBean b;
        public final VideoInfo c;

        public b(VideoInfo.SerialListBean serialListBean, VideoInfo videoInfo) {
            this.b = serialListBean;
            this.c = videoInfo;
        }

        @Override
        public void onClick(View view) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(this.b.getVideoId().intValue(), this.b.getSourceId(), this.b.getSerialId().intValue(), this.c.getTitle(), false).setShortVideo(PlayDetailDataManger.isShortVideo(this.b.getVideoId() + ""))).withMarkParam("vd_ott_search_show").build(), ((BaseQuickAdapter) OnlineSearchVideoAdapter.this).mContext);
        }
    }

    public OnlineSearchVideoAdapter() {
        super(R.layout.item_search_video_serials);
    }

    public static boolean l(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override
    public void convert(final BaseViewHolder baseViewHolder, final VideoInfo videoInfo) {
        Glide.with(this.mContext).asBitmap().load2(videoInfo.getCoverY()).placeholder(R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover));
        RtlDfRatingBar rtlDfRatingBar = (RtlDfRatingBar) baseViewHolder.itemView.findViewById(R.id.score);
        baseViewHolder.setGone(R.id.iv_vip, videoInfo.isVip());
        rtlDfRatingBar.setRating(videoInfo.getScores() / 2.0f);
        rtlDfRatingBar.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return OnlineSearchVideoAdapter.l(view, motionEvent);
            }
        });
        baseViewHolder.setText(R.id.intro_score_point, String.valueOf(videoInfo.getScores()));
        baseViewHolder.setText(R.id.tv_title, videoInfo.getTitle());
        List<VideoInfo.TagListBean> tagList = videoInfo.getTagList();
        boolean z = tagList != null && tagList.size() > 0;
        RecyclerView recyclerView = (RecyclerView) baseViewHolder.itemView.findViewById(R.id.rv_tag);
        recyclerView.setVisibility(z ? 0 : 8);
        if (z) {
            final SearchVideoTagAdapter searchVideoTagAdapter = new SearchVideoTagAdapter();
            if (tagList.size() > 2) {
                searchVideoTagAdapter.setNewData(tagList.subList(0, 2));
            } else {
                searchVideoTagAdapter.setNewData(tagList);
            }
            recyclerView.setAdapter(searchVideoTagAdapter);
            recyclerView.setLayoutManager(new LinearLayoutManager(baseViewHolder.itemView.getContext(), 0, false));
            searchVideoTagAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                @Override
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
                    this.b.r(searchVideoTagAdapter, baseQuickAdapter, view, i);
                }
            });
        }
        if (videoInfo.isMgTvVideo()) {
            boolean z2 = !TextUtils.isEmpty(videoInfo.getYear());
            int i = R.id.intro_date;
            baseViewHolder.setVisible(i, z2);
            baseViewHolder.setVisible(R.id.intro_date_line, z2);
            boolean z3 = videoInfo.getDuration().intValue() != 0;
            int i2 = R.id.intro_time;
            baseViewHolder.setVisible(i2, z3);
            baseViewHolder.setVisible(R.id.intro_time_line, z3);
            baseViewHolder.setText(i2, wna.a(videoInfo.getDuration().intValue()));
            baseViewHolder.setText(i, videoInfo.getYear());
        } else {
            baseViewHolder.setGone(R.id.score_container, false);
            baseViewHolder.setGone(R.id.lay_date, false);
        }
        RecyclerView recyclerView2 = (RecyclerView) baseViewHolder.itemView.findViewById(R.id.rv_serials);
        boolean z4 = videoInfo.getSerialList() != null && videoInfo.getSerialList().size() > 1;
        recyclerView2.setVisibility(z4 ? 0 : 8);
        if (z4) {
            final OnlineSearchSerialAdapter onlineSearchSerialAdapter = new OnlineSearchSerialAdapter();
            onlineSearchSerialAdapter.r(videoInfo.getCategory().intValue());
            recyclerView2.setAdapter(onlineSearchSerialAdapter);
            if (videoInfo.getCategory().intValue() == 3 || videoInfo.getCategory().intValue() == 1) {
                recyclerView2.setLayoutManager(new LinearLayoutManager(this.mContext));
                final List<VideoInfo.SerialListBean> serialList = videoInfo.getSerialList();
                if (serialList.size() > 2) {
                    serialList = serialList.subList(0, 2);
                    View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.more_btn_view, (ViewGroup) recyclerView2, false);
                    onlineSearchSerialAdapter.setFooterView(viewInflate);
                    viewInflate.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public final void onClick(View view) {
                            this.b.s(videoInfo, view);
                        }
                    });
                }
                onlineSearchSerialAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                    @Override
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i3) {
                        this.b.t(serialList, videoInfo, baseViewHolder, baseQuickAdapter, view, i3);
                    }
                });
                onlineSearchSerialAdapter.setNewData(serialList);
            } else {
                recyclerView2.setLayoutManager(new GridLayoutManager(this.mContext, 6));
                List<VideoInfo.SerialListBean> serialList2 = videoInfo.getSerialList();
                final ArrayList arrayList = new ArrayList();
                if (serialList2.size() > 6) {
                    arrayList.addAll(serialList2.subList(0, 2));
                    arrayList.addAll(serialList2.subList(serialList2.size() - 4, serialList2.size()));
                    onlineSearchSerialAdapter.i(true);
                } else {
                    arrayList.addAll(serialList2);
                    onlineSearchSerialAdapter.i(false);
                }
                onlineSearchSerialAdapter.setNewData(arrayList);
                onlineSearchSerialAdapter.setOnItemClickListener(new BaseQuickAdapter.OnItemClickListener() {
                    @Override
                    public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i3) {
                        this.b.u(arrayList, onlineSearchSerialAdapter, videoInfo, baseViewHolder, baseQuickAdapter, view, i3);
                    }
                });
            }
        }
        if (videoInfo.getSerialList() == null || videoInfo.getSerialList().size() <= 0) {
            return;
        }
        w(baseViewHolder, videoInfo.getSerialList().get(0), videoInfo);
    }

    public final void r(SearchVideoTagAdapter searchVideoTagAdapter, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoInfo.TagListBean tagListBean = searchVideoTagAdapter.getData().get(i);
        RouterBean.RouterData routerData = new RouterBean.RouterData();
        routerData.setData_type(2);
        routerData.setSourceType(tagListBean.getType().intValue());
        routerData.setChannel(tagListBean.getId().intValue());
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(routerData).withMarkParam("vd_ott_label_cl").build(), this.mContext);
    }

    public final void s(VideoInfo videoInfo, View view) {
        Intent intent = new Intent();
        intent.setAction("com.transsion.onlinevideo.search.OnlineVideoSerialsActivity");
        intent.setPackage(Utils.a().getPackageName());
        Bundle bundle = new Bundle();
        bundle.putString("serial_title", videoInfo.getTitle());
        bundle.putInt("serial_type", videoInfo.getCategory().intValue());
        bundle.putParcelableArrayList("serial_list", new ArrayList<>(videoInfo.getSerialList()));
        intent.putExtra("bundle", bundle);
        f5.c(intent, this.mContext);
    }

    public final void t(List list, VideoInfo videoInfo, BaseViewHolder baseViewHolder, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoInfo.SerialListBean serialListBean = (VideoInfo.SerialListBean) list.get(i);
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(serialListBean.getVideoId().intValue(), serialListBean.getSourceId(), serialListBean.getSerialId().intValue(), serialListBean.getTitle(), true).setShortVideo(PlayDetailDataManger.isShortVideo(serialListBean.getVideoId() + ""))).build(), this.mContext);
        hb0.markTrackThree("vd_ott_search_result_click", "keyword", this.o, "video_id", videoInfo.getVideoId(), TranSearchIndexablesContract.TranBaseColumns.COLUMN_RANK, Integer.valueOf(baseViewHolder.getAdapterPosition()));
    }

    public final void u(List list, OnlineSearchSerialAdapter onlineSearchSerialAdapter, VideoInfo videoInfo, BaseViewHolder baseViewHolder, BaseQuickAdapter baseQuickAdapter, View view, int i) {
        VideoInfo.SerialListBean serialListBean = (VideoInfo.SerialListBean) list.get(i);
        if (!onlineSearchSerialAdapter.g() || i != 2) {
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(serialListBean.getVideoId().intValue(), serialListBean.getSourceId(), serialListBean.getSerialId().intValue(), serialListBean.getTitle(), true).setShortVideo(PlayDetailDataManger.isShortVideo(serialListBean.getVideoId() + ""))).build(), this.mContext);
            hb0.markTrackThree("vd_ott_search_result_click", "keyword", this.o, "video_id", videoInfo.getVideoId(), TranSearchIndexablesContract.TranBaseColumns.COLUMN_RANK, Integer.valueOf(baseViewHolder.getAdapterPosition()));
            return;
        }
        Intent intent = new Intent();
        intent.setAction("com.transsion.onlinevideo.search.OnlineVideoSerialsActivity");
        intent.setPackage(Utils.a().getPackageName());
        Bundle bundle = new Bundle();
        bundle.putString("serial_title", videoInfo.getTitle());
        bundle.putInt("serial_type", videoInfo.getCategory().intValue());
        bundle.putParcelableArrayList("serial_list", new ArrayList<>(videoInfo.getSerialList()));
        intent.putExtra("bundle", bundle);
        f5.c(intent, this.mContext);
    }

    public void v(String str) {
        this.o = str;
    }

    public final void w(BaseViewHolder baseViewHolder, VideoInfo.SerialListBean serialListBean, VideoInfo videoInfo) {
        if (serialListBean == null) {
            return;
        }
        baseViewHolder.itemView.findViewById(R.id.iv_cover).setOnClickListener(new a(serialListBean));
        baseViewHolder.itemView.findViewById(R.id.ll_video_content).setOnClickListener(new b(serialListBean, videoInfo));
    }
}
