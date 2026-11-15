package com.transsion.audio.widgets;

import android.view.View;
import com.transsion.audio.R;
import com.transsion.audio.widgets.HalfOpenAudioPlayerLayout$audioCarouselAdapter$1;
import com.transsion.dbdata.beans.media.AudioItem;
import defpackage.c74;
import defpackage.y45;
import defpackage.zfb;
import java.util.Iterator;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J!\u0010\t\u001a\u00020\b2\b\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\r\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\r\u0010\f¨\u0006\u000e"}, d2 = {"com/transsion/audio/widgets/HalfOpenAudioPlayerLayout$audioCarouselAdapter$1", "Lcom/transsion/audio/widgets/AudioCarousel$Adapter;", "", "count", "()I", "Landroid/view/View;", "view", "index", "Lzfb;", "populate", "(Landroid/view/View;I)V", "onNewItem", "(I)V", "onOldItem", "audio_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class HalfOpenAudioPlayerLayout$audioCarouselAdapter$1 implements AudioCarousel.Adapter {
    final HalfOpenAudioPlayerLayout this$0;

    public HalfOpenAudioPlayerLayout$audioCarouselAdapter$1(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        this.this$0 = halfOpenAudioPlayerLayout;
    }

    public static final zfb populate$lambda$0(HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout) {
        halfOpenAudioPlayerLayout.setBeingAnimation(false);
        halfOpenAudioPlayerLayout.animComplete = System.currentTimeMillis();
        return zfb.a;
    }

    @Override
    public int count() {
        return this.this$0.playList.size();
    }

    @Override
    public void onNewItem(int index) {
        AudioItem audioItemP = this.this$0.playManager.P();
        Iterator it = this.this$0.playList.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            }
            AudioItem audioItem = (AudioItem) it.next();
            if (audioItemP != null && audioItem.id == audioItemP.id) {
                break;
            } else {
                i++;
            }
        }
        if (index != i) {
            HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.this$0;
            halfOpenAudioPlayerLayout.removeCallbacks(halfOpenAudioPlayerLayout.errorNextRunnable);
            this.this$0.playManager.P0((AudioItem) this.this$0.playList.get(index), false);
        }
    }

    @Override
    public void onOldItem(int index) {
    }

    @Override
    public void populate(View view, int index) {
        if (view == null || !(view instanceof AudioPlayerItemView)) {
            return;
        }
        AudioPlayerItemView audioPlayerItemView = (AudioPlayerItemView) view;
        AudioItem audioItem = (AudioItem) this.this$0.playList.get(index);
        AudioCarousel audioCarousel = this.this$0.carousel;
        if (audioCarousel == null) {
            y45.B("carousel");
            audioCarousel = null;
        }
        audioPlayerItemView.setCoverAlbum(audioItem, index == audioCarousel.getCurrentIndex());
        boolean z = audioPlayerItemView.getId() == R.id.audioItem2;
        final HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout = this.this$0;
        audioPlayerItemView.setPlayState(z, new c74() {
            @Override
            public final Object invoke() {
                return HalfOpenAudioPlayerLayout$audioCarouselAdapter$1.populate$lambda$0(halfOpenAudioPlayerLayout);
            }
        });
        HalfOpenAudioPlayerLayout halfOpenAudioPlayerLayout2 = this.this$0;
        halfOpenAudioPlayerLayout2.playStatusChange(halfOpenAudioPlayerLayout2.isAudioPlaying());
    }
}
