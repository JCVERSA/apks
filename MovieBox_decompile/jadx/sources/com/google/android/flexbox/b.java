package com.google.android.flexbox;

import android.view.View;
import java.util.ArrayList;
import java.util.List;

public class b {

    int f27314e;

    int f27315f;

    int f27316g;

    int f27317h;

    int f27318i;

    float f27319j;

    float f27320k;

    int f27321l;

    int f27322m;

    int f27324o;

    int f27325p;

    boolean f27326q;

    boolean f27327r;

    int f27310a = Integer.MAX_VALUE;

    int f27311b = Integer.MAX_VALUE;

    int f27312c = Integer.MIN_VALUE;

    int f27313d = Integer.MIN_VALUE;

    List f27323n = new ArrayList();

    b() {
    }

    public int a() {
        return this.f27316g;
    }

    public int b() {
        return this.f27317h;
    }

    public int c() {
        return this.f27317h - this.f27318i;
    }

    void d(View view, int i10, int i11, int i12, int i13) {
        FlexItem flexItem = (FlexItem) view.getLayoutParams();
        this.f27310a = Math.min(this.f27310a, (view.getLeft() - flexItem.getMarginLeft()) - i10);
        this.f27311b = Math.min(this.f27311b, (view.getTop() - flexItem.getMarginTop()) - i11);
        this.f27312c = Math.max(this.f27312c, view.getRight() + flexItem.getMarginRight() + i12);
        this.f27313d = Math.max(this.f27313d, view.getBottom() + flexItem.getMarginBottom() + i13);
    }
}
