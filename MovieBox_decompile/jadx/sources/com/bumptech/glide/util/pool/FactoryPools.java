package com.bumptech.glide.util.pool;

import android.util.Log;
import androidx.annotation.NonNull;
import androidx.core.util.f;
import androidx.core.util.g;
import androidx.core.util.h;
import java.util.ArrayList;
import java.util.List;

public final class FactoryPools {
    private static final int DEFAULT_POOL_SIZE = 20;
    private static final Resetter<Object> EMPTY_RESETTER = new Resetter<Object>() {
        @Override
        public void reset(@NonNull Object obj) {
        }
    };
    private static final String TAG = "FactoryPools";

    public interface Factory<T> {
        T create();
    }

    private static final class FactoryPool<T> implements f {
        private final Factory<T> factory;
        private final f pool;
        private final Resetter<T> resetter;

        FactoryPool(@NonNull f fVar, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
            this.pool = fVar;
            this.factory = factory;
            this.resetter = resetter;
        }

        @Override
        public T acquire() {
            T tCreate = (T) this.pool.acquire();
            if (tCreate == null) {
                tCreate = this.factory.create();
                if (Log.isLoggable(FactoryPools.TAG, 2)) {
                    Log.v(FactoryPools.TAG, "Created new " + tCreate.getClass());
                }
            }
            if (tCreate instanceof Poolable) {
                tCreate.getVerifier().setRecycled(false);
            }
            return (T) tCreate;
        }

        @Override
        public boolean release(@NonNull T t10) {
            if (t10 instanceof Poolable) {
                ((Poolable) t10).getVerifier().setRecycled(true);
            }
            this.resetter.reset(t10);
            return this.pool.release(t10);
        }
    }

    public interface Poolable {
        @NonNull
        StateVerifier getVerifier();
    }

    public interface Resetter<T> {
        void reset(@NonNull T t10);
    }

    private FactoryPools() {
    }

    @NonNull
    private static <T extends Poolable> f build(@NonNull f fVar, @NonNull Factory<T> factory) {
        return build(fVar, factory, emptyResetter());
    }

    @NonNull
    private static <T> Resetter<T> emptyResetter() {
        return (Resetter<T>) EMPTY_RESETTER;
    }

    @NonNull
    public static <T extends Poolable> f simple(int i10, @NonNull Factory<T> factory) {
        return build(new g(i10), factory);
    }

    @NonNull
    public static <T extends Poolable> f threadSafe(int i10, @NonNull Factory<T> factory) {
        return build(new h(i10), factory);
    }

    @NonNull
    public static <T> f threadSafeList() {
        return threadSafeList(20);
    }

    @NonNull
    private static <T> f build(@NonNull f fVar, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
        return new FactoryPool(fVar, factory, resetter);
    }

    @NonNull
    public static <T extends Poolable> f threadSafe(int i10, @NonNull Factory<T> factory, @NonNull Resetter<T> resetter) {
        return build(new h(i10), factory, resetter);
    }

    @NonNull
    public static <T> f threadSafeList(int i10) {
        return build(new h(i10), new Factory<List<T>>() {
            @Override
            @NonNull
            public List<T> create() {
                return new ArrayList();
            }
        }, new Resetter<List<T>>() {
            @Override
            public void reset(@NonNull List<T> list) {
                list.clear();
            }
        });
    }
}
