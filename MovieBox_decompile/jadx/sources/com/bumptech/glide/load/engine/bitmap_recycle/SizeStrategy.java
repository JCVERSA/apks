package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import androidx.annotation.Nullable;
import com.bumptech.glide.util.Util;
import java.util.NavigableMap;

final class SizeStrategy implements LruPoolStrategy {
    private static final int MAX_SIZE_MULTIPLE = 8;
    private final KeyPool keyPool = new KeyPool();
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap<>();
    private final NavigableMap<Integer, Integer> sortedSizes = new PrettyPrintTreeMap();

    static final class Key implements Poolable {
        private final KeyPool pool;
        int size;

        Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object obj) {
            return (obj instanceof Key) && this.size == ((Key) obj).size;
        }

        public int hashCode() {
            return this.size;
        }

        public void init(int i10) {
            this.size = i10;
        }

        @Override
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return SizeStrategy.getBitmapString(this.size);
        }
    }

    static class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        public Key get(int i10) {
            Key key = (Key) super.get();
            key.init(i10);
            return key;
        }

        @Override
        public Key create() {
            return new Key(this);
        }
    }

    SizeStrategy() {
    }

    private void decrementBitmapOfSize(Integer num) {
        Integer num2 = this.sortedSizes.get(num);
        if (num2.intValue() == 1) {
            this.sortedSizes.remove(num);
        } else {
            this.sortedSizes.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private static String getBitmapString(Bitmap bitmap) {
        return getBitmapString(Util.getBitmapByteSize(bitmap));
    }

    @Override
    @Nullable
    public Bitmap get(int i10, int i11, Bitmap.Config config) {
        int bitmapByteSize = Util.getBitmapByteSize(i10, i11, config);
        Key key = this.keyPool.get(bitmapByteSize);
        Integer numCeilingKey = this.sortedSizes.ceilingKey(Integer.valueOf(bitmapByteSize));
        if (numCeilingKey != null && numCeilingKey.intValue() != bitmapByteSize && numCeilingKey.intValue() <= bitmapByteSize * 8) {
            this.keyPool.offer(key);
            key = this.keyPool.get(numCeilingKey.intValue());
        }
        Bitmap bitmap = this.groupedMap.get(key);
        if (bitmap != null) {
            bitmap.reconfigure(i10, i11, config);
            decrementBitmapOfSize(numCeilingKey);
        }
        return bitmap;
    }

    @Override
    public int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    @Override
    public String logBitmap(Bitmap bitmap) {
        return getBitmapString(bitmap);
    }

    @Override
    public void put(Bitmap bitmap) {
        Key key = this.keyPool.get(Util.getBitmapByteSize(bitmap));
        this.groupedMap.put(key, bitmap);
        Integer num = this.sortedSizes.get(Integer.valueOf(key.size));
        this.sortedSizes.put(Integer.valueOf(key.size), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    @Override
    @Nullable
    public Bitmap removeLast() {
        Bitmap bitmapRemoveLast = this.groupedMap.removeLast();
        if (bitmapRemoveLast != null) {
            decrementBitmapOfSize(Integer.valueOf(Util.getBitmapByteSize(bitmapRemoveLast)));
        }
        return bitmapRemoveLast;
    }

    public String toString() {
        return "SizeStrategy:\n  " + this.groupedMap + "\n  SortedSizes" + this.sortedSizes;
    }

    @Override
    public String logBitmap(int i10, int i11, Bitmap.Config config) {
        return getBitmapString(Util.getBitmapByteSize(i10, i11, config));
    }

    static String getBitmapString(int i10) {
        return "[" + i10 + "]";
    }
}
