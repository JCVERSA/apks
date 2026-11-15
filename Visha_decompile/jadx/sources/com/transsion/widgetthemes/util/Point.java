package com.transsion.widgetthemes.util;

import android.graphics.Canvas;
import android.graphics.Paint;

public class Point {
    public float radius;
    public int x;
    public int x1;
    public int y;
    public int y1;

    public Point() {
    }

    public void draw(Canvas canvas, Paint paint) {
        canvas.drawCircle(this.x, this.y, this.radius, paint);
    }

    public void setDestPos(int i, int i2) {
        this.x1 = i;
        this.y1 = i2;
    }

    public void setStartPos(int i, int i2, float f) {
        this.x = i;
        this.y = i2;
        this.radius = f;
    }

    public String toString() {
        return "Point::x=" + this.x + ", y=" + this.y + ", x1=" + this.x1 + ", y1=" + this.y1 + ", radius=" + this.radius;
    }

    public Point(int i, int i2, float f) {
        this.x1 = i;
        this.x = i;
        this.y1 = i2;
        this.y = i2;
        this.radius = f;
    }
}
