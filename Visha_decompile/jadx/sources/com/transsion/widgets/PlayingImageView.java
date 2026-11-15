package com.transsion.widgets;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatImageView;
import androidx.core.content.ContextCompat;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.common.R;
import defpackage.h27;

public class PlayingImageView extends AppCompatImageView implements h27.b {
    public static boolean mIsPlaying = false;

    public PlayingImageView(@NonNull Context context) {
        super(context);
    }

    private void applyPlayingImage(int i) {
        Drawable drawable = ContextCompat.getDrawable(resolveDrawableContext(), i);
        if (drawable != null) {
            setImageDrawable(drawable);
        } else {
            setImageResource(i);
        }
    }

    private Context resolveDrawableContext() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof RecyclerView) {
                return ((RecyclerView) parent).getContext();
            }
        }
        View rootView = getRootView();
        return (rootView == null || rootView.getContext() == null) ? getContext() : rootView.getContext();
    }

    public void lambda$onAttachedToWindow$0() {
        if (mIsPlaying && getVisibility() == 0) {
            applyPlayingImage(R.drawable.ic_playing_for_list);
        } else {
            applyPlayingImage(R.drawable.ic_pause_list_cover);
        }
    }

    @Override
    public void didReceivedNotification(int i, Object... objArr) {
        if (i == 1026) {
            mIsPlaying = ((Boolean) objArr[0]).booleanValue();
            lambda$onAttachedToWindow$0();
        } else {
            if (i != 1030) {
                return;
            }
            mIsPlaying = ((Integer) objArr[0]).intValue() == 1;
            lambda$onAttachedToWindow$0();
        }
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().b(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        post(new Runnable() {
            @Override
            public final void run() {
                this.b.lambda$onAttachedToWindow$0();
            }
        });
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        h27.c().f(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().f(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
    }

    @Override
    public void onVisibilityChanged(@NonNull View view, int i) {
        super.onVisibilityChanged(view, i);
        if (i != 0) {
            applyPlayingImage(R.drawable.ic_pause_list_cover);
            return;
        }
        h27.c().b(this, AnalyticsListener.EVENT_DRM_KEYS_REMOVED);
        h27.c().b(this, AnalyticsListener.EVENT_VIDEO_CODEC_ERROR);
        applyPlayingImage(mIsPlaying ? R.drawable.ic_playing_for_list : R.drawable.ic_pause_list_cover);
    }

    public PlayingImageView(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PlayingImageView(@NonNull Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
