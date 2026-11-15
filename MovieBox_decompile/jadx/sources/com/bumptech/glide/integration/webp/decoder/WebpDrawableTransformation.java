package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

public class WebpDrawableTransformation implements Transformation<WebpDrawable> {
    private final Transformation<Bitmap> wrapped;

    public WebpDrawableTransformation(Transformation<Bitmap> transformation) {
        this.wrapped = (Transformation) Preconditions.checkNotNull(transformation);
    }

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof WebpDrawableTransformation) {
            return this.wrapped.equals(((WebpDrawableTransformation) obj).wrapped);
        }
        return false;
    }

    @Override
    public int hashCode() {
        return this.wrapped.hashCode();
    }

    @Override
    public Resource<WebpDrawable> transform(Context context, Resource<WebpDrawable> resource, int i10, int i11) {
        WebpDrawable webpDrawable = resource.get();
        Resource<Bitmap> bitmapResource = new BitmapResource(webpDrawable.getFirstFrame(), Glide.get(context).getBitmapPool());
        Resource<Bitmap> resourceTransform = this.wrapped.transform(context, bitmapResource, i10, i11);
        if (!bitmapResource.equals(resourceTransform)) {
            bitmapResource.recycle();
        }
        webpDrawable.setFrameTransformation(this.wrapped, resourceTransform.get());
        return resource;
    }

    @Override
    public void updateDiskCacheKey(MessageDigest messageDigest) {
        this.wrapped.updateDiskCacheKey(messageDigest);
    }
}
