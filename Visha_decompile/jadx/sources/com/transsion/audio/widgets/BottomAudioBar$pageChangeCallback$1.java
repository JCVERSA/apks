package com.transsion.audio.widgets;

import android.util.Log;
import androidx.viewpager2.widget.ViewPager2;
import com.transsion.audio.widgets.BottomAudioBar;
import com.transsion.dbdata.beans.media.AudioItem;
import com.transsion.dbdata.beans.media.PlayAudioListData;
import com.transsion.livecaption.constant.ICode;
import defpackage.hb0;
import defpackage.pp3;
import defpackage.y45;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\b\u0010\u0006¨\u0006\t"}, d2 = {"com/transsion/audio/widgets/BottomAudioBar$pageChangeCallback$1", "Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;", "", "position", "Lzfb;", "onPageSelected", "(I)V", ICode.CALL.CALL_KEY_STATE, "onPageScrollStateChanged", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class BottomAudioBar$pageChangeCallback$1 extends ViewPager2.OnPageChangeCallback {
    final BottomAudioBar this$0;

    public BottomAudioBar$pageChangeCallback$1(BottomAudioBar bottomAudioBar) {
        this.this$0 = bottomAudioBar;
    }

    @Override
    public void onPageScrollStateChanged(int state) {
        if (state == 1) {
            this.this$0.setMUserGestureScroll(true);
            this.this$0.setMManualChange(false);
        } else {
            if (state != 2 || pp3.m()) {
                return;
            }
            this.this$0.setMManualChange(false);
        }
    }

    @Override
    public void onPageSelected(int position) {
        if (this.this$0.getMViewPager().getData().size() <= position) {
            return;
        }
        Log.d("BottomAudioBar", "onPageSelected: position: " + position + " currentIndex = " + this.this$0.getMViewPager().getCurrentPosition() + " mManualChange =" + this.this$0.getMManualChange() + " mUserGestureScroll=" + this.this$0.getMUserGestureScroll());
        if (this.this$0.getMManualChange()) {
            this.this$0.setMManualChange(false);
            return;
        }
        if (pp3.m() && !this.this$0.getMUserGestureScroll()) {
            this.this$0.cancelPendingPlayItem();
            this.this$0.setMManualChange(true);
            final BottomAudioBar bottomAudioBar = this.this$0;
            bottomAudioBar.post(new Runnable() {
                @Override
                public final void run() {
                    BottomAudioBar.synCurrent$default(bottomAudioBar, false, 1, null);
                }
            });
            return;
        }
        this.this$0.setMUserGestureScroll(false);
        int iIndexOf = PlayAudioListData.getInstance().getPlayList().indexOf(this.this$0.getMCurrentMediaItem());
        AudioItem audioItem = this.this$0.getMViewPager().getData().get(position);
        if (y45.e(this.this$0.getMCurrentMediaItem(), audioItem)) {
            Log.d("BottomAudioBar", "same item, return");
            return;
        }
        this.this$0.setMCurrentMediaItem(audioItem);
        BottomAudioBar bottomAudioBar2 = this.this$0;
        AudioItem mCurrentMediaItem = bottomAudioBar2.getMCurrentMediaItem();
        y45.h(mCurrentMediaItem, "null cannot be cast to non-null type com.transsion.dbdata.beans.media.MediaItem");
        bottomAudioBar2.playItem(mCurrentMediaItem, position, 350L);
        int i = position - iIndexOf;
        int i2 = iIndexOf - position;
        if (i != 0) {
            hb0.markDirect((i == 1 || i2 == PlayAudioListData.getInstance().getPlayList().size() - 1) ? "vd_miniplayer_slip_right" : "vd_miniplayer_slip_left");
        }
    }
}
