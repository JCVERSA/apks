package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;

public abstract class CustomTarget<T> implements Target<T> {
    private final int height;

    @Nullable
    private Request request;
    private final int width;

    public CustomTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override
    @Nullable
    public final Request getRequest() {
        return this.request;
    }

    @Override
    public final void getSize(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.onSizeReady(this.width, this.height);
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override
    public void onLoadStarted(@Nullable Drawable drawable) {
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
    }

    @Override
    public final void removeCallback(@NonNull SizeReadyCallback sizeReadyCallback) {
    }

    @Override
    public final void setRequest(@Nullable Request request) {
        this.request = request;
    }

    public CustomTarget(int i, int i2) {
        if (Util.isValidDimensions(i, i2)) {
            this.width = i;
            this.height = i2;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i + " and height: " + i2);
    }
}
