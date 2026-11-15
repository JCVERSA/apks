package com.yandex.mobile.ads.impl;

import android.content.res.Resources;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.transsion.livecaption.constant.ICode;
import com.yandex.mobile.ads.R;
import defpackage.y45;

public final class mx extends RecyclerView.ItemDecoration {
    @Override
    public final void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
        y45.j(rect, "outRect");
        y45.j(view, "view");
        y45.j(recyclerView, "parent");
        y45.j(state, ICode.CALL.CALL_KEY_STATE);
        super.getItemOffsets(rect, view, recyclerView, state);
        Resources resources = view.getResources();
        if (view.getId() == R.id.item_divider) {
            if (recyclerView.getChildAdapterPosition(view) != 0) {
                rect.top = resources.getDimensionPixelSize(R.dimen.debug_panel_space_medium_large);
            }
        } else {
            int dimensionPixelSize = resources.getDimensionPixelSize(R.dimen.debug_panel_space_small);
            rect.bottom = dimensionPixelSize;
            rect.top = dimensionPixelSize;
        }
    }
}
