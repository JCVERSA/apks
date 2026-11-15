package com.transsion.audio.widgets;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.transsion.audio.R;
import com.transsion.dbdata.beans.media.AudioItem;

public class AudioAnimationView extends FrameLayout {
    private AudioItem mAudioItem;
    private Context mContext;
    private TextView mTvAuthor;
    private TextView mTvName;

    public AudioAnimationView(Context context, AudioItem audioItem) {
        super(context);
        this.mContext = context;
        this.mAudioItem = audioItem;
        init(audioItem);
    }

    private void init(AudioItem audioItem) {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.item_audio_stack, this);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_name);
        this.mTvName = textView;
        textView.setText(audioItem.displayName);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tv_author);
        this.mTvAuthor = textView2;
        textView2.setText(audioItem.artistName);
    }
}
