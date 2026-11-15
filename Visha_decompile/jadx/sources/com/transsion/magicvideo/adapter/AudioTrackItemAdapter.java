package com.transsion.magicvideo.adapter;

import android.content.Context;
import android.util.TypedValue;
import android.widget.RadioButton;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.chad.library.adapter.base.BaseViewHolder;
import com.transsion.dbdata.database.AudioTrack;
import com.transsion.magicvideo.R;

public class AudioTrackItemAdapter extends BaseQuickAdapter<AudioTrack, BaseViewHolder> {
    public int o;
    public int p;

    public AudioTrackItemAdapter(Context context) {
        super(R.layout.audio_track_item);
        this.p = 1;
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.os_platform_basic_color, typedValue, true);
        this.o = typedValue.data;
    }

    @Override
    public void convert(BaseViewHolder baseViewHolder, AudioTrack audioTrack) {
        if (getData().indexOf(audioTrack) == 0) {
            baseViewHolder.setText(R.id.tv_audio_track, R.string.disable);
        } else {
            baseViewHolder.setText(R.id.tv_audio_track, audioTrack.name);
        }
        ((RadioButton) baseViewHolder.getView(R.id.cb_track)).setChecked(audioTrack.audioId == this.p);
    }

    public void r(int i) {
        this.p = i;
        notifyDataSetChanged();
    }
}
