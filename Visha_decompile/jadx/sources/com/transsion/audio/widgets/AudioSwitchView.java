package com.transsion.audio.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Nullable;
import com.transsion.audio.R;

public class AudioSwitchView extends LinearLayout implements View.OnClickListener {
    private boolean isMusic;
    private Context mContext;
    private IsSelectedListener mIsSelectedListener;
    private View mView;
    private TextView tvMusic;
    private TextView tvVideo;

    public interface IsSelectedListener {
        void isSelected(boolean z);
    }

    public AudioSwitchView(Context context) {
        super(context);
        this.isMusic = true;
        init(context);
    }

    private void changeBg(boolean z) {
        TextView textView;
        TextView textView2 = this.tvMusic;
        if (textView2 == null || (textView = this.tvVideo) == null) {
            return;
        }
        if (z) {
            textView2.setBackgroundResource(R.drawable.bg_switch_selected);
            this.tvVideo.setBackgroundColor(0);
        } else {
            textView.setBackgroundResource(R.drawable.bg_switch_selected);
            this.tvMusic.setBackgroundColor(0);
        }
    }

    private void init(Context context) {
        this.mContext = context;
        setBackgroundResource(R.drawable.bg_audio_switch);
        setOrientation(0);
        setPadding(com.transsion.utils.a.d(this.mContext, 2.0f), com.transsion.utils.a.d(this.mContext, 2.0f), com.transsion.utils.a.d(this.mContext, 2.0f), com.transsion.utils.a.d(this.mContext, 2.0f));
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_audio_switch_view, (ViewGroup) this, true);
        this.mView = viewInflate;
        this.tvMusic = (TextView) viewInflate.findViewById(R.id.tv_music);
        this.tvVideo = (TextView) this.mView.findViewById(R.id.tv_video);
        this.mView.setOnClickListener(this);
        changeBg(this.isMusic);
    }

    public boolean isMusic() {
        return this.isMusic;
    }

    @Override
    public void onClick(View view) {
        boolean z = !this.isMusic;
        this.isMusic = z;
        changeBg(z);
        IsSelectedListener isSelectedListener = this.mIsSelectedListener;
        if (isSelectedListener != null) {
            isSelectedListener.isSelected(this.isMusic);
        }
    }

    public void registerIsSelectedListener(IsSelectedListener isSelectedListener) {
        this.mIsSelectedListener = isSelectedListener;
    }

    public void setIsMusic(boolean z) {
        this.isMusic = z;
        changeBg(z);
    }

    public void unregisterIsSelectedListener() {
        this.mIsSelectedListener = null;
    }

    public AudioSwitchView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isMusic = true;
        init(context);
    }

    public AudioSwitchView(Context context, @Nullable AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isMusic = true;
        init(context);
    }
}
