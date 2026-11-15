package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class b extends View implements SubtitleView.a {

    private final List f26330a;

    private List f26331b;

    private int f26332c;

    private float f26333d;

    private c f26334e;

    private float f26335f;

    public b(Context context) {
        this(context, null);
    }

    private static da.b b(da.b bVar) {
        da.b.C0703b c0703bP = bVar.b().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (bVar.f58929f == 0) {
            c0703bP.h(1.0f - bVar.f58928e, 0);
        } else {
            c0703bP.h((-bVar.f58928e) - 1.0f, 1);
        }
        int i10 = bVar.f58930g;
        if (i10 == 0) {
            c0703bP.i(2);
        } else if (i10 == 2) {
            c0703bP.i(0);
        }
        return c0703bP.a();
    }

    @Override
    public void a(List list, c cVar, float f10, int i10, float f11) {
        this.f26331b = list;
        this.f26334e = cVar;
        this.f26333d = f10;
        this.f26332c = i10;
        this.f26335f = f11;
        while (this.f26330a.size() < list.size()) {
            this.f26330a.add(new j0(getContext()));
        }
        invalidate();
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        List list = this.f26331b;
        if (list.isEmpty()) {
            return;
        }
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i10 = paddingBottom - paddingTop;
        float fH = m0.h(this.f26332c, this.f26333d, height, i10);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            da.b bVarB = (da.b) list.get(i11);
            if (bVarB.f58939p != Integer.MIN_VALUE) {
                bVarB = b(bVarB);
            }
            da.b bVar = bVarB;
            int i12 = paddingBottom;
            ((j0) this.f26330a.get(i11)).b(bVar, this.f26334e, fH, m0.h(bVar.f58937n, bVar.f58938o, height, i10), this.f26335f, canvas, paddingLeft, paddingTop, width, i12);
            i11++;
            size = size;
            i10 = i10;
            paddingBottom = i12;
            width = width;
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f26330a = new ArrayList();
        this.f26331b = Collections.emptyList();
        this.f26332c = 0;
        this.f26333d = 0.0533f;
        this.f26334e = c.f26337g;
        this.f26335f = 0.08f;
    }
}
