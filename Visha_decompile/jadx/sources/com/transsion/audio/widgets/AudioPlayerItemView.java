package com.transsion.audio.widgets;

import android.animation.ObjectAnimator;
import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.LinearInterpolator;
import androidx.constraintlayout.motion.widget.Key;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.bumptech.glide.Glide;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.transsion.audio.R;
import com.transsion.audio.widgets.AudioPlayerItemView;
import com.transsion.audiotagger.tag.id3.AbstractID3v1Tag;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.playercommon.widgets.CircleImageView;
import defpackage.c74;
import defpackage.tn;
import defpackage.y45;
import defpackage.zfb;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0019\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\b¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\r\u001a\u0004\u0018\u00010\b¢\u0006\u0004\b\r\u0010\u000eJ\r\u0010\u000f\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\r\u0010\u0011\u001a\u00020\n¢\u0006\u0004\b\u0011\u0010\u0010J\r\u0010\u0012\u001a\u00020\n¢\u0006\u0004\b\u0012\u0010\u0010J\r\u0010\u0013\u001a\u00020\n¢\u0006\u0004\b\u0013\u0010\u0010J\r\u0010\u0014\u001a\u00020\n¢\u0006\u0004\b\u0014\u0010\u0010J\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u0015¢\u0006\u0004\b\u0018\u0010\u0017J\u001f\u0010\u001c\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001b\u001a\u00020\u0015H\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\r\u0010\u001e\u001a\u00020\n¢\u0006\u0004\b\u001e\u0010\u0010J%\u0010!\u001a\u00020\n2\u0006\u0010\u001b\u001a\u00020\u00152\u000e\b\u0002\u0010 \u001a\b\u0012\u0004\u0012\u00020\n0\u001f¢\u0006\u0004\b!\u0010\"J\u0017\u0010%\u001a\u00020\n2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\u0017\u0010)\u001a\u00020\n2\u0006\u0010(\u001a\u00020'H\u0016¢\u0006\u0004\b)\u0010*R\u0014\u0010+\u001a\u00020\b8\u0002X\u0082D¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u0010.\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00100\u001a\u00020-8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b0\u0010/R\u0016\u00102\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b4\u00103R\u0018\u0010\t\u001a\u0004\u0018\u00010\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010,¨\u00065"}, d2 = {"Lcom/transsion/audio/widgets/AudioPlayerItemView;", "Landroidx/constraintlayout/widget/ConstraintLayout;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "name", "Lzfb;", "setName", "(Ljava/lang/String;)V", "getName", "()Ljava/lang/String;", "resumeAlbumAnim", "()V", "pauseAlbumAnim", "cancelAlbumAnim", "resetAnim", "startAlbumAnim", "", "isPauseAlbumAnim", "()Z", "isRunningAlbumAnim", "Lcom/transsion/dbdata/beans/media/AudioItem;", "item", "isCurrent", "setCoverAlbum", "(Lcom/transsion/dbdata/beans/media/AudioItem;Z)V", "resetCover", "Lkotlin/Function0;", "animEndListener", "setPlayState", "(ZLc74;)V", "", "alpha", "setAlpha", "(F)V", "", "visibility", "setVisibility", "(I)V", AbstractID3v1Tag.TAG, "Ljava/lang/String;", "Lcom/transsion/playercommon/widgets/CircleImageView;", "bgRecord", "Lcom/transsion/playercommon/widgets/CircleImageView;", "civMusicCover", "Landroid/animation/ObjectAnimator;", "bgRotateAnimation", "Landroid/animation/ObjectAnimator;", "coverRotateAnimation", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class AudioPlayerItemView extends ConstraintLayout {
    private final String TAG;
    private final CircleImageView bgRecord;
    private ObjectAnimator bgRotateAnimation;
    private final CircleImageView civMusicCover;
    private ObjectAnimator coverRotateAnimation;
    private String name;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AudioPlayerItemView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
        this.TAG = "AudioPlayerItemView";
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.view_audio_play_item, (ViewGroup) this, true);
        CircleImageView circleImageView = (CircleImageView) viewInflate.findViewById(R.id.circleView);
        this.bgRecord = circleImageView;
        CircleImageView circleImageView2 = (CircleImageView) viewInflate.findViewById(R.id.civ_music_cover);
        this.civMusicCover = circleImageView2;
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(circleImageView2, Key.ROTATION, 0.0f, 360.0f);
        this.coverRotateAnimation = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(30000L);
        this.coverRotateAnimation.setRepeatCount(-1);
        this.coverRotateAnimation.setInterpolator(new LinearInterpolator());
        this.coverRotateAnimation.setRepeatMode(1);
        ObjectAnimator objectAnimatorOfFloat2 = ObjectAnimator.ofFloat(circleImageView, Key.ROTATION, 0.0f, 360.0f);
        this.bgRotateAnimation = objectAnimatorOfFloat2;
        objectAnimatorOfFloat2.setDuration(30000L);
        this.bgRotateAnimation.setRepeatCount(-1);
        this.bgRotateAnimation.setInterpolator(new LinearInterpolator());
        this.bgRotateAnimation.setRepeatMode(1);
    }

    public static final void setCoverAlbum$lambda$0(AudioPlayerItemView audioPlayerItemView, Bitmap bitmap) {
        if (bitmap != null) {
            audioPlayerItemView.civMusicCover.setImageBitmap(bitmap);
        } else {
            audioPlayerItemView.civMusicCover.setImageDrawable(audioPlayerItemView.getResources().getDrawable(R.drawable.def_music_cover, audioPlayerItemView.getContext().getTheme()));
        }
    }

    public static final void setCoverAlbum$lambda$1(AudioPlayerItemView audioPlayerItemView, AudioItem audioItem) {
        try {
            if (audioPlayerItemView.getContext() instanceof Activity) {
                Context context = audioPlayerItemView.getContext();
                y45.h(context, "null cannot be cast to non-null type android.app.Activity");
                Activity activity = (Activity) context;
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(audioPlayerItemView.getContext()).load2(audioItem.albumPath).diskCacheStrategy(DiskCacheStrategy.NONE);
                    int i = R.drawable.def_music_cover;
                    requestBuilderDiskCacheStrategy.placeholder(i).error(i).dontAnimate().into(audioPlayerItemView.civMusicCover);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static void setPlayState$default(AudioPlayerItemView audioPlayerItemView, boolean z, c74 c74Var, int i, Object obj) {
        if ((i & 2) != 0) {
            c74Var = new c74() {
                @Override
                public final Object invoke() {
                    return zfb.a;
                }
            };
        }
        audioPlayerItemView.setPlayState(z, c74Var);
    }

    public final void cancelAlbumAnim() {
        com.transsion.audio.a.c(this.name + " cancelAlbumAnim");
        this.coverRotateAnimation.cancel();
        this.bgRotateAnimation.cancel();
    }

    public final String getName() {
        return this.name;
    }

    public final boolean isPauseAlbumAnim() {
        return this.coverRotateAnimation.isPaused() && this.bgRotateAnimation.isPaused();
    }

    public final boolean isRunningAlbumAnim() {
        return this.coverRotateAnimation.isRunning() && this.bgRotateAnimation.isRunning();
    }

    public final void pauseAlbumAnim() {
        com.transsion.audio.a.c(this.name + " pauseAlbumAnim");
        this.coverRotateAnimation.pause();
        this.bgRotateAnimation.pause();
    }

    public final void resetAnim() {
        com.transsion.audio.a.c(this.name + " resetAlbumAnim");
        this.civMusicCover.setRotation(0.0f);
        this.bgRecord.setRotation(0.0f);
    }

    public final void resetCover() {
        this.civMusicCover.setImageDrawable(getResources().getDrawable(R.drawable.def_music_cover, getContext().getTheme()));
    }

    public final void resumeAlbumAnim() {
        com.transsion.audio.a.c(this.name + " resumeAlbumAnim");
        if (this.coverRotateAnimation.isStarted()) {
            this.coverRotateAnimation.resume();
        }
        this.bgRotateAnimation.resume();
    }

    @Override
    public void setAlpha(float alpha) {
        super.setAlpha(alpha);
        Log.d("AudioPlayerItemView", "id = " + getId() + " setAlpha alpha=" + alpha);
    }

    @SuppressLint({"CheckResult"})
    public final void setCoverAlbum(final AudioItem item, boolean isCurrent) {
        y45.j(item, "item");
        if (item.data != null && (TextUtils.equals("null", item.albumPath) || TextUtils.isEmpty(item.albumPath))) {
            try {
                tn.u(getContext(), item, new tn.b() {
                    @Override
                    public final void a(Bitmap bitmap) {
                        AudioPlayerItemView.setCoverAlbum$lambda$0(this.a, bitmap);
                    }
                }, true);
                return;
            } catch (Exception unused) {
                this.civMusicCover.setImageDrawable(getResources().getDrawable(R.drawable.def_music_cover, getContext().getTheme()));
                return;
            }
        }
        try {
            if (!y45.e(Looper.getMainLooper(), Looper.myLooper())) {
                Context context = getContext();
                y45.h(context, "null cannot be cast to non-null type android.app.Activity");
                ((Activity) context).runOnUiThread(new Runnable() {
                    @Override
                    public final void run() {
                        AudioPlayerItemView.setCoverAlbum$lambda$1(this.b, item);
                    }
                });
            } else if (getContext() instanceof Activity) {
                Context context2 = getContext();
                y45.h(context2, "null cannot be cast to non-null type android.app.Activity");
                Activity activity = (Activity) context2;
                if (!activity.isFinishing() && !activity.isDestroyed()) {
                    RequestBuilder requestBuilderDiskCacheStrategy = Glide.with(getContext()).load2(item.albumPath).diskCacheStrategy(DiskCacheStrategy.NONE);
                    int i = R.drawable.def_music_cover;
                    requestBuilderDiskCacheStrategy.placeholder(i).error(i).dontAnimate().into(this.civMusicCover);
                }
                return;
            }
            zfb zfbVar = zfb.a;
        } catch (Exception e) {
            Log.e("AudioPlayerItemView", "error:" + e.getMessage());
        }
    }

    public final void setName(String name) {
        y45.j(name, "name");
        this.name = name;
    }

    public final void setPlayState(boolean isCurrent, c74 animEndListener) {
        y45.j(animEndListener, "animEndListener");
        if (isCurrent) {
            animEndListener.invoke();
        }
    }

    @Override
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        Log.d(this.TAG, "id = " + getId() + "  setVisibility: " + visibility);
    }

    public final void startAlbumAnim() {
        com.transsion.audio.a.c(this.name + " startAlbumAnim");
        this.coverRotateAnimation.start();
        this.bgRotateAnimation.start();
    }
}
