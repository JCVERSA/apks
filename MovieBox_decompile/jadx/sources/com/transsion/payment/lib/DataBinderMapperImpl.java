package com.transsion.payment.lib;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends androidx.databinding.e {

    private static final SparseIntArray f45887a = new SparseIntArray(0);

    private static class a {

        static final HashMap f45888a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(14);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.tranpay.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.publish.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.flow.event.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(androidx.databinding.f fVar, View view, int i10) {
        if (f45887a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f45888a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
