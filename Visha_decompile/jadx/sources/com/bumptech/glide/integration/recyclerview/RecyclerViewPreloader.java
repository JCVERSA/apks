package com.bumptech.glide.integration.recyclerview;

import android.app.Activity;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.RecyclerView;
import com.bumptech.glide.Glide;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.RequestManager;

public final class RecyclerViewPreloader<T> extends RecyclerView.OnScrollListener {
    private final RecyclerToListViewScrollListener recyclerScrollListener;

    public RecyclerViewPreloader(@NonNull Activity activity, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this(Glide.with(activity), preloadModelProvider, preloadSizeProvider, i);
    }

    @Override
    public void onScrolled(RecyclerView recyclerView, int i, int i2) {
        this.recyclerScrollListener.onScrolled(recyclerView, i, i2);
    }

    public RecyclerViewPreloader(@NonNull FragmentActivity fragmentActivity, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this(Glide.with(fragmentActivity), preloadModelProvider, preloadSizeProvider, i);
    }

    public RecyclerViewPreloader(@NonNull Fragment fragment, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this(Glide.with(fragment), preloadModelProvider, preloadSizeProvider, i);
    }

    @Deprecated
    public RecyclerViewPreloader(@NonNull android.app.Fragment fragment, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this(Glide.with(fragment), preloadModelProvider, preloadSizeProvider, i);
    }

    public RecyclerViewPreloader(@NonNull RequestManager requestManager, @NonNull ListPreloader.PreloadModelProvider<T> preloadModelProvider, @NonNull ListPreloader.PreloadSizeProvider<T> preloadSizeProvider, int i) {
        this.recyclerScrollListener = new RecyclerToListViewScrollListener(new ListPreloader(requestManager, preloadModelProvider, preloadSizeProvider, i));
    }
}
