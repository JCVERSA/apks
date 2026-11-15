package com.transsion.playercommon.widgets;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Guideline;
import com.transsion.playercommon.R;
import com.transsion.utils.a;
import com.transsion.widgetslib.widget.seekbar.OSSeekbar;
import defpackage.vha;

public class MediaProgressInfoLayout extends ConstraintLayout {
    public OSSeekbar b;
    public TextView c;
    public TextView d;
    public Guideline e;

    public MediaProgressInfoLayout(Context context) {
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
        LayoutInflater.from(context).inflate(R.layout.layout_media_progress_info, (ViewGroup) this, true);
        this.b = (OSSeekbar) findViewById(R.id.seekbar_media_play_bottom);
        this.c = (TextView) findViewById(R.id.tv_media_play_current_progress);
        this.d = (TextView) findViewById(R.id.tv_media_play_total_progress);
        this.e = (Guideline) findViewById(R.id.title_line);
        if (vha.s(getContext())) {
            this.b.setThumb(vha.e(getContext()));
        }
        this.b.setOnTouchListener(new View.OnTouchListener() {
            @Override
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.b.b(view, motionEvent);
            }
        });
    }

    public void updateGuidelineMediaPlayBottom(Context context, boolean z, int i) {
        ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) this.e.getLayoutParams();
        if (z) {
            layoutParams.guideBegin = a.d(context, (i / 2.0f) + 108.0f);
            layoutParams.guidePercent = -1.0f;
        } else {
            layoutParams.guideBegin = -1;
            layoutParams.guidePercent = 1.0f;
        }
        this.e.setLayoutParams(layoutParams);
    }

    public MediaProgressInfoLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    public MediaProgressInfoLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        init(context);
    }
}
