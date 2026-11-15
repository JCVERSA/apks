package com.bytedance.sdk.openadsdk.core.aa.TKC;

import com.bytedance.sdk.component.utils.Jcg;
import java.io.File;
import java.util.List;

public class TKC extends com.bytedance.sdk.openadsdk.sP.sP {
    public TKC(int i10, int i11) {
        super(i10, i11);
    }

    @Override
    protected void Sj(List<File> list) {
        int size = list.size();
        if (Sj(0L, size)) {
            return;
        }
        for (File file : list) {
            Jcg.TKC(file);
            size--;
            if (Sj(file, 0L, size)) {
                return;
            }
        }
    }

    public TKC(int i10, int i11, boolean z10) {
        super(i10, i11);
        this.Sj = z10;
    }
}
