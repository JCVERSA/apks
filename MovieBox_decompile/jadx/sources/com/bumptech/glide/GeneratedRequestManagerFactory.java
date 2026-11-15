package com.bumptech.glide;

import android.content.Context;
import androidx.annotation.NonNull;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import ni.d;

final class GeneratedRequestManagerFactory implements RequestManagerRetriever.RequestManagerFactory {
    GeneratedRequestManagerFactory() {
    }

    @Override
    @NonNull
    public RequestManager build(@NonNull Glide glide, @NonNull Lifecycle lifecycle, @NonNull RequestManagerTreeNode requestManagerTreeNode, @NonNull Context context) {
        return new d(glide, lifecycle, requestManagerTreeNode, context);
    }
}
