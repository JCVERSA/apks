package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.view.TextureView;
import android.view.View;
import defpackage.ikd;

public class MediaTextureView extends TextureView {
    public int b;
    public int c;

    public MediaTextureView(Context context) {
        super(context);
    }

    public void adaptVideoSize(int i, int i2) {
        ikd.b().d("MediaTextureView", "videoWidth --->" + i);
        ikd.b().d("MediaTextureView", "videoHeight --->" + i2);
        ikd.b().d("MediaTextureView", "this.videoWidth --->" + this.c);
        ikd.b().d("MediaTextureView", "this.videoHeight --->" + this.b);
        if (this.c == i || this.b == i2) {
            return;
        }
        this.c = i;
        this.b = i2;
        requestLayout();
    }

    @Override
    public void onMeasure(int i, int i2) {
        float rotation = getRotation();
        if (rotation == 90.0f || rotation == 270.0f) {
            i2 = i;
            i = i2;
        }
        int defaultSize = View.getDefaultSize(this.c, i);
        int defaultSize2 = View.getDefaultSize(this.b, i2);
        if (this.c > 0 && this.b > 0) {
            int mode = View.MeasureSpec.getMode(i);
            int size = View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i3 = this.c;
                int i4 = i3 * size2;
                int i5 = this.b;
                int i6 = size * i5;
                if (i4 < i6) {
                    defaultSize = i4 / i5;
                } else {
                    if (i4 > i6) {
                        defaultSize2 = i6 / i3;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i7 = this.b;
                int i8 = this.c;
                int i9 = (size * i7) / i8;
                if (mode2 != Integer.MIN_VALUE || i9 <= size2) {
                    defaultSize = size;
                    defaultSize2 = i9;
                } else {
                    defaultSize = (i8 * size2) / i7;
                    defaultSize2 = size2;
                }
            } else {
                if (mode2 == 1073741824) {
                    int i10 = this.c;
                    int i11 = this.b;
                    int i12 = (size2 * i10) / i11;
                    if (mode != Integer.MIN_VALUE || i12 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i12;
                    } else {
                        defaultSize2 = (i11 * size) / i10;
                    }
                } else {
                    if (size > 0 || size2 > 0) {
                        int i13 = this.c;
                        int i14 = size / i13;
                        int i15 = this.b;
                        if (i14 >= size2 / i15) {
                            defaultSize = (i13 * size2) / i15;
                        } else {
                            defaultSize2 = (i15 * size) / i13;
                        }
                    } else {
                        defaultSize = size;
                    }
                    defaultSize2 = size2;
                }
                defaultSize = size;
            }
        }
        setMeasuredDimension(defaultSize, defaultSize2);
    }

    @Override
    public void setRotation(float f) {
        if (f != getRotation()) {
            super.setRotation(f);
            requestLayout();
        }
    }
}
