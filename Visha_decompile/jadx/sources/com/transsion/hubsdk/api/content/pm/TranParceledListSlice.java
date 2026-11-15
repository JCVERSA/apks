package com.transsion.hubsdk.api.content.pm;

import java.util.Collections;
import java.util.List;

public class TranParceledListSlice<T> {
    private List<T> mList;

    public TranParceledListSlice(List<T> list) {
        this.mList = list;
    }

    public static <T> TranParceledListSlice<T> emptyList() {
        return new TranParceledListSlice<>(Collections.emptyList());
    }

    public List<T> getList() {
        return this.mList;
    }
}
