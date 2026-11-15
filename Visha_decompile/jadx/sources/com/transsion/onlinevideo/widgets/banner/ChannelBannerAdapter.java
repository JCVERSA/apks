package com.transsion.onlinevideo.widgets.banner;

import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.widget.ImageView;
import android.widget.TextView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.transsion.dbdata.beans.appconfig.BannerBean;
import com.transsion.onlinevideo.R;
import com.transsion.onlinevideo.home.OnlineHomeFragment;
import com.zhpan.bannerview.BaseBannerAdapter;
import com.zhpan.bannerview.BaseViewHolder;
import defpackage.c06;
import defpackage.h27;

public class ChannelBannerAdapter extends BaseBannerAdapter<BannerBean> {
    public final Context r;

    public class a implements RequestListener {
        public final long b;

        public a(long j) {
            this.b = j;
        }

        @Override
        public boolean onResourceReady(Bitmap bitmap, Object obj, Target target, DataSource dataSource, boolean z) {
            if (dataSource == DataSource.REMOTE) {
                c06.o(System.currentTimeMillis() - this.b, "banner");
            }
            if (!OnlineHomeFragment.bTopBarChanged) {
                h27.c().e(1126, new Object[0]);
                OnlineHomeFragment.bTopBarChanged = true;
            }
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            return false;
        }
    }

    public ChannelBannerAdapter(Context context) {
        this.r = context;
    }

    @Override
    public int getLayoutId(int i) {
        return R.layout.banner_image_item;
    }

    @Override
    public void c(BaseViewHolder baseViewHolder, BannerBean bannerBean, int i, int i2) {
        Glide.with(this.r).asBitmap().load2(bannerBean.getCover()).placeholder(R.drawable.ic_banner_placeholder).addListener(new a(System.currentTimeMillis())).into((ImageView) baseViewHolder.itemView.findViewById(R.id.iv_item));
        ((TextView) baseViewHolder.itemView.findViewById(R.id.banner_title)).setText(bannerBean.getTitle());
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.banner_description);
        if (TextUtils.isEmpty(bannerBean.getShortDescribe())) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(bannerBean.getShortDescribe());
        }
    }
}
