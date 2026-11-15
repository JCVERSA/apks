package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;

@Deprecated
public abstract class BaseTarget<Z> implements Target<Z> {
    private Request request;

    @Override
    @Nullable
    public Request getRequest() {
        return this.request;
    }

    @Override
    public void setRequest(@Nullable Request request) {
        this.request = request;
    }

    @Override
    public void onDestroy() {
    }

    @Override
    public void onStart() {
    }

    @Override
    public void onStop() {
    }

    @Override
    public void onLoadCleared(@Nullable Drawable drawable) {
    }

    @Override
    public void onLoadFailed(@Nullable Drawable drawable) {
    }

    @Override
    public void onLoadStarted(@Nullable Drawable drawable) {
    }
}
