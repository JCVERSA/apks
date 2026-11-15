package com.transsion.postdetail.comment;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.tn.lib.widget.R$color;
import kotlin.jvm.internal.Intrinsics;

public final class u extends RecyclerView.l {

    private final int f46779a = lj.a.b(1);

    private final int f46780b = lj.a.b(52);

    private Paint f46781c;

    private final Paint d(Context context) {
        if (this.f46781c == null) {
            Paint paint = new Paint();
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.FILL);
            paint.setColor(androidx.core.content.b.getColor(context, R$color.line_01));
            this.f46781c = paint;
        }
        Paint paint2 = this.f46781c;
        Intrinsics.e(paint2);
        return paint2;
    }

    private final boolean e(p6.a aVar, p6.a aVar2) {
        int itemType = aVar.getItemType();
        if (aVar2.getItemType() != 0) {
            return false;
        }
        return itemType == 0 || itemType == 1 || itemType == 2;
    }

    @Override
    public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.x state) {
        p6.a aVar;
        Intrinsics.h(outRect, "outRect");
        Intrinsics.h(view, "view");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        int childAdapterPosition = parent.getChildAdapterPosition(view);
        if (childAdapterPosition == -1) {
            return;
        }
        RecyclerView.Adapter adapter = parent.getAdapter();
        n nVar = adapter instanceof n ? (n) adapter : null;
        if (nVar == null) {
            return;
        }
        try {
            p6.a aVar2 = (p6.a) nVar.getItem(childAdapterPosition);
            if (aVar2 != null && aVar2.getItemType() == 0 && childAdapterPosition > 0 && (aVar = (p6.a) nVar.getItem(childAdapterPosition - 1)) != null && e(aVar, aVar2)) {
                outRect.top = this.f46779a;
            }
        } catch (IndexOutOfBoundsException unused) {
        }
    }

    @Override
    public void onDraw(Canvas c10, RecyclerView parent, RecyclerView.x state) {
        p6.a aVar;
        Intrinsics.h(c10, "c");
        Intrinsics.h(parent, "parent");
        Intrinsics.h(state, "state");
        RecyclerView.Adapter adapter = parent.getAdapter();
        n nVar = adapter instanceof n ? (n) adapter : null;
        if (nVar == null) {
            return;
        }
        int childCount = parent.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View childAt = parent.getChildAt(i10);
            int childAdapterPosition = parent.getChildAdapterPosition(childAt);
            if (childAdapterPosition != -1 && childAdapterPosition != 0) {
                try {
                    p6.a aVar2 = (p6.a) nVar.getItem(childAdapterPosition);
                    if (aVar2 != null && aVar2.getItemType() == 0 && (aVar = (p6.a) nVar.getItem(childAdapterPosition - 1)) != null && e(aVar, aVar2)) {
                        int i11 = this.f46780b;
                        int width = parent.getWidth();
                        float top = childAt.getTop();
                        float f10 = top + this.f46779a;
                        Context context = parent.getContext();
                        Intrinsics.g(context, "getContext(...)");
                        c10.drawRect(i11, top, width, f10, d(context));
                    }
                } catch (IndexOutOfBoundsException unused) {
                }
            }
        }
    }
}
