package net.lucode.hackware.magicindicator.buildins.commonnavigator.titles;

import android.content.Context;
import android.graphics.Paint;
import android.graphics.Rect;
import android.text.TextUtils;
import android.widget.TextView;
import xy.b;

public class SimplePagerTitleView extends TextView implements b {

    protected int f67259a;

    protected int f67260b;

    public SimplePagerTitleView(Context context) {
        super(context, null);
        a(context);
    }

    private void a(Context context) {
        setGravity(17);
        int iA = wy.b.a(context, 10.0d);
        setPadding(iA, 0, iA, 0);
        setSingleLine();
        setEllipsize(TextUtils.TruncateAt.END);
    }

    @Override
    public int getContentBottom() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) + ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    @Override
    public int getContentLeft() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return (getLeft() + (getWidth() / 2)) - (rect.width() / 2);
    }

    @Override
    public int getContentRight() {
        String string;
        Rect rect = new Rect();
        if (getText().toString().contains("\n")) {
            string = "";
            for (String str : getText().toString().split("\\n")) {
                if (str.length() > string.length()) {
                    string = str;
                }
            }
        } else {
            string = getText().toString();
        }
        getPaint().getTextBounds(string, 0, string.length(), rect);
        return getLeft() + (getWidth() / 2) + (rect.width() / 2);
    }

    @Override
    public int getContentTop() {
        Paint.FontMetrics fontMetrics = getPaint().getFontMetrics();
        return (int) ((getHeight() / 2) - ((fontMetrics.bottom - fontMetrics.top) / 2.0f));
    }

    public int getNormalColor() {
        return this.f67260b;
    }

    public int getSelectedColor() {
        return this.f67259a;
    }

    public void onDeselected(int i10, int i11) {
        setTextColor(this.f67260b);
    }

    public void onEnter(int i10, int i11, float f10, boolean z10) {
    }

    public void onLeave(int i10, int i11, float f10, boolean z10) {
    }

    public void onSelected(int i10, int i11) {
        setTextColor(this.f67259a);
    }

    public void setNormalColor(int i10) {
        this.f67260b = i10;
    }

    public void setSelectedColor(int i10) {
        this.f67259a = i10;
    }
}
