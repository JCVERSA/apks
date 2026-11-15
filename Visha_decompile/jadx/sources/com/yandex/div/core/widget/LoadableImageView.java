package com.yandex.div.core.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.AnimatedImageDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.dbdata.beans.media.PlayAudioData;
import com.transsion.playercommon.vishaapis.gslb.GslbInterceptor;
import com.yandex.div.R;
import com.yandex.div.internal.widget.AspectImageView;
import defpackage.c74;
import defpackage.jn5;
import defpackage.kn5;
import defpackage.p19;
import defpackage.rv2;
import defpackage.y45;
import java.util.concurrent.Future;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u000f\n\u0002\u0018\u0002\n\u0002\b\n\b\u0016\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003:\u0001kB%\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\n\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b¢\u0006\u0004\b\n\u0010\u000bJ\u0013\u0010\r\u001a\u00020\f*\u00020\fH\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0013\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\bH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0016\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0015H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u0019\u0010\u001b\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u001b\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b\u001d\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b\u001d\u0010 J\u0019\u0010!\u001a\u00020\u00152\b\u0010\u001f\u001a\u0004\u0018\u00010\u001eH\u0016¢\u0006\u0004\b!\u0010 J\u0019\u0010!\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b!\u0010\u001cJ\u001b\u0010$\u001a\u00020\u00152\n\u0010#\u001a\u0006\u0012\u0002\b\u00030\"H\u0016¢\u0006\u0004\b$\u0010%J\u0015\u0010&\u001a\b\u0012\u0002\b\u0003\u0018\u00010\"H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0015H\u0016¢\u0006\u0004\b(\u0010\u0017J\u0019\u0010)\u001a\u00020\u00152\b\u0010\u001a\u001a\u0004\u0018\u00010\fH\u0017¢\u0006\u0004\b)\u0010\u001cJ\u0019\u0010+\u001a\u00020\u00152\b\u0010*\u001a\u0004\u0018\u00010\u001eH\u0017¢\u0006\u0004\b+\u0010 J\u0017\u0010-\u001a\u00020\u00152\u0006\u0010,\u001a\u00020\fH\u0016¢\u0006\u0004\b-\u0010\u001cJ\u0019\u0010/\u001a\u00020\u00152\b\u0010.\u001a\u0004\u0018\u00010\fH\u0016¢\u0006\u0004\b/\u0010\u001cJ\u001f\u00103\u001a\u00020\u00152\u0006\u00101\u001a\u0002002\u0006\u00102\u001a\u00020\bH\u0014¢\u0006\u0004\b3\u00104J\u000f\u00105\u001a\u00020\u0015H\u0014¢\u0006\u0004\b5\u0010\u0017J\u000f\u00106\u001a\u00020\u0015H\u0014¢\u0006\u0004\b6\u0010\u0017J\u0017\u00108\u001a\u00020\u00152\u0006\u00107\u001a\u00020\u000fH\u0016¢\u0006\u0004\b8\u00109J\u001f\u0010<\u001a\u00020\u00152\u0010\b\u0002\u0010;\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010:¢\u0006\u0004\b<\u0010=R*\u0010C\u001a\u0004\u0018\u00010\u001e8\u0000@\u0000X\u0081\u000e¢\u0006\u0018\n\u0004\b\u0013\u0010>\u0012\u0004\bB\u0010\u0017\u001a\u0004\b?\u0010@\"\u0004\bA\u0010 R$\u0010K\u001a\u0004\u0018\u00010D8\u0000@\u0000X\u0080\u000e¢\u0006\u0012\n\u0004\bE\u0010F\u001a\u0004\bG\u0010H\"\u0004\bI\u0010JR\u001e\u0010N\u001a\n\u0012\u0004\u0012\u00020\u0015\u0018\u00010:8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bL\u0010MR\u0018\u0010Q\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bO\u0010PR\u0016\u0010U\u001a\u00020R8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\bS\u0010TR4\u0010\\\u001a\u0004\u0018\u00010\f2\b\u0010V\u001a\u0004\u0018\u00010\f8\u0006@FX\u0087\u000e¢\u0006\u0018\n\u0004\bW\u0010P\u0012\u0004\b[\u0010\u0017\u001a\u0004\bX\u0010Y\"\u0004\bZ\u0010\u001cR(\u0010a\u001a\u0004\u0018\u00010R2\b\u0010V\u001a\u0004\u0018\u00010R8F@FX\u0086\u000e¢\u0006\f\u001a\u0004\b]\u0010^\"\u0004\b_\u0010`R$\u0010c\u001a\u0004\u0018\u00010b8\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\bc\u0010d\u001a\u0004\be\u0010f\"\u0004\bg\u0010hR\u0014\u0010i\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bi\u0010\u0011R\u0014\u0010j\u001a\u00020\u000f8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\bj\u0010\u0011¨\u0006l"}, d2 = {"Lcom/yandex/div/core/widget/LoadableImageView;", "Lcom/yandex/div/internal/widget/AspectImageView;", "Lkn5;", "", "Landroid/content/Context;", "context", "Landroid/util/AttributeSet;", "attrs", "", "defStyleAttr", MethodDecl.initName, "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "Landroid/graphics/drawable/Drawable;", "f", "(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;", "", GslbInterceptor.HEADER_KEY_GSLB, "()Z", PlayAudioData.TAG_SIZE, CmcdData.STREAMING_FORMAT_HLS, "(I)Z", "Lzfb;", "imageLoaded", "()V", "previewLoaded", "resetImageLoaded", "drawable", "setPlaceholder", "(Landroid/graphics/drawable/Drawable;)V", "setPreview", "Landroid/graphics/Bitmap;", "bitmap", "(Landroid/graphics/Bitmap;)V", "setImage", "Ljava/util/concurrent/Future;", "task", "saveLoadingTask", "(Ljava/util/concurrent/Future;)V", "getLoadingTask", "()Ljava/util/concurrent/Future;", "cleanLoadingTask", "setImageDrawable", "bm", "setImageBitmap", "dr", "invalidateDrawable", "who", "unscheduleDrawable", "Landroid/view/View;", "changedView", "visibility", "onVisibilityChanged", "(Landroid/view/View;I)V", "onAttachedToWindow", "onDetachedFromWindow", "autoScale", "buildDrawingCache", "(Z)V", "Lkotlin/Function0;", "callback", "setImageChangeCallback", "(Lc74;)V", "Landroid/graphics/Bitmap;", "getCurrentBitmapWithoutFilters$div_release", "()Landroid/graphics/Bitmap;", "setCurrentBitmapWithoutFilters$div_release", "getCurrentBitmapWithoutFilters$div_release$annotations", "currentBitmapWithoutFilters", "Ljn5;", CmcdData.OBJECT_TYPE_INIT_SEGMENT, "Ljn5;", "getLoadReference$div_release", "()Ljn5;", "setLoadReference$div_release", "(Ljn5;)V", "loadReference", "j", "Lc74;", "imageChangeCallback", "k", "Landroid/graphics/drawable/Drawable;", "sourceDrawable", "Lcom/yandex/div/core/widget/LoadableImageView$a;", CmcdData.STREAM_TYPE_LIVE, "Lcom/yandex/div/core/widget/LoadableImageView$a;", "_imageTransformer", ES6Iterator.VALUE_PROPERTY, CmcdData.OBJECT_TYPE_MANIFEST, "getExternalImage", "()Landroid/graphics/drawable/Drawable;", "setExternalImage", "getExternalImage$annotations", "externalImage", "getImageTransformer", "()Lcom/yandex/div/core/widget/LoadableImageView$a;", "setImageTransformer", "(Lcom/yandex/div/core/widget/LoadableImageView$a;)V", "imageTransformer", "Lrv2;", "delegate", "Lrv2;", "getDelegate", "()Lrv2;", "setDelegate", "(Lrv2;)V", "isImageLoaded", "isImagePreview", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "div_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public class LoadableImageView extends AspectImageView implements kn5 {

    public Bitmap currentBitmapWithoutFilters;

    public jn5 loadReference;

    public c74 imageChangeCallback;

    public Drawable sourceDrawable;

    public a _imageTransformer;

    public Drawable externalImage;

    public interface a {

        public static final class C0294a implements a {
            public static final C0294a a = new C0294a();

            @Override
            public Drawable a(Drawable drawable) {
                return drawable;
            }
        }

        Drawable a(Drawable drawable);
    }

    public LoadableImageView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, (i2 & 2) != 0 ? null : attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    public static void getCurrentBitmapWithoutFilters$div_release$annotations() {
    }

    public static void getExternalImage$annotations() {
    }

    public static void setImageChangeCallback$default(LoadableImageView loadableImageView, c74 c74Var, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: setImageChangeCallback");
        }
        if ((i & 1) != 0) {
            c74Var = null;
        }
        loadableImageView.setImageChangeCallback(c74Var);
    }

    @Override
    public void buildDrawingCache(boolean autoScale) {
        getDelegate();
        super.buildDrawingCache(autoScale);
    }

    @Override
    public void cleanLoadingTask() {
        setTag(R.id.bitmap_load_references_tag, null);
    }

    public final Drawable f(Drawable drawable) {
        if (!g()) {
            return drawable;
        }
        if (!(drawable instanceof BitmapDrawable)) {
            return drawable instanceof AnimatedImageDrawable ? new p19(drawable, getContext().getResources().getDisplayMetrics().density) : drawable;
        }
        BitmapDrawable bitmapDrawable = (BitmapDrawable) drawable;
        Bitmap bitmap = bitmapDrawable.getBitmap();
        if (bitmap != null) {
            bitmap.setDensity(160);
        }
        bitmapDrawable.setTargetDensity(getContext().getResources().getDisplayMetrics());
        return drawable;
    }

    public final boolean g() {
        return (h(getLayoutParams().width) && h(getLayoutParams().height)) || getImageScale() == AspectImageView.Scale.NO_SCALE;
    }

    public final Bitmap getCurrentBitmapWithoutFilters() {
        return this.currentBitmapWithoutFilters;
    }

    public rv2 getDelegate() {
        return null;
    }

    public final Drawable getExternalImage() {
        return this.externalImage;
    }

    public final a get_imageTransformer() {
        return this._imageTransformer;
    }

    public final jn5 getLoadReference() {
        return this.loadReference;
    }

    @Override
    public Future<?> getLoadingTask() {
        Object tag = getTag(R.id.bitmap_load_references_tag);
        if (tag instanceof Future) {
            return (Future) tag;
        }
        return null;
    }

    public final boolean h(int size) {
        return size == -3 || size == -2;
    }

    public void imageLoaded() {
        setTag(R.id.image_loaded_flag, Boolean.TRUE);
    }

    @Override
    public void invalidateDrawable(Drawable dr) {
        y45.j(dr, "dr");
        getDelegate();
        super.invalidateDrawable(dr);
    }

    public boolean isImageLoaded() {
        return y45.e(getTag(R.id.image_loaded_flag), Boolean.TRUE);
    }

    public boolean isImagePreview() {
        return y45.e(getTag(R.id.image_loaded_flag), Boolean.FALSE);
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        getDelegate();
    }

    @Override
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getDelegate();
    }

    @Override
    public void onVisibilityChanged(View changedView, int visibility) {
        y45.j(changedView, "changedView");
        getDelegate();
    }

    public void previewLoaded() {
        setTag(R.id.image_loaded_flag, Boolean.FALSE);
    }

    public void resetImageLoaded() {
        setTag(R.id.image_loaded_flag, null);
    }

    @Override
    public void saveLoadingTask(Future<?> task) {
        y45.j(task, "task");
        setTag(R.id.bitmap_load_references_tag, task);
    }

    public final void setCurrentBitmapWithoutFilters$div_release(Bitmap bitmap) {
        this.currentBitmapWithoutFilters = bitmap;
    }

    public void setDelegate(rv2 rv2Var) {
    }

    public final void setExternalImage(Drawable drawable) {
        this.externalImage = drawable != null ? f(drawable) : null;
        invalidate();
    }

    public void setImage(Bitmap bitmap) {
        setImageBitmap(bitmap);
    }

    @Override
    @CallSuper
    public void setImageBitmap(Bitmap bm) {
        if (g() && bm != null) {
            bm.setDensity(160);
        }
        setImageDrawable(new BitmapDrawable(getContext().getResources(), bm));
    }

    public final void setImageChangeCallback(c74 callback) {
        this.imageChangeCallback = callback;
    }

    @Override
    @CallSuper
    public void setImageDrawable(Drawable drawable) {
        this.sourceDrawable = drawable;
        if (this.externalImage == null) {
            Drawable drawableA = this._imageTransformer.a(drawable);
            super.setImageDrawable(drawableA != null ? f(drawableA) : null);
            c74 c74Var = this.imageChangeCallback;
            if (c74Var != null) {
                c74Var.invoke();
                return;
            }
            return;
        }
        Drawable drawable2 = getDrawable();
        Drawable drawable3 = this.externalImage;
        if (drawable2 != drawable3) {
            super.setImageDrawable(drawable3);
        }
        c74 c74Var2 = this.imageChangeCallback;
        if (c74Var2 != null) {
            c74Var2.invoke();
        }
    }

    public final void setImageTransformer(a aVar) {
        if (aVar == null) {
            aVar = a.C0294a.a;
        }
        this._imageTransformer = aVar;
        Drawable drawable = this.sourceDrawable;
        if (drawable != null) {
            setImageDrawable(drawable);
        }
    }

    public final void setLoadReference$div_release(jn5 jn5Var) {
        this.loadReference = jn5Var;
    }

    public void setPlaceholder(Drawable drawable) {
        setImageDrawable(drawable);
    }

    public void setPreview(Drawable drawable) {
        setImageDrawable(drawable);
    }

    @Override
    public void unscheduleDrawable(Drawable who) {
        getDelegate();
        super.unscheduleDrawable(who);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LoadableImageView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        y45.j(context, "context");
        this._imageTransformer = a.C0294a.a;
    }

    public void setImage(Drawable drawable) {
        setImageDrawable(drawable);
        Object drawable2 = getDrawable();
        if ((drawable2 instanceof Animatable) && this.externalImage == null) {
            ((Animatable) drawable2).start();
        }
    }

    public void setPreview(Bitmap bitmap) {
        setImageBitmap(bitmap);
    }
}
