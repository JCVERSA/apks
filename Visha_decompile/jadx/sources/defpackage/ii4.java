package defpackage;

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

public class ii4 extends RequestBuilder implements Cloneable {
    public ii4(Class cls, RequestBuilder requestBuilder) {
        super(cls, requestBuilder);
    }

    @Override
    public ii4 listener(RequestListener requestListener) {
        return (ii4) super.listener(requestListener);
    }

    @Override
    public ii4 load2(Bitmap bitmap) {
        return (ii4) super.load2(bitmap);
    }

    @Override
    public ii4 load2(Drawable drawable) {
        return (ii4) super.load2(drawable);
    }

    @Override
    public ii4 load2(Uri uri) {
        return (ii4) super.load2(uri);
    }

    @Override
    public ii4 load2(File file) {
        return (ii4) super.load2(file);
    }

    @Override
    public ii4 load2(Integer num) {
        return (ii4) super.load2(num);
    }

    @Override
    public ii4 load2(Object obj) {
        return (ii4) super.load2(obj);
    }

    @Override
    public ii4 load2(String str) {
        return (ii4) super.load2(str);
    }

    @Override
    public ii4 load2(URL url) {
        return (ii4) super.load2(url);
    }

    @Override
    public ii4 load2(byte[] bArr) {
        return (ii4) super.load2(bArr);
    }

    @Override
    public ii4 lock() {
        return (ii4) super.lock();
    }

    @Override
    public ii4 onlyRetrieveFromCache(boolean z) {
        return (ii4) super.onlyRetrieveFromCache(z);
    }

    @Override
    public ii4 optionalCenterCrop() {
        return (ii4) super.optionalCenterCrop();
    }

    @Override
    public ii4 optionalCenterInside() {
        return (ii4) super.optionalCenterInside();
    }

    @Override
    public ii4 optionalCircleCrop() {
        return (ii4) super.optionalCircleCrop();
    }

    @Override
    public ii4 optionalFitCenter() {
        return (ii4) super.optionalFitCenter();
    }

    @Override
    public ii4 optionalTransform(Transformation transformation) {
        return (ii4) super.optionalTransform(transformation);
    }

    @Override
    public ii4 optionalTransform(Class cls, Transformation transformation) {
        return (ii4) super.optionalTransform(cls, transformation);
    }

    @Override
    public ii4 override(int i) {
        return (ii4) super.override(i);
    }

    @Override
    public ii4 override(int i, int i2) {
        return (ii4) super.override(i, i2);
    }

    @Override
    public ii4 placeholder(int i) {
        return (ii4) super.placeholder(i);
    }

    @Override
    public ii4 placeholder(Drawable drawable) {
        return (ii4) super.placeholder(drawable);
    }

    @Override
    public ii4 priority(Priority priority) {
        return (ii4) super.priority(priority);
    }

    @Override
    public ii4 set(Option option, Object obj) {
        return (ii4) super.set(option, obj);
    }

    @Override
    public ii4 signature(Key key) {
        return (ii4) super.signature(key);
    }

    @Override
    public ii4 addListener(RequestListener requestListener) {
        return (ii4) super.addListener(requestListener);
    }

    @Override
    public ii4 sizeMultiplier(float f) {
        return (ii4) super.sizeMultiplier(f);
    }

    @Override
    public ii4 skipMemoryCache(boolean z) {
        return (ii4) super.skipMemoryCache(z);
    }

    @Override
    public ii4 apply(BaseRequestOptions baseRequestOptions) {
        return (ii4) super.apply((BaseRequestOptions<?>) baseRequestOptions);
    }

    @Override
    public ii4 theme(Resources.Theme theme) {
        return (ii4) super.theme(theme);
    }

    @Override
    public ii4 autoClone() {
        return (ii4) super.autoClone();
    }

    @Override
    public ii4 thumbnail(float f) {
        return (ii4) super.thumbnail(f);
    }

    @Override
    public ii4 centerCrop() {
        return (ii4) super.centerCrop();
    }

    @Override
    public ii4 thumbnail(RequestBuilder requestBuilder) {
        return (ii4) super.thumbnail(requestBuilder);
    }

    @Override
    public ii4 centerInside() {
        return (ii4) super.centerInside();
    }

    @Override
    public ii4 thumbnail(List list) {
        return (ii4) super.thumbnail(list);
    }

    @Override
    public ii4 circleCrop() {
        return (ii4) super.circleCrop();
    }

    @Override
    public final ii4 thumbnail(RequestBuilder... requestBuilderArr) {
        return (ii4) super.thumbnail(requestBuilderArr);
    }

    @Override
    public ii4 mo66clone() {
        return (ii4) super.mo66clone();
    }

    @Override
    public ii4 timeout(int i) {
        return (ii4) super.timeout(i);
    }

    @Override
    public ii4 decode(Class cls) {
        return (ii4) super.decode(cls);
    }

    @Override
    public ii4 transform(Transformation transformation) {
        return (ii4) super.transform((Transformation<Bitmap>) transformation);
    }

    @Override
    public ii4 disallowHardwareConfig() {
        return (ii4) super.disallowHardwareConfig();
    }

    @Override
    public ii4 transform(Class cls, Transformation transformation) {
        return (ii4) super.transform(cls, transformation);
    }

    @Override
    public ii4 diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (ii4) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override
    public ii4 transform(Transformation... transformationArr) {
        return (ii4) super.transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override
    public ii4 dontAnimate() {
        return (ii4) super.dontAnimate();
    }

    @Override
    public ii4 transforms(Transformation... transformationArr) {
        return (ii4) super.transforms(transformationArr);
    }

    @Override
    public ii4 dontTransform() {
        return (ii4) super.dontTransform();
    }

    @Override
    public ii4 transition(TransitionOptions transitionOptions) {
        return (ii4) super.transition(transitionOptions);
    }

    @Override
    public ii4 downsample(DownsampleStrategy downsampleStrategy) {
        return (ii4) super.downsample(downsampleStrategy);
    }

    @Override
    public ii4 useAnimationPool(boolean z) {
        return (ii4) super.useAnimationPool(z);
    }

    @Override
    public ii4 encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (ii4) super.encodeFormat(compressFormat);
    }

    @Override
    public ii4 useUnlimitedSourceGeneratorsPool(boolean z) {
        return (ii4) super.useUnlimitedSourceGeneratorsPool(z);
    }

    @Override
    public ii4 encodeQuality(int i) {
        return (ii4) super.encodeQuality(i);
    }

    @Override
    public ii4 error(int i) {
        return (ii4) super.error(i);
    }

    @Override
    public ii4 error(Drawable drawable) {
        return (ii4) super.error(drawable);
    }

    @Override
    public ii4 error(RequestBuilder requestBuilder) {
        return (ii4) super.error(requestBuilder);
    }

    @Override
    public ii4 error(Object obj) {
        return (ii4) super.error(obj);
    }

    @Override
    public ii4 fallback(int i) {
        return (ii4) super.fallback(i);
    }

    @Override
    public ii4 fallback(Drawable drawable) {
        return (ii4) super.fallback(drawable);
    }

    @Override
    public ii4 fitCenter() {
        return (ii4) super.fitCenter();
    }

    @Override
    public ii4 format(DecodeFormat decodeFormat) {
        return (ii4) super.format(decodeFormat);
    }

    @Override
    public ii4 frame(long j) {
        return (ii4) super.frame(j);
    }

    @Override
    public ii4 getDownloadOnlyRequest() {
        return new ii4(File.class, this).apply(RequestBuilder.DOWNLOAD_ONLY_OPTIONS);
    }

    public ii4(Glide glide, RequestManager requestManager, Class cls, Context context) {
        super(glide, requestManager, cls, context);
    }
}
