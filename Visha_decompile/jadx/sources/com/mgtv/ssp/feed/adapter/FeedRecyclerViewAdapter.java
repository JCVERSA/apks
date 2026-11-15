package com.mgtv.ssp.feed.adapter;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.mgtv.ssp.R;
import com.mgtv.ssp.adapter.BaseHolder;
import com.mgtv.ssp.adapter.BaseVideoAdapter;
import com.mgtv.ssp.adapter.listener.OnItemChildClickListener;
import com.mgtv.ssp.adapter.listener.a;
import com.mgtv.ssp.bean.VideoBean;
import com.mgtv.ssp.bean.VideoInfoBean;
import com.mgtv.ssp.widget.CoverView;
import com.mgtv.thirdsdk.playcore.utils.c;
import java.util.List;

public class FeedRecyclerViewAdapter extends BaseVideoAdapter {
    private OnItemChildClickListener l;
    private a m;
    private String n;

    public class VideoHolder extends BaseHolder implements View.OnClickListener {
        public FrameLayout a;
        public RelativeLayout b;
        public TextView c;
        public ImageView d;
        public CoverView g;
        public TextView h;
        public TextView i;
        public TextView j;
        public ImageView k;
        public TextView l;
        public TextView m;
        public FrameLayout n;

        public VideoHolder(View view) {
            super(view);
            this.a = (FrameLayout) view.findViewById(R.id.player_container);
            CoverView coverView = (CoverView) view.findViewById(R.id.prepare_view);
            this.g = coverView;
            this.c = (TextView) coverView.findViewById(R.id.tv_title);
            this.l = (TextView) this.g.findViewById(R.id.tv_time);
            this.d = (ImageView) this.g.findViewById(R.id.thumb);
            this.j = (TextView) this.g.findViewById(R.id.status_btn);
            this.b = (RelativeLayout) view.findViewById(R.id.layout_bottom);
            this.h = (TextView) view.findViewById(R.id.title_tx_frist);
            this.i = (TextView) view.findViewById(R.id.title_tx_second);
            this.k = (ImageView) view.findViewById(R.id.image_small);
            this.m = (TextView) view.findViewById(R.id.to_detail);
            this.n = (FrameLayout) view.findViewById(R.id.three_dd);
            if (this.g != null && FeedRecyclerViewAdapter.this.l != null) {
                this.g.setOnClickListener(this);
            }
            view.setTag(this);
        }

        @Override
        public void onClick(View view) {
            if (view.getId() != R.id.prepare_view || FeedRecyclerViewAdapter.this.l == null) {
                return;
            }
            FeedRecyclerViewAdapter.this.l.onItemChildClick(this.e);
        }
    }

    public FeedRecyclerViewAdapter(List<VideoBean> list) {
        super(list);
        this.n = "FeedRecyclerViewAdapter";
    }

    @Override
    public BaseHolder b(ViewGroup viewGroup, int i) {
        return new VideoHolder(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_video, viewGroup, false));
    }

    @Override
    public int a() {
        return R.layout.item_feed_ad_layout;
    }

    public void b(VideoInfoBean videoInfoBean) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.b(videoInfoBean);
        }
    }

    @Override
    public void a(BaseHolder baseHolder, int i) {
        final VideoInfoBean video = this.d.get(i).getVideo();
        if (baseHolder instanceof VideoHolder) {
            VideoHolder videoHolder = (VideoHolder) baseHolder;
            Glide.with(videoHolder.a.getContext()).load2(video.getImgX()).placeholder(android.R.color.darker_gray).into(videoHolder.d);
            if (!TextUtils.isEmpty(video.getIntactImgY())) {
                Glide.with(videoHolder.a.getContext()).load2(video.getIntactImgY()).placeholder(android.R.color.darker_gray).into(videoHolder.k);
            } else if (!TextUtils.isEmpty(video.getIntactImgX())) {
                Glide.with(videoHolder.a.getContext()).load2(video.getIntactImgX()).placeholder(android.R.color.darker_gray).into(videoHolder.k);
            }
            videoHolder.c.setText(video.getTitle());
            if (TextUtils.isEmpty(video.getIntactImgY()) && TextUtils.isEmpty(video.getIntactImgX()) && TextUtils.isEmpty(video.getIntactTitle()) && TextUtils.isEmpty(video.getTitle())) {
                videoHolder.b.setVisibility(8);
            } else {
                videoHolder.b.setVisibility(0);
                if (TextUtils.isEmpty(video.getIntactTitle())) {
                    if (!TextUtils.isEmpty(video.getTitle())) {
                        videoHolder.h.setText(video.getTitle());
                    }
                } else {
                    videoHolder.h.setText(video.getIntactTitle());
                }
                if (!TextUtils.isEmpty(video.getYear()) && !TextUtils.isEmpty(video.getShortType())) {
                    videoHolder.i.setText(video.getYear() + "·" + video.getShortType());
                } else if (!TextUtils.isEmpty(video.getYear()) && TextUtils.isEmpty(video.getShortType())) {
                    videoHolder.i.setText(video.getYear());
                } else if (TextUtils.isEmpty(video.getYear()) && !TextUtils.isEmpty(video.getShortType())) {
                    videoHolder.i.setText(video.getShortType());
                } else {
                    videoHolder.i.setText("");
                }
            }
            int duration = video.getDuration();
            if (duration > 0) {
                videoHolder.l.setText(c.a(duration * 1000));
            }
            baseHolder.e = i;
            if (TextUtils.isEmpty(video.getIntactVcode())) {
                videoHolder.m.setVisibility(8);
            } else {
                videoHolder.m.setVisibility(0);
                videoHolder.m.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        FeedRecyclerViewAdapter.this.a(video);
                    }
                });
            }
            if (TextUtils.isEmpty(video.getReportH5())) {
                videoHolder.n.setVisibility(4);
            } else {
                videoHolder.n.setVisibility(0);
                videoHolder.n.setOnClickListener(new View.OnClickListener() {
                    @Override
                    public void onClick(View view) {
                        FeedRecyclerViewAdapter.this.b(video);
                    }
                });
            }
        }
    }

    @Override
    public void b() {
        this.e.clear();
    }

    public void a(VideoInfoBean videoInfoBean) {
        a aVar = this.m;
        if (aVar != null) {
            aVar.a(videoInfoBean);
        }
    }

    public void a(OnItemChildClickListener onItemChildClickListener) {
        this.l = onItemChildClickListener;
    }

    public void a(a aVar) {
        this.m = aVar;
    }

    @Override
    public void a(RecyclerView recyclerView, int i) {
        super.a(recyclerView, i);
    }
}
