package ni;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;

public final class b extends RequestOptions implements Cloneable {
    @Override
    public b optionalCenterCrop() {
        return (b) super.optionalCenterCrop();
    }

    @Override
    public b optionalCenterInside() {
        return (b) super.optionalCenterInside();
    }

    @Override
    public b optionalCircleCrop() {
        return (b) super.optionalCircleCrop();
    }

    @Override
    public b optionalFitCenter() {
        return (b) super.optionalFitCenter();
    }

    @Override
    public b optionalTransform(Transformation transformation) {
        return (b) super.optionalTransform(transformation);
    }

    @Override
    public b optionalTransform(Class cls, Transformation transformation) {
        return (b) super.optionalTransform(cls, transformation);
    }

    @Override
    public b override(int i10) {
        return (b) super.override(i10);
    }

    @Override
    public b override(int i10, int i11) {
        return (b) super.override(i10, i11);
    }

    @Override
    public b placeholder(int i10) {
        return (b) super.placeholder(i10);
    }

    @Override
    public b placeholder(Drawable drawable) {
        return (b) super.placeholder(drawable);
    }

    @Override
    public b priority(Priority priority) {
        return (b) super.priority(priority);
    }

    @Override
    public b set(Option option, Object obj) {
        return (b) super.set(option, obj);
    }

    @Override
    public b signature(Key key) {
        return (b) super.signature(key);
    }

    @Override
    public b sizeMultiplier(float f10) {
        return (b) super.sizeMultiplier(f10);
    }

    @Override
    public b skipMemoryCache(boolean z10) {
        return (b) super.skipMemoryCache(z10);
    }

    @Override
    public b theme(Resources.Theme theme) {
        return (b) super.theme(theme);
    }

    @Override
    public b timeout(int i10) {
        return (b) super.timeout(i10);
    }

    @Override
    public b transform(Transformation transformation) {
        return (b) super.transform((Transformation<Bitmap>) transformation);
    }

    @Override
    public b transform(Class cls, Transformation transformation) {
        return (b) super.transform(cls, transformation);
    }

    @Override
    public final b transform(Transformation... transformationArr) {
        return (b) super.transform((Transformation<Bitmap>[]) transformationArr);
    }

    @Override
    public final b transforms(Transformation... transformationArr) {
        return (b) super.transforms(transformationArr);
    }

    @Override
    public b useAnimationPool(boolean z10) {
        return (b) super.useAnimationPool(z10);
    }

    @Override
    public b useUnlimitedSourceGeneratorsPool(boolean z10) {
        return (b) super.useUnlimitedSourceGeneratorsPool(z10);
    }

    @Override
    public b apply(BaseRequestOptions baseRequestOptions) {
        return (b) super.apply(baseRequestOptions);
    }

    @Override
    public b autoClone() {
        return (b) super.autoClone();
    }

    @Override
    public b centerCrop() {
        return (b) super.centerCrop();
    }

    @Override
    public b centerInside() {
        return (b) super.centerInside();
    }

    @Override
    public b circleCrop() {
        return (b) super.circleCrop();
    }

    @Override
    public b mo203clone() {
        return (b) super.mo203clone();
    }

    @Override
    public b decode(Class cls) {
        return (b) super.decode(cls);
    }

    @Override
    public b disallowHardwareConfig() {
        return (b) super.disallowHardwareConfig();
    }

    @Override
    public b diskCacheStrategy(DiskCacheStrategy diskCacheStrategy) {
        return (b) super.diskCacheStrategy(diskCacheStrategy);
    }

    @Override
    public b dontAnimate() {
        return (b) super.dontAnimate();
    }

    @Override
    public b dontTransform() {
        return (b) super.dontTransform();
    }

    @Override
    public b downsample(DownsampleStrategy downsampleStrategy) {
        return (b) super.downsample(downsampleStrategy);
    }

    @Override
    public b encodeFormat(Bitmap.CompressFormat compressFormat) {
        return (b) super.encodeFormat(compressFormat);
    }

    @Override
    public b encodeQuality(int i10) {
        return (b) super.encodeQuality(i10);
    }

    @Override
    public b error(int i10) {
        return (b) super.error(i10);
    }

    @Override
    public b error(Drawable drawable) {
        return (b) super.error(drawable);
    }

    @Override
    public b fallback(int i10) {
        return (b) super.fallback(i10);
    }

    @Override
    public b fallback(Drawable drawable) {
        return (b) super.fallback(drawable);
    }

    @Override
    public b fitCenter() {
        return (b) super.fitCenter();
    }

    @Override
    public b format(DecodeFormat decodeFormat) {
        return (b) super.format(decodeFormat);
    }

    @Override
    public b frame(long j10) {
        return (b) super.frame(j10);
    }

    @Override
    public b lock() {
        return (b) super.lock();
    }

    @Override
    public b onlyRetrieveFromCache(boolean z10) {
        return (b) super.onlyRetrieveFromCache(z10);
    }
}
