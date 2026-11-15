package com.transsion.onlinevideo.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.Thumbnails;
import com.transsion.dbdata.beans.onlinevideo.YoutubeData;
import com.transsion.onlinevideo.R;
import com.transsion.playercommon.router.RouterUtils;

public class YoutubeAdapter extends BaseQuickAdapter<YoutubeData.Results, BaseViewHolder> {
    public String o;

    public YoutubeAdapter() {
        super(R.layout.media_item);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, YoutubeData.Results results) {
        if (results != null) {
            baseViewHolder.setText(R.id.tv_title, results.getTitle());
            YoutubeData.Results.ChannelInfo channelInfo = results.getChannelInfo();
            ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_cover);
            if (channelInfo != null) {
                baseViewHolder.setText(R.id.tv_sec_title, channelInfo.getChannelName());
            }
            if (results.getThumbnails() == null || results.getThumbnails().size() <= 0) {
                return;
            }
            String url = "";
            int iIntValue = 0;
            for (Thumbnails thumbnails : results.getThumbnails()) {
                if (thumbnails != null && thumbnails.getWidth().intValue() > iIntValue) {
                    iIntValue = thumbnails.getWidth().intValue();
                    url = thumbnails.getUrl();
                }
            }
            Glide.with(baseViewHolder.itemView.getContext()).asBitmap().load2(url).placeholder(R.drawable.ic_feed_stream_placeholder).into(imageView);
        }
    }

    public void c(Context context, int i, boolean z) {
        String str;
        String url;
        if (i >= getData().size()) {
            return;
        }
        YoutubeData.Results results = getData().get(i);
        String url2 = "";
        if (results.getChannelInfo() != null) {
            String channelName = results.getChannelInfo().getChannelName();
            if (results.getChannelInfo().getThumbnails() == null || results.getChannelInfo().getThumbnails().size() <= 0) {
                str = channelName;
                url = "";
            } else {
                str = channelName;
                url = results.getChannelInfo().getThumbnails().get(0).getUrl();
            }
        } else {
            str = "";
            url = str;
        }
        if (results.getThumbnails() != null && results.getThumbnails().size() > 0) {
            url2 = results.getThumbnails().get(0).getUrl();
        }
        RouterUtils.route(new RouterBean.RouterBeanBuilder().withType(1).withParam(new RouterBean.RouterData(1, results.getSourceId(), results.getTitle(), str, url, url2)).withMarkParam("vd_ott_detail_related_cl", z ? 1 : 0).build(), context);
    }

    public void d(String str) {
        this.o = str;
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(LayoutInflater.from(this.mContext).inflate(R.layout.item_search_youtube, viewGroup, false));
    }
}
