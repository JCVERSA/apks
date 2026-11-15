package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.MediaBean;
import com.transsion.dbdata.beans.onlinevideo.RecommendResultBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.SimpleMediaBean;
import com.transsion.dbdata.beans.onlinevideo.TypeBean;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.playercommon.vishaapis.onlinevideo.RecommendManager;
import defpackage.at7;
import defpackage.hb0;
import defpackage.pp3;
import defpackage.y06;

public class RecommendTypeBeanAdapter extends BaseQuickAdapter<TypeBean, BaseViewHolder> {
    public boolean o;
    public boolean p;
    public String q;

    public RecommendTypeBeanAdapter() {
        super(R.layout.media_item);
        this.q = "";
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, TypeBean typeBean) {
        Object obj;
        z = false;
        boolean z = false;
        if (typeBean instanceof MediaBean) {
            MediaBean mediaBean = (MediaBean) typeBean;
            baseViewHolder.setText(R.id.tv_media_title, mediaBean.getTitle());
            int i = R.id.iv_vip;
            if (pp3.L && mediaBean.showVipLogo()) {
                z = true;
            }
            baseViewHolder.setVisible(i, z);
            baseViewHolder.setText(R.id.iv_serial_tag, at7.a(mediaBean.getSerial_count(), mediaBean.getFinish_status()));
            Glide.with(this.mContext).asBitmap().load2(this.o ? mediaBean.getCover_x() : mediaBean.getCover_y()).placeholder(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover));
            return;
        }
        if (typeBean instanceof SimpleMediaBean) {
            SimpleMediaBean simpleMediaBean = (SimpleMediaBean) typeBean;
            baseViewHolder.setText(R.id.tv_media_title, simpleMediaBean.title);
            baseViewHolder.setVisible(R.id.iv_vip, pp3.L && simpleMediaBean.showVipLogo());
            Glide.with(this.mContext).asBitmap().load2(this.o ? simpleMediaBean.imgX : simpleMediaBean.imgY).placeholder(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).error(this.o ? R.drawable.ic_video_horizontal_placeholder : R.drawable.ic_online_cover_default).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_media_cover));
            if (simpleMediaBean.tag != 1 || (obj = simpleMediaBean.arg1) == null) {
                return;
            }
            for (RecommendResultBean.MangoResult.Result.Imps imps : (RecommendResultBean.MangoResult.Result.Imps[]) obj) {
                RecommendManager.postRecommendData(imps.url, imps.method, imps.data);
            }
        }
    }

    public void c(Context context, int i) {
        Object obj;
        if (i >= getData().size()) {
            return;
        }
        TypeBean typeBean = getData().get(i);
        if (typeBean instanceof SimpleMediaBean) {
            SimpleMediaBean simpleMediaBean = (SimpleMediaBean) typeBean;
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(0L, simpleMediaBean.serialId, simpleMediaBean.title, 1, 1)).withMarkParam("vd_ott_detail_related_cl", 1).build(), context);
            y06.b(simpleMediaBean.id, simpleMediaBean.serialId, i, hb0.checkPayType(simpleMediaBean.isPay), this.q);
            if (simpleMediaBean.tag != 1 || (obj = simpleMediaBean.arg2) == null) {
                return;
            }
            for (RecommendResultBean.MangoResult.Result.Clks clks : (RecommendResultBean.MangoResult.Result.Clks[]) obj) {
                RecommendManager.postRecommendData(clks.url, clks.method, clks.data);
            }
            return;
        }
        if (typeBean instanceof MediaBean) {
            MediaBean mediaBean = (MediaBean) typeBean;
            RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(0L, mediaBean.getId() + "", mediaBean.getTitle(), 2, 1)).withMarkParam("vd_ott_detail_related_cl", 1).build(), context);
            y06.b(mediaBean.getId() + "", mediaBean.getId() + "", i, hb0.checkPayType(mediaBean.getPay_type().intValue()), this.q);
        }
    }

    public void d(boolean z) {
        this.p = z;
    }

    public void g(boolean z) {
        this.o = z;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (this.o) {
            return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(this.p ? R.layout.adapter_topicdetail_hor : R.layout.media_horizontal_item, viewGroup, false));
        }
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(this.p ? R.layout.adapter_topicdetail_ver : R.layout.media_item, viewGroup, false));
    }
}
