package com.monetization.ads.nativeads.video.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckBox;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.aw0;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0016\u0018\u00002\u00020\u00012\u00020\u0002B\u0011\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f¢\u0006\u0004\b\u0011\u0010\u0012B\u001b\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013¢\u0006\u0004\b\u0011\u0010\u0015B#\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0017\u001a\u00020\u0016¢\u0006\u0004\b\u0011\u0010\u0018B+\b\u0016\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\b\u0010\u0014\u001a\u0004\u0018\u00010\u0013\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\u0006\u0010\u0019\u001a\u00020\u0016¢\u0006\u0004\b\u0011\u0010\u001aR\u0016\u0010\u0006\u001a\u0004\u0018\u00010\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0016\u0010\n\u001a\u0004\u0018\u00010\u00078VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u0004\u0018\u00010\u000b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\r¨\u0006\u001b"}, d2 = {"Lcom/monetization/ads/nativeads/video/view/CorePlaybackControlsContainer;", "Landroid/widget/FrameLayout;", "Lcom/yandex/mobile/ads/impl/aw0;", "Landroid/widget/CheckBox;", "getMuteControl", "()Landroid/widget/CheckBox;", "muteControl", "Landroid/widget/ProgressBar;", "getVideoProgress", "()Landroid/widget/ProgressBar;", "videoProgress", "Landroid/widget/TextView;", "getCountDownProgress", "()Landroid/widget/TextView;", "countDownProgress", "Landroid/content/Context;", "context", MethodDecl.initName, "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "defStyleRes", "(Landroid/content/Context;Landroid/util/AttributeSet;II)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public class CorePlaybackControlsContainer extends FrameLayout implements aw0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorePlaybackControlsContainer(Context context) {
        super(context);
        y45.j(context, "context");
    }

    @Override
    public TextView getCountDownProgress() {
        return (TextView) findViewById(R.id.video_count_down_control);
    }

    @Override
    public CheckBox getMuteControl() {
        return (CheckBox) findViewById(R.id.video_mute_control);
    }

    @Override
    public ProgressBar getVideoProgress() {
        return (ProgressBar) findViewById(R.id.video_progress_control);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorePlaybackControlsContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorePlaybackControlsContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CorePlaybackControlsContainer(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        y45.j(context, "context");
    }
}
