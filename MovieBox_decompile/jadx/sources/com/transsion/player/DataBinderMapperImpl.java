package com.transsion.player;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f46045a = new SparseIntArray(0);

    private static class a {

        static final HashMap f46046a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f46045a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f46046a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
