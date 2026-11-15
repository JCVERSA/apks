package com.transsion.onlinevideo.widgets.banner;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.p004lifecycle.DefaultLifecycleObserver;
import androidx.p004lifecycle.LifecycleOwner;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.blankj.utilcode.util.LogUtils;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import com.transsion.dbdata.beans.onlinevideo.RouterBean;
import com.transsion.dbdata.beans.onlinevideo.TopicBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.web.VipWebActivity;
import com.transsion.playercommon.router.RouterUtils;
import com.transsion.vishaplayersdk.gsyplayer.GSYVideoManager;
import com.zhpan.bannerview.BannerViewPager;
import defpackage.c06;
import defpackage.d06;
import defpackage.f5;
import java.util.List;

public class ChannelBanner extends RelativeLayout implements DefaultLifecycleObserver {
    public BannerViewPager b;
    public LinearLayout c;
    public Context d;
    public ChannelBannerAdapter e;
    public TopicBean f;
    public ImageView g;
    public boolean h;
    public boolean i;
    public b j;
    public b k;

    public class a extends ViewPager2.OnPageChangeCallback {
        public a() {
        }

        @Override
        public void onPageScrollStateChanged(int i) {
            if (i != 0) {
                if (i == 1) {
                    ChannelBanner.this.start(false);
                }
            } else if (ChannelBanner.this.k != null) {
                ChannelBanner.this.k.a(ChannelBanner.this.getCurrentItem());
            } else {
                ChannelBanner.this.start(true);
            }
        }

        @Override
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override
        public void onPageSelected(int i) {
            int i2 = 0;
            while (true) {
                boolean z = true;
                if (i2 >= ChannelBanner.this.c.getChildCount()) {
                    break;
                }
                View childAt = ChannelBanner.this.c.getChildAt(i2);
                if (i2 != i) {
                    z = false;
                }
                childAt.setSelected(z);
                i2++;
            }
            if (i == ChannelBanner.this.c.getChildCount() - 1) {
                ChannelBanner channelBanner = ChannelBanner.this;
                channelBanner.h = true;
                channelBanner.b.setAutoPlay(false);
            }
            BannerBean bannerBean = ChannelBanner.this.f.getBannerBeanList().get(i);
            c06.f(bannerBean.getBannerId().intValue(), bannerBean.getSort().intValue(), ChannelBanner.this.f.getChannel_id().longValue(), "vd_ott_banner_show");
        }
    }

    public interface b {
        default void a(int i) {
        }

        default void b(BannerBean bannerBean, int i) {
        }
    }

    public ChannelBanner(Context context) {
        this(context, null);
    }

    public static void bannerClick(Context context, BannerBean bannerBean, int i, TopicBean topicBean) {
        String sourceId;
        int video_id;
        if (bannerBean == null || bannerBean.getTarget() == null) {
            RouterUtils.routeDefaultTarget(context);
            return;
        }
        if (bannerBean.getTarget().getType() == 6) {
            f5.c(VipWebActivity.I0(context, 1, "VIP", "vd_ott_vip_banner_cl"), context);
            return;
        }
        RouterBean target = bannerBean.getTarget();
        target.getParam().setFrom_card("vd_ott_banner_cl");
        if (target.getType() == 3) {
            target.setType(10);
        }
        RouterUtils.route(target, context);
        if (bannerBean.getTarget() == null || bannerBean.getTarget().getParam() == null) {
            sourceId = null;
            video_id = 0;
        } else {
            sourceId = bannerBean.getTarget().getParam().getSourceId();
            video_id = (int) bannerBean.getTarget().getParam().getVideo_id();
        }
        String str = sourceId;
        int i2 = video_id;
        d06.h(bannerBean.getTopicId().intValue(), bannerBean.getBannerId().intValue(), "banner", 0);
        c06.g(bannerBean.getBannerId().intValue(), bannerBean.getSort().intValue(), topicBean.getChannel_id().longValue(), topicBean.getTopic_id().longValue(), str, i2, "vd_ott_banner_cl");
    }

    public final void g(View view, int i) {
        b bVar = this.j;
        if (bVar != null) {
            bVar.b((BannerBean) this.b.getData().get(i), i);
        }
    }

    public int getCurrentItem() {
        return this.b.getCurrentItem();
    }

    public View getCurrentView() {
        ViewPager2 viewPager2 = (ViewPager2) this.b.getChildAt(0);
        try {
            RecyclerView.LayoutManager layoutManager = ((RecyclerView) viewPager2.getChildAt(0)).getLayoutManager();
            LogUtils.O("BannerView", "getCurrentView", layoutManager == null ? null : layoutManager.findViewByPosition(viewPager2.getCurrentItem()));
            if (layoutManager == null) {
                return null;
            }
            return layoutManager.findViewByPosition(viewPager2.getCurrentItem());
        } catch (Exception e) {
            LogUtils.m("BannerView", e.getMessage());
            return null;
        }
    }

    public final void h(View view) {
        boolean z = !this.i;
        this.i = z;
        this.g.setSelected(z);
        GSYVideoManager.instance().setNeedMute(this.i);
    }

    public void initBanner() {
        this.b.registerOnPageChangeCallback(new a());
    }

    public void initDots(List<BannerBean> list) {
        int size = list.size();
        if (size == 0) {
            return;
        }
        this.c.removeAllViews();
        for (int i = 0; i < size; i++) {
            ImageView imageView = new ImageView(this.d);
            imageView.setImageResource(R.drawable.banner_dot_image);
            imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            Resources resources = getResources();
            int i2 = R.dimen.download_guide_page_dot_width;
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(resources.getDimensionPixelOffset(i2), getResources().getDimensionPixelOffset(i2));
            if (i > 0) {
                layoutParams.setMarginStart(getResources().getDimensionPixelOffset(R.dimen.download_guide_page_dot_margin));
            }
            this.c.addView(imageView, layoutParams);
        }
        this.c.getChildAt(0).setSelected(true);
    }

    public void initView(Context context) {
        this.d = context;
        View viewInflate = View.inflate(context, R.layout.channel_banner, this);
        this.b = (BannerViewPager) viewInflate.findViewById(R.id.banner);
        this.c = (LinearLayout) viewInflate.findViewById(R.id.banner_dots);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.live_mute);
        this.g = imageView;
        imageView.setSelected(true);
        initBanner();
    }

    public boolean isMute() {
        return this.i;
    }

    @Override
    public void onDestroy(@NonNull LifecycleOwner lifecycleOwner) {
        this.b.onDestroy();
    }

    @Override
    public void onStart(@NonNull LifecycleOwner lifecycleOwner) {
        this.b.startLoop();
    }

    @Override
    public void onStop(@NonNull LifecycleOwner lifecycleOwner) {
        this.b.stopLoop();
    }

    public void setData(TopicBean topicBean) {
        this.f = topicBean;
        if (this.e == null) {
            ChannelBannerAdapter channelBannerAdapter = new ChannelBannerAdapter(this.d);
            this.e = channelBannerAdapter;
            this.b.setAdapter(channelBannerAdapter);
            this.b.setOnPageClickListener(new BannerViewPager.b() {
                @Override
                public final void a(View view, int i) {
                    this.a.g(view, i);
                }
            }).create(topicBean.getBannerBeanList());
        } else {
            this.b.refreshData(topicBean.getBannerBeanList());
        }
        initDots(topicBean.getBannerBeanList());
    }

    public void setListener(b bVar) {
        this.j = bVar;
    }

    public void setListener2(b bVar) {
        this.k = bVar;
    }

    public void setMute(boolean z) {
        this.i = z;
    }

    public void showMuteButton(boolean z) {
        showMuteButton(z, z);
    }

    public void start(boolean z) {
        if (this.h) {
            this.b.setAutoPlay(false);
            return;
        }
        if (!z) {
            this.b.setAutoPlay(false);
            this.b.stopLoop();
        } else {
            this.b.setAutoPlay(true);
            this.b.startLoop();
            BannerBean bannerBean = this.f.getBannerBeanList().get(0);
            c06.f(bannerBean.getBannerId().intValue(), bannerBean.getSort().intValue(), this.f.getChannel_id().longValue(), "vd_ott_banner_show");
        }
    }

    public ChannelBanner(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public void showMuteButton(boolean z, boolean z2) {
        this.g.setVisibility(z ? 0 : 8);
        this.g.setSelected(this.i);
        if (z && z2) {
            GSYVideoManager.instance().setNeedMute(this.i);
        }
        if (z) {
            this.g.setOnClickListener(new View.OnClickListener() {
                @Override
                public final void onClick(View view) {
                    this.b.h(view);
                }
            });
        }
    }

    public ChannelBanner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.i = true;
        initView(context);
    }
}
