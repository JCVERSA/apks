package com.transsion.playercommon.widgets;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.transsion.playercommon.R;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.vha;

public class AudioProgressInfoLayout extends ConstraintLayout {
    public ImageView b;
    public TextView c;
    public TextView d;
    public OSSeekbar e;
    public TextView f;
    public TextView g;
    public Guideline h;

    public AudioProgressInfoLayout(Context context) {
        super(context);
        init(context);
    }

    public boolean b(View view, MotionEvent motionEvent) {
        if (motionEvent.getAction() != 0) {
            return false;
        }
        getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }

    private void init(Context context) {
        LayoutInflater.from(context).inflate(R.layout.layout_audio_progress_info, (ViewGroup) this, true);
        this.b = (ImageView) findViewById(R.id.iv_favorite);
        this.c = (TextView) findViewById(R.id.tv_media_play_title);
        this.d = (TextView) findViewById(R.id.tv_media_artist);
        this.e = (OSSeekbar) findViewById(R.id.seekbar_media_play_bottom);
        this.f = (TextView) findViewById(R.id.tv_media_play_current_progress);
        this.g = (TextView) findViewById(R.id.tv_media_play_total_progress);
        this.h = (Guideline) findViewById(R.id.title_line);
        if (vha.s(getContext())) {
            this.e.setThumb(vha.e(getContext()));
        }
        this.e.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.b(view, motionEvent);
            }
        });
    }

    public OSSeekbar getMediaSeekBar() {
        return this.e;
    }

    public TextView getTvMediaPlayCurrentProgress() {
        return this.f;
    }

    public TextView getTvMediaPlayTitle() {
        return this.c;
    }

    public TextView getTvMediaPlayTotalProgress() {
        return this.g;
    }

    public void setMediaArtist(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.d.setText(str);
    }

    public void setMediaPlayTitle(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        int iLastIndexOf = str.lastIndexOf(46);
        if (iLastIndexOf > 0) {
            str = str.substring(0, iLastIndexOf);
        }
        this.c.setText(str);
    }

    public void setMediaProgressBar(int i) {
        this.e.setProgress(i);
    }

    public void setOnMediaFavoriteClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.b;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public void setSeekBarChangeListener(OSSeekbar.c cVar) {
        OSSeekbar oSSeekbar = this.e;
        if (oSSeekbar != null) {
            oSSeekbar.setOnProgressChangedListener(cVar);
        }
    }

    public void setTvMediaCurrentProgress(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f.setText(str);
    }

    public void setTvMediaTotalProgress(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.g.setText(str);
    }

    public void showMediaArtist(boolean z) {
        if (z) {
            this.d.setVisibility(0);
        } else {
            this.d.setVisibility(8);
        }
    }

    public AudioProgressInfoLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public AudioProgressInfoLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }
}
