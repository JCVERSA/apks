package com.transsion.tools.adapter;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.SkinsMenu;
import com.transsion.dbdata.beans.ThemeData;
import com.transsion.glidetransformation.CropTransformation;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.tools.R;
import defpackage.w6c;

public class ThemePreviewAdapter extends BaseQuickAdapter<SkinsMenu, BaseViewHolder> {
    public static final int q = R.id.iv_preview_skin;
    public final ThemeData o;
    public int p;

    public class a implements ViewTreeObserver.OnPreDrawListener {
        public final RoundFrameLayout b;
        public final ImageView c;
        public final String d;
        public final int e;

        public a(RoundFrameLayout roundFrameLayout, ImageView imageView, String str, int i) {
            this.b = roundFrameLayout;
            this.c = imageView;
            this.d = str;
            this.e = i;
        }

        @Override
        public boolean onPreDraw() {
            ThemePreviewAdapter.u(this.b);
            if (!ThemePreviewAdapter.i(this.b.getContext()) || this.b.getWidth() <= 0 || this.b.getHeight() <= 0) {
                return true;
            }
            ThemePreviewAdapter.this.s(this.b, this.c, this.d, this.e);
            return true;
        }
    }

    public ThemePreviewAdapter(Context context) {
        super(R.layout.item_theme_preview);
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, new TypedValue(), true);
        this.o = (ThemeData) w6c.f(context, "skin_theme");
    }

    public static void g(ImageView imageView) {
        if (imageView == null) {
            return;
        }
        try {
            Glide.with(imageView.getContext().getApplicationContext()).clear(imageView);
            imageView.setImageDrawable(null);
        } catch (Exception e) {
            Log.e("ThemePreviewAdapter", "clearGlideRequest error: " + e);
        }
    }

    public static boolean i(Context context) {
        if (context == null) {
            return false;
        }
        if (!(context instanceof Activity)) {
            return true;
        }
        Activity activity = (Activity) context;
        return (activity.isDestroyed() || activity.isFinishing()) ? false : true;
    }

    public static void u(View view) {
        if (view == null) {
            return;
        }
        int i = q;
        Object tag = view.getTag(i);
        if (tag instanceof ViewTreeObserver.OnPreDrawListener) {
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            if (viewTreeObserver.isAlive()) {
                viewTreeObserver.removeOnPreDrawListener((ViewTreeObserver.OnPreDrawListener) tag);
            }
            view.setTag(i, null);
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SkinsMenu skinsMenu) {
        boolean zEquals;
        ThemeData themeData = this.o;
        if (themeData == null) {
            zEquals = skinsMenu.name.equals(this.mContext.getResources().getString(R.string.default_skin));
        } else {
            zEquals = skinsMenu.name.equals(themeData.name);
        }
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.getView(R.id.ll_bucket_fragment_item);
        ImageView imageView = (ImageView) baseViewHolder.getView(R.id.iv_preview_skin);
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        baseViewHolder.getView(R.id.iv_select_frame).setSelected(zEquals);
        baseViewHolder.getView(R.id.iv_theme_tab).setVisibility(skinsMenu.name.equals(this.mContext.getResources().getString(R.string.local_skin_model)) ? 0 : 8);
        int adapterPosition = baseViewHolder.getAdapterPosition();
        if (adapterPosition == -1) {
            adapterPosition = baseViewHolder.getLayoutPosition();
        }
        if (skinsMenu.backgroundType != 0) {
            u(roundFrameLayout);
            g(imageView);
            imageView.setImageResource(skinsMenu.backgroundType == 1 ? R.color.white : R.color.black);
            return;
        }
        if (!r(adapterPosition)) {
            u(roundFrameLayout);
            g(imageView);
            imageView.setImageResource(R.drawable.os_window_background);
            return;
        }
        String str = skinsMenu.detailPath;
        if (str != null) {
            s(roundFrameLayout, imageView, str, 0);
            return;
        }
        int i = skinsMenu.imagePreview;
        if (i != 0) {
            s(roundFrameLayout, imageView, null, i);
        } else {
            g(imageView);
            imageView.setImageResource(R.drawable.os_window_background);
        }
    }

    public final boolean r(int i) {
        return i != -1 && Math.abs(i - this.p) <= 1;
    }

    public final void s(RoundFrameLayout roundFrameLayout, ImageView imageView, String str, int i) {
        u(roundFrameLayout);
        if (i(roundFrameLayout.getContext())) {
            int width = roundFrameLayout.getWidth();
            int height = roundFrameLayout.getHeight();
            if (width <= 0 || height <= 0) {
                width = imageView.getWidth();
                height = imageView.getHeight();
            }
            if (width <= 0 || height <= 0) {
                ViewTreeObserver.OnPreDrawListener aVar = new a(roundFrameLayout, imageView, str, i);
                roundFrameLayout.setTag(q, aVar);
                roundFrameLayout.getViewTreeObserver().addOnPreDrawListener(aVar);
            } else if (i(imageView.getContext())) {
                RequestOptions requestOptionsTransform = new RequestOptions().placeholder(R.drawable.os_window_background).transform(new CropTransformation(width, height));
                if (str != null) {
                    Glide.with(imageView).asBitmap().load2(str).apply((BaseRequestOptions<?>) requestOptionsTransform).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                } else {
                    Glide.with(imageView).load2(Integer.valueOf(i)).apply((BaseRequestOptions<?>) requestOptionsTransform).diskCacheStrategy(DiskCacheStrategy.ALL).into(imageView);
                }
            }
        }
    }

    @Override
    public void onViewRecycled(BaseViewHolder baseViewHolder) {
        super.onViewRecycled(baseViewHolder);
        if (baseViewHolder == null || baseViewHolder.itemView == null) {
            return;
        }
        u((RoundFrameLayout) baseViewHolder.getView(R.id.ll_bucket_fragment_item));
        g((ImageView) baseViewHolder.getView(R.id.iv_preview_skin));
    }

    public void v(int i) {
        int i2;
        if (i >= 0 && (i2 = this.p) != i) {
            this.p = i;
            int iMax = Math.max(0, Math.min(i2, i) - 1);
            int iMin = Math.min(Math.max(getItemCount() - 1, 0), Math.max(i2, i) + 1);
            if (iMax > iMin || getItemCount() <= 0) {
                return;
            }
            notifyItemRangeChanged(iMax, (iMin - iMax) + 1);
        }
    }
}
