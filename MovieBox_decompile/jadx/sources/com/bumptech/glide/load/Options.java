package com.bumptech.glide.load;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.collection.a;
import androidx.collection.x0;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import java.security.MessageDigest;

public final class Options implements Key {
    private final a values = new CachedHashCodeArrayMap();

    @Override
    public boolean equals(Object obj) {
        if (obj instanceof Options) {
            return this.values.equals(((Options) obj).values);
        }
        return false;
    }

    @Nullable
    public <T> T get(@NonNull Option<T> option) {
        return this.values.containsKey(option) ? (T) this.values.get(option) : option.getDefaultValue();
    }

    @Override
    public int hashCode() {
        return this.values.hashCode();
    }

    public void putAll(@NonNull Options options) {
        this.values.putAll((x0) options.values);
    }

    public Options remove(@NonNull Option<?> option) {
        this.values.remove(option);
        return this;
    }

    @NonNull
    public <T> Options set(@NonNull Option<T> option, @NonNull T t10) {
        this.values.put(option, t10);
        return this;
    }

    public String toString() {
        return "Options{values=" + this.values + '}';
    }

    @Override
    public void updateDiskCacheKey(@NonNull MessageDigest messageDigest) {
        for (int i10 = 0; i10 < this.values.size(); i10++) {
            updateDiskCacheKey((Option) this.values.keyAt(i10), this.values.valueAt(i10), messageDigest);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> void updateDiskCacheKey(@NonNull Option<T> option, @NonNull Object obj, @NonNull MessageDigest messageDigest) {
        option.update(obj, messageDigest);
    }
}
