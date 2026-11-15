package androidx.core.util;

import android.util.LruCache;
import androidx.exifinterface.media.ExifInterface;
import defpackage.e74;
import defpackage.s74;
import defpackage.w74;
import defpackage.zfb;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u00000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0096\u0001\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\r\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\b\b\u0001\u0010\u0002*\u00020\u00002\u0006\u0010\u0004\u001a\u00020\u00032\u001a\b\u0006\u0010\u0006\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0004\u0012\u00020\u00030\u00052\u0016\b\u0006\u0010\b\u001a\u0010\u0012\u0004\u0012\u00028\u0000\u0012\u0006\u0012\u0004\u0018\u00018\u00010\u00072(\b\u0006\u0010\f\u001a\"\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0001\u0012\u0006\u0012\u0004\u0018\u00018\u0001\u0012\u0004\u0012\u00020\u000b0\tH\u0086\b¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"", "K", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "", "maxSize", "Lkotlin/Function2;", "sizeOf", "Lkotlin/Function1;", "create", "Lkotlin/Function4;", "", "Lzfb;", "onEntryRemoved", "Landroid/util/LruCache;", "lruCache", "(ILs74;Le74;Lw74;)Landroid/util/LruCache;", "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class LruCacheKt {

    @Metadata(d1 = {"\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u00010\u0001J\u001f\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u0003\u001a\u00028\u0001H\u0014¢\u0006\u0004\b\u0005\u0010\u0006J\u0019\u0010\u0007\u001a\u0004\u0018\u00018\u00012\u0006\u0010\u0002\u001a\u00028\u0000H\u0014¢\u0006\u0004\b\u0007\u0010\bJ1\u0010\u000e\u001a\u00020\r2\u0006\u0010\n\u001a\u00020\t2\u0006\u0010\u0002\u001a\u00028\u00002\u0006\u0010\u000b\u001a\u00028\u00012\b\u0010\f\u001a\u0004\u0018\u00018\u0001H\u0014¢\u0006\u0004\b\u000e\u0010\u000f¨\u0006\u0010"}, d2 = {"androidx/core/util/LruCacheKt$lruCache$4", "Landroid/util/LruCache;", "key", ES6Iterator.VALUE_PROPERTY, "", "sizeOf", "(Ljava/lang/Object;Ljava/lang/Object;)I", "create", "(Ljava/lang/Object;)Ljava/lang/Object;", "", "evicted", "oldValue", "newValue", "Lzfb;", "entryRemoved", "(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V", "core-ktx_release"}, k = 1, mv = {1, 8, 0}, xi = 176)
    public static final class AnonymousClass4<K, V> extends LruCache<K, V> {
        final e74 $create;
        final w74 $onEntryRemoved;
        final s74 $sizeOf;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(int i, s74 s74Var, e74 e74Var, w74 w74Var) {
            super(i);
            this.$sizeOf = s74Var;
            this.$create = e74Var;
            this.$onEntryRemoved = w74Var;
        }

        @Override
        public V create(K key) {
            return (V) this.$create.invoke(key);
        }

        @Override
        public void entryRemoved(boolean evicted, K key, V oldValue, V newValue) {
            this.$onEntryRemoved.invoke(Boolean.valueOf(evicted), key, oldValue, newValue);
        }

        @Override
        public int sizeOf(K key, V value) {
            return ((Number) this.$sizeOf.invoke(key, value)).intValue();
        }
    }

    public static final <K, V> LruCache<K, V> lruCache(int i, s74 s74Var, e74 e74Var, w74 w74Var) {
        return new AnonymousClass4(i, s74Var, e74Var, w74Var);
    }

    public static LruCache lruCache$default(int i, s74 s74Var, e74 e74Var, w74 w74Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            s74Var = new s74() {
                @Override
                public final Integer invoke(Object obj2, Object obj3) {
                    return 1;
                }
            };
        }
        if ((i2 & 4) != 0) {
            e74Var = new e74() {
                @Override
                public final Object invoke(Object obj2) {
                    return null;
                }
            };
        }
        if ((i2 & 8) != 0) {
            w74Var = new w74() {
                public final void invoke(boolean z, Object obj2, Object obj3, Object obj4) {
                }

                @Override
                public Object invoke(Object obj2, Object obj3, Object obj4, Object obj5) {
                    invoke(((Boolean) obj2).booleanValue(), obj3, obj4, obj5);
                    return zfb.a;
                }
            };
        }
        return new AnonymousClass4(i, s74Var, e74Var, w74Var);
    }
}
