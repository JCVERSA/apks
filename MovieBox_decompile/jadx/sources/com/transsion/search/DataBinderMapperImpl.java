package com.transsion.search;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends androidx.databinding.e {

    private static final SparseIntArray f49929a = new SparseIntArray(0);

    private static class a {

        static final HashMap f49930a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(17);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.permissionx.guolindev.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.downloadapi.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.publish.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.downloader.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.flow.event.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(androidx.databinding.f fVar, View view, int i10) {
        if (f49929a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f49930a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
