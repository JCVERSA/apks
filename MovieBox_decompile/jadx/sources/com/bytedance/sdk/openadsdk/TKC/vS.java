package com.bytedance.sdk.openadsdk.TKC;

import android.content.Context;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.utils.FPG;
import java.util.Iterator;
import java.util.List;

public class vS extends ScrollView {
    private final TEQ Sj;
    private final com.bytedance.sdk.openadsdk.core.HiB.HiB sP;

    public vS(Context context, TEQ teq) {
        super(context);
        this.Sj = teq;
        com.bytedance.sdk.openadsdk.core.HiB.HiB hiB = new com.bytedance.sdk.openadsdk.core.HiB.HiB(context);
        this.sP = hiB;
        hiB.setOrientation(1);
        addView(hiB, new FrameLayout.LayoutParams(-1, -2));
        if (teq.Dq() == 0) {
            Sj();
        }
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, 0);
        layoutParams.weight = 1.0f;
        setLayoutParams(layoutParams);
        setVerticalScrollBarEnabled(false);
    }

    private void Sj() {
        if (this.Sj.Dq() != 0) {
            return;
        }
        this.Sj.Sj(FPG.TKC(getContext()), FPG.HiB(getContext()));
    }

    private static List<FilterWord> TKC(List<FilterWord> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        int i10 = 0;
        int i11 = -1;
        for (int i12 = 0; i12 < list.size(); i12++) {
            if (list.get(i12).hasSecondOptions()) {
                i11 = i12;
            }
        }
        if (i11 != -1 && i11 <= list.size()) {
            i10 = i11;
        }
        FilterWord filterWord = list.get(i10);
        Iterator<FilterWord> it = list.iterator();
        while (it.hasNext()) {
            FilterWord next = it.next();
            if (!next.hasSecondOptions()) {
                filterWord.addOption(next);
                it.remove();
            }
        }
        return list;
    }

    private void sP(List<FilterWord> list) {
        this.sP.removeAllViews();
        for (int i10 = 0; i10 < list.size(); i10++) {
            FilterWord filterWord = list.get(i10);
            if (filterWord != null) {
                this.sP.addView(new Jcg(getContext(), filterWord, this.Sj));
            }
            if (i10 < list.size() - 1) {
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
                int iSP = FPG.sP(getContext(), this.Sj.uA() ? 16.0f : 8.0f);
                layoutParams.topMargin = iSP;
                layoutParams.bottomMargin = iSP;
                this.sP.addView(new Ym(getContext()), layoutParams);
            }
        }
    }

    public void Sj(List<FilterWord> list) {
        List<FilterWord> listTKC = TKC(list);
        if (listTKC == null) {
            return;
        }
        sP(listTKC);
    }
}
