package androidx.core.util;

import android.util.SparseLongArray;
import com.transsion.dbdata.beans.media.PlayAudioData;
import defpackage.c74;
import defpackage.fr5;
import defpackage.q15;
import defpackage.s74;
import kotlin.Metadata;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u001c\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n¢\u0006\u0004\b\u0004\u0010\u0005\u001a$\u0010\t\u001a\u00020\b*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\n¢\u0006\u0004\b\t\u0010\n\u001a\u001c\u0010\f\u001a\u00020\u0000*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000H\u0086\u0002¢\u0006\u0004\b\f\u0010\r\u001a\u001c\u0010\u000e\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\b¢\u0006\u0004\b\u000e\u0010\u0005\u001a\u001c\u0010\u000f\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u0006H\u0086\b¢\u0006\u0004\b\u000f\u0010\u0010\u001a$\u0010\u0012\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0006H\u0086\b¢\u0006\u0004\b\u0012\u0010\u0013\u001a*\u0010\u0015\u001a\u00020\u0006*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0014H\u0086\b¢\u0006\u0004\b\u0015\u0010\u0016\u001a\u0014\u0010\u0017\u001a\u00020\u0003*\u00020\u0000H\u0086\b¢\u0006\u0004\b\u0017\u0010\u0018\u001a\u0014\u0010\u0019\u001a\u00020\u0003*\u00020\u0000H\u0086\b¢\u0006\u0004\b\u0019\u0010\u0018\u001a!\u0010\u001a\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001b\u001a\u0019\u0010\u001c\u001a\u00020\b*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u0000¢\u0006\u0004\b\u001c\u0010\u001d\u001a.\u0010 \u001a\u00020\b*\u00020\u00002\u0018\u0010\u001f\u001a\u0014\u0012\u0004\u0012\u00020\u0001\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\b0\u001eH\u0086\b¢\u0006\u0004\b \u0010!\u001a\u0011\u0010#\u001a\u00020\"*\u00020\u0000¢\u0006\u0004\b#\u0010$\u001a\u0011\u0010&\u001a\u00020%*\u00020\u0000¢\u0006\u0004\b&\u0010'\"\u0016\u0010*\u001a\u00020\u0001*\u00020\u00008Æ\u0002¢\u0006\u0006\u001a\u0004\b(\u0010)¨\u0006+"}, d2 = {"Landroid/util/SparseLongArray;", "", "key", "", "contains", "(Landroid/util/SparseLongArray;I)Z", "", ES6Iterator.VALUE_PROPERTY, "Lzfb;", "set", "(Landroid/util/SparseLongArray;IJ)V", "other", "plus", "(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)Landroid/util/SparseLongArray;", "containsKey", "containsValue", "(Landroid/util/SparseLongArray;J)Z", "defaultValue", "getOrDefault", "(Landroid/util/SparseLongArray;IJ)J", "Lkotlin/Function0;", "getOrElse", "(Landroid/util/SparseLongArray;ILc74;)J", "isEmpty", "(Landroid/util/SparseLongArray;)Z", "isNotEmpty", "remove", "(Landroid/util/SparseLongArray;IJ)Z", "putAll", "(Landroid/util/SparseLongArray;Landroid/util/SparseLongArray;)V", "Lkotlin/Function2;", "action", "forEach", "(Landroid/util/SparseLongArray;Ls74;)V", "Lq15;", "keyIterator", "(Landroid/util/SparseLongArray;)Lq15;", "Lfr5;", "valueIterator", "(Landroid/util/SparseLongArray;)Lfr5;", "getSize", "(Landroid/util/SparseLongArray;)I", PlayAudioData.TAG_SIZE, "core-ktx_release"}, k = 2, mv = {1, 8, 0}, xi = 48)
public final class SparseLongArrayKt {
    public static final boolean contains(SparseLongArray sparseLongArray, int i) {
        return sparseLongArray.indexOfKey(i) >= 0;
    }

    public static final boolean containsKey(SparseLongArray sparseLongArray, int i) {
        return sparseLongArray.indexOfKey(i) >= 0;
    }

    public static final boolean containsValue(SparseLongArray sparseLongArray, long j) {
        return sparseLongArray.indexOfValue(j) >= 0;
    }

    public static final void forEach(SparseLongArray sparseLongArray, s74 s74Var) {
        int size = sparseLongArray.size();
        for (int i = 0; i < size; i++) {
            s74Var.invoke(Integer.valueOf(sparseLongArray.keyAt(i)), Long.valueOf(sparseLongArray.valueAt(i)));
        }
    }

    public static final long getOrDefault(SparseLongArray sparseLongArray, int i, long j) {
        return sparseLongArray.get(i, j);
    }

    public static final long getOrElse(SparseLongArray sparseLongArray, int i, c74 c74Var) {
        int iIndexOfKey = sparseLongArray.indexOfKey(i);
        return iIndexOfKey >= 0 ? sparseLongArray.valueAt(iIndexOfKey) : ((Number) c74Var.invoke()).longValue();
    }

    public static final int getSize(SparseLongArray sparseLongArray) {
        return sparseLongArray.size();
    }

    public static final boolean isEmpty(SparseLongArray sparseLongArray) {
        return sparseLongArray.size() == 0;
    }

    public static final boolean isNotEmpty(SparseLongArray sparseLongArray) {
        return sparseLongArray.size() != 0;
    }

    public static final q15 keyIterator(final SparseLongArray sparseLongArray) {
        return new q15() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override
            public int nextInt() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i = this.index;
                this.index = i + 1;
                return sparseLongArray2.keyAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }

    public static final SparseLongArray plus(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        SparseLongArray sparseLongArray3 = new SparseLongArray(sparseLongArray.size() + sparseLongArray2.size());
        putAll(sparseLongArray3, sparseLongArray);
        putAll(sparseLongArray3, sparseLongArray2);
        return sparseLongArray3;
    }

    public static final void putAll(SparseLongArray sparseLongArray, SparseLongArray sparseLongArray2) {
        int size = sparseLongArray2.size();
        for (int i = 0; i < size; i++) {
            sparseLongArray.put(sparseLongArray2.keyAt(i), sparseLongArray2.valueAt(i));
        }
    }

    public static final boolean remove(SparseLongArray sparseLongArray, int i, long j) {
        int iIndexOfKey = sparseLongArray.indexOfKey(i);
        if (iIndexOfKey < 0 || j != sparseLongArray.valueAt(iIndexOfKey)) {
            return false;
        }
        sparseLongArray.removeAt(iIndexOfKey);
        return true;
    }

    public static final void set(SparseLongArray sparseLongArray, int i, long j) {
        sparseLongArray.put(i, j);
    }

    public static final fr5 valueIterator(final SparseLongArray sparseLongArray) {
        return new fr5() {
            private int index;

            public final int getIndex() {
                return this.index;
            }

            @Override
            public boolean hasNext() {
                return this.index < sparseLongArray.size();
            }

            @Override
            public long nextLong() {
                SparseLongArray sparseLongArray2 = sparseLongArray;
                int i = this.index;
                this.index = i + 1;
                return sparseLongArray2.valueAt(i);
            }

            public final void setIndex(int i) {
                this.index = i;
            }
        };
    }
}
