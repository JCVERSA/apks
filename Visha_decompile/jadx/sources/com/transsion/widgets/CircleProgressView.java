package com.transsion.widgets;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.Nullable;
import com.transsion.common.R;
import com.transsion.hubsdk.api.lighting.TranSceneConfig;

public class CircleProgressView extends View {
    private Paint bgPaint;
    private int bgRadus;
    private String content;
    private int curPercentProgress;
    private String fixText;
    private Paint progressPaint;
    private Paint smallCirclePaint;

    public CircleProgressView(Context context) {
        super(context);
        this.bgRadus = 18;
        this.curPercentProgress = 0;
        init();
    }

    public static int dp2px(Context context, int i) {
        return (int) (i * context.getResources().getDisplayMetrics().density);
    }

    private void init() {
        setBgPaint();
        setProgressPaint();
    }

    private void setBgPaint() {
        Paint paint = new Paint();
        this.bgPaint = paint;
        Resources resources = getResources();
        int i = R.color.visha_music_play_progress_line_bg;
        paint.setColor(resources.getColor(i));
        this.bgPaint.setStyle(Paint.Style.STROKE);
        this.bgPaint.setStrokeWidth(dp2px(getContext(), 1));
        this.bgPaint.setAntiAlias(true);
        Paint paint2 = new Paint();
        this.smallCirclePaint = paint2;
        paint2.setColor(getResources().getColor(i));
    }

    private void setProgressPaint() {
        Paint paint = new Paint();
        this.progressPaint = paint;
        paint.setColor(getResources().getColor(R.color.visha_music_play_progress_line));
        this.progressPaint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeWidth(dp2px(getContext(), 1));
        this.progressPaint.setAntiAlias(true);
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int iDp2px = dp2px(getContext(), this.bgRadus * 2);
        int width = (getWidth() - iDp2px) / 2;
        float f = width;
        float f2 = width + iDp2px;
        canvas.drawArc(new RectF(f, f, f2, f2), -90.0f, 360.0f, false, this.bgPaint);
        canvas.drawArc(new RectF(f, f, f2, f2), -90.0f, (this.curPercentProgress * TranSceneConfig.SCENE_TYPE_GAME_HOK_MONSTER_KILL) / 100, false, this.progressPaint);
    }

    public void updateProgress(int i) {
        if (i < 0 || i > 100) {
            return;
        }
        this.curPercentProgress = i;
        invalidate();
    }

    public CircleProgressView(Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        this.bgRadus = 18;
        this.curPercentProgress = 0;
        init();
    }
}
