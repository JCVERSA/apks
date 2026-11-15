package org.schabi.newpipe.extractor.utils;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import org.schabi.newpipe.extractor.utils.ManifestCreatorCache;

public final class ManifestCreatorCache<K extends Serializable, V extends Serializable> implements Serializable {
    public static final double DEFAULT_CLEAR_FACTOR = 0.75d;
    public static final int DEFAULT_MAXIMUM_SIZE = Integer.MAX_VALUE;
    private int maximumSize = Integer.MAX_VALUE;
    private double clearFactor = 0.75d;
    private final ConcurrentHashMap<K, Pair<Integer, V>> concurrentHashMap = new ConcurrentHashMap<>();

    private void keepNewestEntries(int i) {
        final int size = this.concurrentHashMap.size() - i;
        final ArrayList arrayList = new ArrayList();
        this.concurrentHashMap.entrySet().forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                ManifestCreatorCache.lambda$keepNewestEntries$0(size, arrayList, (Map.Entry) obj);
            }
        });
        arrayList.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                this.b.lambda$keepNewestEntries$1((Map.Entry) obj);
            }
        });
    }

    public static void lambda$keepNewestEntries$0(int i, ArrayList arrayList, Map.Entry entry) {
        Pair pair = (Pair) entry.getValue();
        if (((Integer) pair.getFirst()).intValue() < i) {
            arrayList.add(entry);
        } else {
            pair.setFirst(Integer.valueOf(((Integer) pair.getFirst()).intValue() - i));
        }
    }

    public void lambda$keepNewestEntries$1(Map.Entry entry) {
        this.concurrentHashMap.remove(entry.getKey(), entry.getValue());
    }

    public void clear() {
        this.concurrentHashMap.clear();
    }

    public boolean containsKey(K k) {
        return this.concurrentHashMap.containsKey(k);
    }

    public Pair<Integer, V> get(K k) {
        return this.concurrentHashMap.get(k);
    }

    public double getClearFactor() {
        return this.clearFactor;
    }

    public long getMaximumSize() {
        return this.maximumSize;
    }

    public V put(K k, V v) {
        if (!this.concurrentHashMap.containsKey(k)) {
            int size = this.concurrentHashMap.size();
            int i = this.maximumSize;
            if (size == i) {
                int iRound = (int) Math.round(((double) i) * this.clearFactor);
                if (iRound == 0) {
                    iRound = 1;
                }
                keepNewestEntries(iRound);
            }
        }
        ConcurrentHashMap<K, Pair<Integer, V>> concurrentHashMap = this.concurrentHashMap;
        Pair<Integer, V> pairPut = concurrentHashMap.put(k, new Pair<>(Integer.valueOf(concurrentHashMap.size()), v));
        if (pairPut == null) {
            return null;
        }
        return (V) pairPut.getSecond();
    }

    public void reset() {
        clear();
        resetClearFactor();
        resetMaximumSize();
    }

    public void resetClearFactor() {
        this.clearFactor = 0.75d;
    }

    public void resetMaximumSize() {
        this.maximumSize = Integer.MAX_VALUE;
    }

    public void setClearFactor(double d) {
        if (d <= 0.0d || d >= 1.0d) {
            throw new IllegalArgumentException("Invalid clear factor");
        }
        this.clearFactor = d;
    }

    public void setMaximumSize(int i) {
        if (i <= 0) {
            throw new IllegalArgumentException("Invalid maximum size");
        }
        if (i < this.maximumSize && !this.concurrentHashMap.isEmpty()) {
            int iRound = (int) Math.round(((double) i) * this.clearFactor);
            if (iRound == 0) {
                iRound = 1;
            }
            keepNewestEntries(iRound);
        }
        this.maximumSize = i;
    }

    public int size() {
        return this.concurrentHashMap.size();
    }

    public String toString() {
        return "ManifestCreatorCache[clearFactor=" + this.clearFactor + ", maximumSize=" + this.maximumSize + ", concurrentHashMap=" + this.concurrentHashMap + "]";
    }
}
