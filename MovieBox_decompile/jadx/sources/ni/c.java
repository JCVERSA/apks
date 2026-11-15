package ni;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.TransitionOptions;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestListener;
import java.io.File;
import java.net.URL;
import java.util.List;

public class c extends RequestBuilder implements Cloneable {
    c(Class cls, RequestBuilder requestBuilder) {
        super(cls, requestBuilder);
    }

    @Override
    public c frame(long j10) {
        return (c) super.frame(j10);
    }

    @Override
    public c getDownloadOnlyRequest() {
        return new c(File.class, this).apply(RequestBuilder.DOWNLOAD_ONLY_OPTIONS);
    }

    @Override
    public c listener(RequestListener requestListener) {
        return (c) super.listener(requestListener);
    }

    @Override
    public c load2(Bitmap bitmap) {
        return (c) super.load2(bitmap);
    }

    @Override
    public c load2(Drawable drawable) {
        return (c) super.load2(drawable);
    }

    @Override
    public c load2(Uri uri) {
        return (c) super.load2(uri);
    }

    @Override
    public c load2(File file) {
        return (c) super.load2(file);
    }

    @Override
    public c load2(Integer num) {
        return (c) super.load2(num);
    }

    @Override
    public c load2(Object obj) {
        return (c) super.load2(obj);
    }

    @Override
    public c load2(String str) {
        return (c) super.load2(str);
    }

    @Override
    public c load2(URL url) {
        return (c) super.load2(url);
    }

    @Override
    public c load2(byte[] bArr) {
        return (c) super.load2(bArr);
    }

    @Override
    public c lock() {
        return (c) super.lock();
    }

    @Override
    public c onlyRetrieveFromCache(boolean z10) {
        return (c) super.onlyRetrieveFromCache(z10);
    }

    @Override
    public c optionalCenterCrop() {
        return (c) super.optionalCenterCrop();
    }

    @Override
    public c optionalCenterInside() {
        return (c) super.optionalCenterInside();
    }

    @Override
    public c optionalCircleCrop() {
        return (c) super.optionalCircleCrop();
    }

    @Override
    public c optionalFitCenter() {
        return (c) super.optionalFitCenter();
    }

    @Override
    public c optionalTransform(Transformation transformation) {
        return (c) super.optionalTransform(transformation);
    }

    @Override
    public c optionalTransform(Class cls, Transformation transformation) {
        return (c) super.optionalTransform(cls, transformation);
    }

    @Override
    public c override(int i10) {
        return (c) super.override(i10);
    }

    @Override
    public c override(int i10, int i11) {
        return (c) super.override(i10, i11);
    }

    @Override
    public c placeholder(int i10) {
        return (c) super.placeholder(i10);
    }

    @Override
    public c placeholder(Drawable drawable) {
        return (c) super.placeholder(drawable);
    }

    @Override
    public c priority(Priority priority) {
        return (c) super.priority(priority);
    }

    @Override
    public c set(Option option, Object obj) {
        return (c) super.set(option, obj);
    }

    @Override
    public c addListener(RequestListener requestListener) {
        return (c) super.addListener(requestListener);
    }

    @Override
    public c signature(Key key) {
        return (c) super.signature(key);
    }

    @Override
    public c apply(BaseRequestOptions baseRequestOptions) {
        return (c) super.apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override
    public c sizeMultiplier(float f10) {
        return (c) super.sizeMultiplier(f10);
    }

    @Override
    public c autoClone() {
        return (c) super.autoClone();
    }

    @Override
    public c skipMemoryCache(boolean z10) {
        return (c) super.skipMemoryCache(z10);
    }

    @Override
    public c theme(Resources.Theme theme) {
        return (c) super.theme(theme);
    }

    @Override
    public c centerCrop() {
        return (c) super.centerCrop();
    }

    @Override
    public c thumbnail(float f10) {
        return (c) super.thumbnail(f10);
    }

    @Override
    public c thumbnail(RequestBuilder requestBuilder) {
        return (c) super.thumbnail(requestBuilder);
    }

    @Override
    public c centerInside() {
        return (c) super.centerInside();
    }

    @Override
    public c thumbnail(List list) {
        return (c) super.thumbnail(list);
    }

    @Override
    public final c thumbnail(RequestBuilder... requestBuilderArr) {
        return (c) super.thumbnail(requestBuilderArr);
    }

    @Override
    public c circleCrop() {
        return (c) super.circleCrop();
    }

    @Override
    public c timeout(int i10) {
        return (c) super.timeout(i10);
    }

    @Override
    public c mo203clone() {
        return (c) super.mo203clone();
    }

    @Override
    public c transform(Transformation transformation) {
        return (c) super.transform((Transformation<Bitmap>) transformation);
    }

    @Override
    public c decode(Class cls) {
        return (c) super.decode(cls);
    }

    @Override
    public c transform(Class cls, Transformation transformation) {
        return (c) super.transform(cls, transformation);
    }

    @Override
    public c disallowHardwareConfig() {
        return (c) super.disallowHardwareConfig();
    }

    @Override
    public c transform(Transformation... transformationArr) {
        return (c) super.transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override
    public c diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (c) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override
    public c transforms(Transformation... transformationArr) {
        return (c) super.transforms(transformationArr);
    }

    @Override
    public c dontAnimate() {
        return (c) super.dontAnimate();
    }

    @Override
    public c transition(TransitionOptions transitionOptions) {
        return (c) super.transition(transitionOptions);
    }

    @Override
    public c dontTransform() {
        return (c) super.dontTransform();
    }

    @Override
    public c useAnimationPool(boolean z10) {
        return (c) super.useAnimationPool(z10);
    }

    @Override
    public c downsample(DownsampleStrategy downsampleStrategy) {
        return (c) super.downsample(downsampleStrategy);
    }

    @Override
    public c useUnlimitedSourceGeneratorsPool(boolean z10) {
        return (c) super.useUnlimitedSourceGeneratorsPool(z10);
    }

    @Override
    public c encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (c) super.encodeFormat(compressFormat);
    }

    @Override
    public c encodeQuality(int i10) {
        return (c) super.encodeQuality(i10);
    }

    @Override
    public c error(int i10) {
        return (c) super.error(i10);
    }

    @Override
    public c error(Drawable drawable) {
        return (c) super.error(drawable);
    }

    @Override
    public c error(RequestBuilder requestBuilder) {
        return (c) super.error(requestBuilder);
    }

    @Override
    public c error(Object obj) {
        return (c) super.error(obj);
    }

    @Override
    public c fallback(int i10) {
        return (c) super.fallback(i10);
    }

    @Override
    public c fallback(Drawable drawable) {
        return (c) super.fallback(drawable);
    }

    @Override
    public c fitCenter() {
        return (c) super.fitCenter();
    }

    @Override
    public c format(DecodeFormat decodeFormat) {
        return (c) super.format(decodeFormat);
    }

    c(Glide glide, RequestManager requestManager, Class cls, Context context) {
        super(glide, requestManager, cls, context);
    }
}
