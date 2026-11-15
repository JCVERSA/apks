package com.transsion.rewardscenterapi;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f49331a = new SparseIntArray(0);

    private static class a {

        static final HashMap f49332a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(6);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f49331a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f49332a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
