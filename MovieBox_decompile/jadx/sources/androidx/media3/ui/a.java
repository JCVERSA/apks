package androidx.media3.ui;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class a extends View implements SubtitleView.a {

    private final List f13311a;

    private List f13312b;

    private int f13313c;

    private float f13314d;

    private b f13315e;

    private float f13316f;

    public a(Context context) {
        this(context, null);
    }

    private static u1.a b(u1.a aVar) {
        u1.a.b bVarP = aVar.a().k(-3.4028235E38f).l(Integer.MIN_VALUE).p(null);
        if (aVar.f72945f == 0) {
            bVarP.h(1.0f - aVar.f72944e, 0);
        } else {
            bVarP.h((-aVar.f72944e) - 1.0f, 1);
        }
        int i10 = aVar.f72946g;
        if (i10 == 0) {
            bVarP.i(2);
        } else if (i10 == 2) {
            bVarP.i(0);
        }
        return bVarP.a();
    }

    @Override
    public void a(List list, b bVar, float f10, int i10, float f11) {
        this.f13312b = list;
        this.f13315e = bVar;
        this.f13314d = f10;
        this.f13313c = i10;
        this.f13316f = f11;
        while (this.f13311a.size() < list.size()) {
            this.f13311a.add(new u0(getContext()));
        }
        invalidate();
    }

    @Override
    public void dispatchDraw(Canvas canvas) {
        List list = this.f13312b;
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
        float fH = x0.h(this.f13313c, this.f13314d, height, i10);
        if (fH <= 0.0f) {
            return;
        }
        int size = list.size();
        int i11 = 0;
        while (i11 < size) {
            u1.a aVarB = (u1.a) list.get(i11);
            if (aVarB.f72955p != Integer.MIN_VALUE) {
                aVarB = b(aVarB);
            }
            u1.a aVar = aVarB;
            int i12 = paddingBottom;
            ((u0) this.f13311a.get(i11)).b(aVar, this.f13315e, fH, x0.h(aVar.f72953n, aVar.f72954o, height, i10), this.f13316f, canvas, paddingLeft, paddingTop, width, i12);
            i11++;
            size = size;
            i10 = i10;
            paddingBottom = i12;
            width = width;
        }
    }

    public a(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f13311a = new ArrayList();
        this.f13312b = Collections.emptyList();
        this.f13313c = 0;
        this.f13314d = 0.0533f;
        this.f13315e = b.f13319g;
        this.f13316f = 0.08f;
    }
}
