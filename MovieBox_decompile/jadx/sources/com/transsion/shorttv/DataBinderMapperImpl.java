package com.transsion.shorttv;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f50560a = new SparseIntArray(0);

    private static class a {

        static final HashMap f50561a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(13);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.avery.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.net.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.tranpay.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.player.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle_download.DataBinderMapperImpl());
        arrayList.add(new com.transsnet.flow.event.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f50560a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f50561a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
