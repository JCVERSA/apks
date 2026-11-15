package com.transsion.audio.adapter;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.Log;
import android.util.LruCache;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.view.DragStartHelper;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.audio.R;
import com.transsion.audio.adapter.AudioItemAdapter;
import com.transsion.audio.player.MusicPlayManager;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.MediaItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.playercommon.adapter.AudioListCoverAdapter;
import defpackage.ao;
import defpackage.br;
import defpackage.wna;
import defpackage.zdc;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.function.Predicate;

public class AudioItemAdapter extends AudioListCoverAdapter<AudioItem> {
    public int A;
    public int B;
    public int C;
    public final LruCache D;
    public float E;
    public int F;
    public boolean G;
    public b H;
    public d I;
    public int J;
    public boolean K;
    public c L;
    public e M;
    public AudioItem t;
    public int u;
    public boolean v;
    public boolean w;
    public int x;
    public ArrayList y;
    public int z;

    public class a implements Animator.AnimatorListener {
        public final View b;

        public a(View view) {
            this.b = view;
        }

        @Override
        public void onAnimationCancel(Animator animator) {
        }

        @Override
        public void onAnimationEnd(Animator animator) {
            this.b.setVisibility(8);
        }

        @Override
        public void onAnimationRepeat(Animator animator) {
        }

        @Override
        public void onAnimationStart(Animator animator) {
        }
    }

    public interface b {
        void s(View view, int i, AudioItem audioItem, boolean z, View view2, boolean z2);
    }

    public interface c {
        void b(int i);

        void c(boolean z);
    }

    public interface d {
        void d(boolean z);
    }

    public interface e {
        boolean a(RecyclerView.ViewHolder viewHolder);
    }

    public AudioItemAdapter(Context context) {
        super(R.layout.rv_item_search_audio_list_v2, context);
        this.t = new AudioItem();
        this.w = false;
        this.y = new ArrayList();
        this.D = new LruCache(4);
        this.G = false;
        this.K = true;
        this.u = R.layout.rv_item_fragment_date;
        this.A = ContextCompat.getColor(context, R.color.os_text_primary_color_no_select);
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(com.transsion.common.R.attr.os_platform_basic_color, typedValue, true);
        int i = typedValue.data;
        this.z = i;
        this.C = i;
        this.B = context.getColor(R.color.os_text_tertiary_color);
        this.E = context.getResources().getDimension(R.dimen.dp20);
        this.F = Math.max(1, Math.round(context.getResources().getDimension(R.dimen.dp05)));
    }

    public static boolean I(List list) {
        try {
            return list.stream().anyMatch(new Predicate() {
                @Override
                public final boolean test(Object obj) {
                    return ((MediaItem) obj).isMusicVideo;
                }
            });
        } catch (Exception e2) {
            Log.e("AudioItemAdapter", "haveMusicVideo: " + e2.getMessage());
            return false;
        }
    }

    public static void K(ValueAnimator valueAnimator, View view, ValueAnimator valueAnimator2) {
        if (((Integer) valueAnimator.getAnimatedValue()).intValue() == 1 || ((Integer) valueAnimator.getAnimatedValue()).intValue() == 3) {
            view.setPressed(true);
        }
        if (((Integer) valueAnimator.getAnimatedValue()).intValue() == 2 || ((Integer) valueAnimator.getAnimatedValue()).intValue() == 4) {
            view.setPressed(false);
        }
    }

    @Override
    public void convert(final BaseViewHolder baseViewHolder, AudioItem audioItem) {
        int i;
        Drawable drawable;
        boolean z = (audioItem.equals(this.t) && MusicPlayManager.S().X() != null && !MusicPlayManager.S().X().isEmpty() && MusicPlayManager.S().s0()) || !(!audioItem.equals(this.t) || MusicPlayManager.S().X() == null || MusicPlayManager.S().X().isEmpty() || zdc.f() != zdc.b || PlayAudioListData.getInstance().playMediaItem() == null);
        int i2 = R.id.tv_item_name;
        baseViewHolder.setTextColor(i2, z ? this.C : this.A);
        int i3 = R.id.tv_name;
        baseViewHolder.setTextColor(i3, z ? this.C : this.A);
        int i4 = R.id.tv_item_artist;
        baseViewHolder.setTextColor(i4, this.B);
        int i5 = R.id.tv_author;
        baseViewHolder.setTextColor(i5, this.B);
        int i6 = R.id.tv_item_duration;
        baseViewHolder.setTextColor(i6, z ? this.z : this.B);
        baseViewHolder.setGone(R.id.tv_has_delete, !audioItem.isExist);
        ((TextView) baseViewHolder.itemView.findViewById(i3)).setTypeface(Typeface.DEFAULT, 0);
        View view = baseViewHolder.getView(R.id.iv_playing);
        view.setVisibility(z ? 0 : 8);
        if (z) {
            RecyclerView recyclerView = getRecyclerView();
            Drawable drawable2 = ContextCompat.getDrawable(recyclerView != null ? recyclerView.getContext() : view.getContext(), (!audioItem.equals(this.t) || MusicPlayManager.S().X() == null || MusicPlayManager.S().X().isEmpty() || !MusicPlayManager.S().s0()) ? com.transsion.common.R.drawable.ic_pause_list_cover : com.transsion.common.R.drawable.ic_playing_for_list);
            if (drawable2 != null) {
                ((ImageView) view).setImageDrawable(drawable2);
            }
        }
        View view2 = baseViewHolder.itemView;
        int i7 = R.id.iv_bucket_fragment_checkBox;
        CheckBox checkBox = (CheckBox) view2.findViewById(i7);
        View view3 = baseViewHolder.itemView;
        int i8 = R.id.iv_item_more;
        View viewFindViewById = view3.findViewById(i8);
        if (viewFindViewById instanceof TextView) {
            ((TextView) viewFindViewById).setTextColor(this.A);
        }
        if (this.v) {
            checkBox.setVisibility(0);
            viewFindViewById.setVisibility(8);
            RecyclerView recyclerView2 = getRecyclerView();
            Drawable drawable3 = ContextCompat.getDrawable(recyclerView2 != null ? recyclerView2.getContext() : checkBox.getContext(), com.transsion.playercommon.R.drawable.ic_list_checkbox);
            if (drawable3 != null) {
                checkBox.setBackground(drawable3);
            }
            baseViewHolder.addOnClickListener(i7);
            checkBox.setChecked(this.y.contains(audioItem));
            i = 8;
        } else {
            viewFindViewById.setVisibility(this.K ? 0 : 8);
            viewFindViewById.setEnabled(true);
            viewFindViewById.setAlpha(1.0f);
            i = 8;
            checkBox.setVisibility(8);
        }
        if (z && this.t != null) {
            ao.U().p0(this.t.id);
        }
        baseViewHolder.setGone(R.id.iv_farvorited, ao.U().c0(false, audioItem));
        baseViewHolder.setGone(R.id.iv_mv_tag, audioItem.isMusicVideo);
        boolean z2 = !z && ao.U().f0(audioItem);
        int i9 = R.id.iv_new;
        baseViewHolder.setGone(i9, z2);
        if (z2) {
            TextView textView = (TextView) baseViewHolder.itemView.findViewById(i9);
            textView.setTextColor(this.z);
            Drawable drawable4 = (Drawable) this.D.get(Integer.valueOf(this.z));
            if (drawable4 == null) {
                drawable = drawable4;
                GradientDrawable gradientDrawable = new GradientDrawable();
                gradientDrawable.setShape(0);
                gradientDrawable.setCornerRadius(this.E);
                gradientDrawable.setStroke(this.F, this.z);
                gradientDrawable.setColor(0);
                this.D.put(Integer.valueOf(this.z), gradientDrawable);
                drawable = gradientDrawable;
            }
            drawable = drawable4;
            textView.setBackground(drawable);
        }
        baseViewHolder.setText(i2, audioItem.displayName).setText(i3, audioItem.displayName).setText(i4, audioItem.artistName).setText(i5, audioItem.artistName).setText(i6, wna.c(audioItem.duration)).addOnClickListener(i8);
        N(audioItem, (LinearLayout) baseViewHolder.getView(R.id.ll_filter_tags));
        int i10 = R.id.iv_play_cover_icon;
        x(audioItem, (ImageView) baseViewHolder.getView(i10));
        v(audioItem, (ImageView) baseViewHolder.getView(i10));
        baseViewHolder.setText(R.id.tv_item_playcount, audioItem.playCount + "");
        if (this.x == 53) {
            baseViewHolder.getView(R.id.ll_play_count).setVisibility(0);
        }
        if (this.H != null && !this.w) {
            E(baseViewHolder, z, audioItem);
        }
        int i11 = R.id.iv_item_icon;
        baseViewHolder.getView(i11).setVisibility(this.w ? 0 : i);
        baseViewHolder.setOnTouchListener(i11, new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view4, MotionEvent motionEvent) {
                return this.b.J(baseViewHolder, view4, motionEvent);
            }
        });
        final View view4 = baseViewHolder.getView(R.id.ll_item);
        if (this.G) {
            final ValueAnimator valueAnimatorOfInt = ValueAnimator.ofInt(1, 2, 3, 4);
            valueAnimatorOfInt.setDuration(1000L);
            valueAnimatorOfInt.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() {
                @Override
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    AudioItemAdapter.K(valueAnimatorOfInt, view4, valueAnimator);
                }
            });
            valueAnimatorOfInt.start();
            this.G = false;
        } else {
            view4.setPressed(false);
        }
        if (this.J == audioItem.id) {
            Y(baseViewHolder);
        }
    }

    public final void E(final BaseViewHolder baseViewHolder, final boolean z, final AudioItem audioItem) {
        new DragStartHelper(baseViewHolder.itemView, new DragStartHelper.OnDragStartListener() {
            @Override
            public final boolean onDragStart(View view, DragStartHelper dragStartHelper) {
                return this.a.L(baseViewHolder, audioItem, z, view, dragStartHelper);
            }
        }).attach();
    }

    public AudioItem F() {
        return this.t;
    }

    public ArrayList G() {
        return this.y;
    }

    public boolean H() {
        return I(this.y);
    }

    public final boolean J(BaseViewHolder baseViewHolder, View view, MotionEvent motionEvent) {
        e eVar;
        if (motionEvent.getAction() != 0 || (eVar = this.M) == null) {
            return false;
        }
        eVar.a(baseViewHolder);
        return false;
    }

    public final boolean L(BaseViewHolder baseViewHolder, AudioItem audioItem, boolean z, View view, DragStartHelper dragStartHelper) {
        CheckBox checkBox = (CheckBox) baseViewHolder.itemView.findViewById(R.id.iv_bucket_fragment_checkBox);
        b bVar = this.H;
        if (bVar == null || this.w) {
            return true;
        }
        bVar.s(baseViewHolder.itemView, baseViewHolder.getAdapterPosition(), audioItem, checkBox.isChecked(), view, z);
        return true;
    }

    public final void N(AudioItem audioItem, LinearLayout linearLayout) {
        List<String> list = audioItem.filteredTypes;
        if (list == null || list.isEmpty()) {
            return;
        }
        linearLayout.removeAllViews();
        Iterator<String> it = audioItem.filteredTypes.iterator();
        while (it.hasNext()) {
            int iB = br.b(audioItem, it.next());
            if (iB > 0) {
                ImageView imageView = new ImageView(linearLayout.getContext());
                imageView.setImageResource(iB);
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                layoutParams.setMargins(0, 0, 5, 0);
                imageView.setLayoutParams(layoutParams);
                linearLayout.addView(imageView);
            }
        }
    }

    public void O(boolean z) {
        try {
            this.y.clear();
        } catch (Exception unused) {
            Log.e("AudioItemAdapter", "selectMediaItems.clear exception");
        }
        if (z) {
            this.y.addAll(getData());
        }
        c cVar = this.L;
        if (cVar != null) {
            cVar.c(z);
        }
        notifyDataSetChanged();
        d dVar = this.I;
        if (dVar != null) {
            dVar.d(z);
        }
    }

    public void P(AudioItem audioItem, boolean z, int i) {
        try {
            Log.d("AudioItemAdapter", "selectItem " + z + StringUtils.COMMA + i);
            if (z && !this.y.contains(audioItem)) {
                this.y.add(audioItem);
            } else if (!z) {
                this.y.remove(audioItem);
            }
            c cVar = this.L;
            if (cVar != null) {
                cVar.b(this.y.size());
            }
            notifyItemChanged(i);
        } catch (Exception e2) {
            Log.d("AudioItemAdapter", "selectItem, exception " + e2.getMessage());
        }
    }

    public void Q(boolean z) {
        this.v = z;
    }

    public void R(int i) {
        this.x = i;
    }

    public void S(boolean z) {
        this.w = z;
    }

    public void T(AudioItem audioItem) {
        this.t = audioItem;
        try {
            notifyDataSetChanged();
        } catch (Exception unused) {
        }
    }

    public void U(AudioItem audioItem) {
        this.t = audioItem;
    }

    public void V(ArrayList arrayList) {
        this.y.clear();
        this.y.addAll(arrayList);
    }

    public void W(int i) {
        this.J = i;
    }

    public void X(boolean z) {
        this.K = z;
    }

    public final void Y(BaseViewHolder baseViewHolder) {
        View view = baseViewHolder.getView(R.id.shake_view);
        if (view.getVisibility() == 8) {
            return;
        }
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(view, "alpha", 0.0f, 1.0f, 0.0f);
        objectAnimatorOfFloat.setInterpolator(new LinearInterpolator());
        objectAnimatorOfFloat.setDuration(500L);
        objectAnimatorOfFloat.start();
        objectAnimatorOfFloat.addListener(new a(view));
        W(-1);
    }

    @Override
    public BaseViewHolder onCreateDefViewHolder(ViewGroup viewGroup, int i) {
        return new BaseViewHolder(i(viewGroup, R.layout.rv_item_search_audio_list_v2));
    }

    public void setOnDragListener(b bVar) {
        this.H = bVar;
    }

    public void setOnSelectListener(c cVar) {
        this.L = cVar;
    }

    public void setOnTitleClickListener(d dVar) {
        this.I = dVar;
    }

    public void setOnTouchListener(e eVar) {
        this.M = eVar;
    }

    @Override
    public BaseViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return super.onCreateViewHolder(viewGroup, i);
    }
}
