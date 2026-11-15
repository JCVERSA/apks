package com.transsion.postdetailapi;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f48187a = new SparseIntArray(0);

    private static class a {

        static final HashMap f48188a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.shorttv.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f48187a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f48188a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
