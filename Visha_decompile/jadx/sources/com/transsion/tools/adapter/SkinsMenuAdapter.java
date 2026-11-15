package com.transsion.tools.adapter;

import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.tools.R;
import com.transsion.utils.a;
import defpackage.b39;
import defpackage.vha;
import defpackage.w6c;

public class SkinsMenuAdapter extends BaseQuickAdapter<SkinsMenu, BaseViewHolder> {
    public static final RequestOptions t = new RequestOptions().format(DecodeFormat.PREFER_ARGB_8888).diskCacheStrategy(DiskCacheStrategy.RESOURCE).dontAnimate();
    public final int o;
    public final int p;
    public final ThemeData q;
    public boolean r;
    public boolean s;

    public SkinsMenuAdapter(Context context) {
        super(R.layout.video_skins_menu_item);
        this.s = !b39.b(context);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.o = typedValue.data;
        this.p = context.getColor(R.color.os_text_primary_color);
        this.q = (ThemeData) w6c.f(context, "skin_theme");
        this.r = w6c.c(context, "show_model_theme_tip", true);
    }

    private static void b(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            Glide.with(imageView.getContext().getApplicationContext()).clear(imageView);
            imageView.setImageDrawable(null);
        } catch (Exception e) {
            Log.e("SkinsMenuAdapter", "clearGlideRequest error: " + e);
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SkinsMenu skinsMenu) {
        ThemeData themeData = this.q;
        if (themeData != null) {
            skinsMenu.isSelected = skinsMenu.name.equals(themeData.name);
        } else if (skinsMenu.name.equals(this.mContext.getResources().getString(R.string.default_skin))) {
            skinsMenu.isSelected = true;
        }
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_skin_menu);
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.getView(R.id.fl_skin);
        ViewGroup.LayoutParams layoutParams = roundFrameLayout.getLayoutParams();
        layoutParams.height = a.d(this.mContext, this.s ? 206.0f : 242.0f);
        roundFrameLayout.setLayoutParams(layoutParams);
        if (skinsMenu.thumbnailPath != null) {
            Glide.with(imageView).asBitmap().load2(skinsMenu.thumbnailPath).placeholder(ResourcesCompat.getDrawable(this.mContext.getResources(), com.transsion.magicvideo.R.drawable.ic_theme_placeholder, this.mContext.getTheme())).dontAnimate().into(imageView);
        } else if (skinsMenu.imageMenu != 0) {
            Glide.with(imageView).load2(Integer.valueOf(skinsMenu.imageMenu)).apply((BaseRequestOptions<?>) t).into(imageView);
        } else {
            b(imageView);
        }
        if (skinsMenu.isSelected) {
            roundFrameLayout.setStrokeColor(this.o);
            roundFrameLayout.setStrokeWidth(a.d(this.mContext, 3.0f));
            roundFrameLayout.setContentDescription(skinsMenu.name + this.mContext.getResources().getString(R.string.talkback_selected));
        } else {
            roundFrameLayout.setStrokeColor(this.mContext.getResources().getColor(R.color.unselected_skins_menu_stroke_color, this.mContext.getTheme()));
            roundFrameLayout.setStrokeWidth(1.0f);
            roundFrameLayout.setContentDescription(skinsMenu.name + this.mContext.getResources().getString(R.string.talkback_unselected));
        }
        boolean zEquals = skinsMenu.name.equals(this.mContext.getResources().getString(R.string.local_skin_model));
        baseViewHolder.getView(R.id.tv_theme_new).setVisibility(((zEquals && this.r) || vha.x(this.mContext, skinsMenu.name)) ? 0 : 8);
        baseViewHolder.getView(R.id.iv_ad_theme).setVisibility(zEquals ? 0 : 8);
        baseViewHolder.getView(R.id.iv_theme_tab).setVisibility(zEquals ? 0 : 8);
        int i = R.id.iv_skin_menu_name;
        baseViewHolder.setText(i, zEquals ? skinsMenu.showName : skinsMenu.name);
        baseViewHolder.setTextColor(i, skinsMenu.isSelected ? this.o : this.p);
        baseViewHolder.itemView.setTag(skinsMenu);
    }

    public boolean g() {
        return this.r;
    }

    @Override
    public void onViewRecycled(BaseViewHolder baseViewHolder) {
        super.onViewRecycled(baseViewHolder);
        if (baseViewHolder == null) {
            return;
        }
        b((ImageView) baseViewHolder.getView(R.id.iv_skin_menu));
    }

    public void i(boolean z) {
        this.r = z;
        notifyDataSetChanged();
    }
}
