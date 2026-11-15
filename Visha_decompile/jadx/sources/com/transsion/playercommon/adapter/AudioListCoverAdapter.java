package com.transsion.playercommon.adapter;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;
import android.widget.ImageView;
import androidx.core.content.res.ResourcesCompat;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.target.Target;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.arch.threads.TaskExecutor;
import com.transsion.dbdata.beans.ext.MediaExtKt;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.database.AudioAlbum;
import com.transsion.playercommon.R;
import com.transsion.preload.OptimizeListAdapter;
import defpackage.ao;
import defpackage.rf;
import defpackage.tn;
import defpackage.vk1;
import defpackage.z7c;
import java.util.ArrayList;
import java.util.List;

public class AudioListCoverAdapter<T> extends OptimizeListAdapter<T, BaseViewHolder> {
    public volatile List q;
    public Drawable r;
    public final SparseArray s;

    public class a implements RequestListener {
        public final ImageView b;
        public final AudioItem c;

        public a(ImageView imageView, AudioItem audioItem) {
            this.b = imageView;
            this.c = audioItem;
        }

        @Override
        public boolean onResourceReady(Drawable drawable, Object obj, Target target, DataSource dataSource, boolean z) {
            return false;
        }

        @Override
        public boolean onLoadFailed(GlideException glideException, Object obj, Target target, boolean z) {
            if (this.b.getTag() == null || !this.b.getTag().equals(Integer.valueOf(this.c.id))) {
                return true;
            }
            AudioListCoverAdapter.this.w(this.c, this.b);
            return true;
        }
    }

    public AudioListCoverAdapter(int i, Context context) {
        super(i);
        this.q = new ArrayList();
        this.r = null;
        this.s = new SparseArray();
        rf.a aVar = rf.h;
        if (aVar.a().c() != null) {
            this.q = aVar.a().c();
        } else {
            TaskExecutor.c(new TaskExecutor.Task<Void>() {
                @Override
                public Void onBackground() {
                    if (((BaseQuickAdapter) AudioListCoverAdapter.this).mContext == null) {
                        return null;
                    }
                    AudioListCoverAdapter.this.q = ao.U().w();
                    return null;
                }

                @Override
                public void onResult(Void r2) {
                    if (AudioListCoverAdapter.this.getRecyclerView() != null) {
                        try {
                            AudioListCoverAdapter.this.getRecyclerView().post(new Runnable() {
                                @Override
                                public void run() {
                                    AudioListCoverAdapter.this.notifyDataSetChanged();
                                }
                            });
                        } catch (Exception unused) {
                            Log.e(BaseQuickAdapter.TAG, "当前Adapter未初始化完成，无法刷新数据 ");
                        }
                    }
                }
            });
        }
        if (context != null) {
            try {
                this.r = ResourcesCompat.getDrawable(context.getResources(), R.drawable.main_fragment_placeholder, context.getTheme());
            } catch (Exception unused) {
                this.r = null;
            }
        }
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, Object obj) {
    }

    public final void u(ImageView imageView, AudioItem audioItem, Bitmap bitmap, AudioItem audioItem2) {
        if (bitmap != null) {
            if (imageView.getTag() == null || !imageView.getTag().equals(Integer.valueOf(audioItem2.id))) {
                return;
            }
            imageView.setImageBitmap(bitmap);
            return;
        }
        if (imageView.getTag() == null || !imageView.getTag().equals(Integer.valueOf(audioItem2.id))) {
            return;
        }
        x(audioItem, imageView);
    }

    public void v(AudioItem audioItem, ImageView imageView) {
        if (audioItem == null || imageView == null) {
            return;
        }
        imageView.setTag(Integer.valueOf(audioItem.id));
        if (audioItem.isMusicVideo) {
            try {
                if (this.r == null) {
                    this.r = ResourcesCompat.getDrawable(this.mContext.getResources(), R.drawable.main_fragment_placeholder, this.mContext.getTheme());
                }
                z7c.c(this.mContext, MediaExtKt.toLocalMediaLoadInfo(audioItem), this.r, imageView);
                return;
            } catch (Exception e) {
                Log.e("TestLoadCover", "error：" + e.getMessage());
                e.printStackTrace();
            }
        }
        AudioAlbum audioAlbum = null;
        for (AudioAlbum audioAlbum2 : this.q) {
            if (audioAlbum2.id.intValue() == audioItem.id) {
                audioAlbum = audioAlbum2;
            }
        }
        if (audioAlbum == null) {
            w(audioItem, imageView);
        } else if (TextUtils.isEmpty(audioAlbum.imgPath)) {
            w(audioItem, imageView);
        } else {
            Glide.with(this.mContext).load2(audioAlbum.imgPath).centerCrop().listener(new a(imageView, audioItem)).into(imageView);
        }
    }

    public final void w(final AudioItem audioItem, final ImageView imageView) {
        vk1.j(this.mContext, audioItem, new tn.c() {
            @Override
            public final void a(Bitmap bitmap, AudioItem audioItem2) {
                this.a.u(imageView, audioItem, bitmap, audioItem2);
            }
        });
    }

    public void x(AudioItem audioItem, ImageView imageView) {
        if (imageView == null) {
            return;
        }
        int iJ = tn.j(audioItem);
        Drawable drawableY = y(iJ);
        if (drawableY != null) {
            imageView.setImageDrawable(drawableY);
        } else {
            imageView.setImageResource(iJ);
        }
    }

    public final Drawable y(int i) {
        Context context;
        Context context2;
        Drawable drawable = (Drawable) this.s.get(i);
        if (drawable == null && (context2 = this.mContext) != null) {
            try {
                drawable = ResourcesCompat.getDrawable(context2.getResources(), i, this.mContext.getTheme());
                if (drawable != null) {
                    this.s.put(i, drawable);
                }
            } catch (Exception e) {
                Log.e(BaseQuickAdapter.TAG, "obtainDefaultIconDrawable: " + e.getMessage());
                return null;
            }
        }
        if (drawable == null) {
            return null;
        }
        Drawable.ConstantState constantState = drawable.getConstantState();
        return (constantState == null || (context = this.mContext) == null) ? drawable : constantState.newDrawable(context.getResources()).mutate();
    }
}
