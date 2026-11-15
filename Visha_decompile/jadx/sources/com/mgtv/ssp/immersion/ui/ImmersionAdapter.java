package com.mgtv.ssp.immersion.ui;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.BaseHolder;
import com.mgtv.ssp.adapter.BaseVideoAdapter;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.widget.ImmerCoverView;
import com.mgtv.thirdsdk.playcore.utils.e;
import java.util.List;

public class ImmersionAdapter extends BaseVideoAdapter {

    public static class VideoHolder extends BaseHolder {
        public VideoInfoBean a;
        public ImageView b;
        public ImmerCoverView c;
        public int d;
        public FrameLayout g;
        public TextView h;
        public TextView i;
        public TextView j;
        public TextView k;

        public VideoHolder(View view) {
            super(view);
            ImmerCoverView immerCoverView = (ImmerCoverView) view.findViewById(R.id.tiktok_View);
            this.c = immerCoverView;
            this.b = (ImageView) immerCoverView.findViewById(R.id.iv_thumb);
            this.g = (FrameLayout) view.findViewById(R.id.container);
            this.h = (TextView) this.c.findViewById(R.id.tv_ugc_name);
            this.i = (TextView) this.c.findViewById(R.id.tv_title);
            this.j = (TextView) this.c.findViewById(R.id.tv_des);
            this.k = (TextView) this.c.findViewById(R.id.status_btn);
            view.setTag(this);
        }
    }

    public ImmersionAdapter(List<VideoBean> list) {
        super(list);
    }

    @Override
    public void d(final int i) {
        super.d(i);
        e.a(new Runnable() {
            @Override
            public void run() {
                try {
                    if (((BaseVideoAdapter) ImmersionAdapter.this).d != null) {
                        ((BaseVideoAdapter) ImmersionAdapter.this).d.remove(i);
                        ImmersionAdapter.this.notifyItemRemoved(i);
                    }
                } catch (Throwable unused) {
                }
            }
        }, 10L);
    }

    @Override
    public void e(int i) {
        d(i);
    }

    @Override
    public int getItemCount() {
        return this.d.size();
    }

    @Override
    public int a() {
        return R.layout.item_immer_ad_layout;
    }

    @Override
    public BaseHolder b(ViewGroup viewGroup, int i) {
        return new VideoHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.mgplayer_immersion_item, viewGroup, false));
    }

    @Override
    public void a(BaseHolder baseHolder, int i) {
        if (baseHolder instanceof VideoHolder) {
            a(baseHolder, i, this.d.get(i));
        }
    }

    private void a(BaseHolder baseHolder, int i, VideoBean videoBean) {
        VideoInfoBean video = videoBean.getVideo();
        if (video != null && (baseHolder instanceof VideoHolder)) {
            VideoHolder videoHolder = (VideoHolder) baseHolder;
            ImmerCoverView immerCoverView = videoHolder.c;
            if (immerCoverView != null) {
                immerCoverView.setVideoInfo(video);
                videoHolder.c.b();
            }
            videoHolder.a = video;
            videoHolder.d = i;
            String ugcName = video.getUgcName();
            String title = video.getTitle();
            String subTitle = video.getSubTitle();
            if (TextUtils.isEmpty(ugcName)) {
                videoHolder.h.setVisibility(8);
            } else {
                videoHolder.h.setVisibility(0);
                videoHolder.h.setText(ugcName);
            }
            if (TextUtils.isEmpty(title)) {
                videoHolder.i.setVisibility(8);
            } else {
                videoHolder.i.setVisibility(0);
                videoHolder.i.setText(title);
            }
            if (TextUtils.isEmpty(subTitle)) {
                videoHolder.j.setVisibility(8);
            } else {
                videoHolder.j.setVisibility(0);
                videoHolder.j.setText(subTitle);
            }
            baseHolder.e = i;
        }
    }
}
