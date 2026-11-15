package com.transsion.onlinevideo.widgets.topic;

import android.content.Context;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.ComplexLabelBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.widgets.VishaShimmerFrameLayout;
import com.transsion.playercommon.router.RouterUtils;
import defpackage.et7;
import defpackage.h27;
import defpackage.p06;
import defpackage.r16;

public class LabelViewHolder extends TopicBaseViewHolder implements h27.b {
    public RecyclerView r;
    public c s;
    public String t;
    public VishaShimmerFrameLayout u;
    public long v;

    public class a extends RecyclerView.OnScrollListener {
        public a() {
        }

        @Override
        public void onScrollStateChanged(RecyclerView recyclerView, int i) {
            if (i == 0) {
                p06.d0("vd_ott_label_sl");
            }
        }
    }

    public class b implements BaseQuickAdapter.OnItemClickListener {
        public final TopicBean b;

        public b(TopicBean topicBean) {
            this.b = topicBean;
        }

        @Override
        public void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i) {
            ComplexLabelBean complexLabelBean = this.b.getLabelBeanList().get(i);
            RouterBean.RouterData routerData = new RouterBean.RouterData();
            routerData.setTopic_id(complexLabelBean.getTopic_id());
            routerData.setTopic_name(complexLabelBean.getName());
            routerData.setData_type(this.b.getData_type().intValue());
            routerData.setSourceType(complexLabelBean.getTag_type());
            routerData.setChannel(complexLabelBean.getTag_id());
            routerData.setBottom_position(complexLabelBean.getSource_type());
            routerData.setLabelRal(complexLabelBean.getAggregation_tag());
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(2).withParam(routerData).withMarkParam("vd_ott_label_cl").build(), LabelViewHolder.this.itemView.getContext());
            et7.b(complexLabelBean.getTopic_id(), i, this.b.getChannel_id().longValue(), complexLabelBean.getName(), LabelViewHolder.this.t, this.b.getName());
        }
    }

    public class c extends BaseQuickAdapter {
        public Context o;

        public c(Context context) {
            super(R.layout.adapter_widget_label);
            this.o = context;
        }

        @Override
        public void convert(BaseViewHolder baseViewHolder, ComplexLabelBean complexLabelBean) {
            ((TextView) baseViewHolder.getView(R.id.label_textview)).setText(complexLabelBean.getName());
            if (!complexLabelBean.isSpacialType()) {
                baseViewHolder.setGone(R.id.label_imageview, false);
                return;
            }
            if (complexLabelBean.isHot()) {
                int i = R.id.label_imageview;
                baseViewHolder.setGone(i, true);
                baseViewHolder.setImageResource(i, R.drawable.ic_tag_hot);
            } else {
                if (!complexLabelBean.isNew()) {
                    baseViewHolder.setGone(R.id.label_imageview, false);
                    return;
                }
                int i2 = R.id.label_imageview;
                baseViewHolder.setGone(i2, true);
                baseViewHolder.setImageResource(i2, R.drawable.ic_tag_new);
            }
        }
    }

    public LabelViewHolder(View view) {
        super(view);
        this.v = 0L;
        this.r = (RecyclerView) view.findViewById(R.id.label_recycleView);
        this.u = (VishaShimmerFrameLayout) view.findViewById(R.id.label_content);
        LinearLayoutManager linearLayoutManager = new LinearLayoutManager(view.getContext());
        linearLayoutManager.setOrientation(0);
        this.r.setLayoutManager(linearLayoutManager);
        c cVar = new c(view.getContext());
        this.s = cVar;
        this.r.setAdapter(cVar);
        this.r.addOnScrollListener(new a());
    }

    @Override
    public void a(TopicBean topicBean) {
        this.v = topicBean.getTopic_id().longValue();
        r16.b(this.itemView, topicBean.getTopic_id().longValue(), topicBean.getName());
        this.s.setNewData(topicBean.getTypeList());
        this.s.setOnItemClickListener(new b(topicBean));
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        VishaShimmerFrameLayout vishaShimmerFrameLayout;
        if (i != 1084 || objArr == null || this.v != ((Long) objArr[0]).longValue() || (vishaShimmerFrameLayout = this.u) == null) {
            return;
        }
        vishaShimmerFrameLayout.postDelayed(new Runnable() {
            @Override
            public void run() {
                LabelViewHolder.this.u.setShimmer(null);
            }
        }, 1000L);
    }

    public void f(String str) {
        this.t = str;
    }
}
