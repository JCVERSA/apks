package com.transsion.magicmovie.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.media3.extractor.text.ttml.TtmlNode;
import androidx.p004lifecycle.Lifecycle;
import androidx.p004lifecycle.LifecycleEventObserver;
import androidx.p004lifecycle.LifecycleOwner;
import com.transsion.audio.widgets.BottomAudioBar;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.eventbus.LiveEventBus;
import com.transsion.magicmovie.R;
import com.transsion.magicvideo.widgets.minibar.BottomVideoBar;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\u0018\u0000 :2\u00020\u00012\u00020\u0002:\u0001;B'\b\u0007\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0014¢\u0006\u0004\b\u000e\u0010\rJ\u001d\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0011\u001a\u00020\u000f¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u0014\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0012\u0010\u0015J\r\u0010\u0016\u001a\u00020\u000f¢\u0006\u0004\b\u0016\u0010\u0017J\r\u0010\u0018\u001a\u00020\u000f¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u000b2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019¢\u0006\u0004\b\u001b\u0010\u001cJ\r\u0010\u001d\u001a\u00020\u000b¢\u0006\u0004\b\u001d\u0010\rJ\u0015\u0010\u001f\u001a\u00020\u000b2\u0006\u0010\u001e\u001a\u00020\u000f¢\u0006\u0004\b\u001f\u0010 J\u001f\u0010%\u001a\u00020\u000b2\u0006\u0010\"\u001a\u00020!2\u0006\u0010$\u001a\u00020#H\u0016¢\u0006\u0004\b%\u0010&J\r\u0010(\u001a\u00020'¢\u0006\u0004\b(\u0010)R\u0014\u0010-\u001a\u00020*8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b+\u0010,R\u0014\u00100\u001a\u00020'8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b.\u0010/R\u0014\u00104\u001a\u0002018\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R*\u00108\u001a\u00020\u000f2\u0006\u00105\u001a\u00020\u000f8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b6\u00107\u001a\u0004\b8\u0010\u0017\"\u0004\b9\u0010 ¨\u0006<"}, d2 = {"Lcom/transsion/magicmovie/widget/BottomOperateBarLayoutV3;", "Landroid/widget/FrameLayout;", "Landroidx/lifecycle/LifecycleEventObserver;", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Lzfb;", "onAttachedToWindow", "()V", "onDetachedFromWindow", "", "isAudio", "isShow", "setVisibility", "(ZZ)V", "visibility", "(I)V", "isAudioShowing", "()Z", "isVideoShowing", "Lcom/transsion/dbdata/beans/media/AudioItem;", "audioItem", "loadPlayBackground", "(Lcom/transsion/dbdata/beans/media/AudioItem;)V", "updateState", TtmlNode.START, "startOrStopMusicProgress", "(Z)V", "Landroidx/lifecycle/LifecycleOwner;", "source", "Landroidx/lifecycle/Lifecycle$Event;", NotificationCompat.CATEGORY_EVENT, "onStateChanged", "(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V", "Lcom/transsion/audio/widgets/BottomAudioBar;", "getAudioBar", "()Lcom/transsion/audio/widgets/BottomAudioBar;", "Landroid/view/View;", "b", "Landroid/view/View;", TtmlNode.RUBY_CONTAINER, "c", "Lcom/transsion/audio/widgets/BottomAudioBar;", "audioBar", "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;", "d", "Lcom/transsion/magicvideo/widgets/minibar/BottomVideoBar;", "videoBar", ES6Iterator.VALUE_PROPERTY, "e", "Z", "isShouldUpdate", "setShouldUpdate", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "main_videoplayer_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BottomOperateBarLayoutV3 extends FrameLayout implements LifecycleEventObserver {

    public final View container;

    public final BottomAudioBar audioBar;

    public final BottomVideoBar videoBar;

    public boolean isShouldUpdate;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomOperateBarLayoutV3(Context context) {
        this(context, null, 0, 6, null);
        y45.j(context, "context");
    }

    public final BottomAudioBar getAudioBar() {
        return this.audioBar;
    }

    public final boolean isAudioShowing() {
        return getVisibility() == 0 && this.audioBar.getVisibility() == 0;
    }

    public final boolean getIsShouldUpdate() {
        return this.isShouldUpdate;
    }

    public final boolean isVideoShowing() {
        return getVisibility() == 0 && this.videoBar.getVisibility() == 0;
    }

    public final void loadPlayBackground(AudioItem audioItem) {
        this.audioBar.loadPlayBackground(audioItem);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    @Override
    public void onStateChanged(LifecycleOwner source, Lifecycle.Event event) {
        y45.j(source, "source");
        y45.j(event, NotificationCompat.CATEGORY_EVENT);
        if (isVideoShowing()) {
            this.videoBar.onStateChanged(source, event);
        }
    }

    public final void setShouldUpdate(boolean z) {
        this.isShouldUpdate = z;
        this.audioBar.setShouldUpdate(z);
        this.videoBar.setShouldUpdate(z);
    }

    public final void setVisibility(boolean isAudio, boolean isShow) {
        Log.d("BottomOperateBarLayoutV3", "setVisibility isAudio:" + isAudio + " isShow:" + isShow);
        setVisibility(isShow ? 0 : 8);
        if (isAudio) {
            if (isShow) {
                this.videoBar.setVisibility(8);
            }
            this.audioBar.setVisibility(isShow ? 0 : 8);
            this.audioBar.setNeedShow(true);
        } else {
            if (isShow) {
                this.audioBar.setVisibility(8);
                this.audioBar.setNeedShow(false);
            }
            this.videoBar.setVisibility(isShow ? 0 : 8);
        }
        Log.d("BottomOperateBarLayoutV3", "visibility:" + getVisibility() + " audio visibility:" + this.audioBar.getVisibility() + " video visibility:" + this.videoBar.getVisibility());
    }

    public final void startOrStopMusicProgress(boolean start) {
        this.audioBar.startOrStopMusicProgress(start);
        this.videoBar.startOrStopMusicProgress(start);
    }

    public final void updateState() {
        this.audioBar.updateState();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public BottomOperateBarLayoutV3(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
        y45.j(context, "context");
    }

    public BottomOperateBarLayoutV3(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BottomOperateBarLayoutV3(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this.isShouldUpdate = true;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.bottom_operate_bar_main, (ViewGroup) this, true);
        this.container = viewInflate;
        this.audioBar = (BottomAudioBar) viewInflate.findViewById(R.id.audio_bar);
        this.videoBar = (BottomVideoBar) viewInflate.findViewById(R.id.video_bar);
    }

    @Override
    public void setVisibility(int visibility) {
        Log.d("BottomOperateBarLayoutV3", "setVisibility :" + visibility);
        super.setVisibility(visibility);
        if (visibility == 0) {
            LiveEventBus.b().c("bottom_bar_show", Boolean.TRUE);
            if (this.audioBar.getNeedShow()) {
                this.audioBar.startOrStopMusicProgress(true);
                return;
            }
            return;
        }
        LiveEventBus.b().c("bottom_bar_show", Boolean.FALSE);
        if (this.audioBar.getNeedShow()) {
            this.audioBar.startOrStopMusicProgress(false);
        }
    }
}
