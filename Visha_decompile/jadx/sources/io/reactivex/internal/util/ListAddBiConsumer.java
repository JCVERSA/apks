package io.reactivex.internal.util;

import defpackage.be0;
import java.util.List;

public enum ListAddBiConsumer implements be0 {
    INSTANCE;

    public static <T> be0 instance() {
        return INSTANCE;
    }

    @Override
    public List apply(List list, Object obj) throws Exception {
        list.add(obj);
        return list;
    }
}
