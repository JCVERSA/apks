package com.cloud.hisavana.sdk.common.widget.video;

import android.content.Context;
import android.view.TextureView;
import android.view.View;
import com.cloud.hisavana.sdk.b4;

public class MediaTextureView extends TextureView {

    private int f21697a;

    private int f21698b;

    public MediaTextureView(Context context) {
        super(context);
    }

    public void adaptVideoSize(int i10, int i11) {
        b4.b().d("MediaTextureView", "videoWidth --->" + i10);
        b4.b().d("MediaTextureView", "videoHeight --->" + i11);
        b4.b().d("MediaTextureView", "this.videoWidth --->" + this.f21698b);
        b4.b().d("MediaTextureView", "this.videoHeight --->" + this.f21697a);
        if (this.f21698b == i10 || this.f21697a == i11) {
            return;
        }
        this.f21698b = i10;
        this.f21697a = i11;
        requestLayout();
    }

    @Override
    protected void onMeasure(int i10, int i11) {
        float rotation = getRotation();
        if (rotation == 90.0f || rotation == 270.0f) {
            i11 = i10;
            i10 = i11;
        }
        int defaultSize = View.getDefaultSize(this.f21698b, i10);
        int defaultSize2 = View.getDefaultSize(this.f21697a, i11);
        if (this.f21698b > 0 && this.f21697a > 0) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size2 = View.MeasureSpec.getSize(i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                int i12 = this.f21698b;
                int i13 = i12 * size2;
                int i14 = this.f21697a;
                int i15 = size * i14;
                if (i13 < i15) {
                    defaultSize = i13 / i14;
                } else {
                    if (i13 > i15) {
                        defaultSize2 = i15 / i12;
                        defaultSize = size;
                    }
                    defaultSize = size;
                }
                defaultSize2 = size2;
            } else if (mode == 1073741824) {
                int i16 = this.f21697a;
                int i17 = this.f21698b;
                int i18 = (size * i16) / i17;
                if (mode2 != Integer.MIN_VALUE || i18 <= size2) {
                    defaultSize = size;
                    defaultSize2 = i18;
                } else {
                    defaultSize = (i17 * size2) / i16;
                    defaultSize2 = size2;
                }
            } else {
                if (mode2 == 1073741824) {
                    int i19 = this.f21698b;
                    int i20 = this.f21697a;
                    int i21 = (size2 * i19) / i20;
                    if (mode != Integer.MIN_VALUE || i21 <= size) {
                        defaultSize2 = size2;
                        defaultSize = i21;
                    } else {
                        defaultSize2 = (i20 * size) / i19;
                    }
                } else {
                    if (size > 0 || size2 > 0) {
                        int i22 = this.f21698b;
                        int i23 = size / i22;
                        int i24 = this.f21697a;
                        if (i23 >= size2 / i24) {
                            defaultSize = (i22 * size2) / i24;
                        } else {
                            defaultSize2 = (i24 * size) / i22;
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
    public void setRotation(float f10) {
        if (f10 != getRotation()) {
            super.setRotation(f10);
            requestLayout();
        }
    }
}
