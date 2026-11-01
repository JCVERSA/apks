package o;

import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;

public abstract class mx8 {

    @Nullable
    private final Map<String, Object> mBagOfTags = new HashMap();

    @Nullable
    private final Set<Closeable> mCloseables = new LinkedHashSet();
    private volatile boolean mCleared = false;

    public static void r(Object obj) {
        if (obj instanceof Closeable) {
            try {
                ((Closeable) obj).close();
            } catch (IOException e) {
                throw new RuntimeException(e);
            }
        }
    }

    public void addCloseable(@NonNull Closeable closeable) {
        Set<Closeable> set = this.mCloseables;
        if (set != null) {
            synchronized (set) {
                this.mCloseables.add(closeable);
            }
        }
    }

    @MainThread
    public final void clear() {
        this.mCleared = true;
        Map<String, Object> map = this.mBagOfTags;
        if (map != null) {
            synchronized (map) {
                try {
                    Iterator<Object> it2 = this.mBagOfTags.values().iterator();
                    while (it2.hasNext()) {
                        r(it2.next());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        Set<Closeable> set = this.mCloseables;
        if (set != null) {
            synchronized (set) {
                try {
                    Iterator<Closeable> it3 = this.mCloseables.iterator();
                    while (it3.hasNext()) {
                        r(it3.next());
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        onCleared();
    }

    public <T> T getTag(String str) {
        T t;
        Map<String, Object> map = this.mBagOfTags;
        if (map == null) {
            return null;
        }
        synchronized (map) {
            t = (T) this.mBagOfTags.get(str);
        }
        return t;
    }

    public void onCleared() {
    }

    public <T> T setTagIfAbsent(String str, T t) {
        Object obj;
        synchronized (this.mBagOfTags) {
            try {
                obj = this.mBagOfTags.get(str);
                if (obj == null) {
                    this.mBagOfTags.put(str, t);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (obj != null) {
            t = (T) obj;
        }
        if (this.mCleared) {
            r(t);
        }
        return t;
    }
}
