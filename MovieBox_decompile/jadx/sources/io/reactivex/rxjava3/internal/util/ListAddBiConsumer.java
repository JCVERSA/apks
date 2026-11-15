package io.reactivex.rxjava3.internal.util;

import java.util.List;

public enum ListAddBiConsumer implements yx.c {
    INSTANCE;

    public static <T> yx.c instance() {
        return INSTANCE;
    }

    @Override
    public List apply(List list, Object obj) {
        list.add(obj);
        return list;
    }
}
