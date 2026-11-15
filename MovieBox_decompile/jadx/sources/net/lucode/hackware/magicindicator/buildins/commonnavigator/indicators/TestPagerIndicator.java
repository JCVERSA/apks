package net.lucode.hackware.magicindicator.buildins.commonnavigator.indicators;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.view.View;
import com.tn.lib.view.FlowLayout;
import java.util.List;
import xy.c;
import yy.a;

public class TestPagerIndicator extends View implements c {

    private Paint f67225a;

    private int f67226b;

    private int f67227c;

    private RectF f67228d;

    private RectF f67229e;

    private List f67230f;

    public TestPagerIndicator(Context context) {
        super(context);
        this.f67228d = new RectF();
        this.f67229e = new RectF();
        a(context);
    }

    private void a(Context context) {
        Paint paint = new Paint(1);
        this.f67225a = paint;
        paint.setStyle(Paint.Style.STROKE);
        this.f67226b = FlowLayout.SPACING_AUTO;
        this.f67227c = -16711936;
    }

    public int getInnerRectColor() {
        return this.f67227c;
    }

    public int getOutRectColor() {
        return this.f67226b;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        this.f67225a.setColor(this.f67226b);
        canvas.drawRect(this.f67228d, this.f67225a);
        this.f67225a.setColor(this.f67227c);
        canvas.drawRect(this.f67229e, this.f67225a);
    }

    @Override
    public void onPageScrollStateChanged(int i10) {
    }

    @Override
    public void onPageScrolled(int i10, float f10, int i11) {
        List list = this.f67230f;
        if (list == null || list.isEmpty()) {
            return;
        }
        a aVarF = uy.a.f(this.f67230f, i10);
        a aVarF2 = uy.a.f(this.f67230f, i10 + 1);
        RectF rectF = this.f67228d;
        int i12 = aVarF.f76426a;
        rectF.left = i12 + ((aVarF2.f76426a - i12) * f10);
        int i13 = aVarF.f76427b;
        rectF.top = i13 + ((aVarF2.f76427b - i13) * f10);
        int i14 = aVarF.f76428c;
        rectF.right = i14 + ((aVarF2.f76428c - i14) * f10);
        int i15 = aVarF.f76429d;
        rectF.bottom = i15 + ((aVarF2.f76429d - i15) * f10);
        RectF rectF2 = this.f67229e;
        int i16 = aVarF.f76430e;
        rectF2.left = i16 + ((aVarF2.f76430e - i16) * f10);
        int i17 = aVarF.f76431f;
        rectF2.top = i17 + ((aVarF2.f76431f - i17) * f10);
        int i18 = aVarF.f76432g;
        rectF2.right = i18 + ((aVarF2.f76432g - i18) * f10);
        int i19 = aVarF.f76433h;
        rectF2.bottom = i19 + ((aVarF2.f76433h - i19) * f10);
        invalidate();
    }

    @Override
    public void onPageSelected(int i10) {
    }

    @Override
    public void onPositionDataProvide(List<a> list) {
        this.f67230f = list;
    }

    public void setInnerRectColor(int i10) {
        this.f67227c = i10;
    }

    public void setOutRectColor(int i10) {
        this.f67226b = i10;
    }
}
