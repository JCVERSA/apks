package com.google.android.material.datepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import com.google.android.material.R$attr;
import com.google.android.material.R$styleable;

final class b {

    final a f28039a;

    final a f28040b;

    final a f28041c;

    final a f28042d;

    final a f28043e;

    final a f28044f;

    final a f28045g;

    final Paint f28046h;

    b(Context context) {
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(za.b.d(context, R$attr.materialCalendarStyle, MaterialCalendar.class.getCanonicalName()), R$styleable.MaterialCalendar);
        this.f28039a = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayStyle, 0));
        this.f28045g = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayInvalidStyle, 0));
        this.f28040b = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_daySelectedStyle, 0));
        this.f28041c = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_dayTodayStyle, 0));
        ColorStateList colorStateListA = za.c.a(context, typedArrayObtainStyledAttributes, R$styleable.MaterialCalendar_rangeFillColor);
        this.f28042d = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearStyle, 0));
        this.f28043e = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearSelectedStyle, 0));
        this.f28044f = a.a(context, typedArrayObtainStyledAttributes.getResourceId(R$styleable.MaterialCalendar_yearTodayStyle, 0));
        Paint paint = new Paint();
        this.f28046h = paint;
        paint.setColor(colorStateListA.getDefaultColor());
        typedArrayObtainStyledAttributes.recycle();
    }
}
