package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.format.Formatter;
import android.util.Log;
import android.util.LruCache;
import android.util.Pair;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.content.res.ResourcesCompat;
import androidx.core.view.DragStartHelper;
import com.blankj.utilcode.util.ThreadUtils;
import com.bumptech.glide.Glide;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayListData;
import com.transsion.dbdata.utils.SortUtil;
import com.transsion.magicvideo.R;
import com.transsion.magicvideo.adapter.BucketDateAdapter;
import com.transsion.magicvideo.player.VideoPlayManager;
import com.transsion.mediationads.beans.AdMediaItem;
import com.transsion.playercommon.convert.ConvertingTaskManager;
import com.transsion.playercommon.core.MainApp;
import com.transsion.playercommon.widgets.RoundFrameLayout;
import com.transsion.preload.OptimizeListAdapter;
import com.transsion.utils.BaseConstant;
import defpackage.ao;
import defpackage.ig6;
import defpackage.lpb;
import defpackage.tpb;
import defpackage.wna;
import defpackage.z7c;
import defpackage.zdc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;
import java.util.stream.Collectors;

public class BucketDateAdapter extends OptimizeListAdapter<MediaItem, BaseViewHolder> {
    public int A;
    public boolean B;
    public BaseConstant.SCREEN_TYPE C;
    public int D;
    public int E;
    public int F;
    public int G;
    public Drawable H;
    public Drawable I;
    public Drawable J;
    public Drawable K;
    public MediaItem L;
    public boolean M;
    public boolean N;
    public b O;
    public final LruCache q;
    public int r;
    public ArrayList s;
    public int t;
    public boolean u;
    public boolean v;
    public Pair w;
    public a x;
    public c y;
    public int z;

    public interface a {
        void h(View view, int i, MediaItem mediaItem, boolean z, View view2);
    }

    public interface b {
        void b(int i);

        void c(boolean z);
    }

    public interface c {
        void d(boolean z);
    }

    public BucketDateAdapter() {
        super(R.layout.rv_item_fragment_video_list);
        this.q = new LruCache(300);
        this.s = new ArrayList();
        this.t = 1;
        this.L = new MediaItem();
        this.N = true;
    }

    public static boolean K(MediaItem mediaItem) {
        return !mediaItem.isTimeItem;
    }

    public static void M(TextView textView, long j, String str) {
        Object tag = textView.getTag(R.id.tv_main_fragment_item_size);
        if ((tag instanceof Long) && ((Long) tag).longValue() == j) {
            textView.setText(str);
        }
    }

    public final Drawable A() {
        Drawable drawable = this.K;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.main_fragment_placeholder, MainApp.f().getTheme());
        this.K = drawable2;
        return drawable2;
    }

    public final Drawable B() {
        Drawable drawable = this.H;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.ic_others_default_holder, MainApp.f().getTheme());
        this.H = drawable2;
        return drawable2;
    }

    public MediaItem C() {
        return this.L;
    }

    public ArrayList D() {
        return this.s;
    }

    public final Drawable E() {
        Drawable drawable = this.J;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.ic_subtitle_defalut_placeholder, MainApp.f().getTheme());
        this.J = drawable2;
        return drawable2;
    }

    public List F() {
        if (D() == null || D().size() == 0) {
            return null;
        }
        return (List) D().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return ((MediaItem) obj).isYoutubeUrl;
            }
        }).collect(Collectors.toList());
    }

    public boolean G(MediaItem mediaItem) {
        int iIndexOf = getData().indexOf(mediaItem) + 1;
        int size = getData().size();
        while (true) {
            int i = iIndexOf + 1;
            if (i > size || iIndexOf >= getData().size() || getData().get(iIndexOf).isTimeItem) {
                break;
            }
            if (!this.s.contains(getData().get(iIndexOf))) {
                return false;
            }
            iIndexOf = i;
        }
        return true;
    }

    public boolean H(MediaItem mediaItem) {
        int iF = zdc.f();
        MediaItem mediaItemC0 = VideoPlayManager.X().c0();
        return mediaItemC0 != null && ((mediaItem.equals(mediaItemC0) && VideoPlayManager.X().z0()) || (mediaItem.equals(mediaItemC0) && iF == zdc.a && PlayListData.getInstance().playMediaItem() != null));
    }

    public boolean I() {
        int i;
        return SortUtil.o() || (i = this.r) == 1 || i == 6;
    }

    public final boolean J(BaseViewHolder baseViewHolder, MediaItem mediaItem, View view, DragStartHelper dragStartHelper) {
        CheckBox checkBox = this.t == 1 ? (CheckBox) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_checkBox) : (CheckBox) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_checkBox_grid);
        if (checkBox != null) {
            this.x.h(baseViewHolder.itemView, baseViewHolder.getAdapterPosition(), mediaItem, checkBox.isChecked(), view);
        }
        return true;
    }

    public final void N(final long j, final TextView textView) {
        final String fileSize = Formatter.formatFileSize(this.mContext, j);
        this.q.put(Long.valueOf(j), fileSize);
        ThreadUtils.s(new Runnable() {
            @Override
            public final void run() {
                BucketDateAdapter.M(textView, j, fileSize);
            }
        });
    }

    public final void O(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item);
        CheckBox checkBox = (CheckBox) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_checkBox);
        checkBox.setChecked(ConvertingTaskManager.j().p(mediaItem));
        boolean z = !lpb.i(mediaItem) || ConvertingTaskManager.j().o(mediaItem) || (!ConvertingTaskManager.j().p(mediaItem) && ConvertingTaskManager.j().q());
        imageView.setAlpha(z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item, z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item_size, z ? 0.4f : 1.0f);
        baseViewHolder.setAlpha(R.id.tv_main_fragment_item_duration, z ? 0.4f : 1.0f);
        checkBox.setAlpha(z ? 0.4f : 1.0f);
        checkBox.setClickable(!z);
    }

    public void P(MediaItem mediaItem) {
        notifyDataSetChanged();
    }

    public final void Q() {
        ArrayList<MediaItem> arrayList = new ArrayList(getData());
        if (arrayList.isEmpty()) {
            return;
        }
        int i = 0;
        for (MediaItem mediaItem : arrayList) {
            if (mediaItem.mIsMediaTionAd) {
                AdMediaItem adMediaItem = (AdMediaItem) mediaItem;
                adMediaItem.release();
                adMediaItem.isClosed = true;
                i++;
            }
        }
        if (i > 0) {
            Log.d("BucketDateAdapter", "releaseOldAdItems: released " + i + " AdMediaItem(s)");
        }
    }

    public void R(boolean z) {
        this.s.clear();
        if (z) {
            if (I()) {
                x(getData());
            } else {
                this.s.addAll(getData());
            }
        }
        b bVar = this.O;
        if (bVar != null) {
            bVar.c(z);
        }
        notifyDataSetChanged();
        c cVar = this.y;
        if (cVar != null) {
            cVar.d(z);
        }
    }

    public void S(boolean z, int i) {
        try {
            int size = getData().size();
            List<MediaItem> data = getData();
            for (int i2 = i + 1; i2 < size; i2++) {
                MediaItem mediaItem = data.get(i2);
                if (mediaItem != null && mediaItem.isTimeItem) {
                    break;
                }
                h0(z, mediaItem);
            }
            notifyDataSetChanged();
            b bVar = this.O;
            if (bVar != null) {
                bVar.b(this.s.size());
            }
        } catch (Exception e) {
            Log.e("BucketDateAdapter", "e=" + e);
        }
    }

    public void T(MediaItem mediaItem, boolean z, int i) {
        Log.d("BucketDateAdapter", "selectItem " + z + StringUtils.COMMA + i);
        if (mediaItem.isTimeItem) {
            S(z, i);
            return;
        }
        if (z && !this.s.contains(mediaItem)) {
            this.s.add(mediaItem);
        } else if (!z) {
            this.s.remove(mediaItem);
        }
        this.O.b(this.s.size());
        notifyDataSetChanged();
    }

    public void U(boolean z) {
        this.t = z ? 3 : 1;
    }

    public void V(boolean z) {
        if (this.u != z) {
            this.u = z;
            notifyDataSetChanged();
        }
    }

    public void W(boolean z) {
        this.v = z;
    }

    public void X(int i) {
        this.r = i;
    }

    public void Y(MediaItem mediaItem) {
        this.L = mediaItem;
    }

    public void Z(BaseConstant.SCREEN_TYPE screen_type) {
        this.C = screen_type;
    }

    public void a0(ArrayList arrayList) {
        this.s.clear();
        this.s.addAll(arrayList);
    }

    public void b0(boolean z) {
        this.M = z;
    }

    public void c0(boolean z) {
        this.N = z;
    }

    public final void d0(BaseViewHolder baseViewHolder, AdMediaItem adMediaItem) {
        try {
            if (!adMediaItem.isClosed && !adMediaItem.isConsumed && !this.u) {
                baseViewHolder.setGone(R.id.cl_item_ad, true);
                adMediaItem.bindValues(baseViewHolder.getView(R.id.native_ad_layout), this.mData.indexOf(adMediaItem));
                return;
            }
            baseViewHolder.setGone(R.id.cl_item_ad, false);
        } catch (Exception e) {
            Log.e("BucketDateAdapter", "Error showing ad item at position: " + baseViewHolder.getAdapterPosition() + ", error: " + e.getMessage());
            baseViewHolder.itemView.setVisibility(8);
        }
    }

    public final boolean e0() {
        int i = this.r;
        return i == 4 || i == 6 || i == 29 || i == 9 || i == 10 || i == 37;
    }

    public void f0(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.itemView.findViewById(R.id.ll_bucket_fragment_item);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) roundFrameLayout.getLayoutParams();
        int i = this.mContext.getResources().getConfiguration().orientation;
        BaseConstant.SCREEN_TYPE screen_type = this.C;
        if (screen_type == BaseConstant.SCREEN_TYPE.FOLD) {
            if (this.M) {
                layoutParams.width = com.transsion.utils.a.d(this.mContext, 98.0f);
                layoutParams.height = com.transsion.utils.a.d(this.mContext, 139.0f);
            } else if (com.transsion.utils.a.z(this.mContext.getResources().getConfiguration())) {
                layoutParams.width = this.D - com.transsion.utils.a.d(this.mContext, 8.0f);
                layoutParams.height = this.D - com.transsion.utils.a.d(this.mContext, 8.0f);
            } else {
                int i2 = this.D;
                layoutParams.width = i2;
                layoutParams.height = i2;
            }
        } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_PORT) {
            int i3 = this.E;
            layoutParams.width = i3;
            layoutParams.height = i3;
        } else if (screen_type == BaseConstant.SCREEN_TYPE.OPEN_LAND) {
            int i4 = this.F;
            layoutParams.width = i4;
            layoutParams.height = i4;
        } else if (screen_type == BaseConstant.SCREEN_TYPE.TABLE) {
            if (i == 2) {
                int i5 = this.F;
                layoutParams.width = i5;
                layoutParams.height = i5;
            } else if (i == 1) {
                int i6 = this.E;
                layoutParams.width = i6;
                layoutParams.height = i6;
            }
        }
        roundFrameLayout.setLayoutParams(layoutParams);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item);
        baseViewHolder.setGone(R.id.lottie_layer_view_grid, H(mediaItem));
        TextView textView = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_main_fragment_item_duration);
        if (mediaItem.duration == 0) {
            textView.setVisibility(8);
        } else {
            textView.setVisibility(0);
            textView.setText(wna.c(mediaItem.duration));
        }
        textView.setContentDescription(wna.f(this.mContext, mediaItem.duration));
        z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme()), imageView);
        View view = baseViewHolder.itemView;
        int i7 = R.id.iv_bucket_fragment_checkBox_grid;
        CheckBox checkBox = (CheckBox) view.findViewById(i7);
        View view2 = baseViewHolder.itemView;
        int i8 = R.id.iv_more;
        ImageView imageView2 = (ImageView) view2.findViewById(i8);
        int i9 = this.r;
        if (i9 == 4 || i9 == 6 || i9 == 29) {
            checkBox.setVisibility(0);
            imageView2.setVisibility(8);
            baseViewHolder.addOnClickListener(i7);
            checkBox.setChecked(this.s.contains(mediaItem));
        } else {
            checkBox.setVisibility(8);
            imageView2.setVisibility(this.N ? 0 : 8);
        }
        baseViewHolder.setGone(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
        baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
        baseViewHolder.setGone(R.id.iv_new, tpb.j0().G(mediaItem));
        baseViewHolder.addOnClickListener(i8);
    }

    /* JADX WARN: Code duplicated, block: B:70:0x025b  */
    /* JADX WARN: Code duplicated, block: B:71:0x0265  */
    /* JADX WARN: Code duplicated, block: B:73:0x026f  */
    /* JADX WARN: Code duplicated, block: B:74:0x028b  */
    /* JADX WARN: Code duplicated, block: B:77:0x0298  */
    /* JADX WARN: Code duplicated, block: B:80:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:83:0x02c2  */
    /* JADX WARN: Code duplicated, block: B:86:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:88:? A[RETURN, SYNTHETIC] */
    public void g0(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        String string;
        Drawable drawableA;
        Drawable drawable;
        Drawable drawableE;
        RoundFrameLayout roundFrameLayout = (RoundFrameLayout) baseViewHolder.itemView.findViewById(R.id.ll_bucket_fragment_item);
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) roundFrameLayout.getLayoutParams();
        layoutParams.width = ((Integer) this.w.first).intValue();
        layoutParams.height = ((Integer) this.w.second).intValue();
        roundFrameLayout.setLayoutParams(layoutParams);
        ImageView imageView = (ImageView) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_item);
        View view = baseViewHolder.itemView;
        int i = R.id.tv_main_fragment_item;
        TextView textView = (TextView) view.findViewById(i);
        boolean zH = H(mediaItem);
        textView.setTextColor(zH ? this.A : this.z);
        baseViewHolder.setGone(R.id.lottie_layer_view, zH);
        int i2 = this.r;
        String strC = "";
        if (i2 == 1 || i2 == 6) {
            long j = mediaItem.duration;
            int i3 = j == 0 ? 0 : (int) (((long) (mediaItem.playPosition * 100)) / j);
            NumberFormat percentInstance = NumberFormat.getPercentInstance();
            String str = percentInstance.format(mediaItem.playPosition / mediaItem.duration);
            int i4 = R.id.sb_history;
            BaseViewHolder progress = baseViewHolder.setVisible(i4, true).setProgress(i4, i3);
            int i5 = R.id.tv_main_fragment_item_size;
            if (i3 < 1) {
                string = this.mContext.getString(R.string.progress_text_less_format, percentInstance.format(0.009999999776482582d));
            } else {
                string = i3 == 100 ? this.mContext.getString(R.string.progress_text_format_complete) : this.mContext.getString(R.string.progress_text_format, str);
            }
            progress.setText(i5, string);
        } else {
            int i6 = R.id.tv_main_fragment_item_size;
            baseViewHolder.setVisible(i6, !mediaItem.isYoutubeUrl);
            final TextView textView2 = (TextView) baseViewHolder.getView(i6);
            final long j2 = mediaItem.size;
            textView2.setTag(i6, Long.valueOf(j2));
            String str2 = (String) this.q.get(Long.valueOf(j2));
            if (str2 != null) {
                textView2.setText(str2);
            } else {
                textView2.setText("");
                ThreadUtils.n().execute(new Runnable() {
                    @Override
                    public final void run() {
                        this.b.N(j2, textView2);
                    }
                });
            }
        }
        View view2 = baseViewHolder.itemView;
        int i7 = R.id.iv_bucket_fragment_checkBox;
        CheckBox checkBox = (CheckBox) view2.findViewById(i7);
        View view3 = baseViewHolder.itemView;
        int i8 = R.id.iv_bucket_fragment_item_more;
        ImageView imageView2 = (ImageView) view3.findViewById(i8);
        if (e0()) {
            checkBox.setVisibility(0);
            imageView2.setVisibility(8);
            baseViewHolder.addOnClickListener(i7);
            if (!t()) {
                checkBox.setChecked(this.s.contains(mediaItem));
            }
        } else {
            imageView2.setVisibility(this.N ? 0 : 8);
            checkBox.setVisibility(8);
        }
        baseViewHolder.setText(i, mediaItem.displayName).addOnClickListener(i8);
        TextView textView3 = (TextView) baseViewHolder.itemView.findViewById(R.id.tv_main_fragment_item_duration);
        if (!mediaItem.type.equals(MediaItem.MediaType.VIDEO)) {
            textView3.setVisibility(0);
            if (!mediaItem.type.equals(MediaItem.MediaType.IMAGE) && !mediaItem.type.equals(MediaItem.MediaType.AUDIO) && !mediaItem.type.equals(MediaItem.MediaType.SUBTITLE) && !mediaItem.type.equals(MediaItem.MediaType.OTHERS)) {
                strC = wna.c(mediaItem.duration);
            }
            textView3.setText(strC);
        } else if (mediaItem.duration == 0) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
            textView3.setText(wna.c(mediaItem.duration));
        }
        textView3.setContentDescription(wna.f(this.mContext, mediaItem.duration));
        int i9 = R.id.iv_gradient_cover;
        baseViewHolder.setVisible(i9, true);
        if (mediaItem.type.equals(MediaItem.MediaType.OTHERS)) {
            drawableE = B();
            baseViewHolder.setVisible(i9, false);
            baseViewHolder.setGone(R.id.tv_new, tpb.j0().Y(mediaItem));
        } else {
            if (!mediaItem.type.equals(MediaItem.MediaType.AUDIO)) {
                if (mediaItem.type.equals(MediaItem.MediaType.SUBTITLE)) {
                    drawableE = E();
                    baseViewHolder.setVisible(i9, false);
                    baseViewHolder.setGone(R.id.tv_new, tpb.j0().Y(mediaItem));
                } else {
                    if (mediaItem.type.equals(MediaItem.MediaType.IMAGE)) {
                        baseViewHolder.setGone(R.id.tv_new, tpb.j0().Y(mediaItem));
                        drawableA = A();
                    } else {
                        baseViewHolder.setGone(R.id.tv_new, tpb.j0().G(mediaItem));
                        drawableA = A();
                    }
                    drawable = drawableA;
                }
                if (MediaItem.MediaType.AUDIO.equals(mediaItem.type)) {
                    ig6.a(this.mContext, mediaItem, mediaItem.dateModified, drawable, imageView);
                } else if (MediaItem.MediaType.IMAGE.equals(mediaItem.type)) {
                    Glide.with(this.mContext).load2(mediaItem.data).placeholder(drawable).error(drawable).into(imageView);
                } else {
                    z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), drawable, imageView);
                }
                if (this.r == 1) {
                    baseViewHolder.getView(i8).setVisibility(8);
                }
                baseViewHolder.setGone(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
                baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
                if (mediaItem.isYoutubeUrl) {
                    mediaItem.id = -3;
                }
                if (t()) {
                    O(baseViewHolder, mediaItem);
                }
                if (this.r == 38) {
                    imageView2.setImageResource(R.drawable.ic_converting_remove);
                }
            }
            baseViewHolder.setGone(R.id.tv_new, ao.U().f0(mediaItem));
            drawableE = z();
            baseViewHolder.setVisible(i9, false);
        }
        drawable = drawableE;
        if (MediaItem.MediaType.AUDIO.equals(mediaItem.type)) {
            ig6.a(this.mContext, mediaItem, mediaItem.dateModified, drawable, imageView);
        } else if (MediaItem.MediaType.IMAGE.equals(mediaItem.type)) {
            Glide.with(this.mContext).load2(mediaItem.data).placeholder(drawable).error(drawable).into(imageView);
        } else {
            z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(mediaItem), drawable, imageView);
        }
        if (this.r == 1) {
            baseViewHolder.getView(i8).setVisibility(8);
        }
        baseViewHolder.setGone(R.id.iv_favorite, tpb.j0().T(mediaItem.data));
        baseViewHolder.setVisible(R.id.iv_logo, mediaItem.isYoutubeUrl);
        if (mediaItem.isYoutubeUrl) {
            mediaItem.id = -3;
        }
        if (t()) {
            O(baseViewHolder, mediaItem);
        }
        if (this.r == 38) {
            imageView2.setImageResource(R.drawable.ic_converting_remove);
        }
    }

    @Override
    public int getDefItemViewType(int i) {
        MediaItem item = getItem(i);
        if (item != null && item.isTimeItem) {
            return 4;
        }
        if (item == null || !item.mIsMediaTionAd) {
            return this.t;
        }
        return 5;
    }

    public final void h0(boolean z, MediaItem mediaItem) {
        if (mediaItem != null) {
            if (z && !this.s.contains(mediaItem)) {
                this.s.add(mediaItem);
            } else {
                if (z) {
                    return;
                }
                this.s.remove(mediaItem);
            }
        }
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        if (i == 273) {
            return super.onCreateDefViewHolder(viewGroup, i);
        }
        if (i == 1) {
            return v(viewGroup, R.layout.rv_item_fragment_video_list);
        }
        if (i == 4) {
            return v(viewGroup, R.layout.rv_item_fragment_date);
        }
        if (i == 5) {
            return v(viewGroup, this.t == 1 ? R.layout.item_native_ad_layout_list : R.layout.item_native_ad_layout_grd_list);
        }
        return v(viewGroup, R.layout.rv_item_fragment_video_grid_list);
    }

    @Override
    public void setHeaderAndEmpty(boolean z) {
        super.setHeaderAndEmpty(z);
        this.B = z;
    }

    @Override
    public void setNewData(List list) {
        if (this.v) {
            Q();
        }
        super.setNewData(list);
    }

    public void setOnDragListener(a aVar) {
        this.x = aVar;
    }

    public void setOnSelectListener(b bVar) {
        this.O = bVar;
    }

    public void setOnTitleClickListener(c cVar) {
        this.y = cVar;
    }

    public final boolean t() {
        int i = this.r;
        return i == 9 || i == 10 || i == 37;
    }

    /* JADX WARN: Code duplicated, block: B:25:0x0057  */
    @Override
    public void convert(BaseViewHolder baseViewHolder, MediaItem mediaItem) {
        int i;
        if (mediaItem == null) {
            Log.e("BucketDateAdapter", "convert error");
            return;
        }
        if (!mediaItem.isTimeItem) {
            if (this.t == 1 && !mediaItem.mIsMediaTionAd) {
                baseViewHolder.setGone(R.id.tv_has_delete, !mediaItem.isExist);
            }
            if (mediaItem.mIsMediaTionAd) {
                d0(baseViewHolder, (AdMediaItem) mediaItem);
            } else if (this.t == 1) {
                g0(baseViewHolder, mediaItem);
            } else {
                f0(baseViewHolder, mediaItem);
            }
            if (this.x != null) {
                w(baseViewHolder, mediaItem);
                return;
            }
            return;
        }
        try {
            View view = baseViewHolder.getView(R.id.date_parent_view);
            int i2 = this.t == 1 ? this.G : 0;
            view.setPadding(i2, 0, i2, 0);
            ((Space) baseViewHolder.getView(R.id.space)).setVisibility(this.mData.indexOf(mediaItem) == 0 ? 0 : 8);
            View viewFindViewById = baseViewHolder.itemView.findViewById(R.id.divider);
            if (this.B) {
                if (baseViewHolder.getLayoutPosition() != 1) {
                    i = 0;
                } else {
                    i = 8;
                }
            } else if (baseViewHolder.getLayoutPosition() != 0) {
                i = 0;
            } else {
                i = 8;
            }
            viewFindViewById.setVisibility(i);
            baseViewHolder.setText(R.id.tv_main_fragment_item_date, wna.g(this.mContext, mediaItem.dateModified));
            View view2 = baseViewHolder.itemView;
            int i3 = R.id.iv_bucket_fragment_checkBox;
            CheckBox checkBox = (CheckBox) view2.findViewById(i3);
            int i4 = this.r;
            if (i4 != 4 && i4 != 6 && i4 != 29) {
                checkBox.setVisibility(8);
                return;
            }
            checkBox.setVisibility(0);
            baseViewHolder.addOnClickListener(i3);
            checkBox.setChecked(G(mediaItem));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [com.chad.library.adapter.base.BaseViewHolder] */
    public BaseViewHolder v(ViewGroup viewGroup, int i) {
        return createBaseViewHolder(i(viewGroup, i));
    }

    public final void w(final BaseViewHolder baseViewHolder, final MediaItem mediaItem) {
        new DragStartHelper(baseViewHolder.itemView, new DragStartHelper.OnDragStartListener() {
            @Override
            public final boolean onDragStart(View view, DragStartHelper dragStartHelper) {
                return this.a.J(baseViewHolder, mediaItem, view, dragStartHelper);
            }
        }).attach();
    }

    public void x(List list) {
        if (list == null || list.isEmpty()) {
            return;
        }
        this.s.addAll((List) list.stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return BucketDateAdapter.K((MediaItem) obj);
            }
        }).collect(Collectors.toList()));
    }

    public int y() {
        return this.t;
    }

    public final Drawable z() {
        Drawable drawable = this.I;
        if (drawable != null) {
            return drawable;
        }
        Drawable drawable2 = ResourcesCompat.getDrawable(MainApp.f().getResources(), R.drawable.ic_audio_default_placeholder, MainApp.f().getTheme());
        this.I = drawable2;
        return drawable2;
    }

    @Override
    public void onBindViewHolder(BaseViewHolder baseViewHolder, int i) {
        if (i < 0 || i >= getItemCount()) {
            return;
        }
        super.onBindViewHolder(baseViewHolder, i);
    }

    public BucketDateAdapter(int i) {
        super(i);
        this.q = new LruCache(300);
        this.s = new ArrayList();
        this.t = 1;
        this.L = new MediaItem();
        this.N = true;
    }

    public BucketDateAdapter(Context context) {
        super(R.layout.rv_item_fragment_video_list);
        this.q = new LruCache(300);
        this.s = new ArrayList();
        this.t = 1;
        this.L = new MediaItem();
        this.N = true;
        this.z = ContextCompat.getColor(context, R.color.os_text_primary_color_no_select);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        this.A = typedValue.data;
        this.D = com.transsion.utils.a.d(context, 98.0f);
        this.E = com.transsion.utils.a.d(context, 108.0f);
        this.F = com.transsion.utils.a.d(context, 132.0f);
        this.G = com.transsion.utils.a.d(context, 17.0f);
        this.w = new Pair(Integer.valueOf(com.transsion.utils.a.d(context, 160.0f)), Integer.valueOf(com.transsion.utils.a.d(context, 90.0f)));
    }
}
