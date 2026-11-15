package com.monetization.ads.nativeads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import androidx.annotation.LayoutRes;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.monetization.ads.nativeads.CustomizableMediaView;
import com.yandex.mobile.ads.R;
import com.yandex.mobile.ads.impl.nh;
import com.yandex.mobile.ads.impl.yf2;
import com.yandex.mobile.ads.impl.zf2;
import defpackage.y45;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;

@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0016\u0018\u00002\u00020\u0001:\u0001\u0004B#\b\u0007\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010!\u001a\u0004\u0018\u00010 \u0012\u0006\u0010\"\u001a\u00020\u0002¢\u0006\u0004\b#\u0010$B\u0011\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e¢\u0006\u0004\b#\u0010%B\u001b\b\u0016\u0012\u0006\u0010\u001f\u001a\u00020\u001e\u0012\b\u0010!\u001a\u0004\u0018\u00010 ¢\u0006\u0004\b#\u0010&R*\u0010\t\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@DX\u0087\u000e¢\u0006\u0012\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\u0004\u0010\bR$\u0010\f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\n\u0010\u0005\u001a\u0004\b\u000b\u0010\u0007R$\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00028\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010\u0005\u001a\u0004\b\u000e\u0010\u0007R(\u0010\u0015\u001a\u0004\u0018\u00010\u00102\b\u0010\u0003\u001a\u0004\u0018\u00010\u00108\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014R$\u0010\u001d\u001a\u0004\u0018\u00010\u00168\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001c¨\u0006'"}, d2 = {"Lcom/monetization/ads/nativeads/CustomizableMediaView;", "Landroid/widget/FrameLayout;", "", "<set-?>", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "I", "getVideoControlsLayoutId", "()I", "(I)V", "videoControlsLayoutId", "b", "getWidthMeasureSpec", "widthMeasureSpec", "c", "getHeightMeasureSpec", "heightMeasureSpec", "Lcom/yandex/mobile/ads/impl/yf2;", "d", "Lcom/yandex/mobile/ads/impl/yf2;", "getVideoScaleType", "()Lcom/yandex/mobile/ads/impl/yf2;", "videoScaleType", "Lcom/monetization/ads/nativeads/CustomizableMediaView$a;", "e", "Lcom/monetization/ads/nativeads/CustomizableMediaView$a;", "getOnSizeChangedListener$mobileads_externalRelease", "()Lcom/monetization/ads/nativeads/CustomizableMediaView$a;", "setOnSizeChangedListener$mobileads_externalRelease", "(Lcom/monetization/ads/nativeads/CustomizableMediaView$a;)V", "onSizeChangedListener", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attributeSet", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "(Landroid/content/Context;)V", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "mobileads_externalRelease"}, k = 1, mv = {1, 9, 0})
public class CustomizableMediaView extends FrameLayout {

    @LayoutRes
    private static final int f = R.layout.monetization_ads_internal_outstream_controls_default;

    @LayoutRes
    private int videoControlsLayoutId;

    private int widthMeasureSpec;

    private int heightMeasureSpec;

    private yf2 videoScaleType;

    private a onSizeChangedListener;

    public interface a {
        void a(int i, int i2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @SuppressLint({"CustomViewStyleable"})
    public CustomizableMediaView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.MonetizationAdsInternalMediaView);
            y45.i(typedArrayObtainStyledAttributes, "obtainStyledAttributes(...)");
            this.videoControlsLayoutId = typedArrayObtainStyledAttributes.getResourceId(R.styleable.MonetizationAdsInternalMediaView_monetization_internal_video_controls_layout, f);
            this.videoScaleType = zf2.a(typedArrayObtainStyledAttributes);
            typedArrayObtainStyledAttributes.recycle();
        } else {
            this.videoControlsLayoutId = f;
            this.videoScaleType = null;
        }
        addOnAttachStateChangeListener(new nh(new ViewTreeObserver.OnGlobalLayoutListener() {
            @Override
            public final void onGlobalLayout() {
                CustomizableMediaView.a(this.b);
            }
        }));
    }

    public final void a(int i) {
        this.videoControlsLayoutId = i;
    }

    public final int getHeightMeasureSpec() {
        return this.heightMeasureSpec;
    }

    public final a getOnSizeChangedListener() {
        return this.onSizeChangedListener;
    }

    public final int getVideoControlsLayoutId() {
        return this.videoControlsLayoutId;
    }

    public final yf2 getVideoScaleType() {
        return this.videoScaleType;
    }

    public final int getWidthMeasureSpec() {
        return this.widthMeasureSpec;
    }

    @Override
    public final void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.widthMeasureSpec = i;
        this.heightMeasureSpec = i2;
    }

    @Override
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        a aVar = this.onSizeChangedListener;
        if (aVar != null) {
            aVar.a(i, i2);
        }
    }

    public final void setOnSizeChangedListener$mobileads_externalRelease(a aVar) {
        this.onSizeChangedListener = aVar;
    }

    public static final void a(CustomizableMediaView customizableMediaView) {
        y45.j(customizableMediaView, "this$0");
        a aVar = customizableMediaView.onSizeChangedListener;
        if (aVar != null) {
            aVar.a(customizableMediaView.getWidth(), customizableMediaView.getHeight());
        }
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomizableMediaView(Context context) {
        this(context, null);
        y45.j(context, "context");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public CustomizableMediaView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
        y45.j(context, "context");
    }
}
