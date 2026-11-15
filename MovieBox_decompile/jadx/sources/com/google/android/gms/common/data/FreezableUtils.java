package com.google.android.gms.common.data;

import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import org.jsoup.select.Elements;

public final class FreezableUtils {
    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull ArrayList<E> arrayList) {
        Elements elements = (ArrayList<T>) new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            elements.add(arrayList.get(i10).freeze());
        }
        return elements;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freezeIterable(@NonNull Iterable<E> iterable) {
        Elements elements = (ArrayList<T>) new ArrayList();
        Iterator<E> it = iterable.iterator();
        while (it.hasNext()) {
            elements.add(it.next().freeze());
        }
        return elements;
    }

    @NonNull
    public static <T, E extends Freezable<T>> ArrayList<T> freeze(@NonNull E[] eArr) {
        Elements elements = (ArrayList<T>) new ArrayList(eArr.length);
        for (E e10 : eArr) {
            elements.add(e10.freeze());
        }
        return elements;
    }
}
