package com.transsnet.login.country.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.b;
import com.tn.lib.widget.R$color;
import com.transsnet.login.R$dimen;
import java.util.List;

public class SideBar extends View {

    private List f58071a;

    private TextPaint f58072b;

    private int f58073c;

    private a f58074d;

    private float f58075e;

    private int f58076f;

    private int f58077g;

    private float f58078h;

    public interface a {
        void f(String str);
    }

    public SideBar(Context context) {
        super(context.getApplicationContext());
        this.f58073c = -1;
        this.f58075e = -1.0f;
        this.f58076f = -1;
        this.f58077g = -1;
        this.f58078h = -1.0f;
    }

    private void a(Canvas canvas) {
        if (this.f58076f < 0) {
            this.f58076f = getContext().getResources().getDimensionPixelSize(R$dimen.side_bar_txt_size);
            this.f58077g = b.getColor(getContext(), R$color.text_03);
            this.f58075e = this.f58076f * 1.5f;
        }
        int i10 = 0;
        for (String str : this.f58071a) {
            this.f58072b.setTextSize(this.f58076f);
            this.f58072b.setAntiAlias(true);
            this.f58072b.setColor(this.f58077g);
            if (i10 == this.f58073c) {
                this.f58072b.setColor(b.getColor(getContext(), R$color.text_01));
                this.f58072b.setFakeBoldText(true);
            }
            if (this.f58078h < 0.0f) {
                this.f58078h = ((getWidth() * 1.0f) / 2.0f) - (this.f58072b.measureText(str) / 2.0f);
            }
            float f10 = this.f58075e;
            canvas.drawText(str, this.f58078h, (i10 * f10) + f10, this.f58072b);
            this.f58072b.reset();
            i10++;
        }
    }

    @Override
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
        if (this.f58071a == null) {
            return super.dispatchTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        motionEvent.getX();
        float y10 = motionEvent.getY();
        int i10 = this.f58073c;
        int height = (int) ((y10 / getHeight()) * this.f58071a.size());
        if (action == 1 || action == 3) {
            setBackgroundColor(0);
            invalidate();
        } else {
            setBackgroundColor(0);
            if (i10 != height && height >= 0 && height < this.f58071a.size()) {
                a aVar = this.f58074d;
                if (aVar != null) {
                    aVar.f((String) this.f58071a.get(height));
                }
                this.f58073c = height;
                invalidate();
            }
        }
        return true;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        List list = this.f58071a;
        if (list == null || list.isEmpty()) {
            return;
        }
        if (this.f58072b == null) {
            this.f58072b = new TextPaint(1);
        }
        a(canvas);
    }

    public void setIndexs(List<String> list) {
        this.f58071a = list;
        if (this.f58076f < 0) {
            this.f58076f = getContext().getResources().getDimensionPixelSize(R$dimen.side_bar_txt_size);
            this.f58077g = b.getColor(getContext(), R$color.text_03);
            this.f58075e = this.f58076f * 1.5f;
        }
        if (list != null) {
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            layoutParams.height = (int) (this.f58075e * list.size());
            setLayoutParams(layoutParams);
        }
        invalidate();
    }

    public void setScrollerListener(a aVar) {
        this.f58074d = aVar;
    }

    public void updateIndex(int i10) {
        this.f58073c = i10;
        invalidate();
    }

    public SideBar(Context context, AttributeSet attributeSet) {
        super(context.getApplicationContext(), attributeSet);
        this.f58073c = -1;
        this.f58075e = -1.0f;
        this.f58076f = -1;
        this.f58077g = -1;
        this.f58078h = -1.0f;
        setBackgroundColor(0);
    }
}
