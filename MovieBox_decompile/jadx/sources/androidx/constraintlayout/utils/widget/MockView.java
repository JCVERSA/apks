package androidx.constraintlayout.utils.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import androidx.constraintlayout.widget.R$styleable;

public class MockView extends View {

    private Paint f7278a;

    private Paint f7279b;

    private Paint f7280c;

    private boolean f7281d;

    private boolean f7282e;

    protected String f7283f;

    private Rect f7284g;

    private int f7285h;

    private int f7286i;

    private int f7287j;

    private int f7288k;

    public MockView(Context context) {
        super(context);
        this.f7278a = new Paint();
        this.f7279b = new Paint();
        this.f7280c = new Paint();
        this.f7281d = true;
        this.f7282e = true;
        this.f7283f = null;
        this.f7284g = new Rect();
        this.f7285h = Color.argb(255, 0, 0, 0);
        this.f7286i = Color.argb(255, 200, 200, 200);
        this.f7287j = Color.argb(255, 50, 50, 50);
        this.f7288k = 4;
        a(context, null);
    }

    private void a(Context context, AttributeSet attributeSet) {
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.MockView);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                if (index == R$styleable.MockView_mock_label) {
                    this.f7283f = typedArrayObtainStyledAttributes.getString(index);
                } else if (index == R$styleable.MockView_mock_showDiagonals) {
                    this.f7281d = typedArrayObtainStyledAttributes.getBoolean(index, this.f7281d);
                } else if (index == R$styleable.MockView_mock_diagonalsColor) {
                    this.f7285h = typedArrayObtainStyledAttributes.getColor(index, this.f7285h);
                } else if (index == R$styleable.MockView_mock_labelBackgroundColor) {
                    this.f7287j = typedArrayObtainStyledAttributes.getColor(index, this.f7287j);
                } else if (index == R$styleable.MockView_mock_labelColor) {
                    this.f7286i = typedArrayObtainStyledAttributes.getColor(index, this.f7286i);
                } else if (index == R$styleable.MockView_mock_showLabel) {
                    this.f7282e = typedArrayObtainStyledAttributes.getBoolean(index, this.f7282e);
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        if (this.f7283f == null) {
            try {
                this.f7283f = context.getResources().getResourceEntryName(getId());
            } catch (Exception unused) {
            }
        }
        this.f7278a.setColor(this.f7285h);
        this.f7278a.setAntiAlias(true);
        this.f7279b.setColor(this.f7286i);
        this.f7279b.setAntiAlias(true);
        this.f7280c.setColor(this.f7287j);
        this.f7288k = Math.round(this.f7288k * (getResources().getDisplayMetrics().xdpi / 160.0f));
    }

    @Override
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int width = getWidth();
        int height = getHeight();
        if (this.f7281d) {
            width--;
            height--;
            float f10 = width;
            float f11 = height;
            canvas.drawLine(0.0f, 0.0f, f10, f11, this.f7278a);
            canvas.drawLine(0.0f, f11, f10, 0.0f, this.f7278a);
            canvas.drawLine(0.0f, 0.0f, f10, 0.0f, this.f7278a);
            canvas.drawLine(f10, 0.0f, f10, f11, this.f7278a);
            canvas.drawLine(f10, f11, 0.0f, f11, this.f7278a);
            canvas.drawLine(0.0f, f11, 0.0f, 0.0f, this.f7278a);
        }
        String str = this.f7283f;
        if (str == null || !this.f7282e) {
            return;
        }
        this.f7279b.getTextBounds(str, 0, str.length(), this.f7284g);
        float fWidth = (width - this.f7284g.width()) / 2.0f;
        float fHeight = ((height - this.f7284g.height()) / 2.0f) + this.f7284g.height();
        this.f7284g.offset((int) fWidth, (int) fHeight);
        Rect rect = this.f7284g;
        int i10 = rect.left;
        int i11 = this.f7288k;
        rect.set(i10 - i11, rect.top - i11, rect.right + i11, rect.bottom + i11);
        canvas.drawRect(this.f7284g, this.f7280c);
        canvas.drawText(this.f7283f, fWidth, fHeight, this.f7279b);
    }

    public MockView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7278a = new Paint();
        this.f7279b = new Paint();
        this.f7280c = new Paint();
        this.f7281d = true;
        this.f7282e = true;
        this.f7283f = null;
        this.f7284g = new Rect();
        this.f7285h = Color.argb(255, 0, 0, 0);
        this.f7286i = Color.argb(255, 200, 200, 200);
        this.f7287j = Color.argb(255, 50, 50, 50);
        this.f7288k = 4;
        a(context, attributeSet);
    }

    public MockView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f7278a = new Paint();
        this.f7279b = new Paint();
        this.f7280c = new Paint();
        this.f7281d = true;
        this.f7282e = true;
        this.f7283f = null;
        this.f7284g = new Rect();
        this.f7285h = Color.argb(255, 0, 0, 0);
        this.f7286i = Color.argb(255, 200, 200, 200);
        this.f7287j = Color.argb(255, 50, 50, 50);
        this.f7288k = 4;
        a(context, attributeSet);
    }
}
