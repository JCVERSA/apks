package com.tn.lib.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import androidx.core.app.NotificationCompat;
import com.cloud.tmc.integration.params.TmcStartParams;
import com.cloud.tmc.offline.download.constants.OfflineConstantsKt;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mbridge.msdk.foundation.download.core.DownloadCommon;
import com.mbridge.msdk.foundation.entity.CampaignEx;
import com.mbridge.msdk.playercommon.exoplayer2.text.ttml.TtmlNode;
import com.tn.lib.widget.R$styleable;
import com.vungle.ads.internal.protos.Sdk$SDKMetric;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;

@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u0007\n\u0002\b\u000f\n\u0002\u0010\u000b\n\u0002\b\u000b\n\u0002\u0010%\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0015\n\u0002\b\u001c\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0018\u0002\n\u0002\b\u000f\u0018\u0000 \u0098\u00012\u00020\u0001:\u0001*B\u0011\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005B\u001b\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006¢\u0006\u0004\b\u0004\u0010\bB#\b\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u0004\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0012J\u0017\u0010\u0014\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0014\u0010\u0012J\u0017\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0015\u0010\u0012J\u0017\u0010\u0016\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0016\u0010\u0012J\u0017\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0017\u0010\u0012J\u0017\u0010\u001a\u001a\u00020\f2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001e\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001cH\u0002¢\u0006\u0004\b\u001e\u0010\u001fJ\u000f\u0010 \u001a\u00020\fH\u0002¢\u0006\u0004\b \u0010\u000eJ\u000f\u0010!\u001a\u00020\tH\u0002¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\fH\u0002¢\u0006\u0004\b#\u0010\u000eJ\u0017\u0010&\u001a\u00020\u001c2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b&\u0010'J\u0017\u0010(\u001a\u00020$2\u0006\u0010%\u001a\u00020$H\u0002¢\u0006\u0004\b(\u0010)J\u0017\u0010*\u001a\u00020$2\u0006\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b*\u0010+J\u001f\u0010-\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010,\u001a\u00020$H\u0002¢\u0006\u0004\b-\u0010.J\u001f\u00101\u001a\u00020\f2\u0006\u0010/\u001a\u00020\t2\u0006\u00100\u001a\u00020\tH\u0014¢\u0006\u0004\b1\u00102J\u0017\u00103\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0015¢\u0006\u0004\b3\u0010\u0012J\u0017\u00105\u001a\u0002042\u0006\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b5\u00106J\u0015\u00108\u001a\u00020\f2\u0006\u00107\u001a\u000204¢\u0006\u0004\b8\u00109J\u0015\u0010;\u001a\u00020\f2\u0006\u0010:\u001a\u00020\u001c¢\u0006\u0004\b;\u0010\u001fJ\u0015\u0010<\u001a\u00020\f2\u0006\u0010\u001d\u001a\u00020\u001c¢\u0006\u0004\b<\u0010\u001fJ\r\u0010=\u001a\u00020\u001c¢\u0006\u0004\b=\u0010>J\r\u0010?\u001a\u00020\u001c¢\u0006\u0004\b?\u0010>J!\u0010A\u001a\u00020\f2\u0012\u0010\u001d\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0@¢\u0006\u0004\bA\u0010BJ\u0015\u0010E\u001a\u00020\f2\u0006\u0010D\u001a\u00020C¢\u0006\u0004\bE\u0010FR\u0014\u0010I\u001a\u00020G8\u0002X\u0082D¢\u0006\u0006\n\u0004\b*\u0010HR\u0016\u0010K\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b&\u0010JR\u0016\u0010L\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010JR\u0016\u0010M\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010JR\u0014\u0010P\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010OR\u0014\u0010Q\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010OR\u0014\u0010R\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010OR\u0014\u0010S\u001a\u00020N8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010OR\u0016\u0010V\u001a\u00020T8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010UR\u0016\u0010X\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0017\u0010WR\u0016\u0010Y\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010WR\u0016\u0010Z\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001e\u0010WR\u0016\u0010[\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u001a\u0010WR\u0016\u0010\\\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b \u0010WR\u0016\u0010]\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010WR\u0016\u0010_\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b^\u0010WR\u0016\u0010b\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b`\u0010aR\u0016\u0010d\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bc\u0010WR\u0016\u0010f\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\be\u0010WR\u0016\u0010h\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bg\u0010WR\u0016\u0010j\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bi\u0010aR\u0016\u0010l\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bk\u0010WR\u0016\u0010n\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bm\u0010WR\u0016\u0010p\u001a\u00020$8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bo\u0010aR\u0014\u0010t\u001a\u00020q8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\br\u0010sR\u0014\u0010x\u001a\u00020u8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bv\u0010wR\u0016\u00108\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\by\u0010zR\u0016\u0010|\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b{\u0010WR\u0016\u0010~\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b}\u0010WR\u0017\u0010\u0080\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u007f\u0010WR\u0018\u0010\u0082\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0081\u0001\u0010WR\u0017\u0010\u0083\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\ba\u0010WR\u0018\u0010\u0085\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0084\u0001\u0010WR\u0018\u0010\u0087\u0001\u001a\u00020\t8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0086\u0001\u0010WR$\u0010\u0089\u0001\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0@8\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bW\u0010\u0088\u0001R\u0019\u0010\u008c\u0001\u001a\u00030\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\bJ\u0010\u008b\u0001R\u001a\u0010\u008e\u0001\u001a\u00030\u008a\u00018\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u008d\u0001\u0010\u008b\u0001R\u0016\u0010\u0090\u0001\u001a\u0002048\u0002X\u0082\u0004¢\u0006\u0007\n\u0005\b\u008f\u0001\u0010zR\u0018\u0010\u0092\u0001\u001a\u0002048\u0002@\u0002X\u0082\u000e¢\u0006\u0007\n\u0005\b\u0091\u0001\u0010zR\u001a\u0010D\u001a\u0004\u0018\u00010C8\u0002@\u0002X\u0082\u000e¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0094\u0001R\u0017\u0010\u0097\u0001\u001a\u0002048BX\u0082\u0004¢\u0006\b\u001a\u0006\b\u0095\u0001\u0010\u0096\u0001¨\u0006\u0099\u0001"}, d2 = {"Lcom/tn/lib/view/SecondariesSeekBar;", "Landroid/view/View;", "Landroid/content/Context;", "context", "<init>", "(Landroid/content/Context;)V", "Landroid/util/AttributeSet;", "attrs", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "", "defStyleAttr", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "", CampaignEx.JSON_KEY_AD_K, "()V", "Landroid/graphics/Canvas;", "canvas", "f", "(Landroid/graphics/Canvas;)V", "i", "e", "g", "h", "j", "Landroid/view/MotionEvent;", NotificationCompat.CATEGORY_EVENT, "m", "(Landroid/view/MotionEvent;)V", "", NotificationCompat.CATEGORY_PROGRESS, "l", "(J)V", "n", "getThumbHalfWidth", "()I", "o", "", "touchX", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_B, "(F)J", "c", "(F)F", "a", "(Landroid/view/MotionEvent;)F", "dpValue", DownloadCommon.DOWNLOAD_REPORT_FIND_FILE_RESULT_VALUE_D, "(Landroid/content/Context;F)I", "widthMeasureSpec", "heightMeasureSpec", "onMeasure", "(II)V", "onDraw", "", "onTouchEvent", "(Landroid/view/MotionEvent;)Z", OfflineConstantsKt.OFFLINE_CONFIG_ENABLE, "seekEnable", "(Z)V", "max", "setMax", "setProgress", "getMaxProgress", "()J", "getProgress", "", "setSecondariesProgress", "(Ljava/util/Map;)V", "Lcom/tn/lib/view/s;", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "setOnSeekBarChangeListener", "(Lcom/tn/lib/view/s;)V", "", "Ljava/lang/String;", "TAG", "J", "maxProgress", "currentProgress", "lastProgress", "Landroid/graphics/Paint;", "Landroid/graphics/Paint;", "bgPaint", "secondaryPaint", "progressPaint", "thumbPaint", "", "[I", "progressColors", "I", "secondariesProgressColor", "bgColor", "progressSize", "thumbColor", "thumbSize", "thumbRadius", TtmlNode.TAG_P, "thumbTouchRadius", CampaignEx.JSON_KEY_AD_Q, "F", "thumbTouchMultiple", CampaignEx.JSON_KEY_AD_R, "thumbShape", "s", "thumbRectWidth", "t", "thumbRectHeight", TmcStartParams.KEY_URL_SHORT, "thumbCornerRadius", "v", "thumbRectTouchWidth", "w", "thumbRectTouchHeight", "x", "thumbRectTouchCornerRadius", "Landroid/graphics/RectF;", "y", "Landroid/graphics/RectF;", "thumbRectF", "Landroid/graphics/Path;", "z", "Landroid/graphics/Path;", "progressPath", "A", "Z", "B", "viewHeight", "C", "viewWidth", "D", "barWidth", "E", "viewPaddingLeft", "viewPaddingRight", "G", "viewPaddingTop", "H", "viewPaddingBottom", "Ljava/util/Map;", "secondariesProgressLocation", "Landroid/graphics/Rect;", "Landroid/graphics/Rect;", "bgRect", "K", "progressRect", "L", "r2l", "M", "isTouching", "N", "Lcom/tn/lib/view/s;", "getRightToLeft", "()Z", "rightToLeft", "Companion", "UI_psRelease"}, k = 1, mv = {2, 1, 0}, xi = Sdk$SDKMetric.SDKMetricType.AD_SHOW_TO_VALIDATION_DURATION_MS_VALUE)
@SourceDebugExtension
public final class SecondariesSeekBar extends View {
    public static final int THUMB_SHAPE_CIRCLE = 0;
    public static final int THUMB_SHAPE_ROUNDED_RECT = 1;

    private boolean seekEnable;

    private int viewHeight;

    private int viewWidth;

    private int barWidth;

    private int viewPaddingLeft;

    private int viewPaddingRight;

    private int viewPaddingTop;

    private int viewPaddingBottom;

    private Map secondariesProgressLocation;

    private Rect bgRect;

    private Rect progressRect;

    private final boolean r2l;

    private boolean isTouching;

    private s listener;

    private final String TAG;

    private long maxProgress;

    private long currentProgress;

    private long lastProgress;

    private final Paint bgPaint;

    private final Paint secondaryPaint;

    private final Paint progressPaint;

    private final Paint thumbPaint;

    private int[] progressColors;

    private int secondariesProgressColor;

    private int bgColor;

    private int progressSize;

    private int thumbColor;

    private int thumbSize;

    private int thumbRadius;

    private int thumbTouchRadius;

    private float thumbTouchMultiple;

    private int thumbShape;

    private int thumbRectWidth;

    private int thumbRectHeight;

    private float thumbCornerRadius;

    private int thumbRectTouchWidth;

    private int thumbRectTouchHeight;

    private float thumbRectTouchCornerRadius;

    private final RectF thumbRectF;

    private final Path progressPath;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SecondariesSeekBar(Context context) {
        this(context, null);
        Intrinsics.h(context, "context");
    }

    private final float a(MotionEvent event) {
        int paddingRight;
        int thumbHalfWidth = getThumbHalfWidth();
        if (event.getX() < getPaddingLeft() + thumbHalfWidth) {
            paddingRight = getPaddingLeft() + thumbHalfWidth;
        } else {
            if (event.getX() <= (this.viewWidth - getPaddingRight()) - thumbHalfWidth) {
                return event.getX();
            }
            paddingRight = (this.viewWidth - getPaddingRight()) - thumbHalfWidth;
        }
        return paddingRight;
    }

    private final long b(float touchX) {
        int thumbHalfWidth = getThumbHalfWidth();
        this.lastProgress = this.currentProgress;
        long paddingLeft = (long) ((this.maxProgress * ((touchX - getPaddingLeft()) - thumbHalfWidth)) / this.barWidth);
        this.currentProgress = paddingLeft;
        return paddingLeft;
    }

    private final float c(float touchX) {
        return this.r2l ? ((getPaddingLeft() + (getThumbHalfWidth() * 2)) + this.barWidth) - touchX : touchX;
    }

    private final int d(Context context, float dpValue) {
        return (int) TypedValue.applyDimension(1, dpValue, context.getResources().getDisplayMetrics());
    }

    private final void e(Canvas canvas) {
        if (this.thumbShape == 1) {
            h(canvas);
        } else {
            g(canvas);
        }
    }

    private final void f(Canvas canvas) {
        Rect rect = this.bgRect;
        canvas.drawLine(rect.left, rect.top, rect.right, rect.bottom, this.bgPaint);
    }

    private final void g(Canvas canvas) {
        this.progressPaint.setStyle(Paint.Style.STROKE);
        this.progressPaint.setStrokeCap(Paint.Cap.ROUND);
        this.progressPaint.setStrokeWidth(this.progressSize);
        Paint paint = this.progressPaint;
        Rect rect = this.progressRect;
        paint.setShader(new LinearGradient(rect.left, rect.top, rect.right, rect.bottom, this.progressColors, (float[]) null, Shader.TileMode.CLAMP));
        Rect rect2 = this.progressRect;
        canvas.drawLine(rect2.left, rect2.top, rect2.right, rect2.bottom, this.progressPaint);
    }

    private final boolean getRightToLeft() {
        return TextUtils.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }

    private final int getThumbHalfWidth() {
        return this.thumbShape == 1 ? this.thumbRectTouchWidth / 2 : this.thumbTouchRadius;
    }

    private final void h(Canvas canvas) {
        float f10;
        float f11;
        float f12;
        float f13;
        float f14;
        float f15 = this.progressSize / 2.0f;
        boolean z10 = this.r2l;
        float f16 = 0.0f;
        if (z10) {
            Rect rect = this.progressRect;
            float f17 = rect.left;
            f10 = 0.0f;
            f11 = rect.right + f15;
            f12 = f17;
            f13 = f15;
            f14 = f13;
        } else {
            Rect rect2 = this.progressRect;
            float f18 = rect2.left - f15;
            f10 = f15;
            f11 = rect2.right;
            f12 = f18;
            f13 = 0.0f;
            f14 = 0.0f;
            f16 = f10;
        }
        int i10 = this.progressRect.top;
        float f19 = i10 - f15;
        float f20 = i10 + f15;
        if (this.currentProgress <= 0) {
            return;
        }
        float f21 = 2 * f15;
        if (z10) {
            if (f11 - f12 < f21) {
                f12 = f11 - f21;
            }
            int i11 = this.bgRect.left;
            if (f12 < i11 - f15) {
                f12 = i11 - f15;
            }
        } else {
            if (f11 - f12 < f21) {
                f11 = f12 + f21;
            }
            int i12 = this.bgRect.right;
            if (f11 > i12 + f15) {
                f11 = i12 + f15;
            }
        }
        float f22 = f12;
        float f23 = f11;
        this.progressPaint.setShader(new LinearGradient(f22, f19, f23, f20, this.progressColors, (float[]) null, Shader.TileMode.CLAMP));
        this.progressPath.reset();
        this.progressPath.addRoundRect(f22, f19, f23, f20, new float[]{f16, f16, f13, f13, f14, f14, f10, f10}, Path.Direction.CW);
        this.progressPaint.setStyle(Paint.Style.FILL);
        canvas.drawPath(this.progressPath, this.progressPaint);
    }

    private final void i(Canvas canvas) {
        int i10;
        int i11;
        int i12 = -1;
        for (Map.Entry entry : this.secondariesProgressLocation.entrySet()) {
            int iIntValue = ((Number) entry.getKey()).intValue();
            int iIntValue2 = ((Number) entry.getValue()).intValue();
            i12++;
            if (i12 == 0 && iIntValue < (i11 = this.bgRect.left)) {
                iIntValue = i11;
            }
            if (i12 == this.secondariesProgressLocation.size() - 1 && iIntValue2 > (i10 = this.bgRect.right)) {
                iIntValue2 = i10;
            }
            float f10 = iIntValue;
            Rect rect = this.progressRect;
            canvas.drawLine(f10, rect.top, iIntValue2, rect.bottom, this.secondaryPaint);
        }
    }

    private final void j(Canvas canvas) {
        float f10 = this.r2l ? this.progressRect.left : this.progressRect.right;
        float f11 = this.progressRect.top;
        if (this.thumbShape != 1) {
            canvas.drawCircle(f10, f11, this.isTouching ? this.thumbTouchRadius : this.thumbRadius, this.thumbPaint);
            return;
        }
        boolean z10 = this.isTouching;
        int i10 = z10 ? this.thumbRectTouchWidth : this.thumbRectWidth;
        int i11 = z10 ? this.thumbRectTouchHeight : this.thumbRectHeight;
        float f12 = z10 ? this.thumbRectTouchCornerRadius : this.thumbCornerRadius;
        float f13 = i10 / 2.0f;
        float f14 = i11 / 2.0f;
        this.thumbRectF.set(f10 - f13, f11 - f14, f10 + f13, f11 + f14);
        canvas.drawRoundRect(this.thumbRectF, f12, f12, this.thumbPaint);
    }

    private final void k() {
        int i10 = this.thumbShape == 1 ? this.thumbRectTouchWidth / 2 : this.thumbTouchRadius;
        int i11 = this.viewWidth;
        int i12 = this.viewPaddingRight;
        int i13 = this.viewPaddingLeft;
        this.barWidth = ((i11 - i12) - i13) - (i10 * 2);
        Rect rect = this.bgRect;
        int i14 = i13 + i10;
        rect.left = i14;
        int i15 = (i11 - i12) - i10;
        rect.right = i15;
        if (this.r2l) {
            this.progressRect.right = i15;
        } else {
            this.progressRect.right = i14;
        }
        int i16 = this.viewHeight / 2;
        rect.top = i16;
        Rect rect2 = this.progressRect;
        rect2.top = i16;
        rect.bottom = i16;
        rect2.bottom = i16;
        n();
        o();
    }

    private final void l(long progress) {
        long j10 = this.maxProgress;
        if (progress >= j10) {
            progress = j10;
        }
        this.currentProgress = progress;
        if (this.lastProgress == progress) {
            return;
        }
        this.lastProgress = progress;
        n();
    }

    private final void m(MotionEvent event) {
        long jB = b(c(a(event)));
        l(jB);
        s sVar = this.listener;
        if (sVar != null) {
            sVar.b(this, jB, true);
        }
        invalidate();
    }

    private final void n() {
        int thumbHalfWidth = getThumbHalfWidth();
        float f10 = (this.currentProgress * 1.0f) / this.maxProgress;
        int i10 = this.barWidth;
        int i11 = (int) (f10 * i10);
        if (this.r2l) {
            Rect rect = this.progressRect;
            int i12 = this.viewPaddingLeft;
            rect.left = ((i12 + thumbHalfWidth) + i10) - i11;
            rect.right = i12 + thumbHalfWidth + i10;
            return;
        }
        Rect rect2 = this.progressRect;
        int i13 = this.viewPaddingLeft;
        rect2.left = i13 + thumbHalfWidth;
        rect2.right = i13 + thumbHalfWidth + i11;
    }

    private final void o() {
        if (this.secondariesProgressLocation.isEmpty()) {
            return;
        }
        int iIntValue = ((Number) CollectionsKt.h0(this.secondariesProgressLocation.keySet())).intValue();
        Integer num = (Integer) this.secondariesProgressLocation.get(Integer.valueOf(iIntValue));
        int iIntValue2 = ((Number) CollectionsKt.t0(this.secondariesProgressLocation.keySet())).intValue();
        Integer num2 = (Integer) this.secondariesProgressLocation.get(Integer.valueOf(iIntValue));
        if ((num2 != null ? num2.intValue() : 0) > this.bgRect.right) {
            this.secondariesProgressLocation.put(Integer.valueOf(iIntValue2), Integer.valueOf(this.progressRect.right));
        }
        if (iIntValue < this.bgRect.left) {
            this.secondariesProgressLocation.remove(Integer.valueOf(iIntValue));
            this.secondariesProgressLocation.put(Integer.valueOf(this.bgRect.left), Integer.valueOf(num != null ? num.intValue() : this.bgRect.left));
        }
    }

    public final long getMaxProgress() {
        return this.maxProgress;
    }

    public final long getCurrentProgress() {
        return this.currentProgress;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        Intrinsics.h(canvas, "canvas");
        super.onDraw(canvas);
        f(canvas);
        i(canvas);
        e(canvas);
        if (this.seekEnable) {
            j(canvas);
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int i10;
        int i11;
        super.onMeasure(widthMeasureSpec, heightMeasureSpec);
        this.viewPaddingLeft = getPaddingLeft();
        this.viewPaddingRight = getPaddingRight();
        this.viewPaddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        this.viewPaddingBottom = paddingBottom;
        if (this.thumbShape == 1) {
            i10 = this.thumbRectTouchHeight * 3;
            i11 = this.viewPaddingTop;
        } else {
            i10 = this.thumbTouchRadius * 6;
            i11 = this.viewPaddingTop;
        }
        this.viewHeight = i10 + i11 + paddingBottom;
        Context context = getContext();
        Intrinsics.g(context, "getContext(...)");
        int iResolveSize = View.resolveSize(d(context, 170.0f), widthMeasureSpec);
        this.viewWidth = iResolveSize;
        setMeasuredDimension(iResolveSize, this.viewHeight);
        k();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x002b  */
    /* JADX WARN: Code duplicated, block: B:17:0x0032  */
    @Override
    public boolean onTouchEvent(MotionEvent event) {
        s sVar;
        Intrinsics.h(event, "event");
        if (!this.seekEnable) {
            return super.onTouchEvent(event);
        }
        int action = event.getAction();
        if (action == 0) {
            this.isTouching = true;
            s sVar2 = this.listener;
            if (sVar2 != null) {
                sVar2.c(this);
            }
            m(event);
            return true;
        }
        if (action == 1) {
            this.isTouching = false;
            sVar = this.listener;
            if (sVar != null) {
                sVar.a(this);
            }
        } else if (action == 2) {
            getParent().requestDisallowInterceptTouchEvent(true);
            this.isTouching = true;
            m(event);
        } else if (action == 3) {
            this.isTouching = false;
            sVar = this.listener;
            if (sVar != null) {
                sVar.a(this);
            }
        }
        return super.onTouchEvent(event);
    }

    public final void seekEnable(boolean enable) {
        this.seekEnable = enable;
    }

    public final void setMax(long max) {
        this.maxProgress = max;
    }

    public final void setOnSeekBarChangeListener(s listener) {
        Intrinsics.h(listener, "listener");
        this.listener = listener;
    }

    public final void setProgress(long progress) {
        l(progress);
        s sVar = this.listener;
        if (sVar != null) {
            sVar.b(this, progress, false);
        }
        invalidate();
    }

    public final void setSecondariesProgress(Map<Integer, Integer> progress) {
        Intrinsics.h(progress, "progress");
        int thumbHalfWidth = getThumbHalfWidth();
        this.secondariesProgressLocation.clear();
        for (Map.Entry<Integer, Integer> entry : progress.entrySet()) {
            if (entry.getValue().intValue() >= entry.getKey().intValue()) {
                float fIntValue = ((entry.getValue().intValue() - entry.getKey().intValue()) * 1.0f) / this.maxProgress;
                int i10 = this.barWidth;
                int i11 = (int) (fIntValue * i10);
                int iFloatValue = this.r2l ? ((this.viewPaddingLeft + thumbHalfWidth) + i10) - ((int) (((entry.getKey().floatValue() * 1.0f) / this.maxProgress) * this.barWidth)) : this.viewPaddingLeft + thumbHalfWidth + ((int) (((entry.getKey().floatValue() * 1.0f) / this.maxProgress) * this.barWidth));
                this.secondariesProgressLocation.put(Integer.valueOf(iFloatValue), Integer.valueOf(this.r2l ? iFloatValue - i11 : iFloatValue + i11));
            }
        }
        invalidate();
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public SecondariesSeekBar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        Intrinsics.h(context, "context");
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SecondariesSeekBar(Context context, AttributeSet attributeSet, int i10) {
        int[] iArr;
        super(context, attributeSet, i10);
        Intrinsics.h(context, "context");
        this.TAG = "SecondariesSeekBar";
        this.maxProgress = 100L;
        this.thumbTouchMultiple = 1.5f;
        this.thumbRectF = new RectF();
        this.progressPath = new Path();
        this.secondariesProgressLocation = new LinkedHashMap();
        this.bgRect = new Rect();
        this.progressRect = new Rect();
        boolean rightToLeft = getRightToLeft();
        this.r2l = rightToLeft;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.SecondariesSeekBar);
        Intrinsics.g(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
        int color = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_bar_start_color, -1);
        int color2 = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_bar_center_color, -1);
        int color3 = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_bar_end_color, -1);
        if (color2 > 0) {
            iArr = new int[3];
            iArr[rightToLeft ? (char) 2 : (char) 0] = color;
            iArr[1] = color2;
            iArr[rightToLeft ? (char) 0 : (char) 2] = color3;
        } else {
            iArr = new int[2];
            iArr[rightToLeft ? 1 : 0] = color;
            iArr[!rightToLeft ? 1 : 0] = color3;
        }
        this.progressColors = iArr;
        this.secondariesProgressColor = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_secondaries_color, -1);
        this.bgColor = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_bg_color, -1);
        this.seekEnable = typedArrayObtainStyledAttributes.getBoolean(R$styleable.SecondariesSeekBar_ssb_seek_enable, true);
        this.thumbColor = typedArrayObtainStyledAttributes.getColor(R$styleable.SecondariesSeekBar_ssb_thumb_color, -1);
        this.progressSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SecondariesSeekBar_ssb_progress_size, d(context, 2.0f));
        this.thumbSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SecondariesSeekBar_ssb_thumb_size, d(context, 8.0f));
        this.maxProgress = typedArrayObtainStyledAttributes.getInt(R$styleable.SecondariesSeekBar_ssb_max, 100);
        this.currentProgress = typedArrayObtainStyledAttributes.getInt(R$styleable.SecondariesSeekBar_ssb_progress, 0);
        float f10 = typedArrayObtainStyledAttributes.getFloat(R$styleable.SecondariesSeekBar_ssb_thumb_enlarge, 1.5f);
        this.thumbTouchMultiple = f10;
        if (f10 < 1.0f) {
            this.thumbTouchMultiple = 1.0f;
        } else if (f10 > 2.0f) {
            this.thumbTouchMultiple = 2.0f;
        }
        int i11 = this.thumbSize;
        int i12 = this.progressSize;
        if (i11 < i12) {
            this.thumbSize = i12;
        }
        int i13 = (int) (this.thumbSize / 2.0f);
        this.thumbRadius = i13;
        this.thumbTouchRadius = (int) (i13 * this.thumbTouchMultiple);
        this.thumbShape = typedArrayObtainStyledAttributes.getInt(R$styleable.SecondariesSeekBar_ssb_thumb_shape, 0);
        this.thumbRectWidth = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SecondariesSeekBar_ssb_thumb_width, d(context, 6.0f));
        this.thumbRectHeight = typedArrayObtainStyledAttributes.getDimensionPixelSize(R$styleable.SecondariesSeekBar_ssb_thumb_height, d(context, 14.0f));
        float dimension = typedArrayObtainStyledAttributes.getDimension(R$styleable.SecondariesSeekBar_ssb_thumb_corner_radius, this.thumbRectWidth / 2.0f);
        this.thumbCornerRadius = dimension;
        float f11 = this.thumbRectWidth;
        float f12 = this.thumbTouchMultiple;
        this.thumbRectTouchWidth = (int) (f11 * f12);
        this.thumbRectTouchHeight = (int) (this.thumbRectHeight * f12);
        this.thumbRectTouchCornerRadius = dimension * f12;
        typedArrayObtainStyledAttributes.recycle();
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        Paint.Cap cap = Paint.Cap.ROUND;
        paint.setStrokeCap(cap);
        paint.setColor(this.bgColor);
        paint.setStrokeWidth(this.progressSize);
        this.bgPaint = paint;
        Paint paint2 = new Paint();
        paint2.setAntiAlias(true);
        paint2.setStrokeCap(cap);
        paint2.setColor(this.secondariesProgressColor);
        paint2.setStrokeWidth(this.progressSize);
        this.secondaryPaint = paint2;
        Paint paint3 = new Paint();
        paint3.setAntiAlias(true);
        this.progressPaint = paint3;
        Paint paint4 = new Paint();
        paint4.setAntiAlias(true);
        paint4.setColor(this.thumbColor);
        this.thumbPaint = paint4;
    }
}
