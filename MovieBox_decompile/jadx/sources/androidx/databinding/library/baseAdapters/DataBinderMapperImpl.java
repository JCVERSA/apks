package androidx.databinding.library.baseAdapters;

import android.util.SparseIntArray;
import android.view.View;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.e;
import androidx.databinding.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class DataBinderMapperImpl extends e {

    private static final SparseIntArray f8246a = new SparseIntArray(0);

    private static class a {

        static final HashMap f8247a = new HashMap(0);
    }

    @Override
    public List a() {
        return new ArrayList(0);
    }

    @Override
    public ViewDataBinding b(f fVar, View view, int i10) {
        if (f8246a.get(i10) <= 0 || view.getTag() != null) {
            return null;
        }
        throw new RuntimeException("view must have a tag");
    }

    @Override
    public int c(String str) {
        Integer num;
        if (str == null || (num = (Integer) a.f8247a.get(str)) == null) {
            return 0;
        }
        return num.intValue();
    }
}
