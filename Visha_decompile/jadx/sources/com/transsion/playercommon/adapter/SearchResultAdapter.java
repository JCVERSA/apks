package com.transsion.playercommon.adapter;

import android.content.Context;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import com.alibaba.android.arouter.utils.Consts;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.SearchBean;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.playercommon.R;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.widgets.MusicLottieAnimationView;
import defpackage.ao;
import defpackage.lpb;
import defpackage.tpb;
import defpackage.wna;
import defpackage.z7c;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class SearchResultAdapter extends BaseQuickAdapter<SearchBean, BaseViewHolder> {
    public static String t;
    public static MediaItem u;
    public final int o;
    public final int p;
    public boolean q;
    public String r;
    public SparseIntArray s;

    /* JADX WARN: Illegal instructions before constructor call */
    public SearchResultAdapter(Context context) {
        int i = R.layout.rv_item_folder_list;
        super(i);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.o = typedValue.data;
        this.p = ContextCompat.getColor(context, R.color.os_text_primary_color);
        addItemType(1, i);
        addItemType(2, R.layout.rv_item_search_video_list);
        addItemType(3, R.layout.rv_item_search_audio_list);
    }

    private int getLayoutId(int i) {
        return this.s.get(i, -404);
    }

    private SpannableString h(String str) {
        SpannableString spannableString = new SpannableString(str);
        try {
            if (this.r.contains(Consts.DOT)) {
                this.r = this.r.replace(Consts.DOT, "\\.");
            }
            Matcher matcher = Pattern.compile(this.r.toLowerCase()).matcher(new SpannableString(str.toLowerCase()));
            while (matcher.find()) {
                spannableString.setSpan(new ForegroundColorSpan(this.o), matcher.start(), matcher.end(), 18);
            }
        } catch (Exception e) {
            Log.e(BaseQuickAdapter.TAG, "searchTextHighlight " + e);
        }
        return spannableString;
    }

    public void addItemType(int i, int i2) {
        if (this.s == null) {
            this.s = new SparseIntArray();
        }
        this.s.put(i, i2);
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, SearchBean searchBean) {
        int itemType = searchBean.getItemType();
        baseViewHolder.itemView.setTag(searchBean);
        if (itemType == 1) {
            c(baseViewHolder, searchBean);
        } else if (itemType == 2) {
            g(baseViewHolder, searchBean);
        } else {
            if (itemType != 3) {
                return;
            }
            d(baseViewHolder, searchBean);
        }
    }

    public final void c(BaseViewHolder baseViewHolder, SearchBean searchBean) {
        baseViewHolder.setText(R.id.tv_main_fragment_item, searchBean.getMediaBucket().parentName);
    }

    public final void d(BaseViewHolder baseViewHolder, SearchBean searchBean) {
        AudioItem audioItem = (AudioItem) searchBean.getMediaItem();
        BaseViewHolder text = baseViewHolder.setText(R.id.tv_item_name, h(audioItem.displayName)).setText(R.id.tv_item_artist, audioItem.artistName).setText(R.id.tv_item_duration, wna.c(audioItem.duration));
        int i = R.id.iv_item_more;
        text.setGone(i, true);
        baseViewHolder.setGone(R.id.iv_farvorited, ao.U().c0(false, audioItem));
        baseViewHolder.setGone(R.id.iv_mv_tag, searchBean.getMediaItem().isMusicVideo);
        String str = audioItem.data;
        MusicLottieAnimationView.bindPlayingIndicator((MusicLottieAnimationView) baseViewHolder.getView(R.id.lottie_layer_view), this.o, str != null && str.equals(t));
        baseViewHolder.addOnClickListener(i);
    }

    public final void g(BaseViewHolder baseViewHolder, SearchBean searchBean) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item);
        MediaItem mediaItem = searchBean.getMediaItem();
        baseViewHolder.setText(R.id.tv_main_fragment_item_size, Formatter.formatFileSize(this.mContext, mediaItem.size));
        baseViewHolder.setText(R.id.tv_main_fragment_item, h(mediaItem.displayName));
        TextView textView = (TextView) baseViewHolder.getView(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        baseViewHolder.addOnClickListener(R.id.iv_bucket_fragment_item_more);
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), imageView);
        baseViewHolder.setGone(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
        baseViewHolder.getView(R.id.lottie_layer).setVisibility(searchBean.getMediaItem() != null && searchBean.getMediaItem().equals(u) ? 0 : 8);
        if (this.q) {
            k(baseViewHolder, mediaItem, imageView);
        }
    }

    @Override
    public int getItemViewType(int i) {
        return getItem(i).getItemType();
    }

    public void i(boolean z) {
        this.q = z;
    }

    public void j(String str) {
        this.r = str;
    }

    public final void k(BaseViewHolder baseViewHolder, MediaItem mediaItem, ImageView imageView) {
        boolean z = false;
        baseViewHolder.setGone(R.id.iv_bucket_fragment_item_more, false);
        View view = baseViewHolder.itemView;
        int i = R.id.iv_bucket_fragment_checkBox;
        CheckBox checkBox = (CheckBox) view.findViewById(i);
        checkBox.setVisibility(0);
        baseViewHolder.addOnClickListener(i);
        if (!lpb.i(mediaItem) || ConvertingTaskManager.j().o(mediaItem) || (!ConvertingTaskManager.j().p(mediaItem) && ConvertingTaskManager.j().q())) {
            z = true;
        }
        imageView.setAlpha(z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item, z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item_size, z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item_duration, z ? 0.4f : 1.0f);
        checkBox.setAlpha(z ? 0.4f : 1.0f);
        checkBox.setClickable(!z);
        checkBox.setChecked(ConvertingTaskManager.j().p(mediaItem));
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(viewGroup, getLayoutId(i));
    }
}
