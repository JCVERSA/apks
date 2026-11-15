package com.wecloud.load.lib;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends androidx.databinding.e {

    private static final SparseIntArray f58568a = new SparseIntArray(0);

    private static class a {

        static final HashMap f58569a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(androidx.databinding.f fVar, View view, int i10) {
        if (f58568a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f58569a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
