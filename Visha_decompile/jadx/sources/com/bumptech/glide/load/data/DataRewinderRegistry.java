package com.bumptech.glide.load.data;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.Preconditions;
import java.util.HashMap;
import java.util.Map;

public class DataRewinderRegistry {
    private static final DataRewinder.Factory<?> DEFAULT_FACTORY = new DataRewinder.Factory<Object>() {
        @Override
        @NonNull
        public DataRewinder<Object> build(@NonNull Object obj) {
            return new DefaultRewinder(obj);
        }

        @Override
        @NonNull
        public Class<Object> getDataClass() {
            throw new UnsupportedOperationException("Not implemented");
        }
    };
    private final Map<Class<?>, DataRewinder.Factory<?>> rewinders = new HashMap();

    public static final class DefaultRewinder implements DataRewinder<Object> {
        private final Object data;

        public DefaultRewinder(@NonNull Object obj) {
            this.data = obj;
        }

        @Override
        public void cleanup() {
        }

        @Override
        @NonNull
        public Object rewindAndGet() {
            return this.data;
        }
    }

    @NonNull
    public synchronized <T> DataRewinder<T> build(@NonNull T t) {
        DataRewinder.Factory<?> factory;
        try {
            Preconditions.checkNotNull(t);
            factory = this.rewinders.get(t.getClass());
            if (factory == null) {
                for (DataRewinder.Factory<?> factory2 : this.rewinders.values()) {
                    if (factory2.getDataClass().isAssignableFrom(t.getClass())) {
                        factory = factory2;
                        break;
                    }
                }
            }
            if (factory == null) {
                factory = DEFAULT_FACTORY;
            }
        } catch (Throwable th) {
            throw th;
        }
        return (DataRewinder<T>) factory.build(t);
    }

    public synchronized void register(@NonNull DataRewinder.Factory<?> factory) {
        this.rewinders.put(factory.getDataClass(), factory);
    }
}
