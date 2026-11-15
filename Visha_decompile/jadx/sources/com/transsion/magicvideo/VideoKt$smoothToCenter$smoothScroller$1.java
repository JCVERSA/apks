package com.transsion.magicvideo;

import android.util.DisplayMetrics;
import android.view.View;
import androidx.media3.exoplayer.upstream.CmcdData;
import androidx.recyclerview.widget.LinearSmoothScroller;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0010\b\n\u0018\u00002\u00020\u0001J\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\b\u0010\tJ\u000f\u0010\n\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\n\u0010\tJ'\u0010\u0012\u001a\u00020\u00112\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u000fH\u0014¢\u0006\u0004\b\u0012\u0010\u0013J7\u0010\u0019\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00072\u0006\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0019\u0010\u001aR\"\u0010 \u001a\u00020\u00078\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\t\"\u0004\b\u001e\u0010\u001f¨\u0006!"}, d2 = {"com/transsion/magicvideo/VideoKt$smoothToCenter$smoothScroller$1", "Landroidx/recyclerview/widget/LinearSmoothScroller;", "Landroid/util/DisplayMetrics;", "displayMetrics", "", "calculateSpeedPerPixel", "(Landroid/util/DisplayMetrics;)F", "", "getHorizontalSnapPreference", "()I", "getVerticalSnapPreference", "Landroid/view/View;", "targetView", "Landroidx/recyclerview/widget/RecyclerView$State;", ICode.CALL.CALL_KEY_STATE, "Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;", "action", "Lzfb;", "onTargetFound", "(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V", "viewStart", "viewEnd", "boxStart", "boxEnd", "snapPreference", "calculateDtToFit", "(IIIII)I", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "getItemWidth", "setItemWidth", "(I)V", "itemWidth", "video_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VideoKt$smoothToCenter$smoothScroller$1 extends LinearSmoothScroller {

    public int itemWidth;
    public final RecyclerView b;

    @Override
    public int calculateDtToFit(int viewStart, int viewEnd, int boxStart, int boxEnd, int snapPreference) {
        if (snapPreference == 3) {
            return (boxStart - viewStart) + ((this.b.getContext().getResources().getDisplayMetrics().widthPixels - this.itemWidth) / 2);
        }
        return 0;
    }

    @Override
    public float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
        return super.calculateSpeedPerPixel(displayMetrics) * 3.0f;
    }

    @Override
    public int getHorizontalSnapPreference() {
        return 3;
    }

    @Override
    public int getVerticalSnapPreference() {
        return 3;
    }

    @Override
    public void onTargetFound(View targetView, RecyclerView.State state, RecyclerView.SmoothScroller.Action action) {
        y45.j(targetView, "targetView");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        y45.j(action, "action");
        this.itemWidth = targetView.getMeasuredWidth();
        super.onTargetFound(targetView, state, action);
    }
}
