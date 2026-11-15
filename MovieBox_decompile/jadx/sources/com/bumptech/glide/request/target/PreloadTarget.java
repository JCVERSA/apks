package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.transition.Transition;

public final class PreloadTarget<Z> extends CustomTarget<Z> {
    private static final Handler HANDLER = new Handler(Looper.getMainLooper(), new Handler.Callback() {
        @Override
        public boolean handleMessage(Message message) {
            if (message.what != 1) {
                return false;
            }
            ((PreloadTarget) message.obj).clear();
            return true;
        }
    });
    private static final int MESSAGE_CLEAR = 1;
    private final RequestManager requestManager;

    private PreloadTarget(RequestManager requestManager, int i10, int i11) {
        super(i10, i11);
        this.requestManager = requestManager;
    }

    public static <Z> PreloadTarget<Z> obtain(RequestManager requestManager, int i10, int i11) {
        return new PreloadTarget<>(requestManager, i10, i11);
    }

    void clear() {
        this.requestManager.clear(this);
    }

    @Override
    public void onResourceReady(@NonNull Z z10, @Nullable Transition<? super Z> transition) {
        Request request = getRequest();
        if (request == null || !request.isComplete()) {
            return;
        }
        HANDLER.obtainMessage(1, this).sendToTarget();
    }

    @Override
    public void onLoadCleared(@Nullable Drawable drawable) {
    }
}
