package com.cloud.hisavana.sdk.common.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import com.cloud.hisavana.sdk.R$dimen;
import com.cloud.hisavana.sdk.R$drawable;
import com.cloud.hisavana.sdk.b4;
import g7.e;

public class CountTimeView extends View implements View.OnClickListener {

    private Paint f21623a;

    private Paint f21624b;

    private long f21625c;

    private long f21626d;

    private e f21627e;

    private int f21628f;

    private String f21629g;

    private b f21630h;

    private Bitmap f21631i;

    private int f21632j;

    private final Rect f21633k;

    class a extends e {
        a(long j10, long j11) {
            super(j10, j11);
        }

        @Override
        public void e() {
            if (CountTimeView.this.f21630h != null) {
                CountTimeView.this.f21630h.onFinish();
            }
        }

        @Override
        public void f(long j10) {
            CountTimeView.this.f21629g = "SKIP " + (j10 / 1000);
            CountTimeView.this.f21632j = (int) j10;
            CountTimeView.this.invalidate();
        }
    }

    public interface b {
        void onClick();

        void onFinish();

        void onStart();
    }

    public CountTimeView(Context context) {
        this(context, null);
    }

    private void d() {
        this.f21627e = new a(this.f21625c, 1000L);
    }

    private void e() {
        Paint paint = new Paint();
        this.f21623a = paint;
        paint.setAntiAlias(true);
        this.f21623a.setDither(true);
        this.f21623a.setStyle(Paint.Style.FILL);
        Paint paint2 = new Paint();
        this.f21624b = paint2;
        paint2.setAntiAlias(true);
        this.f21624b.setColor(-1);
        this.f21624b.setTextSize(this.f21628f);
        this.f21624b.setStrokeWidth(8.0f);
        this.f21624b.setTextAlign(Paint.Align.CENTER);
    }

    private Bitmap getBg() {
        try {
            Drawable drawable = getResources().getDrawable(R$drawable.ad_skip_button);
            if (drawable instanceof BitmapDrawable) {
                this.f21631i = ((BitmapDrawable) drawable).getBitmap();
            } else {
                this.f21631i = Bitmap.createBitmap(drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(this.f21631i);
                drawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
                drawable.draw(canvas);
            }
            return this.f21631i;
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
            return null;
        }
    }

    public void cancel() {
        e eVar = this.f21627e;
        if (eVar != null) {
            eVar.d();
        }
    }

    public void changeFinishMode() {
        this.f21629g = "X";
        invalidate();
    }

    public long getRemainder() {
        return this.f21632j;
    }

    public long getSupposeFinishTime() {
        return this.f21626d;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.f21627e.g();
        b bVar = this.f21630h;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    @Override
    public void onClick(View view) {
        b bVar = this.f21630h;
        if (bVar != null) {
            bVar.onClick();
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e eVar = this.f21627e;
        if (eVar != null) {
            eVar.d();
        }
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        try {
            if (TextUtils.isEmpty(this.f21629g)) {
                return;
            }
            if (this.f21631i == null) {
                this.f21631i = getBg();
            }
            Rect rect = new Rect(0, 0, this.f21631i.getWidth(), this.f21631i.getHeight());
            canvas.drawBitmap(this.f21631i, rect, rect, this.f21623a);
            Paint.FontMetrics fontMetrics = this.f21624b.getFontMetrics();
            Rect rect2 = this.f21633k;
            canvas.drawText(this.f21629g, rect2.centerX(), ((int) (((rect2.bottom + rect2.top) - fontMetrics.bottom) - fontMetrics.top)) / 2, this.f21624b);
        } catch (Throwable th2) {
            b4.b().e(Log.getStackTraceString(th2));
        }
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        this.f21633k.set(0, 0, getWidth(), getHeight());
        super.onSizeChanged(i10, i11, i12, i13);
    }

    public void setCountDownTimerListener(b bVar) {
        this.f21630h = bVar;
    }

    public void setStartTime(int i10) {
        this.f21625c = ((long) (i10 * 1000)) + 400;
        this.f21626d = System.currentTimeMillis() + this.f21625c + 1000;
        this.f21632j = i10;
        d();
    }

    public void start() {
        this.f21627e.g();
        this.f21626d = System.currentTimeMillis() + this.f21625c + 1000;
        b bVar = this.f21630h;
        if (bVar != null) {
            bVar.onStart();
        }
    }

    public CountTimeView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public CountTimeView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f21625c = 6L;
        this.f21626d = 0L;
        this.f21629g = "5s";
        this.f21633k = new Rect();
        setOnClickListener(this);
        try {
            this.f21628f = context.getResources().getDimensionPixelSize(R$dimen.ad_skip_text_size);
        } catch (Throwable unused) {
            this.f21628f = 13;
        }
        e();
    }
}
