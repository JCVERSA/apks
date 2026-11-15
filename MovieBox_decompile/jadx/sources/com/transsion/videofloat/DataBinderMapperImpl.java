package com.transsion.videofloat;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f55722a = new SparseIntArray(0);

    private static class a {

        static final HashMap f55723a = new HashMap(0);
    }

    @Override
    public List a() {
        ArrayList arrayList = new ArrayList(16);
        arrayList.add(new androidx.databinding.library.baseAdapters.DataBinderMapperImpl());
        arrayList.add(new com.avery.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.permissionx.guolindev.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.thread.DataBinderMapperImpl());
        arrayList.add(new com.tn.lib.widget.DataBinderMapperImpl());
        arrayList.add(new com.transsion.ad.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.dialog.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.image.DataBinderMapperImpl());
        arrayList.add(new com.transsion.base.report.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baselib.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.DataBinderMapperImpl());
        arrayList.add(new com.transsion.baseui.utils.DataBinderMapperImpl());
        arrayList.add(new com.transsion.mb.config.DataBinderMapperImpl());
        arrayList.add(new com.transsion.player.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle.DataBinderMapperImpl());
        arrayList.add(new com.transsion.subtitle_download.DataBinderMapperImpl());
        return arrayList;
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f55722a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f55723a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
