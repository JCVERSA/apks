package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import com.bumptech.glide.util.Util;

class AttributeStrategy implements LruPoolStrategy {
    private final KeyPool keyPool = new KeyPool();
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap<>();

    static class Key implements Poolable {
        private Bitmap.Config config;
        private int height;
        private final KeyPool pool;
        private int width;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            return this.width == key.width && this.height == key.height && this.config == key.config;
        }

        public int hashCode() {
            int i10 = ((this.width * 31) + this.height) * 31;
            Bitmap.Config config = this.config;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public void init(int i10, int i11, Bitmap.Config config) {
            this.width = i10;
            this.height = i11;
            this.config = config;
        }

        @Override
        public void offer() {
            this.pool.offer(this);
        }

        public String toString() {
            return AttributeStrategy.getBitmapString(this.width, this.height, this.config);
        }
    }

    static class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        Key get(int i10, int i11, Bitmap.Config config) {
            Key key = get();
            key.init(i10, i11, config);
            return key;
        }

        @Override
        public Key create() {
            return new Key(this);
        }
    }

    AttributeStrategy() {
    }

    private static String getBitmapString(Bitmap bitmap) {
        return getBitmapString(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override
    public Bitmap get(int i10, int i11, Bitmap.Config config) {
        return this.groupedMap.get(this.keyPool.get(i10, i11, config));
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
        this.groupedMap.put(this.keyPool.get(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override
    public Bitmap removeLast() {
        return this.groupedMap.removeLast();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.groupedMap;
    }

    static String getBitmapString(int i10, int i11, Bitmap.Config config) {
        return "[" + i10 + "x" + i11 + "], " + config;
    }

    @Override
    public String logBitmap(int i10, int i11, Bitmap.Config config) {
        return getBitmapString(i10, i11, config);
    }
}
