package com.transsion.hubsdk.common.api;

import android.util.ArrayMap;
import com.transsion.hubsdk.common.util.TranVersionComparator;
import com.transsion.hubsdk.os.TranBuild;
import java.util.function.Supplier;

public class TranAdapter<I> {
    private final Supplier<I> mAospSupplier;
    private final Supplier<I> mThubSupplier;
    private final ArrayMap<String, I> mVersionMap = new ArrayMap<>(2);

    public TranAdapter(Supplier<I> supplier, Supplier<I> supplier2) {
        this.mAospSupplier = supplier;
        this.mThubSupplier = supplier2;
    }

    public static boolean isIntegratedThubCore(String str) {
        if (str == null) {
            return false;
        }
        try {
            return TranVersionComparator.compareVersions(TranBuild.THUBCORE_VERSION, str) >= 0;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public I getImpl(String str) {
        I i = this.mVersionMap.get(str);
        if (i != null) {
            return i;
        }
        I i2 = (isIntegratedThubCore(str) ? this.mThubSupplier : this.mAospSupplier).get();
        this.mVersionMap.put(str, i2);
        return i2;
    }
}
